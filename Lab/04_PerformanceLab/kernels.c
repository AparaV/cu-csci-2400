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
    // int dimD = dim - 1;
    // int dim2 = dim << 1;
    register int ni = 0, pi = dim - 1;
    // int ni2 = dim;

    for (i = 0; i < dim; ++i){
        // int pi2 = ni2 + dimD;

        for (j = 0; j < dim; j+=4){
            dst[pi - j]   = src[ni + j];
            dst[pi - j - 1]   = src[ni + j + 1];
            dst[pi - j - 2]   = src[ni + j + 2];
            dst[pi - j - 3]   = src[ni + j + 3];

            // dst[pi2 - j]   = src[ni2 + j];
            // dst[pi2 - j - 1]   = src[ni2 + j + 1];
            // dst[pi2 - j - 2]   = src[ni2 + j + 2];
            // dst[pi2 - j - 3]   = src[ni2 + j + 3];
        }

        ni += dim;
        pi += dim;
        // ni2 += dim2;
    }

}

char flip_descr2[] = "flip: Odd and even rows";
void flip2(int dim, pixel *src, pixel *dst) 
{
    register int i, j;
    int dimD = dim - 1;
    int dim2 = dim << 1;
    int ni = 0;
    int ni2 = dim;

    for (i = 0; i ^ dim; i+=2){
        int pi = ni + dimD;
        int pi2 = ni2 + dimD;

        for (j = 0; j ^ dim; j+=4){
            int piJ = pi - j;
            int niJ = ni + j;
            dst[piJ]   = src[niJ];
            dst[piJ - 1]   = src[niJ + 1];
            dst[piJ - 2]   = src[niJ + 2];
            dst[piJ - 3]   = src[niJ + 3];

            int piJ2 = pi2 - j;
            int niJ2 = ni2 + j;
            dst[piJ2]   = src[niJ2];
            dst[piJ2 - 1]   = src[niJ2 + 1];
            dst[piJ2 - 2]   = src[niJ2 + 2];
            dst[piJ2 - 3]   = src[niJ2 + 3];
        }

        ni += dim2;
        ni2 += dim2;
    }
}

char flip_descr3[] = "flip: One looper";
void flip3(int dim, pixel *src, pixel *dst) 
{
    register int i, j = 0, ni = dim - 1;
    int dim2 = dim * dim;
    for (i = 0; i ^ dim2; ++i) {

        *(dst + i) = *(src + i + ni - (j << 1));
        ++j;

        // if j == dim, j = 0
        j = (j ^ dim) ? j : 0;
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
    //add_flip_function(&naive_flip, naive_flip_descr);   
    /* ... Register additional test functions here */
    // add_flip_function(&flip2, flip_descr2);
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
char convolve_descr[] = "convolve: Current working version - gave 2.72";
void convolve(int dim, pixel *src, pixel *dst) 
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
        
        int iSub3 = i - 3; // Don't compute this each time in the 2 innermost loops

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
    //add_convolve_function(&naive_convolve, naive_convolve_descr);
    /* ... Register additional test functions here */
}

