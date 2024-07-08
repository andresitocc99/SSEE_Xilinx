set SynModuleInfo {
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2_VITIS_LOOP_85_ MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2_VITIS_LOOP_85_s RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2_VITIS_LOOP_85_s
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_am_addmul_12ns_11ns_8ns_19_4_1 RTLNAME hyperspectral_hw_wrapped_am_addmul_12ns_11ns_8ns_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init RTLNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_98_5 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_98_5 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_98_5}
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_L3 MODELNAME hyperspectral_hw_wrapped_Pipeline_L3 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_L3
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME hyperspectral_hw_wrapped_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME hyperspectral_hw_wrapped_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_uitofp_32ns_32_4_no_dsp_1 RTLNAME hyperspectral_hw_wrapped_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_L1_L2_L3 MODELNAME hyperspectral_hw_wrapped_Pipeline_L1_L2_L3 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_L1_L2_L3
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_ama_addmuladd_12ns_11ns_8ns_8ns_19_4_1 RTLNAME hyperspectral_hw_wrapped_ama_addmuladd_12ns_11ns_8ns_8ns_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_113_6 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_113_6 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_113_6}
  {SRCNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_148_7 MODELNAME hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_148_7 RTLNAME hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_148_7}
  {SRCNAME hyperspectral_hw_wrapped MODELNAME hyperspectral_hw_wrapped RTLNAME hyperspectral_hw_wrapped IS_TOP 1
    SUBMODULES {
      {MODELNAME hyperspectral_hw_wrapped_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME hyperspectral_hw_wrapped_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_fsqrt_32ns_32ns_32_10_no_dsp_1 RTLNAME hyperspectral_hw_wrapped_fsqrt_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1 RTLNAME hyperspectral_hw_wrapped_mul_mul_19s_8ns_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_sitofp_32ns_32_4_no_dsp_1 RTLNAME hyperspectral_hw_wrapped_sitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_image_RAM_AUTO_1R1W RTLNAME hyperspectral_hw_wrapped_image_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hyperspectral_hw_wrapped_CONTROL_BUS_s_axi RTLNAME hyperspectral_hw_wrapped_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hyperspectral_hw_wrapped_regslice_both RTLNAME hyperspectral_hw_wrapped_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hyperspectral_hw_wrapped_regslice_both_U}
    }
  }
}
