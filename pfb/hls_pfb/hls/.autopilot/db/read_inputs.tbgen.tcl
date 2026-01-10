set moduleName read_inputs
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {read_inputs}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_data_i0 int 16 regular {axi_s 0 volatile  { din_data_i0 Data } }  }
	{ din_data_q0 int 16 regular {axi_s 0 volatile  { din_data_q0 Data } }  }
	{ din_data_i1 int 16 regular {axi_s 0 volatile  { din_data_i1 Data } }  }
	{ din_data_q1 int 16 regular {axi_s 0 volatile  { din_data_q1 Data } }  }
	{ din_data_i2 int 16 regular {axi_s 0 volatile  { din_data_i2 Data } }  }
	{ din_data_q2 int 16 regular {axi_s 0 volatile  { din_data_q2 Data } }  }
	{ din_data_i3 int 16 regular {axi_s 0 volatile  { din_data_i3 Data } }  }
	{ din_data_q3 int 16 regular {axi_s 0 volatile  { din_data_q3 Data } }  }
	{ stream_read_to_compute int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "din_data_i0", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q0", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i1", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q1", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i3", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q3", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_read_to_compute", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_data_i0_TVALID sc_in sc_logic 1 invld 0 } 
	{ din_data_q0_TVALID sc_in sc_logic 1 invld 1 } 
	{ din_data_i1_TVALID sc_in sc_logic 1 invld 2 } 
	{ din_data_q1_TVALID sc_in sc_logic 1 invld 3 } 
	{ din_data_i2_TVALID sc_in sc_logic 1 invld 4 } 
	{ din_data_q2_TVALID sc_in sc_logic 1 invld 5 } 
	{ din_data_i3_TVALID sc_in sc_logic 1 invld 6 } 
	{ din_data_q3_TVALID sc_in sc_logic 1 invld 7 } 
	{ stream_read_to_compute_din sc_out sc_lv 128 signal 8 } 
	{ stream_read_to_compute_num_data_valid sc_in sc_lv 13 signal 8 } 
	{ stream_read_to_compute_fifo_cap sc_in sc_lv 13 signal 8 } 
	{ stream_read_to_compute_full_n sc_in sc_logic 1 signal 8 } 
	{ stream_read_to_compute_write sc_out sc_logic 1 signal 8 } 
	{ din_data_i0_TDATA sc_in sc_lv 16 signal 0 } 
	{ din_data_i0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ din_data_q0_TDATA sc_in sc_lv 16 signal 1 } 
	{ din_data_q0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ din_data_i1_TDATA sc_in sc_lv 16 signal 2 } 
	{ din_data_i1_TREADY sc_out sc_logic 1 inacc 2 } 
	{ din_data_q1_TDATA sc_in sc_lv 16 signal 3 } 
	{ din_data_q1_TREADY sc_out sc_logic 1 inacc 3 } 
	{ din_data_i2_TDATA sc_in sc_lv 16 signal 4 } 
	{ din_data_i2_TREADY sc_out sc_logic 1 inacc 4 } 
	{ din_data_q2_TDATA sc_in sc_lv 16 signal 5 } 
	{ din_data_q2_TREADY sc_out sc_logic 1 inacc 5 } 
	{ din_data_i3_TDATA sc_in sc_lv 16 signal 6 } 
	{ din_data_i3_TREADY sc_out sc_logic 1 inacc 6 } 
	{ din_data_q3_TDATA sc_in sc_lv 16 signal 7 } 
	{ din_data_q3_TREADY sc_out sc_logic 1 inacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_data_i0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i0", "role": "TVALID" }} , 
 	{ "name": "din_data_q0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q0", "role": "TVALID" }} , 
 	{ "name": "din_data_i1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i1", "role": "TVALID" }} , 
 	{ "name": "din_data_q1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q1", "role": "TVALID" }} , 
 	{ "name": "din_data_i2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i2", "role": "TVALID" }} , 
 	{ "name": "din_data_q2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q2", "role": "TVALID" }} , 
 	{ "name": "din_data_i3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i3", "role": "TVALID" }} , 
 	{ "name": "din_data_q3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q3", "role": "TVALID" }} , 
 	{ "name": "stream_read_to_compute_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "din" }} , 
 	{ "name": "stream_read_to_compute_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "num_data_valid" }} , 
 	{ "name": "stream_read_to_compute_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "fifo_cap" }} , 
 	{ "name": "stream_read_to_compute_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "full_n" }} , 
 	{ "name": "stream_read_to_compute_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_read_to_compute", "role": "write" }} , 
 	{ "name": "din_data_i0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i0", "role": "TDATA" }} , 
 	{ "name": "din_data_i0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i0", "role": "TREADY" }} , 
 	{ "name": "din_data_q0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q0", "role": "TDATA" }} , 
 	{ "name": "din_data_q0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q0", "role": "TREADY" }} , 
 	{ "name": "din_data_i1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i1", "role": "TDATA" }} , 
 	{ "name": "din_data_i1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i1", "role": "TREADY" }} , 
 	{ "name": "din_data_q1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q1", "role": "TDATA" }} , 
 	{ "name": "din_data_q1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q1", "role": "TREADY" }} , 
 	{ "name": "din_data_i2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i2", "role": "TDATA" }} , 
 	{ "name": "din_data_i2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i2", "role": "TREADY" }} , 
 	{ "name": "din_data_q2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q2", "role": "TDATA" }} , 
 	{ "name": "din_data_q2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q2", "role": "TREADY" }} , 
 	{ "name": "din_data_i3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i3", "role": "TDATA" }} , 
 	{ "name": "din_data_i3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i3", "role": "TREADY" }} , 
 	{ "name": "din_data_q3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q3", "role": "TDATA" }} , 
 	{ "name": "din_data_q3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q3", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "read_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "din_data_i0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_i0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_q0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_q0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_i1", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_i1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_q1", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_q1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_i2", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_i2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_q2", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_q2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_i3", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_i3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_data_q3", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_data_q3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_read_to_compute_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_i0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_q0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_i1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_q1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_i2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_q2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_i3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_data_q3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_inputs {
		din_data_i0 {Type I LastRead 0 FirstWrite -1}
		din_data_q0 {Type I LastRead 0 FirstWrite -1}
		din_data_i1 {Type I LastRead 0 FirstWrite -1}
		din_data_q1 {Type I LastRead 0 FirstWrite -1}
		din_data_i2 {Type I LastRead 0 FirstWrite -1}
		din_data_q2 {Type I LastRead 0 FirstWrite -1}
		din_data_i3 {Type I LastRead 0 FirstWrite -1}
		din_data_q3 {Type I LastRead 0 FirstWrite -1}
		stream_read_to_compute {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	din_data_i0 { axis {  { din_data_i0_TVALID in_vld 0 1 }  { din_data_i0_TDATA in_data 0 16 }  { din_data_i0_TREADY in_acc 1 1 } } }
	din_data_q0 { axis {  { din_data_q0_TVALID in_vld 0 1 }  { din_data_q0_TDATA in_data 0 16 }  { din_data_q0_TREADY in_acc 1 1 } } }
	din_data_i1 { axis {  { din_data_i1_TVALID in_vld 0 1 }  { din_data_i1_TDATA in_data 0 16 }  { din_data_i1_TREADY in_acc 1 1 } } }
	din_data_q1 { axis {  { din_data_q1_TVALID in_vld 0 1 }  { din_data_q1_TDATA in_data 0 16 }  { din_data_q1_TREADY in_acc 1 1 } } }
	din_data_i2 { axis {  { din_data_i2_TVALID in_vld 0 1 }  { din_data_i2_TDATA in_data 0 16 }  { din_data_i2_TREADY in_acc 1 1 } } }
	din_data_q2 { axis {  { din_data_q2_TVALID in_vld 0 1 }  { din_data_q2_TDATA in_data 0 16 }  { din_data_q2_TREADY in_acc 1 1 } } }
	din_data_i3 { axis {  { din_data_i3_TVALID in_vld 0 1 }  { din_data_i3_TDATA in_data 0 16 }  { din_data_i3_TREADY in_acc 1 1 } } }
	din_data_q3 { axis {  { din_data_q3_TVALID in_vld 0 1 }  { din_data_q3_TDATA in_data 0 16 }  { din_data_q3_TREADY in_acc 1 1 } } }
	stream_read_to_compute { ap_fifo {  { stream_read_to_compute_din fifo_data_in 1 128 }  { stream_read_to_compute_num_data_valid fifo_status_num_data_valid 0 13 }  { stream_read_to_compute_fifo_cap fifo_update 0 13 }  { stream_read_to_compute_full_n fifo_status 0 1 }  { stream_read_to_compute_write fifo_port_we 1 1 } } }
}
