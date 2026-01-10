create_ip -vlnv xilinx.com:ip:xfft -module_name pfb_multichannel_fft_syn_config1_6_core_ip
set_property -dict [list \
    CONFIG.aclken {true} \
    CONFIG.aresetn {true} \
    CONFIG.butterfly_type {use_luts} \
    CONFIG.channels {1} \
    CONFIG.complex_mult_type {use_luts} \
    CONFIG.cyclic_prefix_insertion {0} \
    CONFIG.data_format {fixed_point} \
    CONFIG.implementation_options {pipelined_streaming_io} \
    CONFIG.input_width {16} \
    CONFIG.memory_options_data {block_ram} \
    CONFIG.memory_options_hybrid {0} \
    CONFIG.memory_options_phase_factors {block_ram} \
    CONFIG.memory_options_reorder {block_ram} \
    CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {4} \
    CONFIG.output_ordering {natural_order} \
    CONFIG.ovflo {1} \
    CONFIG.phase_factor_width {16} \
    CONFIG.rounding_modes {truncation} \
    CONFIG.run_time_configurable_transform_length {0} \
    CONFIG.scaling_options {scaled} \
    CONFIG.target_clock_frequency {100} \
    CONFIG.throttle_scheme {nonrealtime} \
    CONFIG.transform_length {1024} \
    CONFIG.xk_index {0} \
] -objects [get_ips pfb_multichannel_fft_syn_config1_6_core_ip]
set_property generate_synth_checkpoint false [get_files pfb_multichannel_fft_syn_config1_6_core_ip.xci]
generate_target {synthesis simulation} [get_files pfb_multichannel_fft_syn_config1_6_core_ip.xci]
