char convolve_descr[] = "convolve: Current working version";
void convolve(int dim, pixel *src, pixel *dst) 
{
    int i, j, ii, jj, curI, curJ;
    pixel_sum ps;

    // EDGE CASES
    // Top corners
    // dst[0] or dst[0][0]
    float kWeight = kernel[2][2] + kernel[2][3] + kernel[2][4] +
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
        ps.weight = 0.0;
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
        ps.weight = 0.0;
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
	// Doesn't work
    kWeight = kernel[1][2] + kernel[1][3] + kernel[1][4] +
              kernel[2][2] + kernel[2][3] + kernel[2][4] +
              kernel[3][2] + kernel[3][3] + kernel[3][4];
    ps.red = 0;
    ps.green = 0;
    ps.blue = 0;
    ix = (dim-3)*dim-3;
    for (ii = 1; ii < 4; ++ii){
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
    // dst[dim-2][dim-2]
    // dst[dim-2][dim-1]
    // dst[dim-1][0]
    // dst[dim-1][1]
    // dst[dim-1][dim-2]
    // dst[dim-1][dim-1]

    // Bottom edges
    // row[dim-2]
    // row[dim-1]
    
    // Sides
    // column[0]
    // column[1]
    // column[dim-2]
    // column[dim-1]

    // float kWeight = kernel[0][0] + kernel[0][1] + kernel[0][2] + kernel[0][3] + kernel[0][4] +
    //                 kernel[1][0] + kernel[1][1] + kernel[1][2] + kernel[1][3] + kernel[1][4] +
    //                 kernel[2][0] + kernel[2][1] + kernel[2][2] + kernel[2][3] + kernel[2][4] +
    //                 kernel[3][0] + kernel[3][1] + kernel[3][2] + kernel[3][3] + kernel[3][4] +
    //                 kernel[4][0] + kernel[4][1] + kernel[4][2] + kernel[4][3] + kernel[4][4];

    // TODO: Change loop ranges
    for (i = 2; i < dim; ++i){
        // TODO: Change loop ranges
        for (j = 0; j < dim; ++j){
            if (i == dim - 2 && j == 0) {
                continue;
            }
            ps.red    = 0.0;
            ps.green  = 0.0;
            ps.blue   = 0.0;
            ps.weight = 0.0; // TODO: remove this
            // TODO: Change loop ranges     
            for (ii = -2; ii <= 2; ++ii){
                curI = i+ii; // TODO: Get rid of this?
                // TODO: Remove conditional
                if((unsigned)curI >= dim){
                    continue;
                }
                // TODO: Change loop range
                for (jj = -2; jj <= 2; ++jj){
                    curJ = j+jj; // TODO: Get rid of this?
                    // TODO: Remove conditonal
                    if((unsigned)curJ >= dim){
                        continue;
                    }
                    int index = curI*dim + curJ; // TODO: Manually calculate this ?
                    float kernelWeight = kernel[ii+2][jj+2]; // TODO: Update this
                    ps.red   += src[index].red *   kernelWeight;
                    ps.green += src[index].green * kernelWeight;
                    ps.blue  += src[index].blue *  kernelWeight;
                    ps.weight += kernelWeight; // TODO: Use constant kWeight
                }
            }
            int index = i*dim + j; // TODO: Have a counter to do this?
            dst[index].red   = (unsigned short)(ps.red/ps.weight);
            dst[index].green = (unsigned short)(ps.green/ps.weight);
            dst[index].blue  = (unsigned short)(ps.blue/ps.weight);
        }
    }
}