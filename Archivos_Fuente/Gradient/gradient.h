#ifndef __GRADIENT_HW_H__
#define __GRADIENT_HW_H__

#include <assert.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#define DIM 64

typedef float T;
#define U 4
#define TI 5
#define TD 5

#define WORD_SIZE 32

typedef ap_axiu<WORD_SIZE, U, TI, TD> AXI_VAL;
#define NUM_ELEMS_WORD ((WORD_SIZE / 8) / sizeof(T))

typedef ap_uint<WORD_SIZE> WORD_MEM;

typedef union {
	int in;
	T out;
} conv_t;

void gradient_hw(T matrix[DIM][DIM], T mag[DIM][DIM], T dir[DIM][DIM]);
void gradient_hw_wrapped(hls::stream<AXI_VAL> &in_stream, hls::stream<AXI_VAL> &out_stream);

#endif
