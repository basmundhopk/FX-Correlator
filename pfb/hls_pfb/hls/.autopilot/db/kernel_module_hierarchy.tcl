set ModuleHierarchy {[{
"Name" : "pfb_multichannel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "read_inputs_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "read_loop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "decimate_pfb_U0","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "load_coeffs","ID" : "4","Type" : "pipeline"},
		{"Name" : "compute_loop","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "fft_U0","ID" : "6","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "unpack_U0","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "unpack_loop","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "fft_Block_entry13_proc1_U0","ID" : "9","Type" : "sequential"},
		{"Name" : "fft_config1_1_U0","ID" : "10","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_U0","ID" : "11","Type" : "sequential"},]},
		{"Name" : "fft_config1_2_U0","ID" : "12","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_4_U0","ID" : "13","Type" : "sequential"},]},
		{"Name" : "fft_config1_3_U0","ID" : "14","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_5_U0","ID" : "15","Type" : "sequential"},]},
		{"Name" : "fft_config1_U0","ID" : "16","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "fft_syn_config1_6_U0","ID" : "17","Type" : "sequential"},]},
		{"Name" : "repack_U0","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "repack_loop","ID" : "19","Type" : "pipeline"},]},
		{"Name" : "fft_Block_entry19_proc2_U0","ID" : "20","Type" : "sequential"},]},
	{"Name" : "write_outputs_U0","ID" : "21","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "write_loop","ID" : "22","Type" : "pipeline"},]},]
}]}