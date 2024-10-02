#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void calculate_distance(band_t ref_band1, band_t ref_band2, band_t band1, band_t band2, dist_t &distance) {
    #pragma HLS INLINE
    dist_t diff1 = ref_band1 - band1;
    dist_t diff2 = ref_band2 - band2;

    distance += diff1 * diff1 + diff2 * diff2;  // Suma de las diferencias al cuadrado
}

void hyperspectral_hw_wrapped (hls::stream<AXI_VAL>& in_stream, hls::stream<AXI_VAL>& out_stream) {
    
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    dist_t min_distance = MAX_DIST;
    int min_pixel_index = 0;
    int current_pixel_index = 0;

    band_t current_pixel[BANDAS];
    band_t ref_pixel [BANDAS];
    band_t closest_pixel[BANDS];  // Para almacenar el píxel con la mínima distancia
    dist_t distance;

    AXI_VAL in_val;
    AXI_VAL out_val;

    // STREAM IN REF_PIXEL

    for (int i = 0; i < BANDAS; i += 2) {
		#pragma HLS PIPELINE II=1
    	WORD_MEM = in_stream.read().data();
    	conv_t c;

    	c.in = w(15,0);
    	ref_pixel[i] = c.out;

    	c.in = w(31,16);
    	ref_pixel[i+1] = c.out;
    }


    // STREAM IN IMAGE

    for (int i=0; i< PIXELS; i++) {
		#pragma HLS PIPELINE II=1
    	distance = 0;

    	for (int j = 0; j < BANDAS; j += 2) {
    		WORD_MEM w = in_stream.read().data();
    		conv_t c;

    		c.in = w(15,0);
    		current_pixel[j] = c.out;

    		c.in = w(31,16);
    		current_pixel[j+1] = c.out;

    		calculate_distance (ref_pixel[j], ref_pixel[j+1], current_pixel[j], current_pixel[j+1], distance);

    	}

    	if (distance < min_distance) {
    		min_distance = distance;
    		min_pixel_index = i;
    	}
    }


    // STREAM_OUT closestPixel

    for (int i = 0; i < BANDAS; i+=2) {
        #pragma HLS PIPELINE II=1
        AXI_VAL e;
        WORD_MEM w;
        conv_t c;

        c.out = closest_pixel[j];
        w(15,0) = c.in;

        c.out = closest_pixel[j+1];
        w(31,16) = c.in;

        e.data = w;
        e.strb = -1;
        e.keep = 15;
        e.user = 0;
        e.last = (j >= BANDS-2);
        e.id = 9;
        e.dest = 10;

        out_stream.write(e);

    }
}
