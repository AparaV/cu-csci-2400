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
	int ni = 0; // offset from starting point
	int dimD = dim - 1;
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

// Reducing function calls
char flip_descr_redFunc[] = "flip: Reducing function calls";
void flip_redFunc(int dim, pixel *src, pixel *dst)
{
	int i, j;
	for (i = 0; i < dim; i++) {
		for (j = 0; j < dim; j++) {
			int currFlip = RIDX_F(i, j, dim);
			int temp = RIDX(i, j , dim);
			dst[currFlip].red = src[temp].red;
			dst[currFlip].green = src[temp].green;
			dst[currFlip].blue = src[temp].blue;
		}
	}
}

// Reduced pointer arithmetic
char flip_descr_redPoint[] = "flip: Reducing pointer arithmetic";
void flip_redPoint(int dim, pixel *src, pixel *dst)
{
	int i, j;
	int ni = 0; // offset from starting point
	for (i = 0; i < dim; i++) {
		pixel *newSrc = src + ni; // set pointer to corresponding row
		for (j = 0; j < dim; j++) {
			int currFlip = RIDX(i, dim - 1 - j, dim);
			dst[currFlip].red = (*newSrc).red;
			dst[currFlip].green = (*newSrc).green;
			dst[currFlip].blue = (*newSrc).blue;
			newSrc++; // go to next element in row
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
	//add_flip_function(&flip_redFunc, flip_descr_redFunc);
	add_flip_function(&flip_redPoint, flip_descr_redPoint);
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
    naive_convolve(dim, src, dst);
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
