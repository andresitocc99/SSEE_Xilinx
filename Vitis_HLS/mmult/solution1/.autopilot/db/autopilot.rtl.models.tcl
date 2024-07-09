set SynModuleInfo {
  {SRCNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2 MODELNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2 RTLNAME mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2
    SUBMODULES {
      {MODELNAME mmult_hw_wrapped_flow_control_loop_pipe_sequential_init RTLNAME mmult_hw_wrapped_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mmult_hw_wrapped_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_97_5 MODELNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_97_5 RTLNAME mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_97_5}
  {SRCNAME mmult_hw_wrapped_Pipeline_L1_L2 MODELNAME mmult_hw_wrapped_Pipeline_L1_L2 RTLNAME mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_L1_L2
    SUBMODULES {
      {MODELNAME mmult_hw_wrapped_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME mmult_hw_wrapped_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mmult_hw_wrapped_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME mmult_hw_wrapped_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_113_7_VITIS_LOOP_114_8 MODELNAME mmult_hw_wrapped_Pipeline_VITIS_LOOP_113_7_VITIS_LOOP_114_8 RTLNAME mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_VITIS_LOOP_113_7_VITIS_LOOP_114_8}
  {SRCNAME mmult_hw_wrapped MODELNAME mmult_hw_wrapped RTLNAME mmult_hw_wrapped IS_TOP 1
    SUBMODULES {
      {MODELNAME mmult_hw_wrapped_a_RAM_1WNR_AUTO_1R1W RTLNAME mmult_hw_wrapped_a_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mmult_hw_wrapped_out_RAM_AUTO_1R1W RTLNAME mmult_hw_wrapped_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mmult_hw_wrapped_fifo_w32_d2_S RTLNAME mmult_hw_wrapped_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mmult_hw_wrapped_CONTROL_BUS_s_axi RTLNAME mmult_hw_wrapped_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mmult_hw_wrapped_regslice_both RTLNAME mmult_hw_wrapped_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME mmult_hw_wrapped_regslice_both_U}
    }
  }
}
