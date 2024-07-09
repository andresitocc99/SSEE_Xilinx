#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void loadHyperspectralImage(uint16_t image[FILAS][COLUMNAS][BANDAS], const char* filename);
void convert2array_IN (WORD_MEM a, int out[NUM_ELEMS_IN]);
void convert2word_uint16_t (WORD_MEM &w, uint16_t in[NUM_ELEMS_WORD]);
void convert2word_int (WORD_MEM &w, int in[NUM_ELEMS_WORD]);

void hyperspectral_sw(UIT image[FILAS][COLUMNAS][BANDAS], IN refPixel[2], IN maxBrightnessIdx[2], T& minDistance, IN closestPixelIdx[2]) {
    
    uint32_t maxBrightness = 0;
    minDistance = std::numeric_limits<T>::max();

    for (int i = 0; i < FILAS; i++) {
        for (int j = 0; j < COLUMNAS; j++) {
            uint32_t currentBrightness = 0;
            T sum = 0.0f;

            // Separar cálculos
            for (int k = 0; k < BANDAS; k++) {
                currentBrightness += image[i][j][k];
            }

            for (int k = 0; k < BANDAS; k++) {
                T diff = (T)(image[i][j][k]) - (T)(image[refPixel[0]][refPixel[1]][k]);
                sum += diff * diff;
            }

            T distance = sqrt(sum);

            // Check conditions outside the innermost loop
            if (distance < minDistance && (i != refPixel[0] || j != refPixel[1])) {
                minDistance = distance;
                closestPixelIdx[0] = i;
                closestPixelIdx[1] = j;
            }

            if (currentBrightness > maxBrightness) {
                maxBrightness = currentBrightness;
                maxBrightnessIdx[0] = i;
                maxBrightnessIdx[1] = j;
            }
        }
    }
}
void loadHyperspectralImage(uint16_t image[FILAS][COLUMNAS][BANDAS], const char* filename) {
    FILE *file = fopen(filename, "rb");
    if (file == NULL) {
        printf("Error opening file %s\r\n", filename);
        exit(1);
    }

    uint16_t pixel;
    uint8_t byte1, byte2;
    size_t elements_read;

    for (int i = 0; i < FILAS; ++i) {
        for (int j = 0; j < COLUMNAS; ++j) {
            for (int k = 0; k < BANDAS; ++k) {
                // Leer 16 bits (2 bytes) del archivo en little-endian
                elements_read = fread(&byte1, sizeof(uint8_t), 1, file);
                elements_read += fread(&byte2, sizeof(uint8_t), 1, file);

                if (elements_read != 2) {
                    if (feof(file)) {
                        fprintf(stderr, "Error: End of file reached prematurely.\n");
                    } else if (ferror(file)) {
                        perror("Error reading from file");
                    }
                    fclose(file);
                    return;
                }
                pixel = byte1 + (byte2 << 8);
                image[i][j][k] = pixel;
            }
        }
    }
    fclose(file);
    printf("Archivo cargado correctamente\n");
}

int main_standalone (void) {
    int ret_val = 0;
    int err;

    // Initiation o
    uint16_t image[FILAS][COLUMNAS][BANDAS];
    loadHyperspectralImage(image, "cuboH.bin");

    // Initiation of Pixel Reference
    IN refPixel [2];
    refPixel[0] = 0;
    refPixel[1] = 40;

    // Initiation of maxBrightness
    int maxBrightness_hw [2];
    int maxBrightness_sw [2];

    // Initiation of minDistance
    T minDistance_hw;
    T minDistance_sw;

    // Initiation of closestPixelIdx
    int closestPixelIdx_hw [2];
    int closestPixelIdx_sw [2];


    printf("NORMAL MODE\r\n");
    hyperspectral_hw (image, refPixel, maxBrightness_hw, minDistance_hw, closestPixelIdx_hw);

    hyperspectral_sw (image, refPixel, maxBrightness_sw, minDistance_sw, closestPixelIdx_sw);

    err = 0;
    if (minDistance_hw != minDistance_sw) {
        printf("Error: minDistance_hw = %f, minDistance_sw = %f\r\n", minDistance_hw, minDistance_sw);
        err++;
    }
    if (maxBrightness_hw[0] != maxBrightness_hw[0] || maxBrightness_hw[1] != maxBrightness_sw[1]) {
        printf("Error: maxBrightness_hw = (%d, %d), maxBrightness_sw = (%d, %d)\r\n", maxBrightness_hw[0], maxBrightness_hw[1], maxBrightness_sw[0], maxBrightness_sw[1]);
        err++;
    }

    if (closestPixelIdx_hw[0] != closestPixelIdx_sw[0] || closestPixelIdx_hw[1] != closestPixelIdx_sw[1]) {
        printf("Error: closestPixelIdx_hw = (%d, %d), closestPixelIdx_sw = (%d, %d)\r\n", closestPixelIdx_hw[0], closestPixelIdx_hw[1], closestPixelIdx_sw[0], closestPixelIdx_sw[1]);
        err++;
    }

    if (err == 0) {
        printf("Test OK!\r\n");
    } else {
        printf("Test failed!\r\n");
    }
    return err;

}

int main_axi (void) {

    int i, j, err;

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    uint16_t image[FILAS][COLUMNAS][BANDAS];
    loadHyperspectralImage(image, "cuboH.bin");

    // Initiation of Pixel Reference
    int refPixel [2];
    refPixel[0] = 0;
    refPixel[1] = 40;

    // Initiation of maxBrightness
    int maxBrightness_hw [2];
    int maxBrightness_sw [2];

    // Initiation of minDistance
    T minDistance_hw;
    T minDistance_sw;

    // Initiation of closestPixelIdx
    int closestPixelIdx_hw [2];
    int closestPixelIdx_sw [2];


    printf("DEBUGGING AXI4 STREAMING DATA TYPES!\r\n");

	// prepare data for the DUT
	hls::stream<AXI_VAL> inp_stream("INSW");
	hls::stream<AXI_VAL> out_stream("OUTSW");
    
	AXI_VAL e;

	// Stream in the image
	for (int i = 0; i < FILAS; i++) {
		for (int j = 0; j < COLUMNAS; j++) {
			for (int k = 0; k < BANDAS; k += NUM_ELEMS_UIT) {

                uint16_t temp[NUM_ELEMS_UIT];
                temp[0] = image[i][j][k];
                temp[1] = image[i][j][k + 1];
                convert2word_uint16_t (e.data, temp);
				e.strb = -1;
				e.keep = 15;
				e.user = 0;
				e.last = 0;
				e.id = 1;
				e.dest = 2;
				inp_stream.write(e);
			}
		}
	}

    for (int i = 0; i < 2; i+= NUM_ELEMS_IN) {
        convert2word_int (e.data, &refPixel[i]);
        e.strb = -1;
        e.keep = 15;
        e.user = 0;
        e.last = (i == 1);
        e.id = 2;
        e.dest = 3;
        inp_stream.write(e);
    }

    hyperspectral_hw_wrapped (inp_stream, out_stream);
    
    for (int i = 0; i < 2; i++) {
        e = out_stream.read();
        WORD_MEM w_maxBrightness = e.data;
        conv_t c;
        c.in = w_maxBrightness;
        maxBrightness_hw[i] = c.out;
    }

    e = out_stream.read();
    WORD_MEM w_minDistance = e.data;
    memcpy(&minDistance_hw, &w_minDistance, sizeof(T));

    for (int i = 0; i < 2; i++) {
        e = out_stream.read();
        WORD_MEM w_closestPixel = e.data;
        conv_t c;
        c.in = w_closestPixel;
        closestPixelIdx_hw[i] = c.out;
    }

    hyperspectral_sw (image, refPixel, maxBrightness_sw, minDistance_sw, closestPixelIdx_sw);


    err = 0;
    if (minDistance_hw != minDistance_sw) {
        printf("MAIN AXI Error: minDistance_hw = %f, minDistance_sw = %f\r\n", minDistance_hw, minDistance_sw);
        err++;
    }
    if (maxBrightness_hw[0] != maxBrightness_hw[0] || maxBrightness_hw[1] != maxBrightness_sw[1]) {
        printf("MAIN AXI Error: maxBrightness_hw = (%d, %d), maxBrightness_sw = (%d, %d)\r\n", maxBrightness_hw[0], maxBrightness_hw[1], maxBrightness_sw[0], maxBrightness_sw[1]);
        err++;
    }

    if (closestPixelIdx_hw[0] != closestPixelIdx_sw[0] || closestPixelIdx_hw[1] != closestPixelIdx_sw[1]) {
        printf("MAIN AXI Error: closestPixel_hw = (%d, %d), closestPixel_sw = (%d, %d)\r\n", closestPixelIdx_hw[0], closestPixelIdx_hw[1], closestPixelIdx_sw[0], closestPixelIdx_sw[1]);
        err++;
    }

    if (err == 0) {
        printf("Test OK!\r\n");
    } else {
        printf("Test failed!\r\n");
    }
    return err;

}

int main(void) {
	return main_axi();
}

void convert2array_IN (WORD_MEM w, int out[NUM_ELEMS_IN]) {
	convert2array_IN_label1:for (int k = 0; k < NUM_ELEMS_IN; k++) {
		out[k] = w((k + 1) * 32 - 1, k * 32);
		std::cout << "Leyendo del stream: out[" << k << "] = " << out[k] << std::endl;
	}
}

void convert2word_uint16_t(WORD_MEM &w, uint16_t in[NUM_ELEMS_UIT]) {
    conv_t c;
    WORD_MEM _w;

    _w(15,0) = in[0];
    _w(31,16) = in[1];
    w = _w;

    /*convert2uint_label:for (int k = 0; k < NUM_ELEMS_UIT; k++) {
        c.out = in[k];
        _w((k + 1) * 16 - 1, k * 16) = c.in;
        std::cout << "Escribiendo en el stream: in[" << k << "] = " << in[k] << std::endl;
    }*/
}

void convert2word_int (WORD_MEM &w, int in[NUM_ELEMS_IN]) {
    conv_t c;
    WORD_MEM _w;

    convert2word_intlabel0:for (int k=0; k<NUM_ELEMS_IN;k++) {
        c.out = in[k];
        _w((k+1)*32-1,k*32)= c.in;
        
    }
    w = _w;
}
