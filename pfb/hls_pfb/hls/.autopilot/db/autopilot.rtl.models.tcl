set SynModuleInfo {
  {SRCNAME read_inputs MODELNAME read_inputs RTLNAME pfb_multichannel_read_inputs
    SUBMODULES {
      {MODELNAME pfb_multichannel_regslice_both RTLNAME pfb_multichannel_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME pfb_multichannel_regslice_both_U}
      {MODELNAME pfb_multichannel_flow_control_loop_pipe RTLNAME pfb_multichannel_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pfb_multichannel_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME decimate_pfb MODELNAME decimate_pfb RTLNAME pfb_multichannel_decimate_pfb
    SUBMODULES {
      {MODELNAME pfb_multichannel_mul_11ns_13ns_23_1_1 RTLNAME pfb_multichannel_mul_11ns_13ns_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_mul_12ns_14ns_25_1_1 RTLNAME pfb_multichannel_mul_12ns_14ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_sparsemux_9_2_16_1_1 RTLNAME pfb_multichannel_sparsemux_9_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME pfb_multichannel_sparsemux_11_3_16_1_1 RTLNAME pfb_multichannel_sparsemux_11_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME pfb_multichannel_mul_16s_16s_31_1_1 RTLNAME pfb_multichannel_mul_16s_16s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_mac_muladd_16s_16s_31s_31_4_1 RTLNAME pfb_multichannel_mac_muladd_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimate_pfb_decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffbkb RTLNAME pfb_multichannel_decimate_pfb_decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimate_pfb_decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memog8j RTLNAME pfb_multichannel_decimate_pfb_decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memog8j BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME unpack MODELNAME unpack RTLNAME pfb_multichannel_unpack}
  {SRCNAME fft_Block_entry13_proc1 MODELNAME fft_Block_entry13_proc1 RTLNAME pfb_multichannel_fft_Block_entry13_proc1}
  {SRCNAME fft_syn<config1> MODELNAME fft_syn_config1_s RTLNAME pfb_multichannel_fft_syn_config1_s
    SUBMODULES {
      {MODELNAME pfb_multichannel_fft_syn_config1_s RTLNAME pfb_multichannel_fft_syn_config1_s BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<config1>.1 MODELNAME fft_config1_1 RTLNAME pfb_multichannel_fft_config1_1}
  {SRCNAME fft_syn<config1>.4 MODELNAME fft_syn_config1_4 RTLNAME pfb_multichannel_fft_syn_config1_4
    SUBMODULES {
      {MODELNAME pfb_multichannel_fft_syn_config1_4 RTLNAME pfb_multichannel_fft_syn_config1_4 BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<config1>.2 MODELNAME fft_config1_2 RTLNAME pfb_multichannel_fft_config1_2}
  {SRCNAME fft_syn<config1>.5 MODELNAME fft_syn_config1_5 RTLNAME pfb_multichannel_fft_syn_config1_5
    SUBMODULES {
      {MODELNAME pfb_multichannel_fft_syn_config1_5 RTLNAME pfb_multichannel_fft_syn_config1_5 BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<config1>.3 MODELNAME fft_config1_3 RTLNAME pfb_multichannel_fft_config1_3}
  {SRCNAME fft_syn<config1>.6 MODELNAME fft_syn_config1_6 RTLNAME pfb_multichannel_fft_syn_config1_6
    SUBMODULES {
      {MODELNAME pfb_multichannel_fft_syn_config1_6 RTLNAME pfb_multichannel_fft_syn_config1_6 BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<config1> MODELNAME fft_config1_s RTLNAME pfb_multichannel_fft_config1_s}
  {SRCNAME repack MODELNAME repack RTLNAME pfb_multichannel_repack}
  {SRCNAME fft_Block_entry19_proc2 MODELNAME fft_Block_entry19_proc2 RTLNAME pfb_multichannel_fft_Block_entry19_proc2}
  {SRCNAME fft MODELNAME fft RTLNAME pfb_multichannel_fft
    SUBMODULES {
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch0_in_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch1_in_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch2_in_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch3_in_U}
      {MODELNAME pfb_multichannel_fifo_w16_d2_S RTLNAME pfb_multichannel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cfg0_s_U}
      {MODELNAME pfb_multichannel_fifo_w16_d2_S RTLNAME pfb_multichannel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cfg1_s_U}
      {MODELNAME pfb_multichannel_fifo_w16_d2_S RTLNAME pfb_multichannel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cfg2_s_U}
      {MODELNAME pfb_multichannel_fifo_w16_d2_S RTLNAME pfb_multichannel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cfg3_s_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch0_out_U}
      {MODELNAME pfb_multichannel_fifo_w8_d2_S RTLNAME pfb_multichannel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stat0_s_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch1_out_U}
      {MODELNAME pfb_multichannel_fifo_w8_d2_S RTLNAME pfb_multichannel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stat1_s_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch2_out_U}
      {MODELNAME pfb_multichannel_fifo_w8_d2_S RTLNAME pfb_multichannel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stat2_s_U}
      {MODELNAME pfb_multichannel_fifo_w32_d2_S RTLNAME pfb_multichannel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch3_out_U}
      {MODELNAME pfb_multichannel_fifo_w8_d2_S RTLNAME pfb_multichannel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stat3_s_U}
      {MODELNAME pfb_multichannel_start_for_repack_U0 RTLNAME pfb_multichannel_start_for_repack_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_repack_U0_U}
      {MODELNAME pfb_multichannel_start_for_fft_Block_entry19_proc2_U0 RTLNAME pfb_multichannel_start_for_fft_Block_entry19_proc2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fft_Block_entry19_proc2_U0_U}
    }
  }
  {SRCNAME write_outputs MODELNAME write_outputs RTLNAME pfb_multichannel_write_outputs}
  {SRCNAME pfb_multichannel MODELNAME pfb_multichannel RTLNAME pfb_multichannel IS_TOP 1
    SUBMODULES {
      {MODELNAME pfb_multichannel_fifo_w128_d4096_A RTLNAME pfb_multichannel_fifo_w128_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_read_to_compute_U}
      {MODELNAME pfb_multichannel_fifo_w128_d4096_A RTLNAME pfb_multichannel_fifo_w128_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_compute_to_fft_U}
      {MODELNAME pfb_multichannel_fifo_w128_d4096_A RTLNAME pfb_multichannel_fifo_w128_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_fft_to_write_U}
      {MODELNAME pfb_multichannel_start_for_fft_U0 RTLNAME pfb_multichannel_start_for_fft_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fft_U0_U}
      {MODELNAME pfb_multichannel_start_for_write_outputs_U0 RTLNAME pfb_multichannel_start_for_write_outputs_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_outputs_U0_U}
      {MODELNAME pfb_multichannel_gmem_m_axi RTLNAME pfb_multichannel_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pfb_multichannel_control_s_axi RTLNAME pfb_multichannel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME pfb_multichannel_control_r_s_axi RTLNAME pfb_multichannel_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
