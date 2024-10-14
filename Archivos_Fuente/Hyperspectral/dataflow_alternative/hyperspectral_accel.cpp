#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void calculate_distance(band_t ref_band1, band_t ref_band2, band_t band1, band_t band2, float &distance) {
    #pragma HLS INLINE
    ap_int<32> diff1 = static_cast<ap_int<32>>(ref_band1) - static_cast<ap_int<32>>(band1);
    ap_int<32> diff2 = static_cast<ap_int<32>>(ref_band2) - static_cast<ap_int<32>>(band2);
    ap_int<32> squared_diff1 = diff1 * diff1;
    ap_int<32> squared_diff2 = diff2 * diff2;
	distance += squared_diff1 + squared_diff2;

}

void hyperspectral_hw_wrapped (hls::stream<AXI_VAL>& in_stream, hls::stream<AXI_VAL>& out_stream) {
    
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    float min_distance = MAX_DIST;

    int n_fila = 0;

    int fila, columna;
    int min_pixel_index_i = 0;
    int min_pixel_index_j = 0;

    int pixels [2][BANDAS];
    int active_idx = 0;

    int current_idx = -1;
    int closest_idx = -1;


    band_t ref_pixel [BANDAS];
    float distance;

    AXI_VAL in_val;
    AXI_VAL out_val;

    // STREAM IN REF_PIXEL

    for (int i = 0; i < BANDAS; i += 2) {
		#pragma HLS PIPELINE II=1
    	WORD_MEM w = in_stream.read().data;
    	ref_pixel[i] = w(15,0);
    	ref_pixel[i+1] = w(31,16);
    }


    // STREAM IN IMAGE

    L1:for (int idx=0; idx< PIXELS; idx++) {
#pragma HLS PIPELINE II=90
    	L2:for (int j = 0; j < BANDAS; j += 2) {
            if (j==0) {
            	current_idx = active_idx;
            	closest_idx = 1 - current_idx;
            	distance = 0;
                fila = idx / COLUMNAS;
                columna = idx % COLUMNAS;
            }
    		WORD_MEM w = in_stream.read().data;
            pixels[current_idx][j] = w(15,0);
    		pixels[current_idx][j+1] = w(31,16);

    		//distance += calculate_distance (ref_pixel[j], ref_pixel[j+1], pixels[current_idx][j], pixels[current_idx][j+1]);

    		calculate_distance (ref_pixel[j], ref_pixel[j+1], pixels[current_idx][j], pixels[current_idx][j+1], distance);

            if (j == BANDAS-2) {
                distance = hls::sqrt(distance);
                if (distance < min_distance) {
                    min_distance = distance;
                    min_pixel_index_i = fila;
                    min_pixel_index_j = columna;
                    active_idx = closest_idx;
                }
            } 
    	}
    }

    AXI_VAL e;

    // STREAM_OUT closestPixel
    for (int i = 0; i < BANDAS; i+=2) {
        #pragma HLS PIPELINE II=1
        WORD_MEM w;
        w(15,0) = pixels[1 - active_idx][i];
        w(31,16) = pixels[1 - active_idx][i+1];
        e.data = w;
        e.strb = -1;
        e.keep = 15;
        e.user = U;
        e.last = 0;
        e.id = TI;
        e.dest = TD;
        out_stream.write(e);
    }

    // STREAM_OUT minPixelIndex
    WORD_MEM w;
    
    w = min_pixel_index_i;
    e.data = w;
    e.strb = -1;
    e.keep = 15;
    e.user = U;
    e.last = 0;
    e.id = TI;
    e.dest = TD;
    out_stream.write(e);

    w = min_pixel_index_j;
    e.data = w;
    e.strb = -1;
    e.keep = 15;
    e.user = U;
    e.last = 0;
    e.id = TI;
    e.dest = TD;
    out_stream.write(e);

    // STREAM_OUT minDistance

    printf("min_distance: %f\n", min_distance);
    conv_t c;
    c.out = min_distance;
    w = c.in;
    e.data = w;
    e.strb = -1;
    e.keep = 15;
    e.user = U;
    e.last = 1;
    e.id = TI;
    e.dest = TD;
    out_stream.write(e);
    
}
