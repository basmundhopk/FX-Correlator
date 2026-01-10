set moduleName fft
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_compute_to_fft int 128 regular {fifo 0 volatile }  }
	{ stream_fft_to_write int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stream_compute_to_fft", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "stream_fft_to_write", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ stream_compute_to_fft_dout sc_in sc_lv 128 signal 0 } 
	{ stream_compute_to_fft_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_compute_to_fft_read sc_out sc_logic 1 signal 0 } 
	{ stream_fft_to_write_din sc_out sc_lv 128 signal 1 } 
	{ stream_fft_to_write_full_n sc_in sc_logic 1 signal 1 } 
	{ stream_fft_to_write_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "stream_compute_to_fft_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "dout" }} , 
 	{ "name": "stream_compute_to_fft_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "empty_n" }} , 
 	{ "name": "stream_compute_to_fft_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_compute_to_fft", "role": "read" }} , 
 	{ "name": "stream_fft_to_write_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "din" }} , 
 	{ "name": "stream_fft_to_write_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "full_n" }} , 
 	{ "name": "stream_fft_to_write_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_fft_to_write", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "7", "9", "11", "13", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3198", "EstimateLatencyMax" : "3198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "init_fft_config_U0"},
			{"ID" : "2", "Name" : "unpack_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "repack_U0"},
			{"ID" : "16", "Name" : "capture_status_U0"}],
		"Port" : [
			{"Name" : "stream_compute_to_fft", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "stream_compute_to_fft"}]},
			{"Name" : "stream_fft_to_write", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "repack_U0", "Port" : "stream_fft_to_write"}]},
			{"Name" : "dummy_state_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "dummy_state_1"}]},
			{"Name" : "dummy_state_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "repack_U0", "Port" : "dummy_state_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_fft_config_U0", "Parent" : "0",
		"CDFG" : "init_fft_config",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg0_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg0_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg1_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7","8"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg1_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg2_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9","10"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg2_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg3_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","12"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg3_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unpack_U0", "Parent" : "0", "Child" : ["3"],
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
					{"ID" : "3", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "stream_compute_to_fft", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch0_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "21", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch0_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch1_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7","8"], "DependentChan" : "22", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch1_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch2_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9","10"], "DependentChan" : "23", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch2_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch3_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","12"], "DependentChan" : "24", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_unpack_Pipeline_unpack_loop_fu_30", "Port" : "ch3_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dummy_state_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.grp_unpack_Pipeline_unpack_loop_fu_30", "Parent" : "2", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.unpack_U0.grp_unpack_Pipeline_unpack_loop_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config1_1_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "fft_config1_1",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "fft_syn_config1_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "fft_syn_config1_U0"}],
		"Port" : [
			{"Name" : "ch0_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "21", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_syn_config1_U0", "Port" : "xn"}]},
			{"Name" : "ch0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "25", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_syn_config1_U0", "Port" : "xk"}]},
			{"Name" : "stat0_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_syn_config1_U0", "Port" : "status_data_V"}]},
			{"Name" : "cfg0_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_syn_config1_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_config1_1_U0.fft_syn_config1_U0", "Parent" : "5",
		"CDFG" : "fft_syn_config1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "21", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "25", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config1_2_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "fft_config1_2",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "fft_syn_config1_4_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "fft_syn_config1_4_U0"}],
		"Port" : [
			{"Name" : "ch1_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "22", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "fft_syn_config1_4_U0", "Port" : "xn"}]},
			{"Name" : "ch1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "27", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "fft_syn_config1_4_U0", "Port" : "xk"}]},
			{"Name" : "stat1_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "fft_syn_config1_4_U0", "Port" : "status_data_V"}]},
			{"Name" : "cfg1_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "fft_syn_config1_4_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_config1_2_U0.fft_syn_config1_4_U0", "Parent" : "7",
		"CDFG" : "fft_syn_config1_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "22", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "27", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config1_3_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "fft_config1_3",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "10", "Name" : "fft_syn_config1_5_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "fft_syn_config1_5_U0"}],
		"Port" : [
			{"Name" : "ch2_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "23", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "xn"}]},
			{"Name" : "ch2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "29", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "xk"}]},
			{"Name" : "stat2_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "status_data_V"}]},
			{"Name" : "cfg2_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_config1_3_U0.fft_syn_config1_5_U0", "Parent" : "9",
		"CDFG" : "fft_syn_config1_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "23", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "29", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config1_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "fft_config1_s",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "12", "Name" : "fft_syn_config1_6_U0"}],
		"OutputProcess" : [
			{"ID" : "12", "Name" : "fft_syn_config1_6_U0"}],
		"Port" : [
			{"Name" : "ch3_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "24", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_syn_config1_6_U0", "Port" : "xn"}]},
			{"Name" : "ch3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "31", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_syn_config1_6_U0", "Port" : "xk"}]},
			{"Name" : "stat3_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_syn_config1_6_U0", "Port" : "status_data_V"}]},
			{"Name" : "cfg3_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "fft_syn_config1_6_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_config1_U0.fft_syn_config1_6_U0", "Parent" : "11",
		"CDFG" : "fft_syn_config1_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "24", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "31", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.repack_U0", "Parent" : "0", "Child" : ["14"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_repack_U0_U",
		"Port" : [
			{"Name" : "ch0_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "25", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch0_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch1_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7","8"], "DependentChan" : "27", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch1_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9","10"], "DependentChan" : "29", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch2_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ch3_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11","12"], "DependentChan" : "31", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "ch3_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "stream_fft_to_write", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_repack_Pipeline_repack_loop_fu_30", "Port" : "stream_fft_to_write", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dummy_state_2", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_repack_loop_fu_30", "Parent" : "13", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_repack_loop_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.capture_status_U0", "Parent" : "0",
		"CDFG" : "capture_status",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_capture_status_U0_U",
		"Port" : [
			{"Name" : "stat0_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat0_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat1_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7","8"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat1_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat2_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9","10"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat2_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat3_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11","12"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat3_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cfg0_s_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cfg1_s_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cfg2_s_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cfg3_s_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch0_in_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch1_in_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch2_in_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch3_in_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch0_out_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat0_s_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch1_out_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat1_s_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch2_out_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat2_s_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch3_out_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat3_s_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_repack_U0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_capture_status_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		stream_compute_to_fft {Type I LastRead 1 FirstWrite -1}
		stream_fft_to_write {Type O LastRead -1 FirstWrite 2}
		dummy_state_1 {Type IO LastRead -1 FirstWrite -1}
		dummy_state_2 {Type IO LastRead -1 FirstWrite -1}}
	init_fft_config {
		cfg0_s {Type O LastRead -1 FirstWrite 0}
		cfg1_s {Type O LastRead -1 FirstWrite 0}
		cfg2_s {Type O LastRead -1 FirstWrite 0}
		cfg3_s {Type O LastRead -1 FirstWrite 0}}
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
		ch3_in {Type O LastRead -1 FirstWrite 1}}
	fft_config1_1 {
		ch0_in {Type I LastRead -1 FirstWrite -1}
		ch0_out {Type O LastRead -1 FirstWrite -1}
		stat0_s {Type O LastRead -1 FirstWrite -1}
		cfg0_s {Type I LastRead -1 FirstWrite -1}}
	fft_syn_config1_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	fft_config1_2 {
		ch1_in {Type I LastRead -1 FirstWrite -1}
		ch1_out {Type O LastRead -1 FirstWrite -1}
		stat1_s {Type O LastRead -1 FirstWrite -1}
		cfg1_s {Type I LastRead -1 FirstWrite -1}}
	fft_syn_config1_4 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	fft_config1_3 {
		ch2_in {Type I LastRead -1 FirstWrite -1}
		ch2_out {Type O LastRead -1 FirstWrite -1}
		stat2_s {Type O LastRead -1 FirstWrite -1}
		cfg2_s {Type I LastRead -1 FirstWrite -1}}
	fft_syn_config1_5 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	fft_config1_s {
		ch3_in {Type I LastRead -1 FirstWrite -1}
		ch3_out {Type O LastRead -1 FirstWrite -1}
		stat3_s {Type O LastRead -1 FirstWrite -1}
		cfg3_s {Type I LastRead -1 FirstWrite -1}}
	fft_syn_config1_6 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
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
		stream_fft_to_write {Type O LastRead -1 FirstWrite 2}}
	capture_status {
		stat0_s {Type I LastRead 0 FirstWrite -1}
		stat1_s {Type I LastRead 0 FirstWrite -1}
		stat2_s {Type I LastRead 0 FirstWrite -1}
		stat3_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3198", "Max" : "3198"}
	, {"Name" : "Interval", "Min" : "3196", "Max" : "3196"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_compute_to_fft { ap_fifo {  { stream_compute_to_fft_dout fifo_data_in 0 128 }  { stream_compute_to_fft_empty_n fifo_status 0 1 }  { stream_compute_to_fft_read fifo_port_we 1 1 } } }
	stream_fft_to_write { ap_fifo {  { stream_fft_to_write_din fifo_data_in 1 128 }  { stream_fft_to_write_full_n fifo_status 0 1 }  { stream_fft_to_write_write fifo_port_we 1 1 } } }
}
