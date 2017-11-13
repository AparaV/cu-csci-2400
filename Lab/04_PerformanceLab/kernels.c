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
    int pi, ni = 0, piJ, niJ;

    for (i = 0; i < dim; i+=2){
        // Loop through odd rows
        pi = ni + dimD;
        for (j = 0; j < dim; j+=8){
            piJ = pi - j;
            niJ = ni + j;
            dst[piJ] = src[niJ];
            dst[piJ - 1] = src[niJ + 1];
            dst[piJ - 2] = src[niJ + 2];
            dst[piJ - 3] = src[niJ + 3];
            dst[piJ - 4] = src[niJ + 4];
            dst[piJ - 5] = src[niJ + 5];
            dst[piJ - 6] = src[niJ + 6];
            dst[piJ - 7] = src[niJ + 7];     
        }
        ni += dim;

        // Loop through even rows
        pi = ni + dimD;
        for (j = 0; j < dim; j+=8) {
            piJ = pi - j;
            niJ = ni + j;
            dst[piJ] = src[niJ];
            dst[piJ - 1] = src[niJ + 1];
            dst[piJ - 2] = src[niJ + 2];
            dst[piJ - 3] = src[niJ + 3];
            dst[piJ - 4] = src[niJ + 4];
            dst[piJ - 5] = src[niJ + 5];
            dst[piJ - 6] = src[niJ + 6];
            dst[piJ - 7] = src[niJ + 7];
        }
        ni += dim;
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
    add_flip_function(&flip, flip_descr);
    // add_flip_function(&naive_flip, naive_flip_descr);   
    /* ... Register additional test functions here */
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
    register int i, j, ii, ix, kWeight;
    register pixel_sum2 ps;
    int dim2, dimS, dimS2;

    // EDGE CASES
    // Top corners
    // dst[0] or dst[0][0]
    kWeight = kernel[2][2] + kernel[2][3] + kernel[2][4] +
                  kernel[3][2] + kernel[3][3] + kernel[3][4] +
                  kernel[4][2] + kernel[4][3] + kernel[4][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -2;
    // Unroll innermost loop and hard code computations
    for (ii = 2; ii < 5; ++ii){
        // for jj = 2; jj < 5; ++jj
        ps.red += (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
    dst[0].red = ps.red / kWeight;
    dst[0].green = ps.green / kWeight;
    dst[0].blue = ps.blue / kWeight;
    // dst[1] or dst[0][1]
    kWeight += kernel[2][1] + kernel[3][1] + kernel[4][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -1;
    // Unroll innermost loop and hard code computations
    for (ii = 2; ii < 5; ++ii){
        // for jj = 1; jj < 5; ++jj
        ps.red += (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
    dst[1].red = ps.red / kWeight;
    dst[1].green = ps.green / kWeight;
    dst[1].blue = ps.blue / kWeight;
    // dst[dim-2] or dst[0][dim-2]
    kWeight = kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] +
            kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] +
            kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-4;
    // Unroll innermost loop and hard code computations
    for (ii = 2; ii < 5; ++ii){
        // for jj = 0; jj < 4; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]);
        ix += dim;
    }
    // Calculate output
    dst[dim-2].red = ps.red / kWeight;
    dst[dim-2].green = ps.green / kWeight;
    dst[dim-2].blue = ps.blue / kWeight;
    // dst[dim-1] or dst[0][dim-1]
    kWeight -= (kernel[2][3] + kernel[3][3] + kernel[4][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-3;
    // Unroll innermost loop and hard code computations
    for (ii = 2; ii < 5; ++ii){
        // for jj = 0; jj < 3; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]);
        ix += dim;
    }
    // Calculate output
    dst[dim-1].red = ps.red / kWeight;
    dst[dim-1].green = ps.green / kWeight;
    dst[dim-1].blue = ps.blue / kWeight;
    // dst[dim] or dst[1][0]
    kWeight = kernel[1][2] + kernel[1][3] + kernel[1][4] +
            kernel[2][2] + kernel[2][3] + kernel[2][4] +
            kernel[3][2] + kernel[3][3] + kernel[3][4] +
            kernel[4][2] + kernel[4][3] + kernel[4][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -2;
    // Unroll innermost loop and hard code computations
    for (ii = 1; ii < 5; ++ii){
        // for jj = 2; jj < 5; ++jj
        ps.red += (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
    dst[dim].red = ps.red / kWeight;
    dst[dim].green = ps.green / kWeight;
    dst[dim].blue = ps.blue / kWeight;
    // dst[dim + 1] or dst[1][1]
    kWeight += kernel[1][1] + kernel[2][1] + kernel[3][1] + kernel[4][1];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = -1;
    // Unroll innermost loop and hard code computations
    for (ii = 1; ii < 5; ++ii){
        // for jj = 1; jj < 5; ++jj
        ps.red += (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
    dst[dim+1].red = ps.red / kWeight;
    dst[dim+1].green = ps.green / kWeight;
    dst[dim+1].blue = ps.blue / kWeight;
    // dst[dim*2 -2] or dst[1][dim - 2]
    dim2 = dim << 1;
    kWeight = kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] +
            kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] +
            kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] +
            kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-4;
    // Unroll innermost loop and hard code computations
    for (ii = 1; ii < 5; ++ii){
        // for jj = 0; jj < 4; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]);
        ix += dim;
    }
    // Calculate output
    dst[dim2-2].red = ps.red / kWeight;
    dst[dim2-2].green = ps.green / kWeight;
    dst[dim2-2].blue = ps.blue / kWeight;
    // dst[dim*2 -1] or dst[1][dim - 1]
    kWeight -= (kernel[1][3] + kernel[2][3] + kernel[3][3] + kernel[4][3]);
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = dim-3;
    // Unroll innermost loop and hard code computations
    for (ii = 1; ii < 5; ++ii){
        // for jj = 0; jj < 3; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]);
        ix += dim;
    }
    // Calculate output
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
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 4; ++ii){
        // for jj = 2; jj < 5; ++jj
        ps.red += (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 4; ++ii){
        // for jj = 1; jj < 5; ++jj
        ps.red += (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 4; ++ii){
        // for jj = 0; jj < 4; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 4; ++ii){
        // for jj = 0; jj < 3; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 3; ++ii){
        // for jj = 2; jj < 5; ++jj
        ps.red += (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 3; ++ii){
        // for jj = 1; jj < 5; ++jj
        ps.red += (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
        ps.green += (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
        ps.blue += (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 3; ++ii){
        // for jj = 0; jj < 4; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]);
        ix += dim;
    }
    // Calculate output
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
    // Unroll innermost loop and hard code computations
    for (ii = 0; ii < 3; ++ii){
        // for jj = 0; jj < 3; ++jj
        ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]);
        ps.green += (src[ix].green * kernel[ii][0]) +(src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]);
        ps.blue += (src[ix].blue * kernel[ii][0]) +(src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]);
        ix += dim;
    }
    // Calculate output
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
    dimS = dim*(dim-2);
    dimS2 = dim*(dim-4);
    for (j = 2; j < dim2; ++j) {
        ps.red    = 0.0;
        ps.green  = 0.0;
        ps.blue   = 0.0;
        ix = dimS2 + j - 2;
        // Unrolled innermost loop and hard coded calculations
        for (ii = 0; ii < 4; ++ii){
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
        // Unrolled innermost loop and hard coded calculations
        for (ii = 0; ii < 3; ++ii){
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
        // Unroll innermost loop and hard code computations
        for (ii = 0; ii < 5; ++ii){
            // for jj = 2; jj < 5; ++j
            ps.red += (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
        // Unroll innermost loop and hard code calculations
        for (ii = 0; ii < 5; ++ii){
            // for jj = 1; jj < 5; ++jj
            ps.red += (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]) + (src[ix+4].red * kernel[ii][4]);
            ps.green += (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]) + (src[ix+4].green * kernel[ii][4]);
            ps.blue += (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]) + (src[ix+4].blue * kernel[ii][4]);
            ix += dim;
        }
        // Calculate output
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
        // Unroll innermost loop and hard code computations
        for (ii = 0; ii < 5; ++ii){
            // for jj = 0; jj < 4; ++jj
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]) + (src[ix+3].red * kernel[ii][3]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]) + (src[ix+3].green * kernel[ii][3]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]) + (src[ix+3].blue * kernel[ii][3]);
            ix += dim;
        }
        // Calculate output
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
        // Unroll innermost loop and hard code computations
        for (ii = 0; ii < 5; ++ii){
            // for jj = 0; jj < 3; ++jj
            ps.red += (src[ix].red * kernel[ii][0]) + (src[ix+1].red * kernel[ii][1]) + (src[ix+2].red * kernel[ii][2]);
            ps.green += (src[ix].green * kernel[ii][0]) + (src[ix+1].green * kernel[ii][1]) + (src[ix+2].green * kernel[ii][2]);
            ps.blue += (src[ix].blue * kernel[ii][0]) + (src[ix+1].blue * kernel[ii][1]) + (src[ix+2].blue * kernel[ii][2]);
            ix += dim;
        }
        // Calculate output
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

            // Get rid of the two inner loops hard coding the convolution calculation
            ix = (i-2)*dim + j - 2; // Initial offset for src locations
            // Row[0]
            ps.red += (src[ix].red * kernel[0][0]) + (src[ix+1].red * kernel[0][1]) + (src[ix+2].red * kernel[0][2]) +(src[ix+3].red * kernel[0][3]) + (src[ix+4].red * kernel[0][4]);
            ps.green += (src[ix].green * kernel[0][0]) + (src[ix+1].green * kernel[0][1]) + (src[ix+2].green * kernel[0][2]) +(src[ix+3].green * kernel[0][3]) + (src[ix+4].green * kernel[0][4]);
            ps.blue += (src[ix].blue * kernel[0][0]) + (src[ix+1].blue * kernel[0][1]) + (src[ix+2].blue * kernel[0][2]) +(src[ix+3].blue * kernel[0][3]) + (src[ix+4].blue * kernel[0][4]);
            ix += dim;
            // Row[1]
            ps.red += (src[ix].red * kernel[1][0]) + (src[ix+1].red * kernel[1][1]) + (src[ix+2].red * kernel[1][2]) +(src[ix+3].red * kernel[1][3]) + (src[ix+4].red * kernel[1][4]);
            ps.green += (src[ix].green * kernel[1][0]) + (src[ix+1].green * kernel[1][1]) + (src[ix+2].green * kernel[1][2]) +(src[ix+3].green * kernel[1][3]) + (src[ix+4].green * kernel[1][4]);
            ps.blue += (src[ix].blue * kernel[1][0]) + (src[ix+1].blue * kernel[1][1]) + (src[ix+2].blue * kernel[1][2]) +(src[ix+3].blue * kernel[1][3]) + (src[ix+4].blue * kernel[1][4]);
            ix += dim;
            // Row[2]
            ps.red += (src[ix].red * kernel[2][0]) + (src[ix+1].red * kernel[2][1]) + (src[ix+2].red * kernel[2][2]) +(src[ix+3].red * kernel[2][3]) + (src[ix+4].red * kernel[2][4]);
            ps.green += (src[ix].green * kernel[2][0]) + (src[ix+1].green * kernel[2][1]) + (src[ix+2].green * kernel[2][2]) +(src[ix+3].green * kernel[2][3]) + (src[ix+4].green * kernel[2][4]);
            ps.blue += (src[ix].blue * kernel[2][0]) + (src[ix+1].blue * kernel[2][1]) + (src[ix+2].blue * kernel[2][2]) +(src[ix+3].blue * kernel[2][3]) + (src[ix+4].blue * kernel[2][4]);
            ix += dim;
            // Row[3]
            ps.red += (src[ix].red * kernel[3][0]) + (src[ix+1].red * kernel[3][1]) + (src[ix+2].red * kernel[3][2]) +(src[ix+3].red * kernel[3][3]) + (src[ix+4].red * kernel[3][4]);
            ps.green += (src[ix].green * kernel[3][0]) + (src[ix+1].green * kernel[3][1]) + (src[ix+2].green * kernel[3][2]) +(src[ix+3].green * kernel[3][3]) + (src[ix+4].green * kernel[3][4]);
            ps.blue += (src[ix].blue * kernel[3][0]) + (src[ix+1].blue * kernel[3][1]) + (src[ix+2].blue * kernel[3][2]) +(src[ix+3].blue * kernel[3][3]) + (src[ix+4].blue * kernel[3][4]);
            ix += dim;
            // Row[4]
            ps.red += (src[ix].red * kernel[4][0]) + (src[ix+1].red * kernel[4][1]) + (src[ix+2].red * kernel[4][2]) +(src[ix+3].red * kernel[4][3]) + (src[ix+4].red * kernel[4][4]);
            ps.green += (src[ix].green * kernel[4][0]) + (src[ix+1].green * kernel[4][1]) + (src[ix+2].green * kernel[4][2]) +(src[ix+3].green * kernel[4][3]) + (src[ix+4].green * kernel[4][4]);
            ps.blue += (src[ix].blue * kernel[4][0]) + (src[ix+1].blue * kernel[4][1]) + (src[ix+2].blue * kernel[4][2]) +(src[ix+3].blue * kernel[4][3]) + (src[ix+4].blue * kernel[4][4]);
            
            // Calculate dst location with dimS and j
            ix = dimS + j;
            dst[ix].red   = ps.red / kWeight;
            dst[ix].green = ps.green / kWeight;
            dst[ix].blue  = ps.blue / kWeight;
        }
        dimS += dim;
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
}

