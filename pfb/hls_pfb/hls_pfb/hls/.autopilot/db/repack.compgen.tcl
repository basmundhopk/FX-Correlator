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
    id 162 \
    name ch0_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch0_out \
    op interface \
    ports { ch0_out_dout { I 32 vector } ch0_out_num_data_valid { I 11 vector } ch0_out_fifo_cap { I 11 vector } ch0_out_empty_n { I 1 bit } ch0_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name ch1_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch1_out \
    op interface \
    ports { ch1_out_dout { I 32 vector } ch1_out_num_data_valid { I 11 vector } ch1_out_fifo_cap { I 11 vector } ch1_out_empty_n { I 1 bit } ch1_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name ch2_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch2_out \
    op interface \
    ports { ch2_out_dout { I 32 vector } ch2_out_num_data_valid { I 11 vector } ch2_out_fifo_cap { I 11 vector } ch2_out_empty_n { I 1 bit } ch2_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name ch3_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch3_out \
    op interface \
    ports { ch3_out_dout { I 32 vector } ch3_out_num_data_valid { I 11 vector } ch3_out_fifo_cap { I 11 vector } ch3_out_empty_n { I 1 bit } ch3_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name stream_fft_to_write \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_fft_to_write \
    op interface \
    ports { stream_fft_to_write_din { O 128 vector } stream_fft_to_write_num_data_valid { I 5 vector } stream_fft_to_write_fifo_cap { I 5 vector } stream_fft_to_write_full_n { I 1 bit } stream_fft_to_write_write { O 1 bit } } \
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


