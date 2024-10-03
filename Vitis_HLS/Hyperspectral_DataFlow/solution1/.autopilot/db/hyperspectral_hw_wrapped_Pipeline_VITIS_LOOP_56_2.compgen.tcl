# This script segment is generated automatically by AutoPilot

set id 10
set name hyperspectral_hw_wrapped_mul_mul_17s_17s_32_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 17
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {17 1 +} i1 {17 1 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 12
set name hyperspectral_hw_wrapped_mac_muladd_17s_17s_32s_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 17
set in1_signed 1
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {17 1 +} i1 {17 1 +} m {32 1 +} i2 {32 1 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 15
set name hyperspectral_hw_wrapped_mac_muladd_17s_17s_32ns_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 17
set in1_signed 1
set in2_width 32
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {17 1 +} i1 {17 1 +} m {32 1 +} i2 {32 0 +} p {32 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 193 \
    name in_stream_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TVALID { I 1 bit } in_stream_TDATA { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 194 \
    name in_stream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TKEEP { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 195 \
    name in_stream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TSTRB { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 196 \
    name in_stream_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TUSER { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 197 \
    name in_stream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 198 \
    name in_stream_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TID { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 199 \
    name in_stream_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TREADY { O 1 bit } in_stream_TDEST { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name lhs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs \
    op interface \
    ports { lhs { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name lhs_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_1 \
    op interface \
    ports { lhs_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name lhs_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_2 \
    op interface \
    ports { lhs_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name lhs_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_3 \
    op interface \
    ports { lhs_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name lhs_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_4 \
    op interface \
    ports { lhs_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name lhs_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_5 \
    op interface \
    ports { lhs_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name lhs_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_6 \
    op interface \
    ports { lhs_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name lhs_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_7 \
    op interface \
    ports { lhs_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name lhs_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_8 \
    op interface \
    ports { lhs_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name lhs_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_9 \
    op interface \
    ports { lhs_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name lhs_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_10 \
    op interface \
    ports { lhs_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name lhs_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_11 \
    op interface \
    ports { lhs_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name lhs_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_12 \
    op interface \
    ports { lhs_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name lhs_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_13 \
    op interface \
    ports { lhs_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name lhs_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_14 \
    op interface \
    ports { lhs_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name lhs_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_15 \
    op interface \
    ports { lhs_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name lhs_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_16 \
    op interface \
    ports { lhs_16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name lhs_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_17 \
    op interface \
    ports { lhs_17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name lhs_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_18 \
    op interface \
    ports { lhs_18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name lhs_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_19 \
    op interface \
    ports { lhs_19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name lhs_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_20 \
    op interface \
    ports { lhs_20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name lhs_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_21 \
    op interface \
    ports { lhs_21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name lhs_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_22 \
    op interface \
    ports { lhs_22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name lhs_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_23 \
    op interface \
    ports { lhs_23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name lhs_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_24 \
    op interface \
    ports { lhs_24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name lhs_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_25 \
    op interface \
    ports { lhs_25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name lhs_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_26 \
    op interface \
    ports { lhs_26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name lhs_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_27 \
    op interface \
    ports { lhs_27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name lhs_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_28 \
    op interface \
    ports { lhs_28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name lhs_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_29 \
    op interface \
    ports { lhs_29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name lhs_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_30 \
    op interface \
    ports { lhs_30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name lhs_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_31 \
    op interface \
    ports { lhs_31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name lhs_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_32 \
    op interface \
    ports { lhs_32 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name lhs_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_33 \
    op interface \
    ports { lhs_33 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name lhs_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_34 \
    op interface \
    ports { lhs_34 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name lhs_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_35 \
    op interface \
    ports { lhs_35 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name lhs_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_36 \
    op interface \
    ports { lhs_36 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name lhs_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_37 \
    op interface \
    ports { lhs_37 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name lhs_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_38 \
    op interface \
    ports { lhs_38 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name lhs_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_39 \
    op interface \
    ports { lhs_39 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name lhs_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_40 \
    op interface \
    ports { lhs_40 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name lhs_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_41 \
    op interface \
    ports { lhs_41 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name lhs_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_42 \
    op interface \
    ports { lhs_42 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name lhs_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_43 \
    op interface \
    ports { lhs_43 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name lhs_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_44 \
    op interface \
    ports { lhs_44 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name lhs_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_45 \
    op interface \
    ports { lhs_45 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name lhs_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_46 \
    op interface \
    ports { lhs_46 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name lhs_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_47 \
    op interface \
    ports { lhs_47 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name lhs_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_48 \
    op interface \
    ports { lhs_48 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name lhs_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_49 \
    op interface \
    ports { lhs_49 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name lhs_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_50 \
    op interface \
    ports { lhs_50 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name lhs_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_51 \
    op interface \
    ports { lhs_51 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name lhs_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_52 \
    op interface \
    ports { lhs_52 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name lhs_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_53 \
    op interface \
    ports { lhs_53 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name lhs_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_54 \
    op interface \
    ports { lhs_54 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name lhs_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_55 \
    op interface \
    ports { lhs_55 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name lhs_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_56 \
    op interface \
    ports { lhs_56 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name lhs_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_57 \
    op interface \
    ports { lhs_57 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name lhs_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_58 \
    op interface \
    ports { lhs_58 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name lhs_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_59 \
    op interface \
    ports { lhs_59 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name lhs_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_60 \
    op interface \
    ports { lhs_60 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name lhs_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_61 \
    op interface \
    ports { lhs_61 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name lhs_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_62 \
    op interface \
    ports { lhs_62 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name lhs_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_63 \
    op interface \
    ports { lhs_63 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name lhs_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_64 \
    op interface \
    ports { lhs_64 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name lhs_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_65 \
    op interface \
    ports { lhs_65 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name lhs_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_66 \
    op interface \
    ports { lhs_66 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name lhs_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_67 \
    op interface \
    ports { lhs_67 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name lhs_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_68 \
    op interface \
    ports { lhs_68 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name lhs_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_69 \
    op interface \
    ports { lhs_69 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name lhs_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_70 \
    op interface \
    ports { lhs_70 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name lhs_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_71 \
    op interface \
    ports { lhs_71 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name lhs_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_72 \
    op interface \
    ports { lhs_72 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name lhs_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_73 \
    op interface \
    ports { lhs_73 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name lhs_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_74 \
    op interface \
    ports { lhs_74 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name lhs_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_75 \
    op interface \
    ports { lhs_75 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name lhs_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_76 \
    op interface \
    ports { lhs_76 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name lhs_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_77 \
    op interface \
    ports { lhs_77 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name lhs_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_78 \
    op interface \
    ports { lhs_78 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name lhs_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_79 \
    op interface \
    ports { lhs_79 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name lhs_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_80 \
    op interface \
    ports { lhs_80 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name lhs_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_81 \
    op interface \
    ports { lhs_81 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name lhs_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_82 \
    op interface \
    ports { lhs_82 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name lhs_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_83 \
    op interface \
    ports { lhs_83 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name lhs_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_84 \
    op interface \
    ports { lhs_84 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name lhs_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_85 \
    op interface \
    ports { lhs_85 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name lhs_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_86 \
    op interface \
    ports { lhs_86 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name lhs_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_87 \
    op interface \
    ports { lhs_87 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name lhs_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_88 \
    op interface \
    ports { lhs_88 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name lhs_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_89 \
    op interface \
    ports { lhs_89 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name lhs_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_90 \
    op interface \
    ports { lhs_90 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name lhs_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_91 \
    op interface \
    ports { lhs_91 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name lhs_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_92 \
    op interface \
    ports { lhs_92 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name lhs_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_93 \
    op interface \
    ports { lhs_93 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name lhs_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_94 \
    op interface \
    ports { lhs_94 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name lhs_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_95 \
    op interface \
    ports { lhs_95 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name lhs_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_96 \
    op interface \
    ports { lhs_96 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name lhs_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_97 \
    op interface \
    ports { lhs_97 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name lhs_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_98 \
    op interface \
    ports { lhs_98 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name lhs_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_99 \
    op interface \
    ports { lhs_99 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name lhs_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_100 \
    op interface \
    ports { lhs_100 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name lhs_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_101 \
    op interface \
    ports { lhs_101 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name lhs_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_102 \
    op interface \
    ports { lhs_102 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name lhs_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_103 \
    op interface \
    ports { lhs_103 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name lhs_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_104 \
    op interface \
    ports { lhs_104 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name lhs_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_105 \
    op interface \
    ports { lhs_105 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name lhs_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_106 \
    op interface \
    ports { lhs_106 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name lhs_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_107 \
    op interface \
    ports { lhs_107 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name lhs_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_108 \
    op interface \
    ports { lhs_108 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name lhs_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_109 \
    op interface \
    ports { lhs_109 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name lhs_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_110 \
    op interface \
    ports { lhs_110 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name lhs_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_111 \
    op interface \
    ports { lhs_111 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name lhs_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_112 \
    op interface \
    ports { lhs_112 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name lhs_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_113 \
    op interface \
    ports { lhs_113 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name lhs_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_114 \
    op interface \
    ports { lhs_114 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name lhs_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_115 \
    op interface \
    ports { lhs_115 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name lhs_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_116 \
    op interface \
    ports { lhs_116 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name lhs_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_117 \
    op interface \
    ports { lhs_117 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name lhs_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_118 \
    op interface \
    ports { lhs_118 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name lhs_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_119 \
    op interface \
    ports { lhs_119 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name lhs_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_120 \
    op interface \
    ports { lhs_120 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name lhs_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_121 \
    op interface \
    ports { lhs_121 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name lhs_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_122 \
    op interface \
    ports { lhs_122 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name lhs_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_123 \
    op interface \
    ports { lhs_123 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name lhs_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_124 \
    op interface \
    ports { lhs_124 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name lhs_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_125 \
    op interface \
    ports { lhs_125 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name lhs_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_126 \
    op interface \
    ports { lhs_126 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name lhs_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_127 \
    op interface \
    ports { lhs_127 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name lhs_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_128 \
    op interface \
    ports { lhs_128 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name lhs_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_129 \
    op interface \
    ports { lhs_129 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name lhs_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_130 \
    op interface \
    ports { lhs_130 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name lhs_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_131 \
    op interface \
    ports { lhs_131 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name lhs_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_132 \
    op interface \
    ports { lhs_132 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name lhs_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_133 \
    op interface \
    ports { lhs_133 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name lhs_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_134 \
    op interface \
    ports { lhs_134 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name lhs_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_135 \
    op interface \
    ports { lhs_135 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name lhs_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_136 \
    op interface \
    ports { lhs_136 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name lhs_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_137 \
    op interface \
    ports { lhs_137 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name lhs_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_138 \
    op interface \
    ports { lhs_138 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name lhs_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_139 \
    op interface \
    ports { lhs_139 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name lhs_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_140 \
    op interface \
    ports { lhs_140 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name lhs_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_141 \
    op interface \
    ports { lhs_141 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name lhs_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_142 \
    op interface \
    ports { lhs_142 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name lhs_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_143 \
    op interface \
    ports { lhs_143 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name lhs_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_144 \
    op interface \
    ports { lhs_144 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name lhs_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_145 \
    op interface \
    ports { lhs_145 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name lhs_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_146 \
    op interface \
    ports { lhs_146 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name lhs_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_147 \
    op interface \
    ports { lhs_147 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name lhs_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_148 \
    op interface \
    ports { lhs_148 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name lhs_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_149 \
    op interface \
    ports { lhs_149 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name lhs_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_150 \
    op interface \
    ports { lhs_150 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name lhs_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_151 \
    op interface \
    ports { lhs_151 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name lhs_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_152 \
    op interface \
    ports { lhs_152 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name lhs_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_153 \
    op interface \
    ports { lhs_153 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name lhs_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_154 \
    op interface \
    ports { lhs_154 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name lhs_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_155 \
    op interface \
    ports { lhs_155 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name lhs_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_156 \
    op interface \
    ports { lhs_156 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name lhs_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_157 \
    op interface \
    ports { lhs_157 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name lhs_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_158 \
    op interface \
    ports { lhs_158 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name lhs_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_159 \
    op interface \
    ports { lhs_159 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name lhs_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_160 \
    op interface \
    ports { lhs_160 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name lhs_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_161 \
    op interface \
    ports { lhs_161 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name lhs_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_162 \
    op interface \
    ports { lhs_162 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name lhs_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_163 \
    op interface \
    ports { lhs_163 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name lhs_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_164 \
    op interface \
    ports { lhs_164 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name lhs_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_165 \
    op interface \
    ports { lhs_165 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name lhs_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_166 \
    op interface \
    ports { lhs_166 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name lhs_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_167 \
    op interface \
    ports { lhs_167 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name lhs_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_168 \
    op interface \
    ports { lhs_168 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name lhs_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_169 \
    op interface \
    ports { lhs_169 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name lhs_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_170 \
    op interface \
    ports { lhs_170 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name lhs_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_171 \
    op interface \
    ports { lhs_171 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name lhs_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_172 \
    op interface \
    ports { lhs_172 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name lhs_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_173 \
    op interface \
    ports { lhs_173 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name lhs_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_174 \
    op interface \
    ports { lhs_174 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name lhs_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_175 \
    op interface \
    ports { lhs_175 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name lhs_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_176 \
    op interface \
    ports { lhs_176 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name lhs_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_177 \
    op interface \
    ports { lhs_177 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name lhs_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_178 \
    op interface \
    ports { lhs_178 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name lhs_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_179 \
    op interface \
    ports { lhs_179 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name closest_pixel_V_538_0183_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_538_0183_out \
    op interface \
    ports { closest_pixel_V_538_0183_out { O 16 vector } closest_pixel_V_538_0183_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name closest_pixel_V_448_0182_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_448_0182_out \
    op interface \
    ports { closest_pixel_V_448_0182_out { O 16 vector } closest_pixel_V_448_0182_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name closest_pixel_V_537_0181_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_537_0181_out \
    op interface \
    ports { closest_pixel_V_537_0181_out { O 16 vector } closest_pixel_V_537_0181_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name closest_pixel_V_447_0180_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_447_0180_out \
    op interface \
    ports { closest_pixel_V_447_0180_out { O 16 vector } closest_pixel_V_447_0180_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name closest_pixel_V_536_0179_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_536_0179_out \
    op interface \
    ports { closest_pixel_V_536_0179_out { O 16 vector } closest_pixel_V_536_0179_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name closest_pixel_V_446_0178_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_446_0178_out \
    op interface \
    ports { closest_pixel_V_446_0178_out { O 16 vector } closest_pixel_V_446_0178_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name closest_pixel_V_535_0177_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_535_0177_out \
    op interface \
    ports { closest_pixel_V_535_0177_out { O 16 vector } closest_pixel_V_535_0177_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name closest_pixel_V_445_0176_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_445_0176_out \
    op interface \
    ports { closest_pixel_V_445_0176_out { O 16 vector } closest_pixel_V_445_0176_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name closest_pixel_V_534_0175_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_534_0175_out \
    op interface \
    ports { closest_pixel_V_534_0175_out { O 16 vector } closest_pixel_V_534_0175_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name closest_pixel_V_444_0174_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_444_0174_out \
    op interface \
    ports { closest_pixel_V_444_0174_out { O 16 vector } closest_pixel_V_444_0174_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name closest_pixel_V_533_0173_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_533_0173_out \
    op interface \
    ports { closest_pixel_V_533_0173_out { O 16 vector } closest_pixel_V_533_0173_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name closest_pixel_V_443_0172_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_443_0172_out \
    op interface \
    ports { closest_pixel_V_443_0172_out { O 16 vector } closest_pixel_V_443_0172_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name closest_pixel_V_532_0171_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_532_0171_out \
    op interface \
    ports { closest_pixel_V_532_0171_out { O 16 vector } closest_pixel_V_532_0171_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name closest_pixel_V_442_0170_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_442_0170_out \
    op interface \
    ports { closest_pixel_V_442_0170_out { O 16 vector } closest_pixel_V_442_0170_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name closest_pixel_V_531_0169_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_531_0169_out \
    op interface \
    ports { closest_pixel_V_531_0169_out { O 16 vector } closest_pixel_V_531_0169_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name closest_pixel_V_441_0168_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_441_0168_out \
    op interface \
    ports { closest_pixel_V_441_0168_out { O 16 vector } closest_pixel_V_441_0168_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name closest_pixel_V_530_0167_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_530_0167_out \
    op interface \
    ports { closest_pixel_V_530_0167_out { O 16 vector } closest_pixel_V_530_0167_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name closest_pixel_V_440_0166_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_440_0166_out \
    op interface \
    ports { closest_pixel_V_440_0166_out { O 16 vector } closest_pixel_V_440_0166_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name closest_pixel_V_529_0165_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_529_0165_out \
    op interface \
    ports { closest_pixel_V_529_0165_out { O 16 vector } closest_pixel_V_529_0165_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name closest_pixel_V_439_0164_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_439_0164_out \
    op interface \
    ports { closest_pixel_V_439_0164_out { O 16 vector } closest_pixel_V_439_0164_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name closest_pixel_V_528_0163_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_528_0163_out \
    op interface \
    ports { closest_pixel_V_528_0163_out { O 16 vector } closest_pixel_V_528_0163_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name closest_pixel_V_438_0162_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_438_0162_out \
    op interface \
    ports { closest_pixel_V_438_0162_out { O 16 vector } closest_pixel_V_438_0162_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name closest_pixel_V_527_0161_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_527_0161_out \
    op interface \
    ports { closest_pixel_V_527_0161_out { O 16 vector } closest_pixel_V_527_0161_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name closest_pixel_V_437_0160_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_437_0160_out \
    op interface \
    ports { closest_pixel_V_437_0160_out { O 16 vector } closest_pixel_V_437_0160_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name closest_pixel_V_526_0159_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_526_0159_out \
    op interface \
    ports { closest_pixel_V_526_0159_out { O 16 vector } closest_pixel_V_526_0159_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name closest_pixel_V_436_0158_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_436_0158_out \
    op interface \
    ports { closest_pixel_V_436_0158_out { O 16 vector } closest_pixel_V_436_0158_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name closest_pixel_V_525_0157_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_525_0157_out \
    op interface \
    ports { closest_pixel_V_525_0157_out { O 16 vector } closest_pixel_V_525_0157_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name closest_pixel_V_435_0156_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_435_0156_out \
    op interface \
    ports { closest_pixel_V_435_0156_out { O 16 vector } closest_pixel_V_435_0156_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name closest_pixel_V_524_0155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_524_0155_out \
    op interface \
    ports { closest_pixel_V_524_0155_out { O 16 vector } closest_pixel_V_524_0155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name closest_pixel_V_434_0154_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_434_0154_out \
    op interface \
    ports { closest_pixel_V_434_0154_out { O 16 vector } closest_pixel_V_434_0154_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name closest_pixel_V_523_0153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_523_0153_out \
    op interface \
    ports { closest_pixel_V_523_0153_out { O 16 vector } closest_pixel_V_523_0153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name closest_pixel_V_433_0152_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_433_0152_out \
    op interface \
    ports { closest_pixel_V_433_0152_out { O 16 vector } closest_pixel_V_433_0152_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name closest_pixel_V_522_0151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_522_0151_out \
    op interface \
    ports { closest_pixel_V_522_0151_out { O 16 vector } closest_pixel_V_522_0151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name closest_pixel_V_432_0150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_432_0150_out \
    op interface \
    ports { closest_pixel_V_432_0150_out { O 16 vector } closest_pixel_V_432_0150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name closest_pixel_V_521_0149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_521_0149_out \
    op interface \
    ports { closest_pixel_V_521_0149_out { O 16 vector } closest_pixel_V_521_0149_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name closest_pixel_V_431_0148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_431_0148_out \
    op interface \
    ports { closest_pixel_V_431_0148_out { O 16 vector } closest_pixel_V_431_0148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name closest_pixel_V_520_0147_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_520_0147_out \
    op interface \
    ports { closest_pixel_V_520_0147_out { O 16 vector } closest_pixel_V_520_0147_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name closest_pixel_V_430_0146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_430_0146_out \
    op interface \
    ports { closest_pixel_V_430_0146_out { O 16 vector } closest_pixel_V_430_0146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name closest_pixel_V_519_0145_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_519_0145_out \
    op interface \
    ports { closest_pixel_V_519_0145_out { O 16 vector } closest_pixel_V_519_0145_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name closest_pixel_V_429_0144_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_429_0144_out \
    op interface \
    ports { closest_pixel_V_429_0144_out { O 16 vector } closest_pixel_V_429_0144_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name closest_pixel_V_518_0143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_518_0143_out \
    op interface \
    ports { closest_pixel_V_518_0143_out { O 16 vector } closest_pixel_V_518_0143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name closest_pixel_V_428_0142_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_428_0142_out \
    op interface \
    ports { closest_pixel_V_428_0142_out { O 16 vector } closest_pixel_V_428_0142_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name closest_pixel_V_517_0141_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_517_0141_out \
    op interface \
    ports { closest_pixel_V_517_0141_out { O 16 vector } closest_pixel_V_517_0141_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name closest_pixel_V_427_0140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_427_0140_out \
    op interface \
    ports { closest_pixel_V_427_0140_out { O 16 vector } closest_pixel_V_427_0140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name closest_pixel_V_516_0139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_516_0139_out \
    op interface \
    ports { closest_pixel_V_516_0139_out { O 16 vector } closest_pixel_V_516_0139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name closest_pixel_V_426_0138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_426_0138_out \
    op interface \
    ports { closest_pixel_V_426_0138_out { O 16 vector } closest_pixel_V_426_0138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name closest_pixel_V_515_0137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_515_0137_out \
    op interface \
    ports { closest_pixel_V_515_0137_out { O 16 vector } closest_pixel_V_515_0137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name closest_pixel_V_425_0136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_425_0136_out \
    op interface \
    ports { closest_pixel_V_425_0136_out { O 16 vector } closest_pixel_V_425_0136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name closest_pixel_V_514_0135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_514_0135_out \
    op interface \
    ports { closest_pixel_V_514_0135_out { O 16 vector } closest_pixel_V_514_0135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name closest_pixel_V_424_0134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_424_0134_out \
    op interface \
    ports { closest_pixel_V_424_0134_out { O 16 vector } closest_pixel_V_424_0134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name closest_pixel_V_513_0133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_513_0133_out \
    op interface \
    ports { closest_pixel_V_513_0133_out { O 16 vector } closest_pixel_V_513_0133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name closest_pixel_V_423_0132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_423_0132_out \
    op interface \
    ports { closest_pixel_V_423_0132_out { O 16 vector } closest_pixel_V_423_0132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name closest_pixel_V_512_0131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_512_0131_out \
    op interface \
    ports { closest_pixel_V_512_0131_out { O 16 vector } closest_pixel_V_512_0131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name closest_pixel_V_422_0130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_422_0130_out \
    op interface \
    ports { closest_pixel_V_422_0130_out { O 16 vector } closest_pixel_V_422_0130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name closest_pixel_V_511_0129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_511_0129_out \
    op interface \
    ports { closest_pixel_V_511_0129_out { O 16 vector } closest_pixel_V_511_0129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name closest_pixel_V_421_0128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_421_0128_out \
    op interface \
    ports { closest_pixel_V_421_0128_out { O 16 vector } closest_pixel_V_421_0128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name closest_pixel_V_510_0127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_510_0127_out \
    op interface \
    ports { closest_pixel_V_510_0127_out { O 16 vector } closest_pixel_V_510_0127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name closest_pixel_V_420_0126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_420_0126_out \
    op interface \
    ports { closest_pixel_V_420_0126_out { O 16 vector } closest_pixel_V_420_0126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name closest_pixel_V_509_0125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_509_0125_out \
    op interface \
    ports { closest_pixel_V_509_0125_out { O 16 vector } closest_pixel_V_509_0125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name closest_pixel_V_419_0124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_419_0124_out \
    op interface \
    ports { closest_pixel_V_419_0124_out { O 16 vector } closest_pixel_V_419_0124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name closest_pixel_V_508_0123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_508_0123_out \
    op interface \
    ports { closest_pixel_V_508_0123_out { O 16 vector } closest_pixel_V_508_0123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name closest_pixel_V_418_0122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_418_0122_out \
    op interface \
    ports { closest_pixel_V_418_0122_out { O 16 vector } closest_pixel_V_418_0122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name closest_pixel_V_507_0121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_507_0121_out \
    op interface \
    ports { closest_pixel_V_507_0121_out { O 16 vector } closest_pixel_V_507_0121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name closest_pixel_V_417_0120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_417_0120_out \
    op interface \
    ports { closest_pixel_V_417_0120_out { O 16 vector } closest_pixel_V_417_0120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name closest_pixel_V_506_0119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_506_0119_out \
    op interface \
    ports { closest_pixel_V_506_0119_out { O 16 vector } closest_pixel_V_506_0119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name closest_pixel_V_416_0118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_416_0118_out \
    op interface \
    ports { closest_pixel_V_416_0118_out { O 16 vector } closest_pixel_V_416_0118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name closest_pixel_V_505_0117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_505_0117_out \
    op interface \
    ports { closest_pixel_V_505_0117_out { O 16 vector } closest_pixel_V_505_0117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name closest_pixel_V_415_0116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_415_0116_out \
    op interface \
    ports { closest_pixel_V_415_0116_out { O 16 vector } closest_pixel_V_415_0116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name closest_pixel_V_504_0115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_504_0115_out \
    op interface \
    ports { closest_pixel_V_504_0115_out { O 16 vector } closest_pixel_V_504_0115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name closest_pixel_V_414_0114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_414_0114_out \
    op interface \
    ports { closest_pixel_V_414_0114_out { O 16 vector } closest_pixel_V_414_0114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name closest_pixel_V_503_0113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_503_0113_out \
    op interface \
    ports { closest_pixel_V_503_0113_out { O 16 vector } closest_pixel_V_503_0113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name closest_pixel_V_413_0112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_413_0112_out \
    op interface \
    ports { closest_pixel_V_413_0112_out { O 16 vector } closest_pixel_V_413_0112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name closest_pixel_V_502_0111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_502_0111_out \
    op interface \
    ports { closest_pixel_V_502_0111_out { O 16 vector } closest_pixel_V_502_0111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name closest_pixel_V_412_0110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_412_0110_out \
    op interface \
    ports { closest_pixel_V_412_0110_out { O 16 vector } closest_pixel_V_412_0110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name closest_pixel_V_501_0109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_501_0109_out \
    op interface \
    ports { closest_pixel_V_501_0109_out { O 16 vector } closest_pixel_V_501_0109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name closest_pixel_V_411_0108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_411_0108_out \
    op interface \
    ports { closest_pixel_V_411_0108_out { O 16 vector } closest_pixel_V_411_0108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name closest_pixel_V_500_0107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_500_0107_out \
    op interface \
    ports { closest_pixel_V_500_0107_out { O 16 vector } closest_pixel_V_500_0107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name closest_pixel_V_410_0106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_410_0106_out \
    op interface \
    ports { closest_pixel_V_410_0106_out { O 16 vector } closest_pixel_V_410_0106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name closest_pixel_V_499_0105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_499_0105_out \
    op interface \
    ports { closest_pixel_V_499_0105_out { O 16 vector } closest_pixel_V_499_0105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name closest_pixel_V_409_0104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_409_0104_out \
    op interface \
    ports { closest_pixel_V_409_0104_out { O 16 vector } closest_pixel_V_409_0104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name closest_pixel_V_498_0103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_498_0103_out \
    op interface \
    ports { closest_pixel_V_498_0103_out { O 16 vector } closest_pixel_V_498_0103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name closest_pixel_V_408_0102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_408_0102_out \
    op interface \
    ports { closest_pixel_V_408_0102_out { O 16 vector } closest_pixel_V_408_0102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name closest_pixel_V_497_0101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_497_0101_out \
    op interface \
    ports { closest_pixel_V_497_0101_out { O 16 vector } closest_pixel_V_497_0101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name closest_pixel_V_407_0100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_407_0100_out \
    op interface \
    ports { closest_pixel_V_407_0100_out { O 16 vector } closest_pixel_V_407_0100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name closest_pixel_V_496_099_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_496_099_out \
    op interface \
    ports { closest_pixel_V_496_099_out { O 16 vector } closest_pixel_V_496_099_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name closest_pixel_V_406_098_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_406_098_out \
    op interface \
    ports { closest_pixel_V_406_098_out { O 16 vector } closest_pixel_V_406_098_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name closest_pixel_V_495_097_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_495_097_out \
    op interface \
    ports { closest_pixel_V_495_097_out { O 16 vector } closest_pixel_V_495_097_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name closest_pixel_V_405_096_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_405_096_out \
    op interface \
    ports { closest_pixel_V_405_096_out { O 16 vector } closest_pixel_V_405_096_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name closest_pixel_V_494_095_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_494_095_out \
    op interface \
    ports { closest_pixel_V_494_095_out { O 16 vector } closest_pixel_V_494_095_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name closest_pixel_V_404_094_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_404_094_out \
    op interface \
    ports { closest_pixel_V_404_094_out { O 16 vector } closest_pixel_V_404_094_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name closest_pixel_V_493_093_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_493_093_out \
    op interface \
    ports { closest_pixel_V_493_093_out { O 16 vector } closest_pixel_V_493_093_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name closest_pixel_V_403_092_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_403_092_out \
    op interface \
    ports { closest_pixel_V_403_092_out { O 16 vector } closest_pixel_V_403_092_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name closest_pixel_V_492_091_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_492_091_out \
    op interface \
    ports { closest_pixel_V_492_091_out { O 16 vector } closest_pixel_V_492_091_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name closest_pixel_V_402_090_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_402_090_out \
    op interface \
    ports { closest_pixel_V_402_090_out { O 16 vector } closest_pixel_V_402_090_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name closest_pixel_V_491_089_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_491_089_out \
    op interface \
    ports { closest_pixel_V_491_089_out { O 16 vector } closest_pixel_V_491_089_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name closest_pixel_V_401_088_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_401_088_out \
    op interface \
    ports { closest_pixel_V_401_088_out { O 16 vector } closest_pixel_V_401_088_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name closest_pixel_V_490_087_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_490_087_out \
    op interface \
    ports { closest_pixel_V_490_087_out { O 16 vector } closest_pixel_V_490_087_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name closest_pixel_V_400_086_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_400_086_out \
    op interface \
    ports { closest_pixel_V_400_086_out { O 16 vector } closest_pixel_V_400_086_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name closest_pixel_V_489_085_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_489_085_out \
    op interface \
    ports { closest_pixel_V_489_085_out { O 16 vector } closest_pixel_V_489_085_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name closest_pixel_V_399_084_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_399_084_out \
    op interface \
    ports { closest_pixel_V_399_084_out { O 16 vector } closest_pixel_V_399_084_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name closest_pixel_V_488_083_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_488_083_out \
    op interface \
    ports { closest_pixel_V_488_083_out { O 16 vector } closest_pixel_V_488_083_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name closest_pixel_V_398_082_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_398_082_out \
    op interface \
    ports { closest_pixel_V_398_082_out { O 16 vector } closest_pixel_V_398_082_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name closest_pixel_V_487_081_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_487_081_out \
    op interface \
    ports { closest_pixel_V_487_081_out { O 16 vector } closest_pixel_V_487_081_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name closest_pixel_V_397_080_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_397_080_out \
    op interface \
    ports { closest_pixel_V_397_080_out { O 16 vector } closest_pixel_V_397_080_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name closest_pixel_V_486_079_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_486_079_out \
    op interface \
    ports { closest_pixel_V_486_079_out { O 16 vector } closest_pixel_V_486_079_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name closest_pixel_V_396_078_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_396_078_out \
    op interface \
    ports { closest_pixel_V_396_078_out { O 16 vector } closest_pixel_V_396_078_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name closest_pixel_V_485_077_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_485_077_out \
    op interface \
    ports { closest_pixel_V_485_077_out { O 16 vector } closest_pixel_V_485_077_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name closest_pixel_V_395_076_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_395_076_out \
    op interface \
    ports { closest_pixel_V_395_076_out { O 16 vector } closest_pixel_V_395_076_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name closest_pixel_V_484_075_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_484_075_out \
    op interface \
    ports { closest_pixel_V_484_075_out { O 16 vector } closest_pixel_V_484_075_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name closest_pixel_V_394_074_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_394_074_out \
    op interface \
    ports { closest_pixel_V_394_074_out { O 16 vector } closest_pixel_V_394_074_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name closest_pixel_V_483_073_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_483_073_out \
    op interface \
    ports { closest_pixel_V_483_073_out { O 16 vector } closest_pixel_V_483_073_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name closest_pixel_V_393_072_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_393_072_out \
    op interface \
    ports { closest_pixel_V_393_072_out { O 16 vector } closest_pixel_V_393_072_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name closest_pixel_V_482_071_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_482_071_out \
    op interface \
    ports { closest_pixel_V_482_071_out { O 16 vector } closest_pixel_V_482_071_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name closest_pixel_V_392_070_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_392_070_out \
    op interface \
    ports { closest_pixel_V_392_070_out { O 16 vector } closest_pixel_V_392_070_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name closest_pixel_V_481_069_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_481_069_out \
    op interface \
    ports { closest_pixel_V_481_069_out { O 16 vector } closest_pixel_V_481_069_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name closest_pixel_V_391_068_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_391_068_out \
    op interface \
    ports { closest_pixel_V_391_068_out { O 16 vector } closest_pixel_V_391_068_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name closest_pixel_V_480_067_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_480_067_out \
    op interface \
    ports { closest_pixel_V_480_067_out { O 16 vector } closest_pixel_V_480_067_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name closest_pixel_V_390_066_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_390_066_out \
    op interface \
    ports { closest_pixel_V_390_066_out { O 16 vector } closest_pixel_V_390_066_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name closest_pixel_V_479_065_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_479_065_out \
    op interface \
    ports { closest_pixel_V_479_065_out { O 16 vector } closest_pixel_V_479_065_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name closest_pixel_V_389_064_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_389_064_out \
    op interface \
    ports { closest_pixel_V_389_064_out { O 16 vector } closest_pixel_V_389_064_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name closest_pixel_V_478_063_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_478_063_out \
    op interface \
    ports { closest_pixel_V_478_063_out { O 16 vector } closest_pixel_V_478_063_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name closest_pixel_V_388_062_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_388_062_out \
    op interface \
    ports { closest_pixel_V_388_062_out { O 16 vector } closest_pixel_V_388_062_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name closest_pixel_V_477_061_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_477_061_out \
    op interface \
    ports { closest_pixel_V_477_061_out { O 16 vector } closest_pixel_V_477_061_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name closest_pixel_V_387_060_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_387_060_out \
    op interface \
    ports { closest_pixel_V_387_060_out { O 16 vector } closest_pixel_V_387_060_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name closest_pixel_V_476_059_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_476_059_out \
    op interface \
    ports { closest_pixel_V_476_059_out { O 16 vector } closest_pixel_V_476_059_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name closest_pixel_V_386_058_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_386_058_out \
    op interface \
    ports { closest_pixel_V_386_058_out { O 16 vector } closest_pixel_V_386_058_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name closest_pixel_V_475_057_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_475_057_out \
    op interface \
    ports { closest_pixel_V_475_057_out { O 16 vector } closest_pixel_V_475_057_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name closest_pixel_V_385_056_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_385_056_out \
    op interface \
    ports { closest_pixel_V_385_056_out { O 16 vector } closest_pixel_V_385_056_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name closest_pixel_V_474_055_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_474_055_out \
    op interface \
    ports { closest_pixel_V_474_055_out { O 16 vector } closest_pixel_V_474_055_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name closest_pixel_V_384_054_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_384_054_out \
    op interface \
    ports { closest_pixel_V_384_054_out { O 16 vector } closest_pixel_V_384_054_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name closest_pixel_V_473_053_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_473_053_out \
    op interface \
    ports { closest_pixel_V_473_053_out { O 16 vector } closest_pixel_V_473_053_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name closest_pixel_V_383_052_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_383_052_out \
    op interface \
    ports { closest_pixel_V_383_052_out { O 16 vector } closest_pixel_V_383_052_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name closest_pixel_V_472_051_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_472_051_out \
    op interface \
    ports { closest_pixel_V_472_051_out { O 16 vector } closest_pixel_V_472_051_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name closest_pixel_V_382_050_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_382_050_out \
    op interface \
    ports { closest_pixel_V_382_050_out { O 16 vector } closest_pixel_V_382_050_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name closest_pixel_V_471_049_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_471_049_out \
    op interface \
    ports { closest_pixel_V_471_049_out { O 16 vector } closest_pixel_V_471_049_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name closest_pixel_V_381_048_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_381_048_out \
    op interface \
    ports { closest_pixel_V_381_048_out { O 16 vector } closest_pixel_V_381_048_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name closest_pixel_V_470_047_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_470_047_out \
    op interface \
    ports { closest_pixel_V_470_047_out { O 16 vector } closest_pixel_V_470_047_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name closest_pixel_V_380_046_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_380_046_out \
    op interface \
    ports { closest_pixel_V_380_046_out { O 16 vector } closest_pixel_V_380_046_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name closest_pixel_V_469_045_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_469_045_out \
    op interface \
    ports { closest_pixel_V_469_045_out { O 16 vector } closest_pixel_V_469_045_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name closest_pixel_V_379_044_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_379_044_out \
    op interface \
    ports { closest_pixel_V_379_044_out { O 16 vector } closest_pixel_V_379_044_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name closest_pixel_V_468_043_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_468_043_out \
    op interface \
    ports { closest_pixel_V_468_043_out { O 16 vector } closest_pixel_V_468_043_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name closest_pixel_V_378_042_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_378_042_out \
    op interface \
    ports { closest_pixel_V_378_042_out { O 16 vector } closest_pixel_V_378_042_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name closest_pixel_V_467_041_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_467_041_out \
    op interface \
    ports { closest_pixel_V_467_041_out { O 16 vector } closest_pixel_V_467_041_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name closest_pixel_V_377_040_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_377_040_out \
    op interface \
    ports { closest_pixel_V_377_040_out { O 16 vector } closest_pixel_V_377_040_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name closest_pixel_V_466_039_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_466_039_out \
    op interface \
    ports { closest_pixel_V_466_039_out { O 16 vector } closest_pixel_V_466_039_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name closest_pixel_V_376_038_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_376_038_out \
    op interface \
    ports { closest_pixel_V_376_038_out { O 16 vector } closest_pixel_V_376_038_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name closest_pixel_V_465_037_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_465_037_out \
    op interface \
    ports { closest_pixel_V_465_037_out { O 16 vector } closest_pixel_V_465_037_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name closest_pixel_V_375_036_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_375_036_out \
    op interface \
    ports { closest_pixel_V_375_036_out { O 16 vector } closest_pixel_V_375_036_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name closest_pixel_V_464_035_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_464_035_out \
    op interface \
    ports { closest_pixel_V_464_035_out { O 16 vector } closest_pixel_V_464_035_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name closest_pixel_V_374_034_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_374_034_out \
    op interface \
    ports { closest_pixel_V_374_034_out { O 16 vector } closest_pixel_V_374_034_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name closest_pixel_V_463_033_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_463_033_out \
    op interface \
    ports { closest_pixel_V_463_033_out { O 16 vector } closest_pixel_V_463_033_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name closest_pixel_V_373_032_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_373_032_out \
    op interface \
    ports { closest_pixel_V_373_032_out { O 16 vector } closest_pixel_V_373_032_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name closest_pixel_V_462_031_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_462_031_out \
    op interface \
    ports { closest_pixel_V_462_031_out { O 16 vector } closest_pixel_V_462_031_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name closest_pixel_V_372_030_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_372_030_out \
    op interface \
    ports { closest_pixel_V_372_030_out { O 16 vector } closest_pixel_V_372_030_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name closest_pixel_V_461_029_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_461_029_out \
    op interface \
    ports { closest_pixel_V_461_029_out { O 16 vector } closest_pixel_V_461_029_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name closest_pixel_V_371_028_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_371_028_out \
    op interface \
    ports { closest_pixel_V_371_028_out { O 16 vector } closest_pixel_V_371_028_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name closest_pixel_V_460_027_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_460_027_out \
    op interface \
    ports { closest_pixel_V_460_027_out { O 16 vector } closest_pixel_V_460_027_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name closest_pixel_V_370_026_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_370_026_out \
    op interface \
    ports { closest_pixel_V_370_026_out { O 16 vector } closest_pixel_V_370_026_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name closest_pixel_V_459_025_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_459_025_out \
    op interface \
    ports { closest_pixel_V_459_025_out { O 16 vector } closest_pixel_V_459_025_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name closest_pixel_V_369_024_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_369_024_out \
    op interface \
    ports { closest_pixel_V_369_024_out { O 16 vector } closest_pixel_V_369_024_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name closest_pixel_V_458_023_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_458_023_out \
    op interface \
    ports { closest_pixel_V_458_023_out { O 16 vector } closest_pixel_V_458_023_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name closest_pixel_V_368_022_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_368_022_out \
    op interface \
    ports { closest_pixel_V_368_022_out { O 16 vector } closest_pixel_V_368_022_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name closest_pixel_V_457_021_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_457_021_out \
    op interface \
    ports { closest_pixel_V_457_021_out { O 16 vector } closest_pixel_V_457_021_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name closest_pixel_V_367_020_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_367_020_out \
    op interface \
    ports { closest_pixel_V_367_020_out { O 16 vector } closest_pixel_V_367_020_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name closest_pixel_V_456_019_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_456_019_out \
    op interface \
    ports { closest_pixel_V_456_019_out { O 16 vector } closest_pixel_V_456_019_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name closest_pixel_V_366_018_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_366_018_out \
    op interface \
    ports { closest_pixel_V_366_018_out { O 16 vector } closest_pixel_V_366_018_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name closest_pixel_V_455_017_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_455_017_out \
    op interface \
    ports { closest_pixel_V_455_017_out { O 16 vector } closest_pixel_V_455_017_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name closest_pixel_V_365_016_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_365_016_out \
    op interface \
    ports { closest_pixel_V_365_016_out { O 16 vector } closest_pixel_V_365_016_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name closest_pixel_V_454_015_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_454_015_out \
    op interface \
    ports { closest_pixel_V_454_015_out { O 16 vector } closest_pixel_V_454_015_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name closest_pixel_V_364_014_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_364_014_out \
    op interface \
    ports { closest_pixel_V_364_014_out { O 16 vector } closest_pixel_V_364_014_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name closest_pixel_V_453_013_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_453_013_out \
    op interface \
    ports { closest_pixel_V_453_013_out { O 16 vector } closest_pixel_V_453_013_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name closest_pixel_V_363_012_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_363_012_out \
    op interface \
    ports { closest_pixel_V_363_012_out { O 16 vector } closest_pixel_V_363_012_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name closest_pixel_V_452_011_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_452_011_out \
    op interface \
    ports { closest_pixel_V_452_011_out { O 16 vector } closest_pixel_V_452_011_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name closest_pixel_V_362_010_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_362_010_out \
    op interface \
    ports { closest_pixel_V_362_010_out { O 16 vector } closest_pixel_V_362_010_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name closest_pixel_V_451_09_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_451_09_out \
    op interface \
    ports { closest_pixel_V_451_09_out { O 16 vector } closest_pixel_V_451_09_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name closest_pixel_V_361_08_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_361_08_out \
    op interface \
    ports { closest_pixel_V_361_08_out { O 16 vector } closest_pixel_V_361_08_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name closest_pixel_V_450_07_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_450_07_out \
    op interface \
    ports { closest_pixel_V_450_07_out { O 16 vector } closest_pixel_V_450_07_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name closest_pixel_V_360_06_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_360_06_out \
    op interface \
    ports { closest_pixel_V_360_06_out { O 16 vector } closest_pixel_V_360_06_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name closest_pixel_V_449_05_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_449_05_out \
    op interface \
    ports { closest_pixel_V_449_05_out { O 16 vector } closest_pixel_V_449_05_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name closest_pixel_V_359_04_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_closest_pixel_V_359_04_out \
    op interface \
    ports { closest_pixel_V_359_04_out { O 16 vector } closest_pixel_V_359_04_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name min_pixel_index_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_min_pixel_index_i_out \
    op interface \
    ports { min_pixel_index_i_out { O 32 vector } min_pixel_index_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name min_pixel_index_j_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_min_pixel_index_j_out \
    op interface \
    ports { min_pixel_index_j_out { O 32 vector } min_pixel_index_j_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name min_distance_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_min_distance_V_out \
    op interface \
    ports { min_distance_V_out { O 32 vector } min_distance_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init_U
set CompName hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix hyperspectral_hw_wrapped_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


