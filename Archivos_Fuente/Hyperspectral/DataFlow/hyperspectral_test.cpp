#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void read_hyperspectral_image (const char* filename, hls::stream<AXI_VAL> &inp_stream, AXI_VAL e) {
    std::ifstream file(filename, std::ios::binary);
    if (!file) {
        std::cerr << "Error: Could not open file " << filename << std::endl;
        return;
    }

    uint16_t buffer[2];

    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; j++) {
            for (int k = 0; k < BANDS; k +=2) {
                uint16_t temp;
                buffer[0] = 0;
                buffer[1] = 0;


                if (k < BANDS) {
                    file.read((char*)&temp, sizeof(uint16_t));
                    buffer[0] = temp;
                }

                if (k + 1 < BANDS) {
                    file.read((char*)&temp, sizeof(uint16_t));
                    buffer[1] = temp;
                }
                WORD_MEM w;
                convert2word_uint16_t(w, buffer);
                e.data = w;
                e.strb = -1;
                e.keep = 15;
				e.user = 0;
				e.last = (i == (ROWS - 1) && j == (COLS - 1) && (k + 2 >= BANDS));
				e.id = 3;
				e.dest = 4;
				inp_stream.write(e);
            }
        }
    }

    

    file.close();
}

void convert2word_uint16_t(WORD_MEM &w, uint16_t in[2]) {
    w(15, 0) = in[0];
    w(31, 16) = in[1];
}

void write_reference_pixel (hls::stream<AXI_VAL> &inp_stream, const Pixel &refPixel, AXI_VAL e) {

    WORD_MEM w_x = refPixel.x;
    e.data = w_x;
    e.strb = -1;
    e.keep = 15;
    e.user = 0;
    e.last = 0;
    e.id = 1;
    e.dest = 2;
    inp_stream.write(e);

    WORD_MEM w_y = refPixel.y;
    e.data = w_y;
    e.strb = -1;
    e.keep = 15;
    e.user = 0;
    e.last = 0;
    e.id = 1;
    e.dest = 2;
    inp_stream.write(e);

    for (int i = 0; i < BANDS; i += 2) {
        uint16_t buffer[2] = {refPixel.spectral_Data[i], 0};
        if (i + 1 < BANDS) {
            buffer[1] = refPixel.spectral_Data[i + 1];
        }
        WORD_MEM w;
        convert2word_uint16_t(w, buffer);
        e.data = w;
        e.strb = -1;
        e.keep = 15;
        e.user = 0;
        e.last = (k + 2 >= BANDS);
        e.id = 1;
        e.dest = 2;
        inp_stream.write(e);
    }
}

int main_axi () {

    hls::stream<AXI_VAL> inp_stream("INSW");
    hls::stream<AXI_VAL> out_stream("OUTSW");


    // Initialize the reference pixel
    Pixel refPixel;
    refPixel.x = 1;
    refPixel.y = 40;
    for (int i = 0; i < BANDS; i++) {
        refPixel.bands[i] = 100;
    }

    AXI_VAL e;

    write_reference_pixel(inp_stream, refPixel, e);

    // Stream in the image
    read_hyperspectral_image("image.dat", inp_stream, e);

    hyperspectral_hw (inp_stream, out_stream);

    return 0;
}