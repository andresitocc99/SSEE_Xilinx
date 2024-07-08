// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1__HH__
#define __hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1__HH__
#include "hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2 hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U;

    SC_CTOR(hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1):  hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U ("hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U") {
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.clk(clk);
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.rst(reset);
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.ce(ce);
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.a(din0);
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.b(din1);
        hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1_DSP48_2_U.p(dout);

    }

};

#endif //
