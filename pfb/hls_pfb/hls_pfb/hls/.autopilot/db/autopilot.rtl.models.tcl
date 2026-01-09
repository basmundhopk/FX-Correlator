set SynModuleInfo {
  {SRCNAME read_inputs MODELNAME read_inputs RTLNAME pfb_multichannel_decimator_read_inputs
    SUBMODULES {
      {MODELNAME pfb_multichannel_decimator_regslice_both RTLNAME pfb_multichannel_decimator_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME pfb_multichannel_decimator_regslice_both_U}
    }
  }
  {SRCNAME compute_pfb_Pipeline_load_coeffs MODELNAME compute_pfb_Pipeline_load_coeffs RTLNAME pfb_multichannel_decimator_compute_pfb_Pipeline_load_coeffs}
  {SRCNAME compute_pfb_Pipeline_compute_loop MODELNAME compute_pfb_Pipeline_compute_loop RTLNAME pfb_multichannel_decimator_compute_pfb_Pipeline_compute_loop
    SUBMODULES {
      {MODELNAME pfb_multichannel_decimator_mul_11ns_13ns_23_1_1 RTLNAME pfb_multichannel_decimator_mul_11ns_13ns_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimator_mul_12ns_14ns_25_1_1 RTLNAME pfb_multichannel_decimator_mul_12ns_14ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimator_sparsemux_11_3_16_1_1 RTLNAME pfb_multichannel_decimator_sparsemux_11_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME pfb_multichannel_decimator_sparsemux_9_2_16_1_1 RTLNAME pfb_multichannel_decimator_sparsemux_9_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME pfb_multichannel_decimator_mul_16s_16s_31_1_1 RTLNAME pfb_multichannel_decimator_mul_16s_16s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimator_mac_muladd_16s_16s_31s_31_4_1 RTLNAME pfb_multichannel_decimator_mac_muladd_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME pfb_multichannel_decimator_compute_pfb_Pipeline_compute_loop_compute_pfb_stream_stream_ap_fixed_16_1_5_3bkb RTLNAME pfb_multichannel_decimator_compute_pfb_Pipeline_compute_loop_compute_pfb_stream_stream_ap_fixed_16_1_5_3bkb BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_pfb MODELNAME compute_pfb RTLNAME pfb_multichannel_decimator_compute_pfb
    SUBMODULES {
      {MODELNAME pfb_multichannel_decimator_compute_pfb_compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_Hfu RTLNAME pfb_multichannel_decimator_compute_pfb_compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_Hfu BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_outputs MODELNAME write_outputs RTLNAME pfb_multichannel_decimator_write_outputs}
  {SRCNAME pfb_multichannel_decimator MODELNAME pfb_multichannel_decimator RTLNAME pfb_multichannel_decimator IS_TOP 1
    SUBMODULES {
      {MODELNAME pfb_multichannel_decimator_fifo_w128_d16_A RTLNAME pfb_multichannel_decimator_fifo_w128_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_read_to_compute_U}
      {MODELNAME pfb_multichannel_decimator_fifo_w128_d16_A RTLNAME pfb_multichannel_decimator_fifo_w128_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stream_compute_to_write_U}
      {MODELNAME pfb_multichannel_decimator_start_for_write_outputs_U0 RTLNAME pfb_multichannel_decimator_start_for_write_outputs_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_outputs_U0_U}
      {MODELNAME pfb_multichannel_decimator_gmem_m_axi RTLNAME pfb_multichannel_decimator_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pfb_multichannel_decimator_control_s_axi RTLNAME pfb_multichannel_decimator_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME pfb_multichannel_decimator_control_r_s_axi RTLNAME pfb_multichannel_decimator_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
