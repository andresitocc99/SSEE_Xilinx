#include <stdio.h>
#include <stdlib.h>

#include "gradient.h"

void convert2array (WORD_MEM a, T out[NUM_ELEMS_WORD]);
void convert2word(WORD_MEM &a, T out[NUM_ELEMS_WORD]);

void gradient_sw(T matrix[DIM][DIM], T mag[DIM][DIM], T dir[DIM][DIM]) {

    T grad_X[DIM][DIM];
    T grad_Y[DIM][DIM];

    for (int i = 0; i < DIM; i++) {
        for (int j = 0; j < DIM; j++) {
            if (j == 0) {
                grad_X[i][j] = matrix[i][j + 1] - matrix[i][j];
            } else {
                grad_X[i][j] = matrix[i][j] - matrix[i][j - 1];
            }

            if (i == 0) {
                grad_Y[i][j] = matrix[i + 1][j] - matrix[i][j];
            } else {
                grad_Y[i][j] = matrix[i][j] - matrix[i - 1][j];
            }

            mag[i][j] = sqrt(pow(grad_X[i][j], 2) + pow(grad_Y[i][j], 2));
            dir[i][j] = atan2(grad_Y[i][j], grad_X[i][j]) * (180 / M_PI);
        }
    }
}

int main_standalone(void) {
    int ret_val = 0;
    int i,j,err;

    T matrix[DIM][DIM];
    T DirMatrix_sw[DIM][DIM];
    T DirMatrix_hw[DIM][DIM];
    T MagMatrix_sw[DIM][DIM];
    T MagMatrix_hw[DIM][DIM];

    /* Matrix Initiation*/
    for (int i=0; i<DIM;i++) {
        for (int j=0; j<DIM; j++) {
            matrix [i][j] = (float)(i * j);
        }
    }
    /* End of matrix initiation*/
    printf("NORMAL MODE\r\n");
    gradient_hw(matrix, MagMatrix_hw, DirMatrix_hw);

    /* reference Gradient Operations*/
    gradient_sw(matrix, MagMatrix_sw, DirMatrix_sw);

    /*Matrixes comparisons*/
    err = 0;
    for (i=0; (i<DIM & !err); i++) {
        for (j=0; (j<DIM & !err); j++) {
            if (MagMatrix_sw[i][j] != MagMatrix_hw[i][j] || DirMatrix_sw[i][j] != DirMatrix_hw[i][j]) {
                err++;
            }
        }
    }
    if (err==0) {
        printf("TEST OK\r\n");
    } else {
        printf("TEST FAILED\r\n");
    }
    return err;

}   

/* Test gradient_hw_wrapped function*/

int main_axi (void) {
    int i,j,err;

    ap_uint<U> user;
    ap_uint<TI> id;
    ap_uint<TD> dest;

    T matrix[DIM][DIM];
    T DirMatrix_sw[DIM][DIM];
    T DirMatrix_hw[DIM][DIM];
    T MagMatrix_sw[DIM][DIM];
    T MagMatrix_hw[DIM][DIM];

    /* Matrix Initiation*/
    for (int i=0; i<DIM;i++) {
        for (int j=0; j<DIM; j++) {
            matrix [i][j] = (float)(i * j);
        }
    }

    /* End of matrix initiation*/

    printf("DEBUGGING AXI4 STREAMING DATA TYPES!\r\n");

	// prepare data for the DUT
	hls::stream<AXI_VAL> inp_stream("INSW");
	hls::stream<AXI_VAL> out_stream("OUTSW");
    
	AXI_VAL e;
    
    // stream in the input matrix
	for(int i=0; i<DIM; i++) {
		for(int j=0; j<DIM; j+=NUM_ELEMS_WORD) {

			convert2word(e.data,&matrix[i][j]);
			e.strb = -1;
			e.keep = 15; //e.strb;
			e.user = 0;
			e.last = ((i==DIM-1) && (j==(DIM-NUM_ELEMS_WORD)));
			e.id = 1;
			e.dest = 2;
			inp_stream.write(e);

		}
	}
    
    // call the DUT
    gradient_hw_wrapped(inp_stream, out_stream);

    // extract the output matrix from the out stream
    for(int i=0; i<DIM; i++) {
        for(int j=0; j<DIM; j+=NUM_ELEMS_WORD) {
        	e = out_stream.read();
            convert2array(e.data,&MagMatrix_hw[i][j]);
            }
    }

    // extract the output matrix from the out stream
    for(int i=0; i<DIM; i++){
        for(int j=0; j<DIM; j+=NUM_ELEMS_WORD) {
                e = out_stream.read();
                convert2array(e.data,&DirMatrix_hw[i][j]);
        }
    }
    

    /* reference Gradient Operations*/
    gradient_sw(matrix, MagMatrix_sw, DirMatrix_sw);


    /* Matrix comparison*/
    err = 0;
	for (i = 0; (i<DIM); i++) {
		for (j = 0; (j<DIM); j++) {
			if (MagMatrix_sw[i][j] != MagMatrix_hw[i][j]) {
				err++;
				printf("Error (%d,%d) %f %f\r\n",i,j,MagMatrix_sw[i][j],MagMatrix_hw[i][j]);

			}
		}
	}

    if (err == 0)
    		printf("Matrixes identical ... Test successful!\r\n");
    	else
    		printf("Test failed! (%d)\r\n",err);

    return err;
}

int main(void) {
	return main_axi();
}

void convert2array(WORD_MEM w, T out[NUM_ELEMS_WORD]) {
	conv_t c;

	convert2array_label1:for (int k=0; k<NUM_ELEMS_WORD;k++) {

		c.in = w((k+1)*32-1,k*32);
		//
		out[k] = c.out;
	}

}
void convert2word(WORD_MEM &w, T in[NUM_ELEMS_WORD]) {
	conv_t c;
	WORD_MEM _w;

	convert2word_label0:for (int k=0; k<NUM_ELEMS_WORD;k++) {
		c.out = in[k];
		_w((k+1)*32-1,k*32)= c.in;
		//		_w((NUM_ELEMS_WORD-(k))*32-1,(NUM_ELEMS_WORD-(k+1))*32)= c.in;
	}
	w = _w;
}
