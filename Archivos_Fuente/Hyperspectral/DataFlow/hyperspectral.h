#ifndef __HYPERSPECTRAL_HW_H_
#define __HYPERSPECTRAL_HW_H_

#include <assert.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <vector>

typedef ap_uint<12> uint12t;
typedef ap_uint<32> WORD_MEM;

// Dimensions of the hyperspectral image
const int ROWS = 2;
const int COLS = 1024;
const int BANDS = 180;

#define WORD_SIZE 32

struct Pixel {
	int x;
	int y;
	uint16_t bands[BANDS];
};

struct PixelInfo {
    int row;  			// Fila del píxel
    int col;  			// Columna del píxel
    uint32 value;  		// Valor de brillo

    PixelInfo() : row(0), col(0), value(0) {}
};

struct Result {
	PixelInfo max_brightness_pixel;
	float min_distance;
	Pixel min_distance_pixel;

	Result() : min_distance(std::numeric_limits<float>::max()) {}
};
