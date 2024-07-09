
#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>

#include "gradient.h"

void gradient_hw(T matrix[DIM][DIM], T mag[DIM][DIM], T dir[DIM][DIM]) {
        T grad_X[DIM][DIM];
        T grad_Y[DIM][DIM];

        // Calculate gradient
        L1:for (int i = 0; i < DIM; i++)
            L2:for (int j = 0; j < DIM; j++) {
    
                if (j == 0) {
                    grad_X[i][j] = matrix[i][j + 1] - matrix[i][j];
                } else {
                	grad_X[i][j] = matrix[i][j] - matrix[i][j - 1];
                }

                if (i == 0) {
                    grad_Y[i][j] = matrix[i + 1][j] - matrix[i][j];
                } else {
                    grad_Y[i][j] = matrix[i][j] - matrix[i - 1][j];
                }

                mag[i][j] = hls::sqrt(grad_X[i][j] * grad_X[i][j] + grad_Y[i][j] * grad_Y[i][j]);
                dir[i][j] = hls::atan2(grad_Y[i][j], grad_X[i][j]) * (180.0 / M_PI);
            }
    return;
}

void gradient_hw_wrapped(hls::stream<AXI_VAL> &in_stream, hls::stream<AXI_VAL> &out_stream) {
    
	#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

        ap_uint<U> user;
        ap_uint<TI> id;
        ap_uint<TD> dest;

        T matrix[DIM][DIM];
        T mag[DIM][DIM];
        T dir[DIM][DIM];

        // Stream in matrix
        for (int i = 0; i < DIM; i++)
            for (int j = 0; j < DIM; j += NUM_ELEMS_WORD) {
    #pragma HLS PIPELINE II=1
            	WORD_MEM w = in_stream.read().data;
                conv_t c;
                for (int k = 0; k < NUM_ELEMS_WORD; k++) {
                	c.in = w((k+1)*32-1,k*32);
                    matrix[i][j + k] = c.out;
                }
            }

        // Call the hardware function
        gradient_hw(matrix, mag, dir);

        // Stream out gradient for mag
    for (int i = 0; i < DIM; i++)
        for (int j = 0; j < DIM; j += NUM_ELEMS_WORD) {
    #pragma HLS PIPELINE II=1
            AXI_VAL e;
            conv_t c;
            WORD_MEM w;

            for (int k = 0; k < NUM_ELEMS_WORD; k++) {
                c.out = mag[i][j + k];
                w((k + 1) * 32 - 1, k * 32) = c.in;
            }

            e.data = w;
            e.strb = -1;
            e.keep = 15;
            e.user = U;
            e.last = 0;
            e.id = 3;
            e.dest = 4;
            out_stream.write(e);
        }

    // Stream out gradient for dir
    for (int i = 0; i < DIM; i++)
        for (int j = 0; j < DIM; j += NUM_ELEMS_WORD) {
    #pragma HLS PIPELINE II=1
            AXI_VAL e;
            conv_t c;
            WORD_MEM w;
            for (int k = 0; k < NUM_ELEMS_WORD; k++) {
                c.out = dir[i][j + k];
                w((k + 1) * 32 - 1, k * 32) = c.in;
            }
            e.data = w;
            e.strb = -1;
            e.keep = 15;
            e.user = U;
            e.last = ((i == (DIM - 1)) && (j == (DIM - NUM_ELEMS_WORD)));
            e.id = 5;
            e.dest = 6;
            out_stream.write(e);
        }
}
