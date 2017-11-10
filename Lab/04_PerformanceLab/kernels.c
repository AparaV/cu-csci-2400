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
    int dim2 = dim << 1;
    int ni = 0;
    int ni2 = dim;

    for (i = 0; i < dim; i+=2){
        int pi = ni + dimD;
        int pi2 = ni2 + dimD;

        for (j = 0; j < dim; j+=4){
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

 // Covering odd and even at the same time simultaneously
 char flip_descr_going2Way[] = "flip: Covering odd and even";
 void flip_going2Way(int dim, pixel *src, pixel *dst)
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
	/* ... Register additional test functions here */
	//add_flip_function(&naive_flip, naive_flip_descr);
	//add_flip_function(&flip_loopUnroll, flip_descr_loopUnroll);
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
char convolve_descr[] = "convolve: Current working version";
void convolve(int dim, pixel *src, pixel *dst)
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
                if (curI < 0 || curI >= dim) {
                    continue;
                }

                curJ = jSub3;
                float *kernelRow = *(kernel + ii); // Points to the row in question (kernel[ii])
                
                // Go from 0 to 4 instead of -2 to 2
                for (jj = 0; jj < 5; ++jj){

                    ++curJ;
                    if (curJ < 0 || curJ >= dim) {
                        continue;
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

char convolve_descr_Shit[] = "convolve: Some shitty changes";
void convolve_Shit(int dim, pixel *src, pixel *dst)
{
    register int i, j, ii, jj, curI, curJ;
    //pixel_sum ps;
    register float red, green, blue, weight;
    register pixel* newDst;

    int ni = 0;
    // Permute loops
    for (i = 0; i < dim; ++i){
        newDst = dst + ni;
        int iSub2 = i - 2;
        for (j = 0; j < dim; ++j){
            red    = 0.0;
            green  = 0.0;
            blue   = 0.0;
            weight = 0.0;
            curI = iSub2;
            int jSub2 = j - 2;

            // int nii = 0;
            // float *kernelNew;
            // Permute innermost 2 loops
            for (ii = 0; ii < 5; ++ii) {
                // Move this here because j and jj don't affect this
                //curI = i + ii - 2;
                if(curI < 0 || curI >= dim) {
                    // nii += 5;
                    ++curI;
                    continue;
                }
                // kernelNew = kernel + nii;
                curJ = jSub2;
                for (jj = 0; jj < 5; ++jj) {
                    //curJ = j + jj - 2;
                    // kernelNew++;
                    if (curJ < 0 || curJ >= dim) {
                        ++curJ;
                        continue;
                    }
                    int RIDX_temp = RIDX(curI, curJ, dim); // Reduce function call
                    float kernelWeight = kernel[ii][jj];
                    // float kernel[ii+2][jj+2] = *kernelNew;
                    red   += src[RIDX_temp].red *   kernelWeight;
                    green += src[RIDX_temp].green * kernelWeight;
                    blue  += src[RIDX_temp].blue *  kernelWeight;
                    weight += kernelWeight;
                    ++curJ;
                }
                // nii += 5;
                ++curI;
            }
            //int RIDX_temp = RIDX(i, j, dim); // Reduce function call
            (*newDst).red   = (unsigned short)(red/weight);
            (*newDst).green = (unsigned short)(green/weight);
            (*newDst).blue  = (unsigned short)(blue/weight);
            newDst++;
        }
        ni += dim;
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
    // add_convolve_function(&convolve, convolve_descr);
    //add_convolve_function(&naive_convolve, naive_convolve_descr);
    /* ... Register additional test functions here */
}
