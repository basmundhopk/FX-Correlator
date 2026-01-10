set ModuleHierarchy {[{
"Name" : "pfb_multichannel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "read_inputs_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_read_inputs_Pipeline_read_loop_fu_42","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "read_loop","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "decimate_pfb_U0","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "load_coeffs","ID" : "6","Type" : "pipeline"},]},
		{"Name" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "compute_loop","ID" : "8","Type" : "pipeline"},]},]},
	{"Name" : "fft_U0","ID" : "9","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "unpack_U0","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_unpack_Pipeline_unpack_loop_fu_30","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "unpack_loop","ID" : "12","Type" : "pipeline"},]},]},
		{"Name" : "init_fft_config_U0","ID" : "13","Type" : "sequential"},
		{"Name" : "fft_config1_1_U0","ID" : "14","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_U0","ID" : "15","Type" : "sequential"},]},
		{"Name" : "fft_config1_2_U0","ID" : "16","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_4_U0","ID" : "17","Type" : "sequential"},]},
		{"Name" : "fft_config1_3_U0","ID" : "18","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_5_U0","ID" : "19","Type" : "sequential"},]},
		{"Name" : "fft_config1_U0","ID" : "20","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_6_U0","ID" : "21","Type" : "sequential"},]},
		{"Name" : "repack_U0","ID" : "22","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_repack_Pipeline_repack_loop_fu_30","ID" : "23","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "repack_loop","ID" : "24","Type" : "pipeline"},]},]},
		{"Name" : "capture_status_U0","ID" : "25","Type" : "sequential"},]},
	{"Name" : "write_outputs_U0","ID" : "26","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_write_outputs_Pipeline_write_loop_fu_34","ID" : "27","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "write_loop","ID" : "28","Type" : "pipeline"},]},]},]
}]}