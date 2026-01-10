set moduleName unpack
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
set C_modelName {unpack}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_compute_to_fft int 128 regular {fifo 0 volatile }  }
	{ ch0_in int 32 regular {fifo 1 volatile }  }
	{ ch1_in int 32 regular {fifo 1 volatile }  }
	{ ch2_in int 32 regular {fifo 1 volatile }  }
	{ ch3_in int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stream_compute_to_fft", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ch0_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch1_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch2_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch3_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_compute_to_fft_dout sc_in sc_lv 128 signal 0 } 
	{ stream_compute_to_fft_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_compute_to_fft_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_compute_to_fft_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_compute_to_fft_read sc_out sc_logic 1 signal 0 } 
	{ ch0_in_din sc_out sc_lv 32 signal 1 } 
	{ ch0_in_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ ch0_in_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ ch0_in_full_n sc_in sc_logic 1 signal 1 } 
	{ ch0_in_write sc_out sc_logic 1 signal 1 } 
	{ ch1_in_din sc_out sc_lv 32 signal 2 } 
	{ ch1_in_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ ch1_in_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ ch1_in_full_n sc_in sc_logic 1 signal 2 } 
	{ ch1_in_write sc_out sc_logic 1 signal 2 } 
	{ ch2_in_din sc_out sc_lv 32 signal 3 } 
	{ ch2_in_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ ch2_in_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ ch2_in_full_n sc_in sc_logic 1 signal 3 } 
	{ ch2_in_write sc_out sc_logic 1 signal 3 } 
	{ ch3_in_din sc_out sc_lv 32 signal 4 } 
	{ ch3_in_num_data_valid sc_in sc_lv 11 signal 4 } 
	{ ch3_in_fifo_cap sc_in sc_lv 11 signal 4 } 
	{ ch3_in_full_n sc_in sc_logic 1 signal 4 } 
	{ ch3_in_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_compute_to_fft_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "dout" }} , 
 	{ "name": "stream_compute_to_fft_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "num_data_valid" }} , 
 	{ "name": "stream_compute_to_fft_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "fifo_cap" }} , 
 	{ "name": "stream_compute_to_fft_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "empty_n" }} , 
 	{ "name": "stream_compute_to_fft_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "read" }} , 
 	{ "name": "ch0_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch0_in", "role": "din" }} , 
 	{ "name": "ch0_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch0_in", "role": "num_data_valid" }} , 
 	{ "name": "ch0_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch0_in", "role": "fifo_cap" }} , 
 	{ "name": "ch0_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch0_in", "role": "full_n" }} , 
 	{ "name": "ch0_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch0_in", "role": "write" }} , 
 	{ "name": "ch1_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch1_in", "role": "din" }} , 
 	{ "name": "ch1_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch1_in", "role": "num_data_valid" }} , 
 	{ "name": "ch1_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch1_in", "role": "fifo_cap" }} , 
 	{ "name": "ch1_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch1_in", "role": "full_n" }} , 
 	{ "name": "ch1_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch1_in", "role": "write" }} , 
 	{ "name": "ch2_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch2_in", "role": "din" }} , 
 	{ "name": "ch2_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch2_in", "role": "num_data_valid" }} , 
 	{ "name": "ch2_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch2_in", "role": "fifo_cap" }} , 
 	{ "name": "ch2_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_in", "role": "full_n" }} , 
 	{ "name": "ch2_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_in", "role": "write" }} , 
 	{ "name": "ch3_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch3_in", "role": "din" }} , 
 	{ "name": "ch3_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch3_in", "role": "num_data_valid" }} , 
 	{ "name": "ch3_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch3_in", "role": "fifo_cap" }} , 
 	{ "name": "ch3_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3_in", "role": "full_n" }} , 
 	{ "name": "ch3_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3_in", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_compute_to_fft", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "stream_compute_to_fft", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch0_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch0_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch1_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch1_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch2_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch2_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch3_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch3_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dummy_state_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unpack_Pipeline_unpack_loop_fu_30", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "unpack_Pipeline_unpack_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_compute_to_fft", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_compute_to_fft_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch0_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ch0_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch1_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ch1_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch2_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ch2_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch3_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ch3_in_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "unpack_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unpack_Pipeline_unpack_loop_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	unpack {
		stream_compute_to_fft {Type I LastRead 1 FirstWrite -1}
		ch0_in {Type O LastRead -1 FirstWrite 1}
		ch1_in {Type O LastRead -1 FirstWrite 1}
		ch2_in {Type O LastRead -1 FirstWrite 1}
		ch3_in {Type O LastRead -1 FirstWrite 1}
		dummy_state_1 {Type IO LastRead -1 FirstWrite -1}}
	unpack_Pipeline_unpack_loop {
		stream_compute_to_fft {Type I LastRead 1 FirstWrite -1}
		ch0_in {Type O LastRead -1 FirstWrite 1}
		ch1_in {Type O LastRead -1 FirstWrite 1}
		ch2_in {Type O LastRead -1 FirstWrite 1}
		ch3_in {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1027", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_compute_to_fft { ap_fifo {  { stream_compute_to_fft_dout fifo_data_in 0 128 }  { stream_compute_to_fft_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_compute_to_fft_fifo_cap fifo_update 0 5 }  { stream_compute_to_fft_empty_n fifo_status 0 1 }  { stream_compute_to_fft_read fifo_port_we 1 1 } } }
	ch0_in { ap_fifo {  { ch0_in_din fifo_data_in 1 32 }  { ch0_in_num_data_valid fifo_status_num_data_valid 0 11 }  { ch0_in_fifo_cap fifo_update 0 11 }  { ch0_in_full_n fifo_status 0 1 }  { ch0_in_write fifo_port_we 1 1 } } }
	ch1_in { ap_fifo {  { ch1_in_din fifo_data_in 1 32 }  { ch1_in_num_data_valid fifo_status_num_data_valid 0 11 }  { ch1_in_fifo_cap fifo_update 0 11 }  { ch1_in_full_n fifo_status 0 1 }  { ch1_in_write fifo_port_we 1 1 } } }
	ch2_in { ap_fifo {  { ch2_in_din fifo_data_in 1 32 }  { ch2_in_num_data_valid fifo_status_num_data_valid 0 11 }  { ch2_in_fifo_cap fifo_update 0 11 }  { ch2_in_full_n fifo_status 0 1 }  { ch2_in_write fifo_port_we 1 1 } } }
	ch3_in { ap_fifo {  { ch3_in_din fifo_data_in 1 32 }  { ch3_in_num_data_valid fifo_status_num_data_valid 0 11 }  { ch3_in_fifo_cap fifo_update 0 11 }  { ch3_in_full_n fifo_status 0 1 }  { ch3_in_write fifo_port_we 1 1 } } }
}
