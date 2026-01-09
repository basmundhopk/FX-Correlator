set moduleName compute_pfb_Pipeline_compute_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {compute_pfb_Pipeline_compute_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_compute_to_write int 128 regular {fifo 1 volatile }  }
	{ stream_read_to_compute int 128 regular {fifo 0 volatile }  }
	{ write_bank_idx_load int 2 regular  }
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 int 16 regular {array 820 { 1 1 } 1 1 } {global 0}  }
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 int 16 regular {array 820 { 1 1 } 1 1 } {global 0}  }
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 int 16 regular {array 820 { 1 1 } 1 1 } {global 0}  }
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 int 16 regular {array 820 { 1 1 } 1 1 } {global 0}  }
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs int 16 regular {array 820 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stream_compute_to_write", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_read_to_compute", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "write_bank_idx_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_compute_to_write_din sc_out sc_lv 128 signal 0 } 
	{ stream_compute_to_write_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_compute_to_write_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_compute_to_write_full_n sc_in sc_logic 1 signal 0 } 
	{ stream_compute_to_write_write sc_out sc_logic 1 signal 0 } 
	{ stream_read_to_compute_dout sc_in sc_lv 128 signal 1 } 
	{ stream_read_to_compute_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ stream_read_to_compute_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ stream_read_to_compute_empty_n sc_in sc_logic 1 signal 1 } 
	{ stream_read_to_compute_read sc_out sc_logic 1 signal 1 } 
	{ write_bank_idx_load sc_in sc_lv 2 signal 2 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address0 sc_out sc_lv 10 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q0 sc_in sc_lv 16 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address1 sc_out sc_lv 10 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q1 sc_in sc_lv 16 signal 3 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address0 sc_out sc_lv 10 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q0 sc_in sc_lv 16 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address1 sc_out sc_lv 10 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q1 sc_in sc_lv 16 signal 4 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address0 sc_out sc_lv 10 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q0 sc_in sc_lv 16 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address1 sc_out sc_lv 10 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q1 sc_in sc_lv 16 signal 5 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address0 sc_out sc_lv 10 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q0 sc_in sc_lv 16 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address1 sc_out sc_lv 10 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q1 sc_in sc_lv 16 signal 6 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address0 sc_out sc_lv 10 signal 7 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce0 sc_out sc_logic 1 signal 7 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q0 sc_in sc_lv 16 signal 7 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address1 sc_out sc_lv 10 signal 7 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce1 sc_out sc_logic 1 signal 7 } 
	{ compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q1 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_compute_to_write_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_compute_to_write", "role": "din" }} , 
 	{ "name": "stream_compute_to_write_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_write", "role": "num_data_valid" }} , 
 	{ "name": "stream_compute_to_write_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_write", "role": "fifo_cap" }} , 
 	{ "name": "stream_compute_to_write_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_write", "role": "full_n" }} , 
 	{ "name": "stream_compute_to_write_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_write", "role": "write" }} , 
 	{ "name": "stream_read_to_compute_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "dout" }} , 
 	{ "name": "stream_read_to_compute_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "num_data_valid" }} , 
 	{ "name": "stream_read_to_compute_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "fifo_cap" }} , 
 	{ "name": "stream_read_to_compute_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "empty_n" }} , 
 	{ "name": "stream_read_to_compute_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "read" }} , 
 	{ "name": "write_bank_idx_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_bank_idx_load", "role": "default" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "address0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "ce0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "q0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "address1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "ce1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "role": "q1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "address0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "ce0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "q0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "address1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "ce1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "role": "q1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "address0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "ce0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "q0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "address1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "ce1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "role": "q1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "address0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "ce0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "q0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "address1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "ce1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "role": "q1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "address0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "ce0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "q0" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "address1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "ce1" }} , 
 	{ "name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95"],
		"CDFG" : "compute_pfb_Pipeline_compute_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1031", "EstimateLatencyMax" : "1031",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_compute_to_write", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_compute_to_write_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_read_to_compute_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "write_bank_idx_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "compute_loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state9"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11ns_13ns_23_1_1_U25", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_14ns_25_1_1_U26", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_14ns_25_1_1_U27", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U28", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U29", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U30", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U31", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U32", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U33", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U34", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U35", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U36", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U37", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U38", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U39", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U40", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U41", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U42", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U43", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U44", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U45", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U46", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U47", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U48", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U49", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U50", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U51", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U52", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U53", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U54", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U55", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U56", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U57", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U58", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U59", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U60", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U61", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U62", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U63", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U64", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U65", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U66", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U67", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U68", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U69", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U70", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U71", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U72", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U73", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U74", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U75", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U76", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U77", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U78", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U79", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U80", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U81", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U82", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U83", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U84", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U85", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U86", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U87", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_pfb_Pipeline_compute_loop {
		stream_compute_to_write {Type O LastRead -1 FirstWrite 7}
		stream_read_to_compute {Type I LastRead 2 FirstWrite -1}
		write_bank_idx_load {Type I LastRead 0 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type I LastRead 4 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type I LastRead 4 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type I LastRead 4 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type I LastRead 4 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type I LastRead 4 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1031", "Max" : "1031"}
	, {"Name" : "Interval", "Min" : "1031", "Max" : "1031"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	stream_compute_to_write { ap_fifo {  { stream_compute_to_write_din fifo_data_in 1 128 }  { stream_compute_to_write_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_compute_to_write_fifo_cap fifo_update 0 5 }  { stream_compute_to_write_full_n fifo_status 0 1 }  { stream_compute_to_write_write fifo_port_we 1 1 } } }
	stream_read_to_compute { ap_fifo {  { stream_read_to_compute_dout fifo_data_in 0 128 }  { stream_read_to_compute_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_read_to_compute_fifo_cap fifo_update 0 5 }  { stream_read_to_compute_empty_n fifo_status 0 1 }  { stream_read_to_compute_read fifo_port_we 1 1 } } }
	write_bank_idx_load { ap_none {  { write_bank_idx_load in_data 0 2 } } }
	compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 { ap_memory {  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address0 mem_address 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce0 mem_ce 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q0 in_data 0 16 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_address1 MemPortADDR2 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_ce1 MemPortCE2 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_q1 in_data 0 16 } } }
	compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 { ap_memory {  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address0 mem_address 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce0 mem_ce 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q0 in_data 0 16 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_address1 MemPortADDR2 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_ce1 MemPortCE2 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_q1 in_data 0 16 } } }
	compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 { ap_memory {  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address0 mem_address 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce0 mem_ce 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q0 in_data 0 16 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_address1 MemPortADDR2 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_ce1 MemPortCE2 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_q1 in_data 0 16 } } }
	compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 { ap_memory {  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address0 mem_address 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce0 mem_ce 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q0 in_data 0 16 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_address1 MemPortADDR2 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_ce1 MemPortCE2 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_q1 in_data 0 16 } } }
	compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs { ap_memory {  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address0 mem_address 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce0 mem_ce 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q0 in_data 0 16 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_address1 MemPortADDR2 1 10 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_ce1 MemPortCE2 1 1 }  { compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_q1 in_data 0 16 } } }
}
