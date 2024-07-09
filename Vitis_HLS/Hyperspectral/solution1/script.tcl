############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Hyperspectral
set_top hyperspectral_hw_wrapped
add_files ../Archivos_Fuente/Hyperspectral/hyperspectral_accel.cpp
add_files ../Archivos_Fuente/Hyperspectral/hyperspectral.h
add_files -tb ../Archivos_Fuente/Hyperspectral/hyperspectral_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../Archivos_Fuente/Hyperspectral/cuboH.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./Hyperspectral/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
