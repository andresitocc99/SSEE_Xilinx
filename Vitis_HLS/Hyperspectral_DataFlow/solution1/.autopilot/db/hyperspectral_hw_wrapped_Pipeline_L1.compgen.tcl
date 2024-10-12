# This script segment is generated automatically by AutoPilot

set name hyperspectral_hw_wrapped_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name hyperspectral_hw_wrapped_sitofp_64s_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


set name hyperspectral_hw_wrapped_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name hyperspectral_hw_wrapped_fsqrt_32ns_32ns_32_10_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsqrt} IMPL {fabric} LATENCY 9 ALLOW_PRAGMA 1
}


set id 13
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


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name pixels_179 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_179 \
    op interface \
    ports { pixels_179_address0 { O 1 vector } pixels_179_ce0 { O 1 bit } pixels_179_we0 { O 1 bit } pixels_179_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_179'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name pixels_178 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_178 \
    op interface \
    ports { pixels_178_address0 { O 1 vector } pixels_178_ce0 { O 1 bit } pixels_178_we0 { O 1 bit } pixels_178_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_178'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name pixels_177 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_177 \
    op interface \
    ports { pixels_177_address0 { O 1 vector } pixels_177_ce0 { O 1 bit } pixels_177_we0 { O 1 bit } pixels_177_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_177'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name pixels_176 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_176 \
    op interface \
    ports { pixels_176_address0 { O 1 vector } pixels_176_ce0 { O 1 bit } pixels_176_we0 { O 1 bit } pixels_176_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_176'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name pixels_175 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_175 \
    op interface \
    ports { pixels_175_address0 { O 1 vector } pixels_175_ce0 { O 1 bit } pixels_175_we0 { O 1 bit } pixels_175_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_175'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name pixels_174 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_174 \
    op interface \
    ports { pixels_174_address0 { O 1 vector } pixels_174_ce0 { O 1 bit } pixels_174_we0 { O 1 bit } pixels_174_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_174'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name pixels_173 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_173 \
    op interface \
    ports { pixels_173_address0 { O 1 vector } pixels_173_ce0 { O 1 bit } pixels_173_we0 { O 1 bit } pixels_173_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_173'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name pixels_172 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_172 \
    op interface \
    ports { pixels_172_address0 { O 1 vector } pixels_172_ce0 { O 1 bit } pixels_172_we0 { O 1 bit } pixels_172_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_172'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name pixels_171 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_171 \
    op interface \
    ports { pixels_171_address0 { O 1 vector } pixels_171_ce0 { O 1 bit } pixels_171_we0 { O 1 bit } pixels_171_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_171'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name pixels_170 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_170 \
    op interface \
    ports { pixels_170_address0 { O 1 vector } pixels_170_ce0 { O 1 bit } pixels_170_we0 { O 1 bit } pixels_170_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_170'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name pixels_169 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_169 \
    op interface \
    ports { pixels_169_address0 { O 1 vector } pixels_169_ce0 { O 1 bit } pixels_169_we0 { O 1 bit } pixels_169_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_169'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name pixels_168 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_168 \
    op interface \
    ports { pixels_168_address0 { O 1 vector } pixels_168_ce0 { O 1 bit } pixels_168_we0 { O 1 bit } pixels_168_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_168'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name pixels_167 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_167 \
    op interface \
    ports { pixels_167_address0 { O 1 vector } pixels_167_ce0 { O 1 bit } pixels_167_we0 { O 1 bit } pixels_167_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_167'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name pixels_166 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_166 \
    op interface \
    ports { pixels_166_address0 { O 1 vector } pixels_166_ce0 { O 1 bit } pixels_166_we0 { O 1 bit } pixels_166_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_166'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name pixels_165 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_165 \
    op interface \
    ports { pixels_165_address0 { O 1 vector } pixels_165_ce0 { O 1 bit } pixels_165_we0 { O 1 bit } pixels_165_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_165'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name pixels_164 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_164 \
    op interface \
    ports { pixels_164_address0 { O 1 vector } pixels_164_ce0 { O 1 bit } pixels_164_we0 { O 1 bit } pixels_164_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_164'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name pixels_163 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_163 \
    op interface \
    ports { pixels_163_address0 { O 1 vector } pixels_163_ce0 { O 1 bit } pixels_163_we0 { O 1 bit } pixels_163_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_163'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name pixels_162 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_162 \
    op interface \
    ports { pixels_162_address0 { O 1 vector } pixels_162_ce0 { O 1 bit } pixels_162_we0 { O 1 bit } pixels_162_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_162'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name pixels_161 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_161 \
    op interface \
    ports { pixels_161_address0 { O 1 vector } pixels_161_ce0 { O 1 bit } pixels_161_we0 { O 1 bit } pixels_161_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_161'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name pixels_160 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_160 \
    op interface \
    ports { pixels_160_address0 { O 1 vector } pixels_160_ce0 { O 1 bit } pixels_160_we0 { O 1 bit } pixels_160_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_160'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name pixels_159 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_159 \
    op interface \
    ports { pixels_159_address0 { O 1 vector } pixels_159_ce0 { O 1 bit } pixels_159_we0 { O 1 bit } pixels_159_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_159'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name pixels_158 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_158 \
    op interface \
    ports { pixels_158_address0 { O 1 vector } pixels_158_ce0 { O 1 bit } pixels_158_we0 { O 1 bit } pixels_158_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_158'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name pixels_157 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_157 \
    op interface \
    ports { pixels_157_address0 { O 1 vector } pixels_157_ce0 { O 1 bit } pixels_157_we0 { O 1 bit } pixels_157_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_157'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name pixels_156 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_156 \
    op interface \
    ports { pixels_156_address0 { O 1 vector } pixels_156_ce0 { O 1 bit } pixels_156_we0 { O 1 bit } pixels_156_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_156'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name pixels_155 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_155 \
    op interface \
    ports { pixels_155_address0 { O 1 vector } pixels_155_ce0 { O 1 bit } pixels_155_we0 { O 1 bit } pixels_155_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_155'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name pixels_154 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_154 \
    op interface \
    ports { pixels_154_address0 { O 1 vector } pixels_154_ce0 { O 1 bit } pixels_154_we0 { O 1 bit } pixels_154_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_154'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name pixels_153 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_153 \
    op interface \
    ports { pixels_153_address0 { O 1 vector } pixels_153_ce0 { O 1 bit } pixels_153_we0 { O 1 bit } pixels_153_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_153'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name pixels_152 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_152 \
    op interface \
    ports { pixels_152_address0 { O 1 vector } pixels_152_ce0 { O 1 bit } pixels_152_we0 { O 1 bit } pixels_152_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_152'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name pixels_151 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_151 \
    op interface \
    ports { pixels_151_address0 { O 1 vector } pixels_151_ce0 { O 1 bit } pixels_151_we0 { O 1 bit } pixels_151_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_151'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name pixels_150 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_150 \
    op interface \
    ports { pixels_150_address0 { O 1 vector } pixels_150_ce0 { O 1 bit } pixels_150_we0 { O 1 bit } pixels_150_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_150'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name pixels_149 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_149 \
    op interface \
    ports { pixels_149_address0 { O 1 vector } pixels_149_ce0 { O 1 bit } pixels_149_we0 { O 1 bit } pixels_149_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_149'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name pixels_148 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_148 \
    op interface \
    ports { pixels_148_address0 { O 1 vector } pixels_148_ce0 { O 1 bit } pixels_148_we0 { O 1 bit } pixels_148_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_148'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name pixels_147 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_147 \
    op interface \
    ports { pixels_147_address0 { O 1 vector } pixels_147_ce0 { O 1 bit } pixels_147_we0 { O 1 bit } pixels_147_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_147'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name pixels_146 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_146 \
    op interface \
    ports { pixels_146_address0 { O 1 vector } pixels_146_ce0 { O 1 bit } pixels_146_we0 { O 1 bit } pixels_146_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_146'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name pixels_145 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_145 \
    op interface \
    ports { pixels_145_address0 { O 1 vector } pixels_145_ce0 { O 1 bit } pixels_145_we0 { O 1 bit } pixels_145_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_145'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name pixels_144 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_144 \
    op interface \
    ports { pixels_144_address0 { O 1 vector } pixels_144_ce0 { O 1 bit } pixels_144_we0 { O 1 bit } pixels_144_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_144'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name pixels_143 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_143 \
    op interface \
    ports { pixels_143_address0 { O 1 vector } pixels_143_ce0 { O 1 bit } pixels_143_we0 { O 1 bit } pixels_143_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_143'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name pixels_142 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_142 \
    op interface \
    ports { pixels_142_address0 { O 1 vector } pixels_142_ce0 { O 1 bit } pixels_142_we0 { O 1 bit } pixels_142_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_142'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name pixels_141 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_141 \
    op interface \
    ports { pixels_141_address0 { O 1 vector } pixels_141_ce0 { O 1 bit } pixels_141_we0 { O 1 bit } pixels_141_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_141'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name pixels_140 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_140 \
    op interface \
    ports { pixels_140_address0 { O 1 vector } pixels_140_ce0 { O 1 bit } pixels_140_we0 { O 1 bit } pixels_140_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_140'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name pixels_139 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_139 \
    op interface \
    ports { pixels_139_address0 { O 1 vector } pixels_139_ce0 { O 1 bit } pixels_139_we0 { O 1 bit } pixels_139_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_139'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name pixels_138 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_138 \
    op interface \
    ports { pixels_138_address0 { O 1 vector } pixels_138_ce0 { O 1 bit } pixels_138_we0 { O 1 bit } pixels_138_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_138'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name pixels_137 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_137 \
    op interface \
    ports { pixels_137_address0 { O 1 vector } pixels_137_ce0 { O 1 bit } pixels_137_we0 { O 1 bit } pixels_137_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_137'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name pixels_136 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_136 \
    op interface \
    ports { pixels_136_address0 { O 1 vector } pixels_136_ce0 { O 1 bit } pixels_136_we0 { O 1 bit } pixels_136_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_136'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name pixels_135 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_135 \
    op interface \
    ports { pixels_135_address0 { O 1 vector } pixels_135_ce0 { O 1 bit } pixels_135_we0 { O 1 bit } pixels_135_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_135'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name pixels_134 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_134 \
    op interface \
    ports { pixels_134_address0 { O 1 vector } pixels_134_ce0 { O 1 bit } pixels_134_we0 { O 1 bit } pixels_134_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_134'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name pixels_133 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_133 \
    op interface \
    ports { pixels_133_address0 { O 1 vector } pixels_133_ce0 { O 1 bit } pixels_133_we0 { O 1 bit } pixels_133_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_133'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name pixels_132 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_132 \
    op interface \
    ports { pixels_132_address0 { O 1 vector } pixels_132_ce0 { O 1 bit } pixels_132_we0 { O 1 bit } pixels_132_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_132'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name pixels_131 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_131 \
    op interface \
    ports { pixels_131_address0 { O 1 vector } pixels_131_ce0 { O 1 bit } pixels_131_we0 { O 1 bit } pixels_131_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_131'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name pixels_130 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_130 \
    op interface \
    ports { pixels_130_address0 { O 1 vector } pixels_130_ce0 { O 1 bit } pixels_130_we0 { O 1 bit } pixels_130_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_130'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name pixels_129 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_129 \
    op interface \
    ports { pixels_129_address0 { O 1 vector } pixels_129_ce0 { O 1 bit } pixels_129_we0 { O 1 bit } pixels_129_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_129'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name pixels_128 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_128 \
    op interface \
    ports { pixels_128_address0 { O 1 vector } pixels_128_ce0 { O 1 bit } pixels_128_we0 { O 1 bit } pixels_128_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_128'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name pixels_127 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_127 \
    op interface \
    ports { pixels_127_address0 { O 1 vector } pixels_127_ce0 { O 1 bit } pixels_127_we0 { O 1 bit } pixels_127_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_127'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name pixels_126 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_126 \
    op interface \
    ports { pixels_126_address0 { O 1 vector } pixels_126_ce0 { O 1 bit } pixels_126_we0 { O 1 bit } pixels_126_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_126'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name pixels_125 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_125 \
    op interface \
    ports { pixels_125_address0 { O 1 vector } pixels_125_ce0 { O 1 bit } pixels_125_we0 { O 1 bit } pixels_125_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_125'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name pixels_124 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_124 \
    op interface \
    ports { pixels_124_address0 { O 1 vector } pixels_124_ce0 { O 1 bit } pixels_124_we0 { O 1 bit } pixels_124_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_124'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name pixels_123 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_123 \
    op interface \
    ports { pixels_123_address0 { O 1 vector } pixels_123_ce0 { O 1 bit } pixels_123_we0 { O 1 bit } pixels_123_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_123'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name pixels_122 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_122 \
    op interface \
    ports { pixels_122_address0 { O 1 vector } pixels_122_ce0 { O 1 bit } pixels_122_we0 { O 1 bit } pixels_122_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_122'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name pixels_121 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_121 \
    op interface \
    ports { pixels_121_address0 { O 1 vector } pixels_121_ce0 { O 1 bit } pixels_121_we0 { O 1 bit } pixels_121_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_121'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name pixels_120 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_120 \
    op interface \
    ports { pixels_120_address0 { O 1 vector } pixels_120_ce0 { O 1 bit } pixels_120_we0 { O 1 bit } pixels_120_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_120'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name pixels_119 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_119 \
    op interface \
    ports { pixels_119_address0 { O 1 vector } pixels_119_ce0 { O 1 bit } pixels_119_we0 { O 1 bit } pixels_119_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_119'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name pixels_118 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_118 \
    op interface \
    ports { pixels_118_address0 { O 1 vector } pixels_118_ce0 { O 1 bit } pixels_118_we0 { O 1 bit } pixels_118_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_118'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name pixels_117 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_117 \
    op interface \
    ports { pixels_117_address0 { O 1 vector } pixels_117_ce0 { O 1 bit } pixels_117_we0 { O 1 bit } pixels_117_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_117'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name pixels_116 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_116 \
    op interface \
    ports { pixels_116_address0 { O 1 vector } pixels_116_ce0 { O 1 bit } pixels_116_we0 { O 1 bit } pixels_116_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_116'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name pixels_115 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_115 \
    op interface \
    ports { pixels_115_address0 { O 1 vector } pixels_115_ce0 { O 1 bit } pixels_115_we0 { O 1 bit } pixels_115_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_115'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name pixels_114 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_114 \
    op interface \
    ports { pixels_114_address0 { O 1 vector } pixels_114_ce0 { O 1 bit } pixels_114_we0 { O 1 bit } pixels_114_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_114'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name pixels_113 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_113 \
    op interface \
    ports { pixels_113_address0 { O 1 vector } pixels_113_ce0 { O 1 bit } pixels_113_we0 { O 1 bit } pixels_113_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_113'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name pixels_112 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_112 \
    op interface \
    ports { pixels_112_address0 { O 1 vector } pixels_112_ce0 { O 1 bit } pixels_112_we0 { O 1 bit } pixels_112_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_112'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name pixels_111 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_111 \
    op interface \
    ports { pixels_111_address0 { O 1 vector } pixels_111_ce0 { O 1 bit } pixels_111_we0 { O 1 bit } pixels_111_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_111'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name pixels_110 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_110 \
    op interface \
    ports { pixels_110_address0 { O 1 vector } pixels_110_ce0 { O 1 bit } pixels_110_we0 { O 1 bit } pixels_110_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_110'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name pixels_109 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_109 \
    op interface \
    ports { pixels_109_address0 { O 1 vector } pixels_109_ce0 { O 1 bit } pixels_109_we0 { O 1 bit } pixels_109_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_109'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name pixels_108 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_108 \
    op interface \
    ports { pixels_108_address0 { O 1 vector } pixels_108_ce0 { O 1 bit } pixels_108_we0 { O 1 bit } pixels_108_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_108'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name pixels_107 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_107 \
    op interface \
    ports { pixels_107_address0 { O 1 vector } pixels_107_ce0 { O 1 bit } pixels_107_we0 { O 1 bit } pixels_107_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_107'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name pixels_106 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_106 \
    op interface \
    ports { pixels_106_address0 { O 1 vector } pixels_106_ce0 { O 1 bit } pixels_106_we0 { O 1 bit } pixels_106_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_106'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name pixels_105 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_105 \
    op interface \
    ports { pixels_105_address0 { O 1 vector } pixels_105_ce0 { O 1 bit } pixels_105_we0 { O 1 bit } pixels_105_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_105'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name pixels_104 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_104 \
    op interface \
    ports { pixels_104_address0 { O 1 vector } pixels_104_ce0 { O 1 bit } pixels_104_we0 { O 1 bit } pixels_104_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_104'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name pixels_103 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_103 \
    op interface \
    ports { pixels_103_address0 { O 1 vector } pixels_103_ce0 { O 1 bit } pixels_103_we0 { O 1 bit } pixels_103_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_103'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name pixels_102 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_102 \
    op interface \
    ports { pixels_102_address0 { O 1 vector } pixels_102_ce0 { O 1 bit } pixels_102_we0 { O 1 bit } pixels_102_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_102'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name pixels_101 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_101 \
    op interface \
    ports { pixels_101_address0 { O 1 vector } pixels_101_ce0 { O 1 bit } pixels_101_we0 { O 1 bit } pixels_101_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_101'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name pixels_100 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_100 \
    op interface \
    ports { pixels_100_address0 { O 1 vector } pixels_100_ce0 { O 1 bit } pixels_100_we0 { O 1 bit } pixels_100_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_100'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name pixels_99 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_99 \
    op interface \
    ports { pixels_99_address0 { O 1 vector } pixels_99_ce0 { O 1 bit } pixels_99_we0 { O 1 bit } pixels_99_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_99'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name pixels_98 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_98 \
    op interface \
    ports { pixels_98_address0 { O 1 vector } pixels_98_ce0 { O 1 bit } pixels_98_we0 { O 1 bit } pixels_98_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name pixels_97 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_97 \
    op interface \
    ports { pixels_97_address0 { O 1 vector } pixels_97_ce0 { O 1 bit } pixels_97_we0 { O 1 bit } pixels_97_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name pixels_96 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_96 \
    op interface \
    ports { pixels_96_address0 { O 1 vector } pixels_96_ce0 { O 1 bit } pixels_96_we0 { O 1 bit } pixels_96_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name pixels_95 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_95 \
    op interface \
    ports { pixels_95_address0 { O 1 vector } pixels_95_ce0 { O 1 bit } pixels_95_we0 { O 1 bit } pixels_95_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name pixels_94 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_94 \
    op interface \
    ports { pixels_94_address0 { O 1 vector } pixels_94_ce0 { O 1 bit } pixels_94_we0 { O 1 bit } pixels_94_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name pixels_93 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_93 \
    op interface \
    ports { pixels_93_address0 { O 1 vector } pixels_93_ce0 { O 1 bit } pixels_93_we0 { O 1 bit } pixels_93_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name pixels_92 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_92 \
    op interface \
    ports { pixels_92_address0 { O 1 vector } pixels_92_ce0 { O 1 bit } pixels_92_we0 { O 1 bit } pixels_92_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 286 \
    name pixels_91 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_91 \
    op interface \
    ports { pixels_91_address0 { O 1 vector } pixels_91_ce0 { O 1 bit } pixels_91_we0 { O 1 bit } pixels_91_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name pixels_90 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_90 \
    op interface \
    ports { pixels_90_address0 { O 1 vector } pixels_90_ce0 { O 1 bit } pixels_90_we0 { O 1 bit } pixels_90_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name pixels_89 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_89 \
    op interface \
    ports { pixels_89_address0 { O 1 vector } pixels_89_ce0 { O 1 bit } pixels_89_we0 { O 1 bit } pixels_89_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name pixels_88 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_88 \
    op interface \
    ports { pixels_88_address0 { O 1 vector } pixels_88_ce0 { O 1 bit } pixels_88_we0 { O 1 bit } pixels_88_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 290 \
    name pixels_87 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_87 \
    op interface \
    ports { pixels_87_address0 { O 1 vector } pixels_87_ce0 { O 1 bit } pixels_87_we0 { O 1 bit } pixels_87_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name pixels_86 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_86 \
    op interface \
    ports { pixels_86_address0 { O 1 vector } pixels_86_ce0 { O 1 bit } pixels_86_we0 { O 1 bit } pixels_86_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 292 \
    name pixels_85 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_85 \
    op interface \
    ports { pixels_85_address0 { O 1 vector } pixels_85_ce0 { O 1 bit } pixels_85_we0 { O 1 bit } pixels_85_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name pixels_84 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_84 \
    op interface \
    ports { pixels_84_address0 { O 1 vector } pixels_84_ce0 { O 1 bit } pixels_84_we0 { O 1 bit } pixels_84_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 294 \
    name pixels_83 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_83 \
    op interface \
    ports { pixels_83_address0 { O 1 vector } pixels_83_ce0 { O 1 bit } pixels_83_we0 { O 1 bit } pixels_83_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 295 \
    name pixels_82 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_82 \
    op interface \
    ports { pixels_82_address0 { O 1 vector } pixels_82_ce0 { O 1 bit } pixels_82_we0 { O 1 bit } pixels_82_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 296 \
    name pixels_81 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_81 \
    op interface \
    ports { pixels_81_address0 { O 1 vector } pixels_81_ce0 { O 1 bit } pixels_81_we0 { O 1 bit } pixels_81_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 297 \
    name pixels_80 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_80 \
    op interface \
    ports { pixels_80_address0 { O 1 vector } pixels_80_ce0 { O 1 bit } pixels_80_we0 { O 1 bit } pixels_80_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 298 \
    name pixels_79 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_79 \
    op interface \
    ports { pixels_79_address0 { O 1 vector } pixels_79_ce0 { O 1 bit } pixels_79_we0 { O 1 bit } pixels_79_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name pixels_78 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_78 \
    op interface \
    ports { pixels_78_address0 { O 1 vector } pixels_78_ce0 { O 1 bit } pixels_78_we0 { O 1 bit } pixels_78_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name pixels_77 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_77 \
    op interface \
    ports { pixels_77_address0 { O 1 vector } pixels_77_ce0 { O 1 bit } pixels_77_we0 { O 1 bit } pixels_77_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 301 \
    name pixels_76 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_76 \
    op interface \
    ports { pixels_76_address0 { O 1 vector } pixels_76_ce0 { O 1 bit } pixels_76_we0 { O 1 bit } pixels_76_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name pixels_75 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_75 \
    op interface \
    ports { pixels_75_address0 { O 1 vector } pixels_75_ce0 { O 1 bit } pixels_75_we0 { O 1 bit } pixels_75_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name pixels_74 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_74 \
    op interface \
    ports { pixels_74_address0 { O 1 vector } pixels_74_ce0 { O 1 bit } pixels_74_we0 { O 1 bit } pixels_74_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 304 \
    name pixels_73 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_73 \
    op interface \
    ports { pixels_73_address0 { O 1 vector } pixels_73_ce0 { O 1 bit } pixels_73_we0 { O 1 bit } pixels_73_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name pixels_72 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_72 \
    op interface \
    ports { pixels_72_address0 { O 1 vector } pixels_72_ce0 { O 1 bit } pixels_72_we0 { O 1 bit } pixels_72_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name pixels_71 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_71 \
    op interface \
    ports { pixels_71_address0 { O 1 vector } pixels_71_ce0 { O 1 bit } pixels_71_we0 { O 1 bit } pixels_71_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name pixels_70 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_70 \
    op interface \
    ports { pixels_70_address0 { O 1 vector } pixels_70_ce0 { O 1 bit } pixels_70_we0 { O 1 bit } pixels_70_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name pixels_69 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_69 \
    op interface \
    ports { pixels_69_address0 { O 1 vector } pixels_69_ce0 { O 1 bit } pixels_69_we0 { O 1 bit } pixels_69_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name pixels_68 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_68 \
    op interface \
    ports { pixels_68_address0 { O 1 vector } pixels_68_ce0 { O 1 bit } pixels_68_we0 { O 1 bit } pixels_68_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name pixels_67 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_67 \
    op interface \
    ports { pixels_67_address0 { O 1 vector } pixels_67_ce0 { O 1 bit } pixels_67_we0 { O 1 bit } pixels_67_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name pixels_66 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_66 \
    op interface \
    ports { pixels_66_address0 { O 1 vector } pixels_66_ce0 { O 1 bit } pixels_66_we0 { O 1 bit } pixels_66_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name pixels_65 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_65 \
    op interface \
    ports { pixels_65_address0 { O 1 vector } pixels_65_ce0 { O 1 bit } pixels_65_we0 { O 1 bit } pixels_65_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name pixels_64 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_64 \
    op interface \
    ports { pixels_64_address0 { O 1 vector } pixels_64_ce0 { O 1 bit } pixels_64_we0 { O 1 bit } pixels_64_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name pixels_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_63 \
    op interface \
    ports { pixels_63_address0 { O 1 vector } pixels_63_ce0 { O 1 bit } pixels_63_we0 { O 1 bit } pixels_63_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name pixels_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_62 \
    op interface \
    ports { pixels_62_address0 { O 1 vector } pixels_62_ce0 { O 1 bit } pixels_62_we0 { O 1 bit } pixels_62_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name pixels_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_61 \
    op interface \
    ports { pixels_61_address0 { O 1 vector } pixels_61_ce0 { O 1 bit } pixels_61_we0 { O 1 bit } pixels_61_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name pixels_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_60 \
    op interface \
    ports { pixels_60_address0 { O 1 vector } pixels_60_ce0 { O 1 bit } pixels_60_we0 { O 1 bit } pixels_60_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name pixels_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_59 \
    op interface \
    ports { pixels_59_address0 { O 1 vector } pixels_59_ce0 { O 1 bit } pixels_59_we0 { O 1 bit } pixels_59_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name pixels_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_58 \
    op interface \
    ports { pixels_58_address0 { O 1 vector } pixels_58_ce0 { O 1 bit } pixels_58_we0 { O 1 bit } pixels_58_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name pixels_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_57 \
    op interface \
    ports { pixels_57_address0 { O 1 vector } pixels_57_ce0 { O 1 bit } pixels_57_we0 { O 1 bit } pixels_57_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name pixels_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_56 \
    op interface \
    ports { pixels_56_address0 { O 1 vector } pixels_56_ce0 { O 1 bit } pixels_56_we0 { O 1 bit } pixels_56_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name pixels_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_55 \
    op interface \
    ports { pixels_55_address0 { O 1 vector } pixels_55_ce0 { O 1 bit } pixels_55_we0 { O 1 bit } pixels_55_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name pixels_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_54 \
    op interface \
    ports { pixels_54_address0 { O 1 vector } pixels_54_ce0 { O 1 bit } pixels_54_we0 { O 1 bit } pixels_54_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name pixels_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_53 \
    op interface \
    ports { pixels_53_address0 { O 1 vector } pixels_53_ce0 { O 1 bit } pixels_53_we0 { O 1 bit } pixels_53_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name pixels_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_52 \
    op interface \
    ports { pixels_52_address0 { O 1 vector } pixels_52_ce0 { O 1 bit } pixels_52_we0 { O 1 bit } pixels_52_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name pixels_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_51 \
    op interface \
    ports { pixels_51_address0 { O 1 vector } pixels_51_ce0 { O 1 bit } pixels_51_we0 { O 1 bit } pixels_51_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name pixels_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_50 \
    op interface \
    ports { pixels_50_address0 { O 1 vector } pixels_50_ce0 { O 1 bit } pixels_50_we0 { O 1 bit } pixels_50_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 328 \
    name pixels_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_49 \
    op interface \
    ports { pixels_49_address0 { O 1 vector } pixels_49_ce0 { O 1 bit } pixels_49_we0 { O 1 bit } pixels_49_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name pixels_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_48 \
    op interface \
    ports { pixels_48_address0 { O 1 vector } pixels_48_ce0 { O 1 bit } pixels_48_we0 { O 1 bit } pixels_48_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name pixels_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_47 \
    op interface \
    ports { pixels_47_address0 { O 1 vector } pixels_47_ce0 { O 1 bit } pixels_47_we0 { O 1 bit } pixels_47_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name pixels_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_46 \
    op interface \
    ports { pixels_46_address0 { O 1 vector } pixels_46_ce0 { O 1 bit } pixels_46_we0 { O 1 bit } pixels_46_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name pixels_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_45 \
    op interface \
    ports { pixels_45_address0 { O 1 vector } pixels_45_ce0 { O 1 bit } pixels_45_we0 { O 1 bit } pixels_45_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name pixels_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_44 \
    op interface \
    ports { pixels_44_address0 { O 1 vector } pixels_44_ce0 { O 1 bit } pixels_44_we0 { O 1 bit } pixels_44_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name pixels_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_43 \
    op interface \
    ports { pixels_43_address0 { O 1 vector } pixels_43_ce0 { O 1 bit } pixels_43_we0 { O 1 bit } pixels_43_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name pixels_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_42 \
    op interface \
    ports { pixels_42_address0 { O 1 vector } pixels_42_ce0 { O 1 bit } pixels_42_we0 { O 1 bit } pixels_42_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name pixels_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_41 \
    op interface \
    ports { pixels_41_address0 { O 1 vector } pixels_41_ce0 { O 1 bit } pixels_41_we0 { O 1 bit } pixels_41_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name pixels_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_40 \
    op interface \
    ports { pixels_40_address0 { O 1 vector } pixels_40_ce0 { O 1 bit } pixels_40_we0 { O 1 bit } pixels_40_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name pixels_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_39 \
    op interface \
    ports { pixels_39_address0 { O 1 vector } pixels_39_ce0 { O 1 bit } pixels_39_we0 { O 1 bit } pixels_39_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name pixels_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_38 \
    op interface \
    ports { pixels_38_address0 { O 1 vector } pixels_38_ce0 { O 1 bit } pixels_38_we0 { O 1 bit } pixels_38_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name pixels_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_37 \
    op interface \
    ports { pixels_37_address0 { O 1 vector } pixels_37_ce0 { O 1 bit } pixels_37_we0 { O 1 bit } pixels_37_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name pixels_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_36 \
    op interface \
    ports { pixels_36_address0 { O 1 vector } pixels_36_ce0 { O 1 bit } pixels_36_we0 { O 1 bit } pixels_36_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name pixels_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_35 \
    op interface \
    ports { pixels_35_address0 { O 1 vector } pixels_35_ce0 { O 1 bit } pixels_35_we0 { O 1 bit } pixels_35_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name pixels_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_34 \
    op interface \
    ports { pixels_34_address0 { O 1 vector } pixels_34_ce0 { O 1 bit } pixels_34_we0 { O 1 bit } pixels_34_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name pixels_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_33 \
    op interface \
    ports { pixels_33_address0 { O 1 vector } pixels_33_ce0 { O 1 bit } pixels_33_we0 { O 1 bit } pixels_33_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name pixels_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_32 \
    op interface \
    ports { pixels_32_address0 { O 1 vector } pixels_32_ce0 { O 1 bit } pixels_32_we0 { O 1 bit } pixels_32_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name pixels_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_31 \
    op interface \
    ports { pixels_31_address0 { O 1 vector } pixels_31_ce0 { O 1 bit } pixels_31_we0 { O 1 bit } pixels_31_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name pixels_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_30 \
    op interface \
    ports { pixels_30_address0 { O 1 vector } pixels_30_ce0 { O 1 bit } pixels_30_we0 { O 1 bit } pixels_30_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name pixels_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_29 \
    op interface \
    ports { pixels_29_address0 { O 1 vector } pixels_29_ce0 { O 1 bit } pixels_29_we0 { O 1 bit } pixels_29_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name pixels_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_28 \
    op interface \
    ports { pixels_28_address0 { O 1 vector } pixels_28_ce0 { O 1 bit } pixels_28_we0 { O 1 bit } pixels_28_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name pixels_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_27 \
    op interface \
    ports { pixels_27_address0 { O 1 vector } pixels_27_ce0 { O 1 bit } pixels_27_we0 { O 1 bit } pixels_27_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name pixels_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_26 \
    op interface \
    ports { pixels_26_address0 { O 1 vector } pixels_26_ce0 { O 1 bit } pixels_26_we0 { O 1 bit } pixels_26_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name pixels_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_25 \
    op interface \
    ports { pixels_25_address0 { O 1 vector } pixels_25_ce0 { O 1 bit } pixels_25_we0 { O 1 bit } pixels_25_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name pixels_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_24 \
    op interface \
    ports { pixels_24_address0 { O 1 vector } pixels_24_ce0 { O 1 bit } pixels_24_we0 { O 1 bit } pixels_24_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name pixels_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_23 \
    op interface \
    ports { pixels_23_address0 { O 1 vector } pixels_23_ce0 { O 1 bit } pixels_23_we0 { O 1 bit } pixels_23_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name pixels_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_22 \
    op interface \
    ports { pixels_22_address0 { O 1 vector } pixels_22_ce0 { O 1 bit } pixels_22_we0 { O 1 bit } pixels_22_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name pixels_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_21 \
    op interface \
    ports { pixels_21_address0 { O 1 vector } pixels_21_ce0 { O 1 bit } pixels_21_we0 { O 1 bit } pixels_21_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name pixels_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_20 \
    op interface \
    ports { pixels_20_address0 { O 1 vector } pixels_20_ce0 { O 1 bit } pixels_20_we0 { O 1 bit } pixels_20_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name pixels_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_19 \
    op interface \
    ports { pixels_19_address0 { O 1 vector } pixels_19_ce0 { O 1 bit } pixels_19_we0 { O 1 bit } pixels_19_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name pixels_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_18 \
    op interface \
    ports { pixels_18_address0 { O 1 vector } pixels_18_ce0 { O 1 bit } pixels_18_we0 { O 1 bit } pixels_18_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name pixels_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_17 \
    op interface \
    ports { pixels_17_address0 { O 1 vector } pixels_17_ce0 { O 1 bit } pixels_17_we0 { O 1 bit } pixels_17_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name pixels_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_16 \
    op interface \
    ports { pixels_16_address0 { O 1 vector } pixels_16_ce0 { O 1 bit } pixels_16_we0 { O 1 bit } pixels_16_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name pixels_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_15 \
    op interface \
    ports { pixels_15_address0 { O 1 vector } pixels_15_ce0 { O 1 bit } pixels_15_we0 { O 1 bit } pixels_15_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name pixels_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_14 \
    op interface \
    ports { pixels_14_address0 { O 1 vector } pixels_14_ce0 { O 1 bit } pixels_14_we0 { O 1 bit } pixels_14_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name pixels_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_13 \
    op interface \
    ports { pixels_13_address0 { O 1 vector } pixels_13_ce0 { O 1 bit } pixels_13_we0 { O 1 bit } pixels_13_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name pixels_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_12 \
    op interface \
    ports { pixels_12_address0 { O 1 vector } pixels_12_ce0 { O 1 bit } pixels_12_we0 { O 1 bit } pixels_12_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name pixels_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_11 \
    op interface \
    ports { pixels_11_address0 { O 1 vector } pixels_11_ce0 { O 1 bit } pixels_11_we0 { O 1 bit } pixels_11_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name pixels_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_10 \
    op interface \
    ports { pixels_10_address0 { O 1 vector } pixels_10_ce0 { O 1 bit } pixels_10_we0 { O 1 bit } pixels_10_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name pixels_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_9 \
    op interface \
    ports { pixels_9_address0 { O 1 vector } pixels_9_ce0 { O 1 bit } pixels_9_we0 { O 1 bit } pixels_9_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name pixels_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_8 \
    op interface \
    ports { pixels_8_address0 { O 1 vector } pixels_8_ce0 { O 1 bit } pixels_8_we0 { O 1 bit } pixels_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name pixels_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_7 \
    op interface \
    ports { pixels_7_address0 { O 1 vector } pixels_7_ce0 { O 1 bit } pixels_7_we0 { O 1 bit } pixels_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 371 \
    name pixels_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_6 \
    op interface \
    ports { pixels_6_address0 { O 1 vector } pixels_6_ce0 { O 1 bit } pixels_6_we0 { O 1 bit } pixels_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 372 \
    name pixels_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_5 \
    op interface \
    ports { pixels_5_address0 { O 1 vector } pixels_5_ce0 { O 1 bit } pixels_5_we0 { O 1 bit } pixels_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 373 \
    name pixels_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_4 \
    op interface \
    ports { pixels_4_address0 { O 1 vector } pixels_4_ce0 { O 1 bit } pixels_4_we0 { O 1 bit } pixels_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 374 \
    name pixels_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_3 \
    op interface \
    ports { pixels_3_address0 { O 1 vector } pixels_3_ce0 { O 1 bit } pixels_3_we0 { O 1 bit } pixels_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 375 \
    name pixels_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_2 \
    op interface \
    ports { pixels_2_address0 { O 1 vector } pixels_2_ce0 { O 1 bit } pixels_2_we0 { O 1 bit } pixels_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 376 \
    name pixels_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels_1 \
    op interface \
    ports { pixels_1_address0 { O 1 vector } pixels_1_ce0 { O 1 bit } pixels_1_we0 { O 1 bit } pixels_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name pixels \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pixels \
    op interface \
    ports { pixels_address0 { O 1 vector } pixels_ce0 { O 1 bit } pixels_we0 { O 1 bit } pixels_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pixels'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
    name ref_band1_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_cast \
    op interface \
    ports { ref_band1_V_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name ref_band2_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_cast \
    op interface \
    ports { ref_band2_V_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name ref_band1_V_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_1_cast \
    op interface \
    ports { ref_band1_V_1_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name ref_band2_V_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_1_cast \
    op interface \
    ports { ref_band2_V_1_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name ref_band1_V_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_2_cast \
    op interface \
    ports { ref_band1_V_2_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name ref_band2_V_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_2_cast \
    op interface \
    ports { ref_band2_V_2_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name ref_band1_V_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_3_cast \
    op interface \
    ports { ref_band1_V_3_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name ref_band2_V_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_3_cast \
    op interface \
    ports { ref_band2_V_3_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name ref_band1_V_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_4_cast \
    op interface \
    ports { ref_band1_V_4_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name ref_band2_V_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_4_cast \
    op interface \
    ports { ref_band2_V_4_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name ref_band1_V_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_5_cast \
    op interface \
    ports { ref_band1_V_5_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name ref_band2_V_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_5_cast \
    op interface \
    ports { ref_band2_V_5_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name ref_band1_V_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_6_cast \
    op interface \
    ports { ref_band1_V_6_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name ref_band2_V_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_6_cast \
    op interface \
    ports { ref_band2_V_6_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name ref_band1_V_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_7_cast \
    op interface \
    ports { ref_band1_V_7_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name ref_band2_V_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_7_cast \
    op interface \
    ports { ref_band2_V_7_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name ref_band1_V_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_8_cast \
    op interface \
    ports { ref_band1_V_8_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name ref_band2_V_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_8_cast \
    op interface \
    ports { ref_band2_V_8_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name ref_band1_V_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_9_cast \
    op interface \
    ports { ref_band1_V_9_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name ref_band2_V_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_9_cast \
    op interface \
    ports { ref_band2_V_9_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name ref_band1_V_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_10_cast \
    op interface \
    ports { ref_band1_V_10_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name ref_band2_V_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_10_cast \
    op interface \
    ports { ref_band2_V_10_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name ref_band1_V_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_11_cast \
    op interface \
    ports { ref_band1_V_11_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name ref_band2_V_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_11_cast \
    op interface \
    ports { ref_band2_V_11_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name ref_band1_V_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_12_cast \
    op interface \
    ports { ref_band1_V_12_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name ref_band2_V_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_12_cast \
    op interface \
    ports { ref_band2_V_12_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name ref_band1_V_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_13_cast \
    op interface \
    ports { ref_band1_V_13_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name ref_band2_V_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_13_cast \
    op interface \
    ports { ref_band2_V_13_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name ref_band1_V_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_14_cast \
    op interface \
    ports { ref_band1_V_14_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name ref_band2_V_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_14_cast \
    op interface \
    ports { ref_band2_V_14_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name ref_band1_V_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_15_cast \
    op interface \
    ports { ref_band1_V_15_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name ref_band2_V_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_15_cast \
    op interface \
    ports { ref_band2_V_15_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name ref_band1_V_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_16_cast \
    op interface \
    ports { ref_band1_V_16_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name ref_band2_V_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_16_cast \
    op interface \
    ports { ref_band2_V_16_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name ref_band1_V_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_17_cast \
    op interface \
    ports { ref_band1_V_17_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name ref_band2_V_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_17_cast \
    op interface \
    ports { ref_band2_V_17_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name ref_band1_V_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_18_cast \
    op interface \
    ports { ref_band1_V_18_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name ref_band2_V_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_18_cast \
    op interface \
    ports { ref_band2_V_18_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name ref_band1_V_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_19_cast \
    op interface \
    ports { ref_band1_V_19_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name ref_band2_V_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_19_cast \
    op interface \
    ports { ref_band2_V_19_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name ref_band1_V_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_20_cast \
    op interface \
    ports { ref_band1_V_20_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name ref_band2_V_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_20_cast \
    op interface \
    ports { ref_band2_V_20_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name ref_band1_V_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_21_cast \
    op interface \
    ports { ref_band1_V_21_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name ref_band2_V_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_21_cast \
    op interface \
    ports { ref_band2_V_21_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name ref_band1_V_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_22_cast \
    op interface \
    ports { ref_band1_V_22_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name ref_band2_V_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_22_cast \
    op interface \
    ports { ref_band2_V_22_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name ref_band1_V_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_23_cast \
    op interface \
    ports { ref_band1_V_23_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name ref_band2_V_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_23_cast \
    op interface \
    ports { ref_band2_V_23_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name ref_band1_V_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_24_cast \
    op interface \
    ports { ref_band1_V_24_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name ref_band2_V_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_24_cast \
    op interface \
    ports { ref_band2_V_24_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name ref_band1_V_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_25_cast \
    op interface \
    ports { ref_band1_V_25_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name ref_band2_V_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_25_cast \
    op interface \
    ports { ref_band2_V_25_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name ref_band1_V_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_26_cast \
    op interface \
    ports { ref_band1_V_26_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name ref_band2_V_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_26_cast \
    op interface \
    ports { ref_band2_V_26_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name ref_band1_V_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_27_cast \
    op interface \
    ports { ref_band1_V_27_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name ref_band2_V_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_27_cast \
    op interface \
    ports { ref_band2_V_27_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name ref_band1_V_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_28_cast \
    op interface \
    ports { ref_band1_V_28_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name ref_band2_V_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_28_cast \
    op interface \
    ports { ref_band2_V_28_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name ref_band1_V_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_29_cast \
    op interface \
    ports { ref_band1_V_29_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name ref_band2_V_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_29_cast \
    op interface \
    ports { ref_band2_V_29_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name ref_band1_V_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_30_cast \
    op interface \
    ports { ref_band1_V_30_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name ref_band2_V_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_30_cast \
    op interface \
    ports { ref_band2_V_30_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name ref_band1_V_31_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_31_cast \
    op interface \
    ports { ref_band1_V_31_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name ref_band2_V_31_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_31_cast \
    op interface \
    ports { ref_band2_V_31_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name ref_band1_V_32_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_32_cast \
    op interface \
    ports { ref_band1_V_32_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name ref_band2_V_32_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_32_cast \
    op interface \
    ports { ref_band2_V_32_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name ref_band1_V_33_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_33_cast \
    op interface \
    ports { ref_band1_V_33_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name ref_band2_V_33_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_33_cast \
    op interface \
    ports { ref_band2_V_33_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name ref_band1_V_34_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_34_cast \
    op interface \
    ports { ref_band1_V_34_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name ref_band2_V_34_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_34_cast \
    op interface \
    ports { ref_band2_V_34_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name ref_band1_V_35_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_35_cast \
    op interface \
    ports { ref_band1_V_35_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name ref_band2_V_35_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_35_cast \
    op interface \
    ports { ref_band2_V_35_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name ref_band1_V_36_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_36_cast \
    op interface \
    ports { ref_band1_V_36_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name ref_band2_V_36_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_36_cast \
    op interface \
    ports { ref_band2_V_36_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name ref_band1_V_37_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_37_cast \
    op interface \
    ports { ref_band1_V_37_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name ref_band2_V_37_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_37_cast \
    op interface \
    ports { ref_band2_V_37_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name ref_band1_V_38_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_38_cast \
    op interface \
    ports { ref_band1_V_38_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name ref_band2_V_38_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_38_cast \
    op interface \
    ports { ref_band2_V_38_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name ref_band1_V_39_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_39_cast \
    op interface \
    ports { ref_band1_V_39_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name ref_band2_V_39_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_39_cast \
    op interface \
    ports { ref_band2_V_39_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name ref_band1_V_40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_40_cast \
    op interface \
    ports { ref_band1_V_40_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name ref_band2_V_40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_40_cast \
    op interface \
    ports { ref_band2_V_40_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name ref_band1_V_41_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_41_cast \
    op interface \
    ports { ref_band1_V_41_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name ref_band2_V_41_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_41_cast \
    op interface \
    ports { ref_band2_V_41_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name ref_band1_V_42_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_42_cast \
    op interface \
    ports { ref_band1_V_42_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name ref_band2_V_42_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_42_cast \
    op interface \
    ports { ref_band2_V_42_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name ref_band1_V_43_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_43_cast \
    op interface \
    ports { ref_band1_V_43_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name ref_band2_V_43_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_43_cast \
    op interface \
    ports { ref_band2_V_43_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name ref_band1_V_44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_44_cast \
    op interface \
    ports { ref_band1_V_44_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name ref_band2_V_44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_44_cast \
    op interface \
    ports { ref_band2_V_44_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name ref_band1_V_45_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_45_cast \
    op interface \
    ports { ref_band1_V_45_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name ref_band2_V_45_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_45_cast \
    op interface \
    ports { ref_band2_V_45_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name ref_band1_V_46_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_46_cast \
    op interface \
    ports { ref_band1_V_46_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name ref_band2_V_46_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_46_cast \
    op interface \
    ports { ref_band2_V_46_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name ref_band1_V_47_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_47_cast \
    op interface \
    ports { ref_band1_V_47_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name ref_band2_V_47_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_47_cast \
    op interface \
    ports { ref_band2_V_47_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name ref_band1_V_48_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_48_cast \
    op interface \
    ports { ref_band1_V_48_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name ref_band2_V_48_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_48_cast \
    op interface \
    ports { ref_band2_V_48_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name ref_band1_V_49_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_49_cast \
    op interface \
    ports { ref_band1_V_49_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name ref_band2_V_49_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_49_cast \
    op interface \
    ports { ref_band2_V_49_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name ref_band1_V_50_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_50_cast \
    op interface \
    ports { ref_band1_V_50_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name ref_band2_V_50_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_50_cast \
    op interface \
    ports { ref_band2_V_50_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name ref_band1_V_51_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_51_cast \
    op interface \
    ports { ref_band1_V_51_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name ref_band2_V_51_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_51_cast \
    op interface \
    ports { ref_band2_V_51_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name ref_band1_V_52_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_52_cast \
    op interface \
    ports { ref_band1_V_52_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name ref_band2_V_52_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_52_cast \
    op interface \
    ports { ref_band2_V_52_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name ref_band1_V_53_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_53_cast \
    op interface \
    ports { ref_band1_V_53_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name ref_band2_V_53_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_53_cast \
    op interface \
    ports { ref_band2_V_53_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name ref_band1_V_54_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_54_cast \
    op interface \
    ports { ref_band1_V_54_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name ref_band2_V_54_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_54_cast \
    op interface \
    ports { ref_band2_V_54_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name ref_band1_V_55_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_55_cast \
    op interface \
    ports { ref_band1_V_55_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name ref_band2_V_55_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_55_cast \
    op interface \
    ports { ref_band2_V_55_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name ref_band1_V_56_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_56_cast \
    op interface \
    ports { ref_band1_V_56_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name ref_band2_V_56_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_56_cast \
    op interface \
    ports { ref_band2_V_56_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name ref_band1_V_57_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_57_cast \
    op interface \
    ports { ref_band1_V_57_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name ref_band2_V_57_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_57_cast \
    op interface \
    ports { ref_band2_V_57_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name ref_band1_V_58_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_58_cast \
    op interface \
    ports { ref_band1_V_58_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name ref_band2_V_58_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_58_cast \
    op interface \
    ports { ref_band2_V_58_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name ref_band1_V_59_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_59_cast \
    op interface \
    ports { ref_band1_V_59_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name ref_band2_V_59_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_59_cast \
    op interface \
    ports { ref_band2_V_59_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name ref_band1_V_60_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_60_cast \
    op interface \
    ports { ref_band1_V_60_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name ref_band2_V_60_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_60_cast \
    op interface \
    ports { ref_band2_V_60_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name ref_band1_V_61_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_61_cast \
    op interface \
    ports { ref_band1_V_61_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name ref_band2_V_61_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_61_cast \
    op interface \
    ports { ref_band2_V_61_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name ref_band1_V_62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_62_cast \
    op interface \
    ports { ref_band1_V_62_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name ref_band2_V_62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_62_cast \
    op interface \
    ports { ref_band2_V_62_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name ref_band1_V_63_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_63_cast \
    op interface \
    ports { ref_band1_V_63_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name ref_band2_V_63_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_63_cast \
    op interface \
    ports { ref_band2_V_63_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name ref_band1_V_64_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_64_cast \
    op interface \
    ports { ref_band1_V_64_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name ref_band2_V_64_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_64_cast \
    op interface \
    ports { ref_band2_V_64_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name ref_band1_V_65_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_65_cast \
    op interface \
    ports { ref_band1_V_65_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name ref_band2_V_65_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_65_cast \
    op interface \
    ports { ref_band2_V_65_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name ref_band1_V_66_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_66_cast \
    op interface \
    ports { ref_band1_V_66_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name ref_band2_V_66_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_66_cast \
    op interface \
    ports { ref_band2_V_66_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name ref_band1_V_67_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_67_cast \
    op interface \
    ports { ref_band1_V_67_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name ref_band2_V_67_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_67_cast \
    op interface \
    ports { ref_band2_V_67_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name ref_band1_V_68_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_68_cast \
    op interface \
    ports { ref_band1_V_68_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name ref_band2_V_68_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_68_cast \
    op interface \
    ports { ref_band2_V_68_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name ref_band1_V_69_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_69_cast \
    op interface \
    ports { ref_band1_V_69_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name ref_band2_V_69_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_69_cast \
    op interface \
    ports { ref_band2_V_69_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name ref_band1_V_70_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_70_cast \
    op interface \
    ports { ref_band1_V_70_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name ref_band2_V_70_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_70_cast \
    op interface \
    ports { ref_band2_V_70_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name ref_band1_V_71_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_71_cast \
    op interface \
    ports { ref_band1_V_71_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name ref_band2_V_71_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_71_cast \
    op interface \
    ports { ref_band2_V_71_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name ref_band1_V_72_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_72_cast \
    op interface \
    ports { ref_band1_V_72_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name ref_band2_V_72_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_72_cast \
    op interface \
    ports { ref_band2_V_72_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name ref_band1_V_73_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_73_cast \
    op interface \
    ports { ref_band1_V_73_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name ref_band2_V_73_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_73_cast \
    op interface \
    ports { ref_band2_V_73_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name ref_band1_V_74_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_74_cast \
    op interface \
    ports { ref_band1_V_74_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name ref_band2_V_74_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_74_cast \
    op interface \
    ports { ref_band2_V_74_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name ref_band1_V_75_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_75_cast \
    op interface \
    ports { ref_band1_V_75_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name ref_band2_V_75_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_75_cast \
    op interface \
    ports { ref_band2_V_75_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name ref_band1_V_76_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_76_cast \
    op interface \
    ports { ref_band1_V_76_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name ref_band2_V_76_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_76_cast \
    op interface \
    ports { ref_band2_V_76_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name ref_band1_V_77_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_77_cast \
    op interface \
    ports { ref_band1_V_77_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name ref_band2_V_77_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_77_cast \
    op interface \
    ports { ref_band2_V_77_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name ref_band1_V_78_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_78_cast \
    op interface \
    ports { ref_band1_V_78_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name ref_band2_V_78_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_78_cast \
    op interface \
    ports { ref_band2_V_78_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name ref_band1_V_79_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_79_cast \
    op interface \
    ports { ref_band1_V_79_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name ref_band2_V_79_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_79_cast \
    op interface \
    ports { ref_band2_V_79_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name ref_band1_V_80_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_80_cast \
    op interface \
    ports { ref_band1_V_80_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name ref_band2_V_80_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_80_cast \
    op interface \
    ports { ref_band2_V_80_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name ref_band1_V_81_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_81_cast \
    op interface \
    ports { ref_band1_V_81_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name ref_band2_V_81_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_81_cast \
    op interface \
    ports { ref_band2_V_81_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name ref_band1_V_82_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_82_cast \
    op interface \
    ports { ref_band1_V_82_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name ref_band2_V_82_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_82_cast \
    op interface \
    ports { ref_band2_V_82_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name ref_band1_V_83_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_83_cast \
    op interface \
    ports { ref_band1_V_83_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name ref_band2_V_83_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_83_cast \
    op interface \
    ports { ref_band2_V_83_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name ref_band1_V_84_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_84_cast \
    op interface \
    ports { ref_band1_V_84_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name ref_band2_V_84_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_84_cast \
    op interface \
    ports { ref_band2_V_84_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name ref_band1_V_85_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_85_cast \
    op interface \
    ports { ref_band1_V_85_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name ref_band2_V_85_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_85_cast \
    op interface \
    ports { ref_band2_V_85_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name ref_band1_V_86_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_86_cast \
    op interface \
    ports { ref_band1_V_86_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name ref_band2_V_86_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_86_cast \
    op interface \
    ports { ref_band2_V_86_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name ref_band1_V_87_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_87_cast \
    op interface \
    ports { ref_band1_V_87_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name ref_band2_V_87_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_87_cast \
    op interface \
    ports { ref_band2_V_87_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name ref_band1_V_88_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_88_cast \
    op interface \
    ports { ref_band1_V_88_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name ref_band2_V_88_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band2_V_88_cast \
    op interface \
    ports { ref_band2_V_88_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name ref_band1_V_89_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ref_band1_V_89_cast \
    op interface \
    ports { ref_band1_V_89_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name zext_ln63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln63 \
    op interface \
    ports { zext_ln63 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name min_distance_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_min_distance_out \
    op interface \
    ports { min_distance_out { O 32 vector } min_distance_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
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
    id 567 \
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
    id 568 \
    name active_idx_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_active_idx_2_out \
    op interface \
    ports { active_idx_2_out { O 1 vector } active_idx_2_out_ap_vld { O 1 bit } } \
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


