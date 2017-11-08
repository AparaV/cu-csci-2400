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
 	int i, j;
 	int ni = 0; // offset from first row
    int li = dim * dim - dim; // offset from last row
 	int dimD = dim - 1;
    register pixel *newSrc1, *newDst1, *lSrc, *lDst;
    int middle = dim >> 1; // since we are going from top and bottom, only loop until middle

    newSrc1 = src; // initialize to first element
    lDst = dst + li + dimD; // initialize to last element

 	for (i = 0; i < middle; ++i) {

 		newDst1 = dst + ni + dimD; // set dest pointer to last element of row from top
        lSrc = src + li; // set source pointer to beginning of row from bottom

 		// Loop unrolling
 		for (j = 0; j < dim; j+=4) {
            // Swap 4 elements of row from top
 			*(newDst1) = *(newSrc1);
 			*(newDst1 - 1) = *(newSrc1 + 1);
 			*(newDst1 - 2) = *(newSrc1 + 2);
 			*(newDst1 - 3) = *(newSrc1 + 3);
            newDst1 -= 4;
            newSrc1 += 4; // this automatically updates pointer for next row from top
            // Swap 4 elements of row from bottom
 			*(lDst) = *(lSrc);
 			*(lDst - 1) = *(lSrc + 1);
 			*(lDst - 2) = *(lSrc + 2);
 			*(lDst - 3) = *(lSrc + 3);
            lDst -= 4; // this automatically updates pointer for next row from bottom
            lSrc += 4;
 		}
        ni += dim;
        li -= dim;
 	}
 }

 // Loop unrolling
 char flip_descr_loopUnroll[] = "flip: Loop unrolling";
 void flip_loopUnroll(int dim, pixel *src, pixel *dst)
 {
    int i, j;
  	int ni = 0; // offset from starting point
  	int dimD = dim - 1;
     // Loop unrolling
  	for (i = 0; i < dim; i++) {
  		pixel *newSrc = src + ni; // set pointer to corresponding row
  		pixel *newDst = dst + ni + dimD; // set pointer to last element of row
  		// Loop unrolling
  		for (j = 0; j < dim; j+=4) {
  			(*newDst).red = (*newSrc).red;
  			(*newDst).green = (*newSrc).green;
  			(*newDst).blue = (*newSrc).blue;
  			newSrc++; // go to next element in row
  			newDst--; // go to previous element in row
  			(*newDst).red = (*newSrc).red;
  			(*newDst).green = (*newSrc).green;
  			(*newDst).blue = (*newSrc).blue;
  			newSrc++; // go to next element in row
  			newDst--; // got to previous element in row
  			(*newDst).red = (*newSrc).red;
  			(*newDst).green = (*newSrc).green;
  			(*newDst).blue = (*newSrc).blue;
  			newSrc++; // go to next element in row
  			newDst--; // got to previous element in row
  			(*newDst).red = (*newSrc).red;
  			(*newDst).green = (*newSrc).green;
  			(*newDst).blue = (*newSrc).blue;
  			newSrc++; // go to next element in row
  			newDst--; // got to previous element in row
  		}
  		ni += dim; // set offset to next row
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
                    // float kernelWeight = *kernelNew;
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
    add_convolve_function(&convolve, convolve_descr);
    //add_convolve_function(&naive_convolve, naive_convolve_descr);
    /* ... Register additional test functions here */
}
