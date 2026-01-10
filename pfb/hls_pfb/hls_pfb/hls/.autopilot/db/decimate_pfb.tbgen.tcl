set moduleName decimate_pfb
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
set C_modelName {decimate_pfb}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_read_to_compute int 128 regular {fifo 0 volatile }  }
	{ stream_compute_to_fft int 128 regular {fifo 1 volatile }  }
	{ gmem int 16 regular {axi_master 0}  }
	{ coeff int 64 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stream_read_to_compute", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "stream_compute_to_fft", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "coeff","offset": { "type": "dynamic","port_name": "coeff","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "coeff", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ stream_read_to_compute_dout sc_in sc_lv 128 signal 0 } 
	{ stream_read_to_compute_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_read_to_compute_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_read_to_compute_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_read_to_compute_read sc_out sc_logic 1 signal 0 } 
	{ stream_compute_to_fft_din sc_out sc_lv 128 signal 1 } 
	{ stream_compute_to_fft_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ stream_compute_to_fft_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ stream_compute_to_fft_full_n sc_in sc_logic 1 signal 1 } 
	{ stream_compute_to_fft_write sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 16 signal 2 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 16 signal 2 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 10 signal 2 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 2 } 
	{ coeff sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "stream_read_to_compute_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "dout" }} , 
 	{ "name": "stream_read_to_compute_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "num_data_valid" }} , 
 	{ "name": "stream_read_to_compute_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "fifo_cap" }} , 
 	{ "name": "stream_read_to_compute_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "empty_n" }} , 
 	{ "name": "stream_read_to_compute_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "read" }} , 
 	{ "name": "stream_compute_to_fft_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "din" }} , 
 	{ "name": "stream_compute_to_fft_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "num_data_valid" }} , 
 	{ "name": "stream_compute_to_fft_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "fifo_cap" }} , 
 	{ "name": "stream_compute_to_fft_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "full_n" }} , 
 	{ "name": "stream_compute_to_fft_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "write" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "coeff", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8"],
		"CDFG" : "decimate_pfb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1035", "EstimateLatencyMax" : "5205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "stream_read_to_compute", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "stream_compute_to_fft", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "stream_compute_to_fft", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "coeff", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff_loaded", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "6", "SubInstance" : "grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "write_bank_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Port" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Inst_start_state" : "74", "Inst_end_state" : "75"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_load_coeffs_fu_151", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "decimate_pfb_Pipeline_load_coeffs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln24", "Type" : "None", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "load_coeffs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_load_coeffs_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "decimate_pfb_Pipeline_compute_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1032", "EstimateLatencyMax" : "1032",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_compute_to_fft", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_compute_to_fft_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "write_bank_idx_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_read_to_compute_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "compute_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3_U", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26_U", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10_U", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25_U", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24_U", "Parent" : "8"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23_U", "Parent" : "8"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9_U", "Parent" : "8"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8_U", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7_U", "Parent" : "8"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30_U", "Parent" : "8"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14_U", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29_U", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28_U", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27_U", "Parent" : "8"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13_U", "Parent" : "8"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12_U", "Parent" : "8"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11_U", "Parent" : "8"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31_U", "Parent" : "8"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18_U", "Parent" : "8"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2_U", "Parent" : "8"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1_U", "Parent" : "8"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_U", "Parent" : "8"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17_U", "Parent" : "8"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16_U", "Parent" : "8"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15_U", "Parent" : "8"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_11ns_13ns_23_1_1_U34", "Parent" : "8"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_12ns_14ns_25_1_1_U35", "Parent" : "8"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_12ns_14ns_25_1_1_U36", "Parent" : "8"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U37", "Parent" : "8"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U38", "Parent" : "8"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U39", "Parent" : "8"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U40", "Parent" : "8"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U41", "Parent" : "8"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U42", "Parent" : "8"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U43", "Parent" : "8"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U44", "Parent" : "8"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U45", "Parent" : "8"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U46", "Parent" : "8"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U47", "Parent" : "8"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U48", "Parent" : "8"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U49", "Parent" : "8"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U50", "Parent" : "8"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U51", "Parent" : "8"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U52", "Parent" : "8"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U53", "Parent" : "8"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U54", "Parent" : "8"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U55", "Parent" : "8"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U56", "Parent" : "8"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U57", "Parent" : "8"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U58", "Parent" : "8"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U59", "Parent" : "8"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U60", "Parent" : "8"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U61", "Parent" : "8"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U62", "Parent" : "8"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U63", "Parent" : "8"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U64", "Parent" : "8"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U65", "Parent" : "8"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U66", "Parent" : "8"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U67", "Parent" : "8"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U68", "Parent" : "8"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U69", "Parent" : "8"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U70", "Parent" : "8"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U71", "Parent" : "8"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U72", "Parent" : "8"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U73", "Parent" : "8"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U74", "Parent" : "8"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U75", "Parent" : "8"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U76", "Parent" : "8"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U77", "Parent" : "8"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U78", "Parent" : "8"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U79", "Parent" : "8"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_32_1_1_U80", "Parent" : "8"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U81", "Parent" : "8"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U82", "Parent" : "8"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U83", "Parent" : "8"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U84", "Parent" : "8"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U85", "Parent" : "8"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U86", "Parent" : "8"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U87", "Parent" : "8"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_32s_33_4_1_U88", "Parent" : "8"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U89", "Parent" : "8"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U90", "Parent" : "8"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U91", "Parent" : "8"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U92", "Parent" : "8"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U93", "Parent" : "8"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U94", "Parent" : "8"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U95", "Parent" : "8"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_33s_33_4_1_U96", "Parent" : "8"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decimate_pfb_Pipeline_compute_loop_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	decimate_pfb {
		stream_read_to_compute {Type I LastRead 1 FirstWrite -1}
		stream_compute_to_fft {Type O LastRead -1 FirstWrite 7}
		gmem {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		coeff_loaded {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type IO LastRead -1 FirstWrite -1}
		write_bank_idx {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15 {Type IO LastRead -1 FirstWrite -1}}
	decimate_pfb_Pipeline_load_coeffs {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln24 {Type I LastRead 0 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type O LastRead -1 FirstWrite 2}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type O LastRead -1 FirstWrite 2}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type O LastRead -1 FirstWrite 2}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type O LastRead -1 FirstWrite 2}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type O LastRead -1 FirstWrite 2}}
	decimate_pfb_Pipeline_compute_loop {
		stream_compute_to_fft {Type O LastRead -1 FirstWrite 7}
		write_bank_idx_load {Type I LastRead 0 FirstWrite -1}
		stream_read_to_compute {Type I LastRead 1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type I LastRead 2 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type I LastRead 2 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type I LastRead 2 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type I LastRead 2 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type I LastRead 2 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16 {Type IO LastRead -1 FirstWrite -1}
		decimate_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1035", "Max" : "5205"}
	, {"Name" : "Interval", "Min" : "1035", "Max" : "5205"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_read_to_compute { ap_fifo {  { stream_read_to_compute_dout fifo_data_in 0 128 }  { stream_read_to_compute_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_read_to_compute_fifo_cap fifo_update 0 5 }  { stream_read_to_compute_empty_n fifo_status 0 1 }  { stream_read_to_compute_read fifo_port_we 1 1 } } }
	stream_compute_to_fft { ap_fifo {  { stream_compute_to_fft_din fifo_data_in 1 128 }  { stream_compute_to_fft_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_compute_to_fft_fifo_cap fifo_update 0 5 }  { stream_compute_to_fft_full_n fifo_status 0 1 }  { stream_compute_to_fft_write fifo_port_we 1 1 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 16 }  { m_axi_gmem_WSTRB STRB 1 2 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 16 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 10 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	coeff { ap_none {  { coeff in_data 0 64 } } }
}
