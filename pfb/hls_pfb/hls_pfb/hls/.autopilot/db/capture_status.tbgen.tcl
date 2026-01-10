set moduleName capture_status
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {capture_status}
set C_modelType { void 0 }
set C_modelArgList {
	{ stat0_s int 8 regular {fifo 0 volatile }  }
	{ stat1_s int 8 regular {fifo 0 volatile }  }
	{ stat2_s int 8 regular {fifo 0 volatile }  }
	{ stat3_s int 8 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stat0_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stat1_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stat2_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stat3_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stat0_s_dout sc_in sc_lv 8 signal 0 } 
	{ stat0_s_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ stat0_s_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ stat0_s_empty_n sc_in sc_logic 1 signal 0 } 
	{ stat0_s_read sc_out sc_logic 1 signal 0 } 
	{ stat1_s_dout sc_in sc_lv 8 signal 1 } 
	{ stat1_s_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ stat1_s_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ stat1_s_empty_n sc_in sc_logic 1 signal 1 } 
	{ stat1_s_read sc_out sc_logic 1 signal 1 } 
	{ stat2_s_dout sc_in sc_lv 8 signal 2 } 
	{ stat2_s_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ stat2_s_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ stat2_s_empty_n sc_in sc_logic 1 signal 2 } 
	{ stat2_s_read sc_out sc_logic 1 signal 2 } 
	{ stat3_s_dout sc_in sc_lv 8 signal 3 } 
	{ stat3_s_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ stat3_s_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ stat3_s_empty_n sc_in sc_logic 1 signal 3 } 
	{ stat3_s_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stat0_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stat0_s", "role": "dout" }} , 
 	{ "name": "stat0_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat0_s", "role": "num_data_valid" }} , 
 	{ "name": "stat0_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat0_s", "role": "fifo_cap" }} , 
 	{ "name": "stat0_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat0_s", "role": "empty_n" }} , 
 	{ "name": "stat0_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat0_s", "role": "read" }} , 
 	{ "name": "stat1_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stat1_s", "role": "dout" }} , 
 	{ "name": "stat1_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat1_s", "role": "num_data_valid" }} , 
 	{ "name": "stat1_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat1_s", "role": "fifo_cap" }} , 
 	{ "name": "stat1_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat1_s", "role": "empty_n" }} , 
 	{ "name": "stat1_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat1_s", "role": "read" }} , 
 	{ "name": "stat2_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stat2_s", "role": "dout" }} , 
 	{ "name": "stat2_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat2_s", "role": "num_data_valid" }} , 
 	{ "name": "stat2_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat2_s", "role": "fifo_cap" }} , 
 	{ "name": "stat2_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat2_s", "role": "empty_n" }} , 
 	{ "name": "stat2_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat2_s", "role": "read" }} , 
 	{ "name": "stat3_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stat3_s", "role": "dout" }} , 
 	{ "name": "stat3_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat3_s", "role": "num_data_valid" }} , 
 	{ "name": "stat3_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stat3_s", "role": "fifo_cap" }} , 
 	{ "name": "stat3_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat3_s", "role": "empty_n" }} , 
 	{ "name": "stat3_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat3_s", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "stat0_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat0_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat1_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat1_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat2_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat2_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stat3_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stat3_s_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	capture_status {
		stat0_s {Type I LastRead 0 FirstWrite -1}
		stat1_s {Type I LastRead 0 FirstWrite -1}
		stat2_s {Type I LastRead 0 FirstWrite -1}
		stat3_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stat0_s { ap_fifo {  { stat0_s_dout fifo_data_in 0 8 }  { stat0_s_num_data_valid fifo_status_num_data_valid 0 3 }  { stat0_s_fifo_cap fifo_update 0 3 }  { stat0_s_empty_n fifo_status 0 1 }  { stat0_s_read fifo_port_we 1 1 } } }
	stat1_s { ap_fifo {  { stat1_s_dout fifo_data_in 0 8 }  { stat1_s_num_data_valid fifo_status_num_data_valid 0 3 }  { stat1_s_fifo_cap fifo_update 0 3 }  { stat1_s_empty_n fifo_status 0 1 }  { stat1_s_read fifo_port_we 1 1 } } }
	stat2_s { ap_fifo {  { stat2_s_dout fifo_data_in 0 8 }  { stat2_s_num_data_valid fifo_status_num_data_valid 0 3 }  { stat2_s_fifo_cap fifo_update 0 3 }  { stat2_s_empty_n fifo_status 0 1 }  { stat2_s_read fifo_port_we 1 1 } } }
	stat3_s { ap_fifo {  { stat3_s_dout fifo_data_in 0 8 }  { stat3_s_num_data_valid fifo_status_num_data_valid 0 3 }  { stat3_s_fifo_cap fifo_update 0 3 }  { stat3_s_empty_n fifo_status 0 1 }  { stat3_s_read fifo_port_we 1 1 } } }
}
