/*
 * driver.h - Various definitions for the Performance Lab.
 * 
 * DO NOT MODIFY ANYTHING IN THIS FILE
 */
#ifndef _DEFS_H_
#define _DEFS_H_
 
#include <stdlib.h>
 
#define RIDX(i,j,n) ((i)*(n)+(j))
 
//TODO: find/make a 5x5 gaussian blur kernel.
//TODO: find/make a 5x5 edge detection kernel. Reproduce twice for hortizontal/vertical edges? Reproduce four more times to also get edges at a 45* angle?
//TODO: Add more 5x5 kernels?
float kernel[5][5];
 
typedef const float Kernel[5][5];
 
#define NUM_CONVOLUTION_KERNELS 9
 
typedef struct{
  const char *emailA;
  const char *emailB;
} team_t;
 
extern const team_t team;
 
typedef struct {
   unsigned short red;
   unsigned short green;
   unsigned short blue;
} pixel;
 
typedef void (*lab_test_func) (int, pixel*, pixel*);
unsigned int team_hash;
 
typedef int (*FlippedFunc)(int, int, int);

FlippedFunc RIDX_F;

void convolve(int, pixel *, pixel *);
void flip(int, pixel *, pixel *);
 
void register_flip_functions(void);
void register_convolve_functions(void);
void add_convolve_function(lab_test_func, char*);
void add_flip_function(lab_test_func, char*);
 
#endif /* _DEFS_H_ */