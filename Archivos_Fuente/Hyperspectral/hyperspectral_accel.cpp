#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void convert2_int (WORD_MEM &w, int in[NUM_ELEMS_WORD]);

void calculate_distance(UIT image[FILAS][COLUMNAS][BANDAS], IN refPixel[2], T& minDistance, IN closestPixelIdx[2]) {
    minDistance = std::numeric_limits<T>::max();
    
    L1:for (int i = 0; i < FILAS; i++) {
        L2:for (int j = 0; j < COLUMNAS; j++) {
            T sum = 0.0f;
            L3:for (int k = 0; k < BANDAS; k++) {
                T diff = (T)(image[i][j][k]) - (T)(image[refPixel[0]][refPixel[1]][k]);
                sum += diff * diff;
            }

            T distance = hls::sqrt(sum);

            if (distance < minDistance && (i != refPixel[0] || j != refPixel[1])) {
                minDistance = distance;
                closestPixelIdx[0] = i;
                closestPixelIdx[1] = j;
            }
        }
    }
}

void calculate_brightness(UIT image[FILAS][COLUMNAS][BANDAS], IN maxBrightnessIdx[2], uint32_t& maxBrightness) {
    maxBrightness = 0;

    L1:for (int i = 0; i < FILAS; i++) {
        L2:for (int j = 0; j < COLUMNAS; j++) {
            uint32_t currentBrightness = 0;
            L3:for (int k = 0; k < BANDAS; k++) {
                currentBrightness += image[i][j][k];
            }

            if (currentBrightness > maxBrightness) {
                maxBrightness = currentBrightness;
                maxBrightnessIdx[0] = i;
                maxBrightnessIdx[1] = j;
            }
        }
    }
}

void hyperspectral_hw(UIT image[FILAS][COLUMNAS][BANDAS], IN refPixel[2], IN maxBrightnessIdx[2], T& minDistance, IN closestPixelIdx[2]) {
    uint32_t maxBrightness = 0;
    T minDist;
    
    calculate_distance(image, refPixel, minDist, closestPixelIdx);
    calculate_brightness(image, maxBrightnessIdx, maxBrightness);
    
    minDistance = minDist;
    return;
}


void hyperspectral_hw_wrapped (hls::stream<AXI_VAL>& in_stream, hls::stream<AXI_VAL>& out_stream) {
    
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    UIT image[FILAS][COLUMNAS][BANDAS];
    IN refPixel[2];
    IN maxBrightnessIdx [2];
    T minDistance;
    IN closestPixel [2];

    std::cout << "LLEGO AQUI!\r\n";

    for (int i = 0; i < FILAS; i++) {
        for (int j = 0; j < COLUMNAS; j++) {
            for (int k = 0; k < BANDAS; k += NUM_ELEMS_UIT) {
#pragma HLS PIPELINE II=1
                WORD_MEM w = in_stream.read().data;
                for (int m = 0; m < NUM_ELEMS_UIT; m++) {
                    image[i][j][k+m] = w((m+1)*16-1, m*16);
                }
            }
        }
    }

    std::cout << "STREAM IMAGE HECHO!\r\n";

    // STREAM_IN refPixel
    for (int i = 0; i < 2; i++) {
        AXI_VAL e = in_stream.read();
        WORD_MEM w = e.data;
        conv_t c;
        c.in = w;
        refPixel[i] = c.out;
    }

    std::cout << "STREAM REFPIXEL HECHO!\r\n";


    hyperspectral_hw (image, refPixel, maxBrightnessIdx, minDistance, closestPixel);

    // STREAM_OUT maxBrightnessIdx

    for (int i = 0; i < 2; i+=NUM_ELEMS_IN) {
# pragma HLS PIPELINE II=1
        AXI_VAL e;
        WORD_MEM w;
        convert2_int(e.data, &maxBrightnessIdx[i]);
        e.strb = -1;
        e.keep = 15;
        e.user = U;
        e.last = 0;
        e.id = 5;
        e.dest = 6;
        out_stream.write(e);
        std::cout << "maxBrightnessIdx[" << i << "] = " << maxBrightnessIdx[i] << std::endl;
    }


    // STREAM_OUT minDistance

    AXI_VAL e;
    WORD_MEM w = 0;
    conv_t c;
    c.out = minDistance;
    w(31, 0) = c.in;
    e.data = w;
    e.strb = -1;
    e.keep = 15;
    e.user = U;
    e.last = 0;
    e.id = 7;
    e.dest = 8;
    out_stream.write(e);
    std::cout << "minDistance = " << minDistance << std::endl;

    // STREAM_OUT closestPixel

    for (int i = 0; i < 2; i+=NUM_ELEMS_IN) {
        AXI_VAL e;
        convert2_int(e.data, &closestPixel[i]);
        e.strb = -1;
        e.keep = 15;
        e.user = U;
        e.last = (i == 2 - NUM_ELEMS_IN);
        e.id = 9;
        e.dest = 10;
        out_stream.write(e);
    }
}

void convert2_int (WORD_MEM &w, int in[NUM_ELEMS_IN]) {
    conv_t c;
    WORD_MEM _w;
    convert2word_intlabel0:for (int k=0; k<NUM_ELEMS_IN;k++) {
        c.out = in[k];
        _w((k+1)*32-1,k*32)= c.in;
    }
    w = _w;
}
