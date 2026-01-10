`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [11:0] axis_block_sigs;
wire [18:0] inst_idle_sigs;
wire [15:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_i0_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_q0_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_i1_TDATA_blk_n;
assign axis_block_sigs[3] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_q1_TDATA_blk_n;
assign axis_block_sigs[4] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_i2_TDATA_blk_n;
assign axis_block_sigs[5] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_q2_TDATA_blk_n;
assign axis_block_sigs[6] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_i3_TDATA_blk_n;
assign axis_block_sigs[7] = ~AESL_inst_pfb_multichannel.read_inputs_U0.din_data_q3_TDATA_blk_n;
assign axis_block_sigs[8] = ~AESL_inst_pfb_multichannel.write_outputs_U0.dout_data_0_TDATA_blk_n;
assign axis_block_sigs[9] = ~AESL_inst_pfb_multichannel.write_outputs_U0.dout_data_1_TDATA_blk_n;
assign axis_block_sigs[10] = ~AESL_inst_pfb_multichannel.write_outputs_U0.dout_data_2_TDATA_blk_n;
assign axis_block_sigs[11] = ~AESL_inst_pfb_multichannel.write_outputs_U0.dout_data_3_TDATA_blk_n;

assign inst_idle_sigs[0] = AESL_inst_pfb_multichannel.read_inputs_U0.ap_idle;
assign inst_block_sigs[0] = (AESL_inst_pfb_multichannel.read_inputs_U0.ap_done & ~AESL_inst_pfb_multichannel.read_inputs_U0.ap_continue) | ~AESL_inst_pfb_multichannel.read_inputs_U0.stream_read_to_compute_blk_n;
assign inst_idle_sigs[1] = AESL_inst_pfb_multichannel.decimate_pfb_U0.ap_idle;
assign inst_block_sigs[1] = (AESL_inst_pfb_multichannel.decimate_pfb_U0.ap_done & ~AESL_inst_pfb_multichannel.decimate_pfb_U0.ap_continue) | ~AESL_inst_pfb_multichannel.decimate_pfb_U0.stream_read_to_compute_blk_n | ~AESL_inst_pfb_multichannel.decimate_pfb_U0.stream_compute_to_fft_blk_n;
assign inst_idle_sigs[2] = AESL_inst_pfb_multichannel.fft_U0.ap_idle;
assign inst_block_sigs[2] = (AESL_inst_pfb_multichannel.fft_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.ap_continue) | ~AESL_inst_pfb_multichannel.fft_U0.unpack_U0.stream_compute_to_fft_blk_n | ~AESL_inst_pfb_multichannel.fft_U0.repack_U0.stream_fft_to_write_blk_n;
assign inst_idle_sigs[3] = AESL_inst_pfb_multichannel.write_outputs_U0.ap_idle;
assign inst_block_sigs[3] = (AESL_inst_pfb_multichannel.write_outputs_U0.ap_done & ~AESL_inst_pfb_multichannel.write_outputs_U0.ap_continue) | ~AESL_inst_pfb_multichannel.write_outputs_U0.stream_fft_to_write_blk_n;
assign inst_idle_sigs[4] = AESL_inst_pfb_multichannel.fft_U0.unpack_U0.ap_idle;
assign inst_block_sigs[4] = (AESL_inst_pfb_multichannel.fft_U0.unpack_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.unpack_U0.ap_continue);
assign inst_idle_sigs[5] = AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry13_proc1_U0.ap_idle;
assign inst_block_sigs[5] = (AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry13_proc1_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry13_proc1_U0.ap_continue);
assign inst_idle_sigs[6] = 1'b0;
assign inst_block_sigs[6] = 1'b0;
assign inst_idle_sigs[7] = 1'b0;
assign inst_block_sigs[7] = 1'b0;
assign inst_idle_sigs[8] = 1'b0;
assign inst_block_sigs[8] = 1'b0;
assign inst_idle_sigs[9] = 1'b0;
assign inst_block_sigs[9] = 1'b0;
assign inst_idle_sigs[10] = AESL_inst_pfb_multichannel.fft_U0.repack_U0.ap_idle;
assign inst_block_sigs[10] = (AESL_inst_pfb_multichannel.fft_U0.repack_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.repack_U0.ap_continue);
assign inst_idle_sigs[11] = AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry19_proc2_U0.ap_idle;
assign inst_block_sigs[11] = (AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry19_proc2_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_Block_entry19_proc2_U0.ap_continue);
assign inst_idle_sigs[12] = AESL_inst_pfb_multichannel.fft_U0.fft_config1_1_U0.fft_syn_config1_U0.ap_idle;
assign inst_block_sigs[12] = (AESL_inst_pfb_multichannel.fft_U0.fft_config1_1_U0.fft_syn_config1_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_config1_1_U0.fft_syn_config1_U0.ap_continue);
assign inst_idle_sigs[13] = AESL_inst_pfb_multichannel.fft_U0.fft_config1_2_U0.fft_syn_config1_4_U0.ap_idle;
assign inst_block_sigs[13] = (AESL_inst_pfb_multichannel.fft_U0.fft_config1_2_U0.fft_syn_config1_4_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_config1_2_U0.fft_syn_config1_4_U0.ap_continue);
assign inst_idle_sigs[14] = AESL_inst_pfb_multichannel.fft_U0.fft_config1_3_U0.fft_syn_config1_5_U0.ap_idle;
assign inst_block_sigs[14] = (AESL_inst_pfb_multichannel.fft_U0.fft_config1_3_U0.fft_syn_config1_5_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_config1_3_U0.fft_syn_config1_5_U0.ap_continue);
assign inst_idle_sigs[15] = AESL_inst_pfb_multichannel.fft_U0.fft_config1_U0.fft_syn_config1_6_U0.ap_idle;
assign inst_block_sigs[15] = (AESL_inst_pfb_multichannel.fft_U0.fft_config1_U0.fft_syn_config1_6_U0.ap_done & ~AESL_inst_pfb_multichannel.fft_U0.fft_config1_U0.fft_syn_config1_6_U0.ap_continue);

assign inst_idle_sigs[16] = 1'b0;
assign inst_idle_sigs[17] = AESL_inst_pfb_multichannel.read_inputs_U0.ap_idle;
assign inst_idle_sigs[18] = AESL_inst_pfb_multichannel.write_outputs_U0.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
        block_delay = kernel_block;
    end
end

endmodule
