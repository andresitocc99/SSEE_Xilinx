#include <stdio.h>
#include <stdlib.h>
#include <limits>
#include <hls_math.h>
#include <iostream>

#include "hyperspectral.h"

void loadHyperspectralImage(uint16_t image[FILAS][COLUMNAS][BANDAS], const char* filename);
void calculate_distance(band_t ref_band1, band_t ref_band2, band_t band1, band_t band2, dist_t &distance)


void calculate_distance(band_t ref_band1, band_t ref_band2, band_t band1, band_t band2, dist_t &distance) {
    #pragma HLS INLINE
    dist_t diff1 = ref_band1 - band1;
    dist_t diff2 = ref_band2 - band2;

    distance += diff1 * diff1 + diff2 * diff2;  // Suma de las diferencias al cuadrado
}

void hyperspectral_sw(band_t image[FILAS][COLUMNAS][BANDAS], band_t ref_pixel[BANDAS], band_t closest_pixel_sw[BANDAS]) {

    dist_t min_distance = MAX_DIST;
    int min_pixel_index_i = 0;
    int min_pixel_index_j = 0;

    for (int i = 0; i < FILAS; i++) {
    	for (int j = 0; j < COLUMNAS; j++) {
    		dist_t distance = 0;

    		for (int k = 0; k < BANDAS; k += 2) {
				calculate_distance(ref_pixel[k], ref_pixel[k + 1], image[i][j][k], image[i][j][k + 1], distance);
			}

    		if (distance < min_distance) {
    			min_distance = distance;
    			min_distance_index_i = i;
    			min_distance_index_j = j;
    		}
    	}
    }

    for (int k = 0; k < BANDAS; k++) {
		closest_pixel_sw[k] = image[min_pixel_index_i][min_pixel_index_j][k];
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

int main_axi (void) {

    int i, j, err;

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    uint16_t image[FILAS][COLUMNAS][BANDAS];
    loadHyperspectralImage(image, "cuboH.bin");

    // Initialice ref_pixel[BANDAS];

    band_t ref_pixel[BANDAS];
    for (int i=0; i < BANDAS; i++) {
    	ref_pixel[i]= 100;
    }

    band_t closest_pixel_hw[BANDAS];
    band_t closest_pixel_sw[BANDAS];


    printf("DEBUGGING AXI4 STREAMING DATA TYPES!\r\n");

	// prepare data for the DUT
	hls::stream<AXI_VAL> inp_stream("INSW");
	hls::stream<AXI_VAL> out_stream("OUTSW");
    
	AXI_VAL e;

	// Stream in ref_pixel[BANDAS]

	for (int i = 0; i < BANDAS; i += 2) {
		#pragma HLS_PIPELINE II=1
		WORD_MEM w;
		w(15,0) = ref_pixel[i];
		w(31,16) = ref_pixel[i+1];

		e.data = w;
		e.strb = -1;
		e.keep = 15;
		e.user = 0;
		e.last = 0;
		e.id = 1;
		e.dest = 2;
		inp_stream.write(e);
	}

	// Stream in the image
	for (int i = 0; i < FILAS; i++) {
		for (int j = 0; j < COLUMNAS; j++) {
			for (int k = 0; k < BANDAS; k += 2) {

				AXI_VAL e;
				WORD_MEM w;
				w(15,0) = image[i][j][k];
				w(31,16) = image[i][j][k + 1];

				e.data = w;
				e.strb = -1;
				e.keep = 15;
				e.user = 0;
				e.last = (i = FILAS-1 && j= COLUMNAS-1 && k >= BANDAS-2);
				e.id = 3;
				e.dest = 4;
				inp_stream.write(e);
			}
		}
	}

    hyperspectral_hw_wrapped (inp_stream, out_stream);
    
    for (int i = 0; i < BANDAS; i+=2) {
    	e = out_stream.read();
    	WORD_MEM w = e.data();
    	closest_pixel_hw[i] = w(15,0);
    	closest_pixel_hw[i+1] = w (31,16);

    }

    hyperspectral_sw (image, ref_pixel, closest_pixel_sw);


    err = 0;
    for (int i = 0; i < BANDAS; i++) {
        if (closest_pixel_hw[i] != closest_pixel_sw[i]) {
            err++;
            printf("Error en banda %d: closest_pixel_sw = %u, closest_pixel_hw = %u\r\n", i, closest_pixel_sw[i].to_uint(), closest_pixel_hw[i].to_uint());
        }
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