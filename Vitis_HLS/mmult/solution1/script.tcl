############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mmult
set_top mmult_hw_wrapped
add_files ../Archivos_Fuente/mmult/mmult.h
add_files ../Archivos_Fuente/mmult/mmult_accel.cpp
add_files -tb ../Archivos_Fuente/mmult/mmult_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
#source "./mmult/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
