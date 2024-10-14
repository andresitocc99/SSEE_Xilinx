#ifndef __HYPERSPECTRAL_HW_H_
#define __HYPERSPECTRAL_HW_H_

#include <assert.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#define FILAS 2
#define COLUMNAS 1024
#define BANDAS 180
#define PIXELS (FILAS * COLUMNAS)
#define MAX_DIST 0xFFFFFFFF

typedef float T;
typedef int IN;

typedef uint16_t band_t;


#define U 4
#define TI 5
#define TD 5

#define WORD_SIZE 32

typedef ap_axiu<WORD_SIZE, U, TI, TD> AXI_VAL;
#define NUM_ELEMS_WORD ((WORD_SIZE / 8) / sizeof(T))
#define NUM_ELEMS_IN ((WORD_SIZE / 8 ) / sizeof(int))
#define NUM_ELEMS_UIT ((WORD_SIZE / 8) / sizeof(uint16_t))

typedef ap_uint<WORD_SIZE> WORD_MEM;

typedef union {
	int in;
	T out;
} conv_t;

void hyperspectral_hw_wrapped (hls::stream<AXI_VAL>& in_stream, hls::stream<AXI_VAL>& out_stream);
float calculate_eucledian_distance (band_t ref_band1, band_t ref_band2, band_t band1, band_t band2);

#endif
