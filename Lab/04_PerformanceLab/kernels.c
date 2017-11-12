/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/*
 * Please fill in the following student struct:
 */
const team_t team = {
    "apve4733@colorado.edu", //Replace this with your email address.
    ""                   //Replace this with your partner's email address. Leave blank if working alone.
};

/***************
 * FLIP KERNEL
 ***************/


#define RIDXF(i,j,n) ((i)*(n)+(n - 1 - j))

/******************************************************
 * Your different versions of the flip kernel go here
 ******************************************************/
 
/* 
 * naive_flip - The naive baseline version of flip 
 */
char naive_flip_descr[] = "naive_flip: Naive baseline implementation";
void naive_flip(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    for (i = 0; i < dim; i++){
        for (j = 0; j < dim; j++){
            dst[RIDX_F(i, j, dim)].red   = src[RIDX(i, j, dim)].red;
            dst[RIDX_F(i, j, dim)].green = src[RIDX(i, j, dim)].green;
            dst[RIDX_F(i, j, dim)].blue  = src[RIDX(i, j, dim)].blue;
        }
    }
}

/* 
 * flip - Your current working version of flip
 * IMPORTANT: This is the version you will be graded on
 */
char flip_descr[] = "flip: Current working version";
void flip(int dim, pixel *src, pixel *dst) 
{
    register int i, j;
    int dimD = dim - 1;
    int dim2 = dim << 1;
    int dimHalf = (dim >> 1);
    int ni = 0;
    int ni2 = dim;
    int hi = dimHalf*dim;
    int hi2 = hi + dim;

    // TODO: Try with just half; only 4 elements; intertwining references
    for (i = 0; i < dimHalf; i+=2){
        int pi = ni + dimD;
        int pi2 = ni2 + dimD;
        for (j = 0; j < dim; j+=8){
            int piJ = pi - j;
            int niJ = ni + j;
            dst[piJ] = src[niJ];
            dst[piJ - 1] = src[niJ + 1];
            dst[piJ - 2] = src[niJ + 2];
            dst[piJ - 3] = src[niJ + 3];
            dst[piJ - 4] = src[niJ + 4];
            dst[piJ - 5] = src[niJ + 5];
            dst[piJ - 6] = src[niJ + 6];
            dst[piJ - 7] = src[niJ + 7];

            int piJ2 = pi2 - j;
            int niJ2 = ni2 + j;
            dst[piJ2] = src[niJ2];
            dst[piJ2 - 1] = src[niJ2 + 1];
            dst[piJ2 - 2] = src[niJ2 + 2];
            dst[piJ2 - 3] = src[niJ2 + 3];
            dst[piJ2 - 4] = src[niJ2 + 4];
            dst[piJ2 - 5] = src[niJ2 + 5];
            dst[piJ2 - 6] = src[niJ2 + 6];
            dst[piJ2 - 7] = src[niJ2 + 7];
        }
        ni += dim2;
        ni2 += dim2;

        pi = hi + dimD;
        pi2 = hi2 + dimD;
        for(j = 0; j < dim; j+=8) {
            int piJ = pi - j;
            int niJ = hi + j;
            dst[piJ] = src[niJ];
            dst[piJ - 1] = src[niJ + 1];
            dst[piJ - 2] = src[niJ + 2];
            dst[piJ - 3] = src[niJ + 3];
            dst[piJ - 4] = src[niJ + 4];
            dst[piJ - 5] = src[niJ + 5];
            dst[piJ - 6] = src[niJ + 6];
            dst[piJ - 7] = src[niJ + 7];

            int piJ2 = pi2 - j;
            int niJ2 = hi2 + j;
            dst[piJ2] = src[niJ2];
            dst[piJ2 - 1] = src[niJ2 + 1];
            dst[piJ2 - 2] = src[niJ2 + 2];
            dst[piJ2 - 3] = src[niJ2 + 3];
            dst[piJ2 - 4] = src[niJ2 + 4];
            dst[piJ2 - 5] = src[niJ2 + 5];
            dst[piJ2 - 6] = src[niJ2 + 6];
            dst[piJ2 - 7] = src[niJ2 + 7];
        }
        hi += dim2;
        hi2 += dim2;
    }

}

char flip_descr2[] = "flip: Pointers - odd and even";
void flip2(int dim, pixel *src, pixel *dst)
{
    register int i, j;
    int dimD = dim - 1;
    int dim2 = dim << 1; // 2 * dim
    int dim3 = dim2 + dim; // 3 * dim
    register pixel *oddSrc, *oddDst, *evenSrc, *evenDst;

    oddSrc = src; // initialize to first element in first row
    oddDst = dst + dimD; // initialize to last element in first row
    evenSrc = src + dim; // initialize to first element in second row
    evenDst = dst + dim + dimD; // initialize to last element in second row

    // Mirror two consecutive rows simultaneously
 	for (i = 0; i < dim; i+=2) {

 		// Loop unrolling
 		for (j = 0; j < dim; j+=4) {
             
            // Mirror 4 elements of odd row
            *(oddDst) = *(oddSrc);
 			*(oddDst - 1) = *(oddSrc + 1);
 			*(oddDst - 2) = *(oddSrc + 2);
 			*(oddDst - 3) = *(oddSrc + 3);
            oddDst -= 4; // this finally goes to previous even row
            oddSrc += 4; // this finally goes to the next even row

            // Mirror 4 elements of even row
            *(evenDst) = *(evenSrc);
 			*(evenDst - 1) = *(evenSrc + 1);
 			*(evenDst - 2) = *(evenSrc + 2);
            *(evenDst - 3) = *(evenSrc + 3);
            evenDst -= 4; // this finally goes to previous odd row
            evenSrc += 4; // this finally goes to the next odd row
        }
        
        oddSrc += dim; // set odd src pointer to first element of next odd row
        oddDst += dim3; // set odd dest pointer to last element of next odd row

        evenSrc += dim; // set even src pointer to first element of next even row
        evenDst += dim3; // set even dest pointer to last element of next even row

 	}
}

char flip_descr3[] = "flip: No pointers - odd and even";
void flip3(int dim, pixel *src, pixel *dst) 
{
    register int i, j;
    int dimD = dim - 1;
    int dim2 = dim << 1;
    int ni = 0;
    int ni2 = dim;

    for (i = 0; i < dim; i+=2){
        int pi = ni + dimD;
        int pi2 = ni2 + dimD;

        for (j = 0; j < dim; j+=8){
            int piJ = pi - j;
            int niJ = ni + j;
            dst[piJ]   = src[niJ];
            dst[piJ - 1]   = src[niJ + 1];
            dst[piJ - 2]   = src[niJ + 2];
            dst[piJ - 3]   = src[niJ + 3];
            dst[piJ - 4]   = src[niJ + 4];
            dst[piJ - 5]   = src[niJ + 5];
            dst[piJ - 6]   = src[niJ + 6];
            dst[piJ - 7]   = src[niJ + 7];

            int piJ2 = pi2 - j;
            int niJ2 = ni2 + j;
            dst[piJ2]   = src[niJ2];
            dst[piJ2 - 1]   = src[niJ2 + 1];
            dst[piJ2 - 2]   = src[niJ2 + 2];
            dst[piJ2 - 3]   = src[niJ2 + 3];
            dst[piJ2 - 4]   = src[niJ2 + 4];
            dst[piJ2 - 5]   = src[niJ2 + 5];
            dst[piJ2 - 6]   = src[niJ2 + 6];
            dst[piJ2 - 7]   = src[niJ2 + 7];
        }

        ni += dim2;
        ni2 += dim2;
    }

}

/*********************************************************************
 * register_flip_functions - Register all of your different versions
 *     of the flip kernel with the driver by calling the
 *     add_flip_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_flip_functions() 
{
    // add_flip_function(&flip, flip_descr);
    // add_flip_function(&naive_flip, naive_flip_descr);   
    /* ... Register additional test functions here */
    // add_flip_function(&flip3, flip_descr3);
}


/***************
 * CONVOLVE KERNEL
 **************/
 
/***************************************************************
 * Various typedefs and helper functions for the convolve function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute a pixel value */
typedef struct {
    float red;
    float green;
    float blue;
    float weight;
} pixel_sum;

typedef struct {
    float red;
    float green;
    float blue;
} pixel_sum2;

/******************************************************
 * Your different versions of the convolve kernel go here
 ******************************************************/

/*
 * naive_convolve - The naive baseline version of convolve 
 */
char naive_convolve_descr[] = "naive_convolve: Naive baseline implementation";
void naive_convolve(int dim, pixel *src, pixel *dst) 
{
    int i, j, ii, jj, curI, curJ;
    pixel_sum ps;
    
    for (j = 0; j < dim; j++){
        for (i = 0; i < dim; i++){
            ps.red    = 0.0;
            ps.green  = 0.0;
            ps.blue   = 0.0;
            ps.weight = 0.0;
            for (jj = -2; jj <= 2; jj++){
                for (ii = -2; ii <= 2; ii++){
                    curJ = j+jj;
                    if(curJ<0 || curJ>=dim){
                        continue;
                    }
                    curI = i+ii;
                    if(curI<0 || curI>=dim){
                        continue;
                    }
                    ps.red   += src[RIDX(curI, curJ, dim)].red *   kernel[ii+2][jj+2];
                    ps.green += src[RIDX(curI, curJ, dim)].green * kernel[ii+2][jj+2];
                    ps.blue  += src[RIDX(curI, curJ, dim)].blue *  kernel[ii+2][jj+2];
                    ps.weight += kernel[ii+2][jj+2];
                }
            }
            dst[RIDX(i,j,dim)].red   = (unsigned short)(ps.red/ps.weight);
            dst[RIDX(i,j,dim)].green = (unsigned short)(ps.green/ps.weight);
            dst[RIDX(i,j,dim)].blue  = (unsigned short)(ps.blue/ps.weight);
        }
    }
}

/*
 * convolve - Your current working version of convolve. 
 * IMPORTANT: This is the version you will be graded on
 */
char convolve_descr[] = "convolve: Current working version";
void convolve(int dim, pixel *src, pixel *dst) 
{
    int i, j, ii, jj;//, curI, curJ;
    pixel_sum2 ps;

    // EDGE CASES
    // Top corners
    // dst[0] or dst[0][0]
    int kWeight = kernel[2][2] + kernel[2][3] + kernel[2][4] +
                  kernel[3][2] + kernel[3][3] + kernel[3][4] +
                  kernel[4][2] + kernel[4][3] + kernel[4][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    int ix = -2;
    for (ii = 2; ii < 5; ++ii){
        for (jj = 2; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[0].red = ps.red / kWeight;
    dst[0].green = ps.green / kWeight;
    dst[0].blue = ps.blue / kWeight;
    // dst[1] or dst[0][1]
    kWeight += kernel[2][1] + kernel[3][1] + kernel[4][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -1;
    for (ii = 2; ii < 5; ++ii){
        for (jj = 1; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[1].red = ps.red / kWeight;
    dst[1].green = ps.green / kWeight;
    dst[1].blue = ps.blue / kWeight;
    //dst[dim-2] or dst[0][dim-2]
    kWeight = kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] +
            kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] +
            kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-4;
    for (ii = 2; ii < 5; ++ii){
        for (jj = 0; jj < 4; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim-2].red = ps.red / kWeight;
    dst[dim-2].green = ps.green / kWeight;
    dst[dim-2].blue = ps.blue / kWeight;
    //dst[dim-1] or dst[0][dim-1]
    kWeight -= (kernel[2][3] + kernel[3][3] + kernel[4][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-3;
    for (ii = 2; ii < 5; ++ii){
        for (jj = 0; jj < 3; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim-1].red = ps.red / kWeight;
    dst[dim-1].green = ps.green / kWeight;
    dst[dim-1].blue = ps.blue / kWeight;
    // dst[dim] or dst[dim][0]
    kWeight = kernel[1][2] + kernel[1][3] + kernel[1][4] +
            kernel[2][2] + kernel[2][3] + kernel[2][4] +
            kernel[3][2] + kernel[3][3] + kernel[3][4] +
            kernel[4][2] + kernel[4][3] + kernel[4][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -2;
    for (ii = 1; ii < 5; ++ii){
        for (jj = 2; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim].red = ps.red / kWeight;
    dst[dim].green = ps.green / kWeight;
    dst[dim].blue = ps.blue / kWeight;
    // dst[dim + 1] or dst[dim][1]
    kWeight += kernel[1][1] + kernel[2][1] + kernel[3][1] + kernel[4][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -1;
    for (ii = 1; ii < 5; ++ii){
        for (jj = 1; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim+1].red = ps.red / kWeight;
    dst[dim+1].green = ps.green / kWeight;
    dst[dim+1].blue = ps.blue / kWeight;
    // dst[dim*2 -2] or dst[dim][dim - 2]
    int dim2 = dim << 1;
    kWeight = kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] +
            kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] +
            kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] +
            kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-4;
    for (ii = 1; ii < 5; ++ii){
        for (jj = 0; jj < 4; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim2-2].red = ps.red / kWeight;
    dst[dim2-2].green = ps.green / kWeight;
    dst[dim2-2].blue = ps.blue / kWeight;
    // dst[dim*2 -1] or dst[dim][dim - 1]
    kWeight -= (kernel[1][3] + kernel[2][3] + kernel[3][3] + kernel[4][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-3;
    for (ii = 1; ii < 5; ++ii){
        for (jj = 0; jj < 3; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dst[dim2-1].red = ps.red / kWeight;
    dst[dim2-1].green = ps.green / kWeight;
    dst[dim2-1].blue = ps.blue / kWeight;

    // Top Edges
    // row[0]
    kWeight = kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] + kernel[2][4] +
            kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] + kernel[3][4] +
            kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3] + kernel[4][4];
    for (j = 2; j < dim - 2; ++j){
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = j - 2;
        for (ii = 2; ii < 5; ++ii){
            for (jj = 0; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[j].red   = ps.red / kWeight;
        dst[j].green = ps.green / kWeight;
        dst[j].blue  = ps.blue / kWeight;
    }
    // row[1]
    kWeight += kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] + kernel[1][4];
    for (j = 2; j < dim - 2; ++j){
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = j - 2;
        for (ii = 1; ii < 5; ++ii){
            for (jj = 0; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dim+j].red   = ps.red / kWeight;
        dst[dim+j].green = ps.green / kWeight;
        dst[dim+j].blue  = ps.blue / kWeight;
    }

    // Bottom corners
    // dst[dim-2][0]
    kWeight = kernel[0][2] + kernel[0][3] + kernel[0][4] +
              kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][2] + kernel[2][3] + kernel[2][4] +
              kernel[3][2] + kernel[3][3] + kernel[3][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-4)*dim-2;
    for (ii = 0; ii < 4; ++ii){
        for (jj = 2; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-2);
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-2][1]
    kWeight += kernel[0][1] + kernel[1][1] + kernel[2][1] + kernel[3][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-4)*dim-1;
    for (ii = 0; ii < 4; ++ii){
        for (jj = 1; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-2) + 1;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-2][dim-2]
    kWeight = kernel[0][0] + kernel[0][1] + kernel[0][2] + kernel[0][3] +
              kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] +
              kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] +
              kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-4)*dim + dim - 4;
    for (ii = 0; ii < 4; ++ii){
        for (jj = 0; jj < 4; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-2) + dim - 2;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-2][dim-1]
    kWeight -= (kernel[0][3] + kernel[1][3] + kernel[2][3] + kernel[3][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-4)*dim + dim - 3;
    for (ii = 0; ii < 4; ++ii){
        for (jj = 0; jj < 3; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-2) + dim - 1;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-1][0]
    kWeight = kernel[0][2] + kernel[0][3] + kernel[0][4] +
              kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][2] + kernel[2][3] + kernel[2][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-3)*dim - 2;
    for (ii = 0; ii < 3; ++ii){
        for (jj = 2; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-1);
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-1][1]
    kWeight += kernel[0][1] + kernel[1][1] + kernel[2][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-3)*dim - 1;
    for (ii = 0; ii < 3; ++ii){
        for (jj = 1; jj < 5; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*(dim-1) + 1;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-1][dim-2]
    kWeight = kernel[0][0] + kernel[0][1] + kernel[0][2] + kernel[0][3] +
              kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] +
              kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-3)*dim + dim - 4;
    for (ii = 0; ii < 3; ++ii){
        for (jj = 0; jj < 4; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*dim - 2;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;
    // dst[dim-1][dim-1]
    kWeight -= (kernel[0][3] + kernel[1][3] + kernel[2][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-3)*dim + dim - 3;
    for (ii = 0; ii < 3; ++ii){
        for (jj = 0; jj < 3; ++jj) {
            ps.red += src[ix+jj].red * kernel[ii][jj];
            ps.green += src[ix+jj].green * kernel[ii][jj];
            ps.blue += src[ix+jj].blue * kernel[ii][jj];
        }
        ix += dim;
    }
    dim2 = dim*dim - 1;
    dst[dim2].red = ps.red / kWeight;
    dst[dim2].green = ps.green / kWeight;
    dst[dim2].blue = ps.blue / kWeight;

    // Bottom edges
    // row[dim-2]
    kWeight = kernel[0][0] + kernel[0][1] + kernel[0][2] + kernel[0][3] + kernel[0][4] +
              kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] + kernel[2][4] +
              kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] + kernel[3][4];
    dim2 = dim-2;
    int dimS = dim*(dim-2);
    int dimS2 = dim*(dim-4);
    for (j = 2; j < dim2; ++j) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = dimS2 + j - 2;
        for (ii = 0; ii < 4; ++ii){
            for (jj = 0; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS+j].red   = ps.red / kWeight;
        dst[dimS+j].green = ps.green / kWeight;
        dst[dimS+j].blue  = ps.blue / kWeight;
    }
    // row[dim-1]
    kWeight -= (kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] + kernel[3][4]);
    dimS = dim*(dim-1);
    dimS2 = dim*(dim-3);
    for (j = 2; j < dim2; ++j) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = dimS2 + j - 2;
        for (ii = 0; ii < 3; ++ii){
            for (jj = 0; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS+j].red   = ps.red / kWeight;
        dst[dimS+j].green = ps.green / kWeight;
        dst[dimS+j].blue  = ps.blue / kWeight;
    }
    
    // Sides
    // column[0]
    kWeight = kernel[0][2] + kernel[0][3] + kernel[0][4] +
              kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][2] + kernel[2][3] + kernel[2][4] +
              kernel[3][2] + kernel[3][3] + kernel[3][4] +
              kernel[4][2] + kernel[4][3] + kernel[4][4];
    dimS = dim << 1;
    for (i = 2; i < dim2; ++i) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = (i-2)*dim - 2;
        for (ii = 0; ii < 5; ++ii){
            for (jj = 2; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS].red   = ps.red / kWeight;
        dst[dimS].green = ps.green / kWeight;
        dst[dimS].blue  = ps.blue / kWeight;
        dimS += dim;
    }
    // column[1]
    kWeight += (kernel[0][1] + kernel[1][1] + kernel[2][1] + kernel[3][1] + kernel[4][1]);
    dimS = (dim << 1) + 1;
    for (i = 2; i < dim2; ++i) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = (i-2)*dim - 1;
        for (ii = 0; ii < 5; ++ii){
            for (jj = 1; jj < 5; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS].red   = ps.red / kWeight;
        dst[dimS].green = ps.green / kWeight;
        dst[dimS].blue  = ps.blue / kWeight;
        dimS += dim;
    }
    // column[dim-2]
    kWeight += (kernel[0][1] + kernel[1][1] + kernel[2][1] + kernel[3][1] + kernel[4][1]) -
               (kernel[0][4] + kernel[1][4] + kernel[2][4] + kernel[3][4] + kernel[4][4]);
    dimS = (dim << 1) + dim - 2;
    for (i = 2; i < dim2; ++i) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = (i-2)*dim + dim - 4;
        for (ii = 0; ii < 5; ++ii){
            for (jj = 0; jj < 4; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS].red   = ps.red / kWeight;
        dst[dimS].green = ps.green / kWeight;
        dst[dimS].blue  = ps.blue / kWeight;
        dimS += dim;
    }
    // column[dim-1]
    kWeight -= (kernel[0][3] + kernel[1][3] + kernel[2][3] + kernel[3][3] + kernel[4][3]);
    dimS = (dim << 1) + dim - 1;
    for (i = 2; i < dim2; ++i) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = (i-2)*dim + dim - 3;
        for (ii = 0; ii < 5; ++ii){
            for (jj = 0; jj < 3; ++jj){
                ps.red   += src[ix+jj].red *   kernel[ii][jj];
                ps.green += src[ix+jj].green * kernel[ii][jj];
                ps.blue  += src[ix+jj].blue *  kernel[ii][jj];
            }
            ix += dim;
        }
        dst[dimS].red   = ps.red / kWeight;
        dst[dimS].green = ps.green / kWeight;
        dst[dimS].blue  = ps.blue / kWeight;
        dimS += dim;
    }

    // THE MEAT OF CONVOLUTION
    // Now, this weight doesn't change - so calculate this beforehand
    kWeight = kernel[0][0] + kernel[0][1] + kernel[0][2] + kernel[0][3] + kernel[0][4] +
              kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] + kernel[2][4] +
              kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] + kernel[3][4] +
              kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3] + kernel[4][4];

    dimS = dim << 1;
    for (i = 2; i < dim2; ++i){
        for (j = 2; j < dim2; ++j){
            ps.red    = 0.0;
            ps.green  = 0.0;
            ps.blue   = 0.0;
            ix = (i-2)*dim + j - 2; // Offset for src locations
            for (ii = 0; ii < 5; ++ii){
                for (jj = 0; jj < 5; ++jj){
                    // float kernelWeight = kernel[ii][jj];
                    ps.red   += src[ix + jj].red *   kernel[ii][jj];
                    ps.green += src[ix + jj].green * kernel[ii][jj];
                    ps.blue  += src[ix + jj].blue *  kernel[ii][jj];
                }
                ix += dim;
            }
            // Calculate dst location with dimS and j
            ix = dimS + j;
            dst[ix].red   = ps.red / kWeight;
            dst[ix].green = ps.green / kWeight;
            dst[ix].blue  = ps.blue / kWeight;
        }
        dimS += dim;
    }
}

char convolve_descr2[] = "convolve: Old readable version - gave 2.72";
void convolve2(int dim, pixel *src, pixel *dst) 
{
    int i, j, ii, jj, curI, curJ;
    pixel_sum ps;
    
    for (i = 0; i < dim; ++i){
        for (j = 0; j < dim; ++j){
            ps.red    = 0.0;
            ps.green  = 0.0;
            ps.blue   = 0.0;
            ps.weight = 0.0;
            curI = i - 3;
            for (ii = 0; ii < 5; ++ii){

                ++curI;
                if(curI < 0) {
                    continue;
                }
                if (curI >= dim) {
                    break;
                }

                curJ = j - 3;
                for (jj = 0; jj < 5; ++jj){

                    ++curJ;
                    if(curJ < 0) {
                        continue;
                    }
                    if (curJ >= dim) {
                        break;
                    }

                    float kernelWeight = kernel[ii][jj];
                    int index = RIDX(curI, curJ, dim);
                    ps.red   += src[index].red *   kernelWeight;
                    ps.green += src[index].green * kernelWeight;
                    ps.blue  += src[index].blue *  kernelWeight;
                    ps.weight += kernelWeight;
                }
            }
            int index = RIDX(i, j, dim);
            dst[index].red   = (unsigned short)(ps.red/ps.weight);
            dst[index].green = (unsigned short)(ps.green/ps.weight);
            dst[index].blue  = (unsigned short)(ps.blue/ps.weight);
        }
    }
}

char convolve_descr_Shit[] = "convolve: Some shitty changes that gave 3.18";
void convolve_Shit(int dim, pixel *src, pixel *dst)
{
    int i, j, ii, jj, curI, curJ;
    float red, green, blue, weight; // Use these instead of derefencing pixel_sum each time
    int outerCounter = 0; // Counter to calculate the offset for dst pointer
    // Permute loops
    for (i = 0; i < dim; ++i){        
        int iSub3 = i - 3; // Don't compute this each time in the 2 innermost loop
        for (j = 0; j < dim; ++j){
            red    = 0.0;
            green  = 0.0;
            blue   = 0.0;
            weight = 0.0;
            int innerCounter = iSub3 * dim; // Counter to calculate the offset for src pointer
            int jSub3 = j - 3; // Don't compute this each time in the 2 innermost loops
            curI = iSub3;
            // Permute loops
            // Go from 0 to 4 instead of -2 to 2
            for (ii = 0; ii < 5; ++ii){
                // Moved this out of inner loop because curI don't change there
                ++curI;
                innerCounter += dim;
                if (curI < 0) {
                    continue;
                }
                if (curI >= dim) {
                    break;
                }
                curJ = jSub3;
                float *kernelRow = *(kernel + ii); // Points to the row in question (kernel[ii])
                // Go from 0 to 4 instead of -2 to 2
                for (jj = 0; jj < 5; ++jj){
                    ++curJ;
                    if (curJ < 0) {
                        continue;
                    }
                    if (curJ >= dim) {
                        break;
                    }
                    pixel src_curr = *(src + innerCounter + curJ); // Compute src[RDIX(curI, curJ, dim)] only once
                    float kernelWeight = *(kernelRow + jj); // Get kernel[ii][jj] value only once
                    red   += src_curr.red *   kernelWeight;
                    green += src_curr.green * kernelWeight;
                    blue  += src_curr.blue *  kernelWeight;
                    weight += kernelWeight;
                }
            }
            pixel* dst_curr = dst + outerCounter + j; // Compute address of dst[RIDX(i, j, dim)] only once
            dst_curr->red   = (unsigned short) (red / weight);
            dst_curr->green = (unsigned short) (green / weight);
            dst_curr->blue  = (unsigned short) (blue / weight);
        }
        outerCounter += dim;
    }
}

/********************************************************************* 
 * register_convolve_functions - Register all of your different versions
 *     of the convolve kernel with the driver by calling the
 *     add_convolve_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_convolve_functions() {
    add_convolve_function(&convolve, convolve_descr);
    // add_convolve_function(&naive_convolve, naive_convolve_descr);
    /* ... Register additional test functions here */
    // add_convolve_function(&convolve_Shit, convolve_descr_Shit);
}

