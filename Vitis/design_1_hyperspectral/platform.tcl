# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/andresitocc99/Documentos/SSEE_Xilinx/Vitis/design_1_hyperspectral/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/andresitocc99/Documentos/SSEE_Xilinx/Vitis/design_1_hyperspectral/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_hyperspectral}\
-hw {/home/andresitocc99/Documentos/SSEE_Xilinx/Vivado/hyperspectral/design_1_hyperspectral.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/andresitocc99/Documentos/SSEE_Xilinx/Vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_hyperspectral}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.7
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
