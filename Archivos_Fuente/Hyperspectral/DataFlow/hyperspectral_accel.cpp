#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"


void hyperspectral_hw (hls::stream<AXI_VAL> &in_stream, hls::stream<AXI_VAL> &out_stream) {
    
    #pragma HLS INTERFACE axis port=input_stream
    #pragma HLS INTERFACE axis port=output_stream
    #pragma HLS INTERFACE axis port=reference_pixel_stream
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
    #pragma HLS PIPELINE II=1

    Pixel refPixel;
    Result result;
    uint32_t current_brightness = 0;

    AXI_VAL e;

    e = in_stream.read();
    WORD_MEM w = e.data;
    refPixel.x = w(31, 0);

    e = in_stream.read();
    w = e.data;
    refPixel.y = w(31, 0);

    for (int k = 0; k < BANDS; k += 2) {
        e = in_stream.read();
        w = e.data;
        refPixel.bands[k] = w(15, 0);  // Obtiene los primeros 16 bits
        if (k + 1 < BANDS) {
            refPixel.bands[k + 1] = w(31, 16);  // Obtiene los siguientes 16 bits
        }
    }

    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; ++j) {
            #pragma HLS PIPELINE II=1
            float distance = 0;
            current_brightness = 0;

            for (int k = 0; k < BANDS; k += 2) {
                e = in_stream.read();
                uint16_t band1 = w(15, 0);
                uint16_t band2;
                if (k + 1 < BANDS) {
                    e = in_stream.read();
                    band2 = w(31, 16);
                }

                float diff1 = (float) band1 - (float) refPixel.bands[k];
                distance += diff1 * diff1;
                current_brightness += band1;

                float diff2 = (float) band2 - (float) refPixel.bands[k + 1];
                distance += diff2 * diff2;
                current_brightness += band2;

            }

            distance = hls::sqrt(distance);

            if (distance < result.min_distance) {
                result.min_distance = distance;
                result.min_distance_pixel.row = i;
                result.min_distance_pixel.col = j;
                
                for (int k = 0; k < BANDS; ++k) {
                    result.min_distance_pixel.bands[k] = refPixel.bands[k];
                }

            }

            if (current_brightness > result.max_brightness_pixel.value) {
                result.max_brightness_pixel.value = current_brightness;
                result.max_brightness_pixel.row = i;
                result.max_brightness_pixel.col = j;
            }

        }
    }
}

void transmit_output (hls::stream<AXI_VAL> &out_stream, const Result &result, AXI_VAL e) {
    WORD_MEM w;


    // TRANSMISSION OF MINIMUM DISTANCE PIXEL
    
        // TRANSMIT X INDEX

    w = result.min_distance_pixel.x;
    e.data = w;
    e.strb = -1;
    e.keep = 15;
    e.user = 0;
    e.last = 0;
    e.id = 1;
    e.dest = 2;
    out_stream.write(e);

        // TRANSMIT Y INDEX

    w = result.min_distance_pixel.y;
    e.data = w;
    out_stream.write(e);

        // TRANSMIT BANDS

    for (int k = 0; k < BANDS; k += 2) {
        uint16_t temp[2] = {result.min_distance_pixel.bands[k], result.min_distance_pixel.bands[k + 1]};
        convert2word_uint16_t(w, buffer);
        e.data = w;
        out_stream.write(e);
    }

    // TRANSMIT MINIMUM DISTANCE

    w = result.min_distance;
    e.data = w;
    out_stream.write(e);

    // TRANSMISSION OF MAXIMUM BRIGHTNESS PIXEL

        // TRANSMIT X INDEX

    w = result.max_brightness_pixel.x;
    e.data = w;
    out_stream.write(e);

        // TRANSMIT Y INDEX

    w = result.max_brightness_pixel.y;
    e.data = w;
    out_stream.write(e);

        // TRANSMIT VALUE OF MAXIMUM BRIGHTNESS PIXEL

    w = result.max_brightness_pixel.value;
    e.data = w;
    out_stream.write(e);
}

void convert2word_uint16_t(WORD_MEM &w, uint16_t in[2]) {
    w(15, 0) = in[0];
    w(31, 16) = in[1];
}



