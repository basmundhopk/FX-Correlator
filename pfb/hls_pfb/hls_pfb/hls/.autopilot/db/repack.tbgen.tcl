set moduleName repack
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
set C_modelName {repack}
set C_modelType { void 0 }
set C_modelArgList {
	{ ch0_out int 32 regular {fifo 0 volatile }  }
	{ ch1_out int 32 regular {fifo 0 volatile }  }
	{ ch2_out int 32 regular {fifo 0 volatile }  }
	{ ch3_out int 32 regular {fifo 0 volatile }  }
	{ stream_fft_to_write int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ch0_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch1_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch2_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch3_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_fft_to_write", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
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
	{ ch0_out_dout sc_in sc_lv 32 signal 0 } 
	{ ch0_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ ch0_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ ch0_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ ch0_out_read sc_out sc_logic 1 signal 0 } 
	{ ch1_out_dout sc_in sc_lv 32 signal 1 } 
	{ ch1_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ ch1_out_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ ch1_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ ch1_out_read sc_out sc_logic 1 signal 1 } 
	{ ch2_out_dout sc_in sc_lv 32 signal 2 } 
	{ ch2_out_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ ch2_out_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ ch2_out_empty_n sc_in sc_logic 1 signal 2 } 
	{ ch2_out_read sc_out sc_logic 1 signal 2 } 
	{ ch3_out_dout sc_in sc_lv 32 signal 3 } 
	{ ch3_out_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ ch3_out_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ ch3_out_empty_n sc_in sc_logic 1 signal 3 } 
	{ ch3_out_read sc_out sc_logic 1 signal 3 } 
	{ stream_fft_to_write_din sc_out sc_lv 128 signal 4 } 
	{ stream_fft_to_write_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_fft_to_write_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_fft_to_write_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_fft_to_write_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ch0_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch0_out", "role": "dout" }} , 
 	{ "name": "ch0_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch0_out", "role": "num_data_valid" }} , 
 	{ "name": "ch0_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch0_out", "role": "fifo_cap" }} , 
 	{ "name": "ch0_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch0_out", "role": "empty_n" }} , 
 	{ "name": "ch0_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch0_out", "role": "read" }} , 
 	{ "name": "ch1_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch1_out", "role": "dout" }} , 
 	{ "name": "ch1_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch1_out", "role": "num_data_valid" }} , 
 	{ "name": "ch1_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch1_out", "role": "fifo_cap" }} , 
 	{ "name": "ch1_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch1_out", "role": "empty_n" }} , 
 	{ "name": "ch1_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch1_out", "role": "read" }} , 
 	{ "name": "ch2_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch2_out", "role": "dout" }} , 
 	{ "name": "ch2_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch2_out", "role": "num_data_valid" }} , 
 	{ "name": "ch2_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch2_out", "role": "fifo_cap" }} , 
 	{ "name": "ch2_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_out", "role": "empty_n" }} , 
 	{ "name": "ch2_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_out", "role": "read" }} , 
 	{ "name": "ch3_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch3_out", "role": "dout" }} , 
 	{ "name": "ch3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch3_out", "role": "num_data_valid" }} , 
 	{ "name": "ch3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ch3_out", "role": "fifo_cap" }} , 
 	{ "name": "ch3_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3_out", "role": "empty_n" }} , 
 	{ "name": "ch3_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3_out", "role": "read" }} , 
 	{ "name": "stream_fft_to_write_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "din" }} , 
 	{ "name": "stream_fft_to_write_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "num_data_valid" }} , 
 	{ "name": "stream_fft_to_write_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "fifo_cap" }} , 
 	{ "name": "stream_fft_to_write_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "full_n" }} , 
 	{ "name": "stream_fft_to_write_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "repack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1028", "EstimateLatencyMax" : "1028",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ch0_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch0_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch1_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch1_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch2_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch3_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch3_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "stream_fft_to_write", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "stream_fft_to_write", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dummy_state_2", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_repack_Pipeline_repack_loop_fu_30", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "repack_Pipeline_repack_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ch0_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ch0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch1_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ch1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch2_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ch2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch3_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ch3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_fft_to_write", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_fft_to_write_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "repack_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_repack_Pipeline_repack_loop_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	repack {
		ch0_out {Type I LastRead 1 FirstWrite -1}
		ch1_out {Type I LastRead 1 FirstWrite -1}
		ch2_out {Type I LastRead 1 FirstWrite -1}
		ch3_out {Type I LastRead 1 FirstWrite -1}
		stream_fft_to_write {Type O LastRead -1 FirstWrite 2}
		dummy_state_2 {Type IO LastRead -1 FirstWrite -1}}
	repack_Pipeline_repack_loop {
		ch0_out {Type I LastRead 1 FirstWrite -1}
		ch1_out {Type I LastRead 1 FirstWrite -1}
		ch2_out {Type I LastRead 1 FirstWrite -1}
		ch3_out {Type I LastRead 1 FirstWrite -1}
		stream_fft_to_write {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1028", "Max" : "1028"}
	, {"Name" : "Interval", "Min" : "1028", "Max" : "1028"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ch0_out { ap_fifo {  { ch0_out_dout fifo_data_in 0 32 }  { ch0_out_num_data_valid fifo_status_num_data_valid 0 11 }  { ch0_out_fifo_cap fifo_update 0 11 }  { ch0_out_empty_n fifo_status 0 1 }  { ch0_out_read fifo_port_we 1 1 } } }
	ch1_out { ap_fifo {  { ch1_out_dout fifo_data_in 0 32 }  { ch1_out_num_data_valid fifo_status_num_data_valid 0 11 }  { ch1_out_fifo_cap fifo_update 0 11 }  { ch1_out_empty_n fifo_status 0 1 }  { ch1_out_read fifo_port_we 1 1 } } }
	ch2_out { ap_fifo {  { ch2_out_dout fifo_data_in 0 32 }  { ch2_out_num_data_valid fifo_status_num_data_valid 0 11 }  { ch2_out_fifo_cap fifo_update 0 11 }  { ch2_out_empty_n fifo_status 0 1 }  { ch2_out_read fifo_port_we 1 1 } } }
	ch3_out { ap_fifo {  { ch3_out_dout fifo_data_in 0 32 }  { ch3_out_num_data_valid fifo_status_num_data_valid 0 11 }  { ch3_out_fifo_cap fifo_update 0 11 }  { ch3_out_empty_n fifo_status 0 1 }  { ch3_out_read fifo_port_we 1 1 } } }
	stream_fft_to_write { ap_fifo {  { stream_fft_to_write_din fifo_data_in 1 128 }  { stream_fft_to_write_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_fft_to_write_fifo_cap fifo_update 0 5 }  { stream_fft_to_write_full_n fifo_status 0 1 }  { stream_fft_to_write_write fifo_port_we 1 1 } } }
}
