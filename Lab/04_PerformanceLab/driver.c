/*******************************************************************
 * 
 * driver.c - Driver program for CS:APP Performance Lab
 * 
 * In kernels.c, students generate an arbitrary number of flip and
 * convolve test functions, which they then register with the driver
 * program using the add_flip_function() and add_convolve_function()
 * functions.
 * 
 * The driver program runs and measures the registered test functions
 * and reports their performance.
 * 
 * Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights
 * reserved.  May not be used, modified, or copied without permission.
 *
 ********************************************************************/

#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>
#include <math.h>
#include "fcyc.h"
#include "defs.h"

//sharpen kernel
Kernel sharpen_kernel = 
{
    {-1.0, -1.0, -1.0, -1.0, -1.0},
    {-1.0, 2.0, 4.0, 2.0, -1.0},
    {-1.0, 4.0, 8.0, 4.0, -1.0},
    {-1.0, 2.0, 4.0, 2.0, -1.0},
    {-1.0, -1.0, -1.0, -1.0, -1.0}
};
//emboss top-left kernel
 Kernel emboss_tl_kernel =
{
    {-1.0,  -1.0, -1.0,  -1.0,  0.0},
    {-1.0, -16.0,  4.0,   0.0,  1.0},
    {-1.0,  -4.0,  1.0,   4.0,  1.0},
    {-1.0,   0.0,  4.0,  16.0,  1.0},
    { 0.0,   1.0,  1.0,   1.0,  1.0}
};
//emboss top-right kernel
Kernel emboss_tr_kernel = 
{
    {0.0,  -1.0, -1.0,   -1.0,  -1.0},
    {1.0,   0.0, -4.0,  -16.0,  -1.0},
    {1.0,   4.0,  1.0,   -4.0,  -1.0},
    {1.0,  16.0,  4.0,    0.0,  -1.0},
    {1.0,   1.0,  1.0,    1.0,   0.0}
};
//emboss bottom-right kernel
Kernel emboss_br_kernel = 
{
    { 1.0,   1.0,  1.0,   1.0,  0.0},
    { 1.0,  16.0,  4.0,   0.0, -1.0},
    { 1.0,   4.0,  1.0,  -4.0, -1.0},
    { 1.0,   0.0, -4.0, -16.0, -1.0},
    { 0.0,  -1.0, -1.0,  -1.0, -1.0}
};
//emboss bottom-left kernel
Kernel emboss_bl_kernel = 
{
    { 0.0,   1.0,  1.0,   1.0,  1.0},
    {-1.0,   0.0,  4.0,  16.0,  1.0},
    {-1.0,  -4.0,  1.0,   4.0,  1.0},
    {-1.0, -16.0, -4.0,   0.0,  1.0},
    {-1.0,  -1.0, -1.0,  -1.0,  0.0}
};
//Guassian blur kernel
Kernel guassian_blur_kernel = 
{
    {  1.0,  4.0,  6.0,  4.0,  1.0},
    {  4.0, 16.0, 24.0, 16.0,  4.0},
    {  6.0, 24.0, 36.0, 24.0,  6.0},
    {  4.0, 16.0, 24.0, 16.0,  4.0},
    {  1.0,  4.0,  6.0,  4.0,  1.0}
};
//Sobel vertical edge detection kernel
Kernel sobel_vertical_kernel = 
{
    {  2.0,  1.0,  0.0, -1.0, -2.0},
    {  3.0,  2.0,  0.0, -2.0, -3.0},
    {  4.0,  3.0,  1.0, -3.0, -4.0},
    {  3.0,  2.0,  0.0, -2.0, -3.0},
    {  2.0,  1.0,  0.0, -1.0, -2.0}
};
//Sobel horizontal edge detection kernel
Kernel sobel_horizontal_kernel = 
{
    { 2.0,  3.0,  4.0,  3.0,  2.0},
    { 1.0,  2.0,  3.0,  2.0,  1.0},
    { 0.0,  0.0,  1.0,  0.0,  0.0},
    {-1.0, -2.0, -3.0, -2.0, -1.0},
    {-2.0, -3.0, -4.0, -3.0, -2.0}
};
//large smoothing kernel
Kernel smoothing_kernel = 
{
    {  0.0,  1.0,  2.0,  1.0,  0.0},
    {  1.0,  4.0,  8.0,  4.0,  1.0},
    {  2.0,  8.0, 16.0,  8.0,  2.0},
    {  1.0,  4.0,  8.0,  4.0,  1.0},
    {  0.0,  1.0,  2.0,  1.0,  0.0}
};

static const double   sharpen_baselines[4] = {375.0, 385.0, 455.0,  950.0};
static const double    emboss_baselines[4] = {375.0, 385.0, 455.0,  950.0};
static const double  gaussian_baselines[4] = {375.0, 400.0, 465.0, 1042.0};
static const double     sobel_baselines[4] = {375.0, 385.0, 455.0,  975.0};
static const double smoothing_baselines[4] = {412.0, 427.0, 500.0,  985.0};

static const double      mirror_vertical_baselines[4] = {22.45, 22.45, 23.47, 24.49};
static const double    mirror_horizontal_baselines[4] = {21.0, 22.0, 23.0, 24.0};
static const double          mirror_both_baselines[4] = {20.59, 21.57, 22.55, 23.53};
static const double     rotate_clockwise_baselines[4] = {22.0, 24.0, 62.0, 400.0};
static const double rotate_anticlockwise_baselines[4] = {21.0, 22.0, 38.0, 413.0};
static const double            transpose_baselines[4] = {22.45, 22.45, 35.71, 252.04};
static const double         reflect_both_baselines[4] = {21.90, 21.90, 43.81, 307.62};

/* team structure that identifies the students */
extern const team_t team; 

/* Keep track of a number of different test functions */
#define MAX_BENCHMARKS 100
#define DIM_CNT 4

/* Misc constants */
#define BSIZE 32     /* cache block size in bytes */     
#define MAX_DIM 2560 /* 1024 + 256 */
#define ODD_DIM 96   /* not a power of 2 */

/* fast versions of min and max */
#define min(a,b) (a < b ? a : b)
#define max(a,b) (a > b ? a : b)

/* This struct characterizes the results for one benchmark test */
typedef struct {
    lab_test_func tfunct; /* The test function */
    double cpes[DIM_CNT]; /* One CPE result for each dimension */
    char *description;    /* ASCII description of the test function */
    unsigned short valid; /* The function is tested if this is non zero */
} bench_t;

/* The range of image dimensions that we will be testing */
static int test_dim_flip[] = {256, 512, 1024, 2048};
static int test_dim_convolve[] = {256, 512, 1024, 2048};
//static int test_dim_normalization[] = {256, 512, 1024, 2048};

/* Baseline CPEs (see config.h) */
static double flip_baseline_cpes[4];
static double convolve_baseline_cpes[4];
//static double normalization_baseline_cpes[] = {R256, R512, R1024, R2048};
/* These hold the results for all benchmarks */
static bench_t benchmarks_flip[MAX_BENCHMARKS];
static bench_t benchmarks_convolve[MAX_BENCHMARKS];
//static bench_t benchmarks_normalization[MAX_BENCHMARKS];

/* These give the sizes of the above lists */
static int flip_benchmark_count = 0;
static int convolve_benchmark_count = 0;
//static int normalization_benchmark_count = 0;

/* 
 * An image is a dimxdim matrix of pixels stored in a 1D array.  The
 * data array holds three images (the input original, a copy of the original, 
 * and the output result array. There is also an additional BSIZE bytes
 * of padding for alignment to cache block boundaries.
 */
static pixel data[(3*MAX_DIM*MAX_DIM) + (BSIZE/sizeof(pixel))];

/* Various image pointers */
static pixel *orig = NULL;         /* original image */
static pixel *copy_of_orig = NULL; /* copy of original for checking result */
static pixel *result = NULL;       /* result image */

/* Keep track of the best flip and convolve score for grading */
double flip_maxmean = 0.0;
char *flip_maxmean_desc = NULL;

double convolve_maxmean = 0.0;
char *convolve_maxmean_desc = NULL;

/******************** Functions begin *************************/

void add_convolve_function(lab_test_func f, char *description) 
{
    benchmarks_convolve[convolve_benchmark_count].tfunct = f;
    benchmarks_convolve[convolve_benchmark_count].description = description;
    benchmarks_convolve[convolve_benchmark_count].valid = 0;  
    convolve_benchmark_count++;
}


void add_flip_function(lab_test_func f, char *description) 
{
    benchmarks_flip[flip_benchmark_count].tfunct = f;
    benchmarks_flip[flip_benchmark_count].description = description;
    benchmarks_flip[flip_benchmark_count].valid = 0;
    flip_benchmark_count++;
}


//void add_normalization_function(lab_test_func f, char *description) 
//{
//    benchmarks_normalization[normalization_benchmark_count].tfunct = f;
//    benchmarks_normalization[normalization_benchmark_count].description = description;
//    benchmarks_normalization[normalization_benchmark_count].valid = 0;
//    normalization_benchmark_count++;
//}

void print_flip_description(){
    switch(((team_hash>>16)&0xFFFF)%7){
        case 0:
            printf("You must flip the image about the vertical axis (img[i][j] -> img[i][dim-1-j])\n"); break;
        case 1:
            printf("You must flip the image about the horizontal axis (img[i][j] -> img[dim-1-i][j]\n"); break;
        case 2:
            printf("You must flip the image about both axes (img[i][j] -> img[dim-1-i][dim-1-j])\n"); break;
        case 3:
            printf("You must rotate the image ninety degrees clockwise (img[i][j] -> img[j][dim-1-i]\n"); break;
        case 4:
            printf("You must rotate the image ninety degrees counterclockwise (img[i][j] -> img[dim-1-j][i]\n"); break;
        case 5:
            printf("You must transpose the image (img[i][j] -> img[j][i]\n"); break;
        case 6:
            printf("You must reflect about both axes (img[i][j] -> img[dim-1-j][dim-1-i])\n"); break;
        default:
            printf("??\n"); break;
    }
}

int mirror_vertical_func(int i, int j, int n){
    return RIDX(i, n - 1 - j, n);
}
int mirror_horizontal_func(int i, int j, int n){
    return RIDX(n - 1 - i, j, n);
}
int mirror_both_func(int i, int j, int n){
    return RIDX(n - 1 - i, n - 1 - j, n);
}
int rotate_clockwise_func(int i, int j, int n){
    return RIDX(j, n - 1 - i, n);
}
int rotate_anticlockwise_func(int i, int j, int n){
    return RIDX(n - 1 - j, i, n);
}
int transpose_func(int i, int j, int n){
    return RIDX(j, i, n);
}
int reflect_both_func(int i, int j, int n){
    return RIDX(n - 1 - j, n - 1 - i, n);
}

void copy_flip_baselines(const double* baselines){
    flip_baseline_cpes[0] = baselines[0];
    flip_baseline_cpes[1] = baselines[1];
    flip_baseline_cpes[2] = baselines[2];
    flip_baseline_cpes[3] = baselines[3];
}

FlippedFunc ridx_f_factory(){
    switch(((team_hash>>16)&0xFFFF)%7){
        case 0:
            copy_flip_baselines(mirror_vertical_baselines);
            return &mirror_vertical_func;
        case 1:
            copy_flip_baselines(mirror_horizontal_baselines);
            return &mirror_horizontal_func;
        case 2:
            copy_flip_baselines(mirror_both_baselines);
            return &mirror_both_func;
        case 3:
            copy_flip_baselines(rotate_clockwise_baselines);        
            return &rotate_clockwise_func;
        case 4:
            copy_flip_baselines(rotate_anticlockwise_baselines);        
            return &rotate_anticlockwise_func;
        case 5:
            copy_flip_baselines(transpose_baselines);
            return &transpose_func;
        case 6:
            copy_flip_baselines(reflect_both_baselines);
            return &reflect_both_func;
        default:
            return &reflect_both_func;
    }
}


unsigned int hash_team(){ //uses "djb2" hashing algorithm.
    unsigned int hashA = 5381; 
    unsigned int hashB = 5381; 
    for(int i=0; team.emailA[i]!='\0'; i++){
        hashA = team.emailA[i] + ((hashA<<5) + hashA); //hash = hash*33 + c;
    }
    for(int i=0; team.emailB[i]!='\0'; i++){
        hashB = team.emailB[i] + ((hashB<<5) + hashB); //hash = hash*33 + c;
    }
    return (hashA ^ hashB);
}

void copy_kernel(Kernel* ker){
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            kernel[i][j] = (*ker)[i][j];
        }
    }
}

void copy_convolve_baselines(const double* baselines){
    convolve_baseline_cpes[0] = baselines[0];
    convolve_baseline_cpes[1] = baselines[1];
    convolve_baseline_cpes[2] = baselines[2];
    convolve_baseline_cpes[3] = baselines[3];
}


Kernel* get_convolution_kernel(unsigned int hash){
    switch((hash&0xFFFF)%NUM_CONVOLUTION_KERNELS){
        case 0:
            copy_convolve_baselines(sharpen_baselines);
            return &sharpen_kernel;
        case 1:
            copy_convolve_baselines(emboss_baselines);
            return &emboss_tl_kernel;
        case 2:
            copy_convolve_baselines(emboss_baselines);
            return &emboss_tr_kernel;
        case 3:
            copy_convolve_baselines(emboss_baselines);
            return &emboss_br_kernel;
        case 4:
            copy_convolve_baselines(emboss_baselines);
            return &emboss_bl_kernel;
		case 5:
            copy_convolve_baselines(gaussian_baselines);
			return &guassian_blur_kernel;
		case 6:
            copy_convolve_baselines(sobel_baselines);        
			return &sobel_vertical_kernel;
        case 7:
            copy_convolve_baselines(sobel_baselines);   
            return &sobel_horizontal_kernel;            
		case 8:
            copy_convolve_baselines(smoothing_baselines);   
			return &smoothing_kernel;
        default:
            return &sharpen_kernel;
    }
}

void print_kernel(){
    printf("{");
    for(int i=0;i<5;i++){
        printf("{%f, %f, %f, %f, %f}", kernel[i][0],kernel[i][1],kernel[i][2],kernel[i][3],kernel[i][4]);
        if(i!=4){
            printf(",\n");
        }else{
            printf("\n");
        }
    }
    printf("};\n");
}

/* 
 * compare_pixels - Returns 1 if the two arguments don't have same RGB
 *    values, 0 o.w.  
 */
static int compare_pixels(pixel p1, pixel p2) 
{
    return 
    (p1.red != p2.red) || 
    (p1.green != p2.green) || 
    (p1.blue != p2.blue);
}


/* Make sure the orig array is unchanged */
static int check_orig(int dim) 
{
    int i, j;

    for (i = 0; i < dim; i++) 
    for (j = 0; j < dim; j++) 
        if (compare_pixels(orig[RIDX(i,j,dim)], copy_of_orig[RIDX(i,j,dim)])) {
        printf("\n");
        printf("Error: Original image has been changed! \n");
        printf("e.g., the following two pixels should have equal value:\n");
        pixel orig_bad = orig[RIDX(i,j,dim)];
        pixel copy_bad = copy_of_orig[RIDX(i,j,dim)];
        printf("orig[%d][%d].{red,green,blue} =! orig_copy[%d][%d]\n {%d, %d, %d} != {%d, %d, %d}\n", i, j, i, j, orig_bad.red, orig_bad.green, orig_bad.blue, copy_bad.red, copy_bad.green, copy_bad.blue);
        return 1;
        }

    return 0;
}

/* 
 * random_in_interval - Returns random integer in interval [low, high) 
 */
static int random_in_interval(int low, int high) 
{
    int size = high - low;
    return (rand()% size) + low;
}

/*
 * create - creates a dimxdim image aligned to a BSIZE byte boundary
 */
static void create(int dim)
{
    int i, j;

    /* Align the images to BSIZE byte boundaries */
    orig = data;
    while ((unsigned long)orig % BSIZE)
		orig = (pixel*)(((char*)orig)+1);
    result = orig + dim*dim;
    copy_of_orig = result + dim*dim;

    for (i = 0; i < dim; i++) {
	for (j = 0; j < dim; j++) {
	    /* Original image initialized to random colors */
	    orig[RIDX(i,j,dim)].red = random_in_interval(0, 65536);
	    orig[RIDX(i,j,dim)].green = random_in_interval(0, 65536);
	    orig[RIDX(i,j,dim)].blue = random_in_interval(0, 65536);

	    /* Copy of original image for checking result */
	    copy_of_orig[RIDX(i,j,dim)].red = orig[RIDX(i,j,dim)].red;
	    copy_of_orig[RIDX(i,j,dim)].green = orig[RIDX(i,j,dim)].green;
	    copy_of_orig[RIDX(i,j,dim)].blue = orig[RIDX(i,j,dim)].blue;

	    /* Result image initialized to all black */
	    result[RIDX(i,j,dim)].red = 0;
	    result[RIDX(i,j,dim)].green = 0;
	    result[RIDX(i,j,dim)].blue = 0;
	}
    }

    return;
}




/* 
 * check_flip - Make sure the flip actually works. 
 * The orig array should not  have been tampered with! 
 */
static int check_flip(int dim) 
{
    int err = 0;
    int i, j;
    int badi, badj;
    pixel orig_bad = {0,0,0};
	pixel res_bad = {0,0,0};

    /* return 1 if the original image has been  changed */
    if (check_orig(dim)) 
	return 1; 

    for (i = 0; i < dim; i++){
	    for (j = 0; j < dim; j++) 
	        if (compare_pixels(orig[RIDX(i,j,dim)], 
		    	       result[RIDX_F(i,j,dim)])) {
		    err++;
		    badi = i;
		    badj = j;
		    orig_bad = orig[RIDX(i,j,dim)];
		    res_bad = result[RIDX_F(i,j,dim)];
	    }
    }
    if (err) {
	printf("\n");
	printf("ERROR: Dimension=%d, %d errors\n", dim, err);    
	printf("E.g., The following two pixels should have equal value:\n");
	printf("src[%d].{red,green,blue} = {%d,%d,%d}\n",
	       RIDX(badi,badj,dim), orig_bad.red, orig_bad.green, orig_bad.blue);
	printf("dst[%d].{red,green,blue} = {%d,%d,%d}\n",
	       RIDX_F(badi,badj,dim), res_bad.red, res_bad.green, res_bad.blue);
    }

    return err;
}

static pixel check_convolution(int dim, int i, int j, pixel *src) {
    pixel result;
    int ii, jj;
    float sum0, sum1, sum2, weight;
    int kernelI;
    int kernelJ;

    sum0 = sum1 = sum2 = weight = 0;
    for(ii=i-2; ii <= i+2; ii++) {
	for(jj=j-2; jj <= j+2; jj++) {
        if(ii < 0 || ii >= dim || jj < 0 || jj >= dim){
            continue;
        }
        kernelI = (ii - i)+2;
        kernelJ = (jj - j)+2;
	    sum0 += src[RIDX(ii,jj,dim)].red * kernel[kernelI][kernelJ];
	    sum1 += src[RIDX(ii,jj,dim)].green * kernel[kernelI][kernelJ];
	    sum2 += src[RIDX(ii,jj,dim)].blue * kernel[kernelI][kernelJ];
        weight += kernel[kernelI][kernelJ];
	}
    }
    result.red = (unsigned short) (sum0/weight);
    result.green = (unsigned short) (sum1/weight);
    result.blue = (unsigned short) (sum2/weight);
 
    return result;
}

/* 
 * check_convolve - Make sure the convolve function actually works.  The
 * orig array should not have been tampered with!  
 */
static int check_convolve(int dim) {
    int err = 0;
    int i, j;
    int badi = 0;
    int badj = 0;
    pixel right = {0,0,0};
    pixel wrong = {0,0,0};

    /* return 1 if original image has been changed */
    if (check_orig(dim)){
    	return 1; 
    }

    /* return 1 if original hash has been changed */
    if(team_hash != hash_team()){
        return 1;
    }
    /* return 1 if original kernel has been changed */
    const float (*orig_ker)[5][5] = get_convolution_kernel(team_hash);
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            if( (*orig_ker)[i][j] != kernel[i][j]){
                return 1;
            }
        }
    }

    for (i = 0; i < dim; i++) {
    	for (j = 0; j < dim; j++) {
    	    pixel convolved = check_convolution(dim, i, j, orig);
    	    if (compare_pixels(result[RIDX(i,j,dim)], convolved)) {
    		err++;
    		badi = i;
    		badj = j;
    		wrong = result[RIDX(i,j,dim)];
    		right = convolved;
    	    }
    	}
    }

    if (err) {
	printf("\n");
	printf("ERROR: Dimension=%d, %d errors\n", dim, err);    
	printf("E.g., \n");
	printf("You have dst[%d][%d].{red,green,blue} = {%d,%d,%d}\n",
	       badi, badj, wrong.red, wrong.green, wrong.blue);
	printf("It should be dst[%d][%d].{red,green,blue} = {%d,%d,%d}\n",
	       badi, badj, right.red, right.green, right.blue);
    }

    return err;
}


void func_wrapper(void *arglist[]) 
{
    pixel *src, *dst;
    int mydim;
    lab_test_func f;

    f = (lab_test_func) arglist[0];
    mydim = *((int *) arglist[1]);
    src = (pixel *) arglist[2];
    dst = (pixel *) arglist[3];

    (*f)(mydim, src, dst);

    return;
}

void run_flip_benchmark(int idx, int dim) 
{
    benchmarks_flip[idx].tfunct(dim, orig, result);
}

void test_flip(int bench_index) 
{
    int i;
    int test_num;
    char *description = benchmarks_flip[bench_index].description;
  
    for (test_num = 0; test_num < DIM_CNT; test_num++) {
		int dim;

		/* Check for odd dimension */
		create(ODD_DIM);
		run_flip_benchmark(bench_index, ODD_DIM);
		if (check_flip(ODD_DIM)) {
			printf("Benchmark \"%s\" failed correctness check for dimension %d.\n",
			   benchmarks_flip[bench_index].description, ODD_DIM);
			return;
		}

		/* Create a test image of the required dimension */
		dim = test_dim_flip[test_num];
		create(dim);
	#ifdef DEBUG
		printf("DEBUG: Running benchmark \"%s\"\n", benchmarks_flip[bench_index].description);
	#endif

		/* Check that the code works */
		run_flip_benchmark(bench_index, dim);
		if (check_flip(dim)) {
			printf("Benchmark \"%s\" failed correctness check for dimension %d.\n",
			   benchmarks_flip[bench_index].description, dim);
			return;
		}

		/* Measure CPE */
		{
			double num_cycles, cpe;
			int tmpdim = dim;
			void *arglist[4];
			double dimension = (double) dim;
			double work = dimension*dimension;
	#ifdef DEBUG
			printf("DEBUG: dimension=%.2f\n",dimension);
			printf("DEBUG: work=%.2f\n",work);
	#endif
			arglist[0] = (void *) benchmarks_flip[bench_index].tfunct;
			arglist[1] = (void *) &tmpdim;
			arglist[2] = (void *) orig;
			arglist[3] = (void *) result;

			create(dim);
			num_cycles = fcyc_v((test_funct_v)&func_wrapper, arglist); 
			cpe = num_cycles/work;
			benchmarks_flip[bench_index].cpes[test_num] = cpe;
		}
    }

    /* 
     * Print results as a table 
     */
    printf("flip: Version = %s:\n", description);
    printf("Dim\t");
    for (i = 0; i < DIM_CNT; i++)
	printf("\t%d", test_dim_flip[i]);
    printf("\tMean\n");
  
    printf("Your CPEs");
    for (i = 0; i < DIM_CNT; i++) {
	printf("\t%.2f", benchmarks_flip[bench_index].cpes[i]);
    }
    printf("\n");

    printf("Baseline CPEs");
    for (i = 0; i < DIM_CNT; i++) {
	printf("\t%.2f", flip_baseline_cpes[i]);
    }
    printf("\n");

    /* Compute Speedup */
	double prod, ratio, mean;
	prod = 1.0; /* Geometric mean */
	printf("Speedup\t");
	for (i = 0; i < DIM_CNT; i++) {
	    if (benchmarks_flip[bench_index].cpes[i] > 0.0) {
		ratio = flip_baseline_cpes[i]/
		    benchmarks_flip[bench_index].cpes[i];
	    }
	    else {
		printf("Fatal Error: Non-positive CPE value...\n");
		exit(EXIT_FAILURE);
	    }
	    prod *= ratio;
	    printf("\t%.2f", ratio);
	}

	/* Geometric mean */
	mean = pow(prod, 1.0/(double) DIM_CNT);
	printf("\t%.2f", mean);
	printf("\n\n");
	if (mean > flip_maxmean) {
	    flip_maxmean = mean;
	    flip_maxmean_desc = benchmarks_flip[bench_index].description;
	}
}

void run_convolve_benchmark(int idx, int dim) 
{
    benchmarks_convolve[idx].tfunct(dim, orig, result);
}

void test_convolve(int bench_index) 
{
    int i;
    int test_num;
    char *description = benchmarks_convolve[bench_index].description;
  
    for(test_num=0; test_num < DIM_CNT; test_num++) {
	int dim;

	/* Check correctness for odd (non power of two dimensions */
	create(ODD_DIM);
	run_convolve_benchmark(bench_index, ODD_DIM);
	if (check_convolve(ODD_DIM)) {
	    printf("Benchmark \"%s\" failed correctness check for dimension %d.\n",
		   benchmarks_convolve[bench_index].description, ODD_DIM);
	    return;
	}

	/* Create a test image of the required dimension */
	dim = test_dim_convolve[test_num];
	create(dim);

#ifdef DEBUG
	printf("DEBUG: Running benchmark \"%s\"\n", benchmarks_convolve[bench_index].description);
#endif
	/* Check that the code works */
	run_convolve_benchmark(bench_index, dim);
	if (check_convolve(dim)) {
	    printf("Benchmark \"%s\" failed correctness check for dimension %d.\n",
		   benchmarks_convolve[bench_index].description, dim);
	    return;
	}

	/* Measure CPE */
	{
	    double num_cycles, cpe;
	    int tmpdim = dim;
	    void *arglist[4];
	    double dimension = (double) dim;
	    double work = dimension*dimension;
#ifdef DEBUG
	    printf("DEBUG: dimension=%.2f\n",dimension);
	    printf("DEBUG: work=%.2f\n",work);
#endif
	    arglist[0] = (void *) benchmarks_convolve[bench_index].tfunct;
	    arglist[1] = (void *) &tmpdim;
	    arglist[2] = (void *) orig;
	    arglist[3] = (void *) result;
        
	    create(dim);
	    num_cycles = fcyc_v((test_funct_v)&func_wrapper, arglist); 
	    cpe = num_cycles/work;
	    benchmarks_convolve[bench_index].cpes[test_num] = cpe;
	}
    }

    /* Print results as a table */
    printf("convolve: Version = %s:\n", description);
    printf("Dim\t");
    for (i = 0; i < DIM_CNT; i++)
	printf("\t%d", test_dim_convolve[i]);
    printf("\tMean\n");
  
    printf("Your CPEs");
    for (i = 0; i < DIM_CNT; i++) {
	printf("\t%.2f", benchmarks_convolve[bench_index].cpes[i]);
    }
    printf("\n");

    printf("Baseline CPEs");
    for (i = 0; i < DIM_CNT; i++) {
	printf("\t%.2f", convolve_baseline_cpes[i]);
    }
    printf("\n");

    /* Compute speedup */
    {
	double prod, ratio, mean;
	prod = 1.0; /* Geometric mean */
	printf("Speedup\t");
	for (i = 0; i < DIM_CNT; i++) {
	    if (benchmarks_convolve[bench_index].cpes[i] > 0.0) {
		ratio = convolve_baseline_cpes[i]/
		    benchmarks_convolve[bench_index].cpes[i];
	    }
	    else {
		printf("Fatal Error: Non-positive CPE value...\n");
		exit(EXIT_FAILURE);
	    }
	    prod *= ratio;
	    printf("\t%.2f", ratio);
	}
	/* Geometric mean */
	mean = pow(prod, 1.0/(double) DIM_CNT);
	printf("\t%.2f", mean);
	printf("\n\n");
	if (mean > convolve_maxmean) {
	    convolve_maxmean = mean;
	    convolve_maxmean_desc = benchmarks_convolve[bench_index].description;
	}
    }

    return;  
}


void usage(char *progname) 
{
    fprintf(stderr, "Usage: %s [-hqg] [-f <func_file>] [-d <dump_file>]\n", progname);    
    fprintf(stderr, "Options:\n");
    fprintf(stderr, "  -h         Print this message\n");
    fprintf(stderr, "  -q         Quit after dumping (use with -d )\n");
    fprintf(stderr, "  -g         Autograder mode: checks only flip() and convolve()\n");
    fprintf(stderr, "  -f <file>  Get test function names from dump file <file>\n");
    fprintf(stderr, "  -d <file>  Emit a dump file <file> for later use with -f\n");
    exit(EXIT_FAILURE);
}

int main(int argc, char *argv[])
{
    int i;
    int quit_after_dump = 0;
    int skip_studentname_check = 0;
    int autograder = 0;
    int seed = 1729;
    char c = '0';
    char *bench_func_file = NULL;
    char *func_dump_file = NULL;

    /* register all the defined functions */
    register_flip_functions();
    register_convolve_functions();
//    register_normalization_functions();

    /* parse command line args */
    while ((c = getopt(argc, argv, "tgqf:d:s:h")) != -1)
	switch (c) {

	case 't': /* skip student name check (hidden flag) */
	    skip_studentname_check = 1;
	    break;

	case 's': /* seed for random number generator (hidden flag) */
	    seed = atoi(optarg);
	    break;

	case 'g': /* autograder mode (checks only flip() and convolve()) */
	    autograder = 1;
	    break;

	case 'q':
	    quit_after_dump = 1;
	    break;

	case 'f': /* get names of benchmark functions from this file */
	    bench_func_file = strdup(optarg);
	    break;

	case 'd': /* dump names of benchmark functions to this file */
	    func_dump_file = strdup(optarg);
	    {
		int i;
		FILE *fp = fopen(func_dump_file, "w");	

		if (fp == NULL) {
		    printf("Can't open file %s\n",func_dump_file);
		    exit(-5);
		}

		for(i = 0; i < flip_benchmark_count; i++) {
		    fprintf(fp, "F:%s\n", benchmarks_flip[i].description); 
		}
		for(i = 0; i < convolve_benchmark_count; i++) {
		    fprintf(fp, "C:%s\n", benchmarks_convolve[i].description); 
		}
		fclose(fp);
	    }
	    break;

	case 'h': /* print help message */
	    usage(argv[0]);

	default: /* unrecognized argument */
	    usage(argv[0]);
	}

    if (quit_after_dump) 
	exit(EXIT_SUCCESS);


    /* Print student info */
    if (!skip_studentname_check) {
	if (strcmp("bovik@nowhere.edu", team.emailA) == 0) {
	    printf("%s: Please fill in the student struct in kernels.c.\n", argv[0]);
	    exit(1);
	}
	printf("Email: %s\n", team.emailA);
	printf("\n");
    }

    srand(seed);
    team_hash = hash_team();
    printf("team_hash: %08u\n", team_hash);

    RIDX_F = ridx_f_factory();
    printf("Your flip description: \n\t");
    print_flip_description();
    copy_kernel(get_convolution_kernel(team_hash));
    printf("Your convolution kernel: \n");
    print_kernel();
    
    /* 
     * If we are running in autograder mode, we will only test
     * the flip() and bench() functions.
     */
    if (autograder) {
	flip_benchmark_count = 1;
	convolve_benchmark_count = 1;

	benchmarks_flip[0].tfunct = flip;
	benchmarks_flip[0].description = "flip() function";
	benchmarks_flip[0].valid = 1;

	benchmarks_convolve[0].tfunct = convolve;
	benchmarks_convolve[0].description = "convolve() function";
	benchmarks_convolve[0].valid = 1;
    }

    /* 
     * If the user specified a file name using -f, then use
     * the file to determine the versions of flip and convolve to test
     */
    else if (bench_func_file != NULL) {
	char flag;
	char func_line[256];
	FILE *fp = fopen(bench_func_file, "r");

	if (fp == NULL) {
	    printf("Can't open file %s\n",bench_func_file);
	    exit(-5);
	}
    
	while(func_line == fgets(func_line, 256, fp)) {
	    char *func_name = func_line;
	    char **strptr = &func_name;
	    char *token = strsep(strptr, ":");
	    flag = token[0];
	    func_name = strsep(strptr, "\n");
#ifdef DEBUG
	    printf("Function Description is %s\n",func_name);
#endif

	    if (flag == 'F') {
		for(i=0; i<flip_benchmark_count; i++) {
		    if (strcmp(benchmarks_flip[i].description, func_name) == 0)
			benchmarks_flip[i].valid = 1;
		}
	    }
	    else if (flag == 'C') {
		for(i=0; i<convolve_benchmark_count; i++) {
		    if (strcmp(benchmarks_convolve[i].description, func_name) == 0)
			benchmarks_convolve[i].valid = 1;
		}
	    }      
	}

	fclose(fp);
    }

    /* 
     * If the user didn't specify a dump file using -f, then 
     * test all of the functions
     */
    else { /* set all valid flags to 1 */
	for (i = 0; i < flip_benchmark_count; i++)
	    benchmarks_flip[i].valid = 1;
	for (i = 0; i < convolve_benchmark_count; i++)
	    benchmarks_convolve[i].valid = 1;
    }

    /* Set measurement (fcyc) parameters */
    set_fcyc_cache_size(1 << 14); /* 16 KB cache size */
    set_fcyc_clear_cache(1); /* clear the cache before each measurement */
    set_fcyc_compensate(1); /* try to compensate for timer overhead */
 
    for (i = 0; i < flip_benchmark_count; i++) {
	if (benchmarks_flip[i].valid)
	    test_flip(i);
    }

    for (i = 0; i < convolve_benchmark_count; i++) {
	if (benchmarks_convolve[i].valid)
	    test_convolve(i);
    }

    int flip_points = 5+((flip_maxmean-1.0)*18.75);
    int convolve_points = 5+((convolve_maxmean-1.0)*2.64);
    
    if(flip_points > 28) flip_points = 28;
    if(convolve_points > 28) convolve_points = 28;
    int total_points = flip_points+convolve_points;
    if(total_points > 50) total_points = 50;
    
    if (autograder) {
	printf("\nbestscores:%.2f:%.2f:\n", flip_maxmean, convolve_maxmean);
    //printf("\tflip Points: %d\n\tconvolve Points: %d\n\tTotal Points: %d\n",flip_points, convolve_points, total_points);
    }
    else {
	printf("Summary of Your Best Scores:\n");
	printf("  flip: %3.2f (%s)\n", flip_maxmean, flip_maxmean_desc);
	printf("  convolve: %3.2f (%s)\n", convolve_maxmean, convolve_maxmean_desc);
    }

    return 0;
}













