# This script segment is generated automatically by AutoPilot

set name pfb_multichannel_mul_11ns_13ns_23_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name pfb_multichannel_mul_12ns_14ns_25_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_11_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_11_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_11_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_sparsemux_11_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name pfb_multichannel_mul_16s_16s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 81
set name pfb_multichannel_mac_muladd_16s_16s_32s_33_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 33
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {32 1 +} i2 {32 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
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


set id 89
set name pfb_multichannel_mac_muladd_16s_16s_33s_33_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 33
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 33
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {32 1 +} i2 {33 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
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


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pfb_multichannel_decimate_pfb_Pipeline_compute_loop_decimate_pfb_stream_stream_ap_fixed_16_1_5bkb BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 113 \
    name decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 \
    op interface \
    ports { decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address0 { O 10 vector } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce0 { O 1 bit } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 \
    op interface \
    ports { decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address0 { O 10 vector } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce0 { O 1 bit } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 \
    op interface \
    ports { decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address0 { O 10 vector } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce0 { O 1 bit } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 \
    op interface \
    ports { decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address0 { O 10 vector } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce0 { O 1 bit } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs \
    op interface \
    ports { decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address0 { O 10 vector } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce0 { O 1 bit } decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name stream_compute_to_fft \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_compute_to_fft \
    op interface \
    ports { stream_compute_to_fft_din { O 128 vector } stream_compute_to_fft_num_data_valid { I 5 vector } stream_compute_to_fft_fifo_cap { I 5 vector } stream_compute_to_fft_full_n { I 1 bit } stream_compute_to_fft_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name write_bank_idx_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_bank_idx_load \
    op interface \
    ports { write_bank_idx_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name stream_read_to_compute \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_read_to_compute \
    op interface \
    ports { stream_read_to_compute_dout { I 128 vector } stream_read_to_compute_num_data_valid { I 5 vector } stream_read_to_compute_fifo_cap { I 5 vector } stream_read_to_compute_empty_n { I 1 bit } stream_read_to_compute_read { O 1 bit } } \
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
set InstName pfb_multichannel_flow_control_loop_pipe_sequential_init_U
set CompName pfb_multichannel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix pfb_multichannel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


