# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name stream_compute_to_fft \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_compute_to_fft \
    op interface \
    ports { stream_compute_to_fft_dout { I 128 vector } stream_compute_to_fft_num_data_valid { I 13 vector } stream_compute_to_fft_fifo_cap { I 13 vector } stream_compute_to_fft_empty_n { I 1 bit } stream_compute_to_fft_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name ch0_in \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch0_in \
    op interface \
    ports { ch0_in_din { O 32 vector } ch0_in_num_data_valid { I 3 vector } ch0_in_fifo_cap { I 3 vector } ch0_in_full_n { I 1 bit } ch0_in_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name ch1_in \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch1_in \
    op interface \
    ports { ch1_in_din { O 32 vector } ch1_in_num_data_valid { I 3 vector } ch1_in_fifo_cap { I 3 vector } ch1_in_full_n { I 1 bit } ch1_in_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name ch2_in \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch2_in \
    op interface \
    ports { ch2_in_din { O 32 vector } ch2_in_num_data_valid { I 3 vector } ch2_in_fifo_cap { I 3 vector } ch2_in_full_n { I 1 bit } ch2_in_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name ch3_in \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch3_in \
    op interface \
    ports { ch3_in_din { O 32 vector } ch3_in_num_data_valid { I 3 vector } ch3_in_fifo_cap { I 3 vector } ch3_in_full_n { I 1 bit } ch3_in_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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
set InstName pfb_multichannel_flow_control_loop_pipe_U
set CompName pfb_multichannel_flow_control_loop_pipe
set name flow_control_loop_pipe
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


