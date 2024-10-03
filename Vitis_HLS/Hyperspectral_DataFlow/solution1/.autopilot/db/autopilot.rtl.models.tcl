set SynModuleInfo {
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_46_1 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_46_1 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_46_1
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init RTLNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {sqrt_fixed<33, 33>} MODELNAME sqrt_fixed_33_33_s RTLNAME hyperspectral_hw_wrapped_sqrt_fixed_33_33_s}
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_56_2 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_56_2 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_56_2
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_mul_mul_17s_17s_32_4_1 RTLNAME hyperspectral_hw_wrapped_mul_mul_17s_17s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_mac_muladd_17s_17s_32s_32_4_1 RTLNAME hyperspectral_hw_wrapped_mac_muladd_17s_17s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_mac_muladd_17s_17s_32ns_32_4_1 RTLNAME hyperspectral_hw_wrapped_mac_muladd_17s_17s_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_85_4 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_85_4 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_85_4
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_mux_1798_16_1_1 RTLNAME hyperspectral_hw_wrapped_mux_1798_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hyperspectral_hw_wrapped MODELNAME hyperspectral_hw_wrapped RTLNAME hyperspectral_hw_wrapped IS_TOP 1
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_uitofp_32ns_32_4_no_dsp_1 RTLNAME hyperspectral_hw_wrapped_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_ref_pixel_V_RAM_AUTO_1R1W RTLNAME hyperspectral_hw_wrapped_ref_pixel_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_CONTROL_BUS_s_axi RTLNAME hyperspectral_hw_wrapped_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hyperspectral_hw_wrapped_regslice_both RTLNAME hyperspectral_hw_wrapped_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hyperspectral_hw_wrapped_regslice_both_U}
    }
  }
}
