set ModuleHierarchy {[{
"Name" : "pfb_multichannel_decimator","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "read_inputs_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "read_loop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "compute_pfb_U0","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "load_coeffs","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_compute_pfb_Pipeline_compute_loop_fu_168","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "compute_loop","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "write_outputs_U0","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "write_loop","ID" : "9","Type" : "pipeline"},]},]
}]}