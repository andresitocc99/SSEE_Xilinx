create_project prj -part xczu3eg-sbva484-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_sitofp_32ns_32_4_no_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_fsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_uitofp_32ns_32_4_no_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_fsqrt_32ns_32ns_32_10_no_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis_HLS/Hyperspectral_DataFlow/solution1/syn/verilog/hyperspectral_hw_wrapped_fadd_32ns_32ns_32_4_no_dsp_1_ip.tcl"
