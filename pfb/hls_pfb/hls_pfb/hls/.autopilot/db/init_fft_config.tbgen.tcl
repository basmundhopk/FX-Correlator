set moduleName init_fft_config
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
set C_modelName {init_fft_config}
set C_modelType { void 0 }
set C_modelArgList {
	{ cfg0_s int 16 regular {fifo 1 volatile }  }
	{ cfg1_s int 16 regular {fifo 1 volatile }  }
	{ cfg2_s int 16 regular {fifo 1 volatile }  }
	{ cfg3_s int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "cfg0_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cfg1_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cfg2_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cfg3_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
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
	{ cfg0_s_din sc_out sc_lv 16 signal 0 } 
	{ cfg0_s_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cfg0_s_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cfg0_s_full_n sc_in sc_logic 1 signal 0 } 
	{ cfg0_s_write sc_out sc_logic 1 signal 0 } 
	{ cfg1_s_din sc_out sc_lv 16 signal 1 } 
	{ cfg1_s_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cfg1_s_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ cfg1_s_full_n sc_in sc_logic 1 signal 1 } 
	{ cfg1_s_write sc_out sc_logic 1 signal 1 } 
	{ cfg2_s_din sc_out sc_lv 16 signal 2 } 
	{ cfg2_s_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cfg2_s_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cfg2_s_full_n sc_in sc_logic 1 signal 2 } 
	{ cfg2_s_write sc_out sc_logic 1 signal 2 } 
	{ cfg3_s_din sc_out sc_lv 16 signal 3 } 
	{ cfg3_s_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ cfg3_s_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ cfg3_s_full_n sc_in sc_logic 1 signal 3 } 
	{ cfg3_s_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "cfg0_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cfg0_s", "role": "din" }} , 
 	{ "name": "cfg0_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg0_s", "role": "num_data_valid" }} , 
 	{ "name": "cfg0_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg0_s", "role": "fifo_cap" }} , 
 	{ "name": "cfg0_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg0_s", "role": "full_n" }} , 
 	{ "name": "cfg0_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg0_s", "role": "write" }} , 
 	{ "name": "cfg1_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cfg1_s", "role": "din" }} , 
 	{ "name": "cfg1_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg1_s", "role": "num_data_valid" }} , 
 	{ "name": "cfg1_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg1_s", "role": "fifo_cap" }} , 
 	{ "name": "cfg1_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg1_s", "role": "full_n" }} , 
 	{ "name": "cfg1_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg1_s", "role": "write" }} , 
 	{ "name": "cfg2_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cfg2_s", "role": "din" }} , 
 	{ "name": "cfg2_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg2_s", "role": "num_data_valid" }} , 
 	{ "name": "cfg2_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg2_s", "role": "fifo_cap" }} , 
 	{ "name": "cfg2_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg2_s", "role": "full_n" }} , 
 	{ "name": "cfg2_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg2_s", "role": "write" }} , 
 	{ "name": "cfg3_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cfg3_s", "role": "din" }} , 
 	{ "name": "cfg3_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg3_s", "role": "num_data_valid" }} , 
 	{ "name": "cfg3_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg3_s", "role": "fifo_cap" }} , 
 	{ "name": "cfg3_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg3_s", "role": "full_n" }} , 
 	{ "name": "cfg3_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg3_s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "cfg0_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg0_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg1_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg1_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg2_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg2_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cfg3_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cfg3_s_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	init_fft_config {
		cfg0_s {Type O LastRead -1 FirstWrite 0}
		cfg1_s {Type O LastRead -1 FirstWrite 0}
		cfg2_s {Type O LastRead -1 FirstWrite 0}
		cfg3_s {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cfg0_s { ap_fifo {  { cfg0_s_din fifo_data_in 1 16 }  { cfg0_s_num_data_valid fifo_status_num_data_valid 0 3 }  { cfg0_s_fifo_cap fifo_update 0 3 }  { cfg0_s_full_n fifo_status 0 1 }  { cfg0_s_write fifo_port_we 1 1 } } }
	cfg1_s { ap_fifo {  { cfg1_s_din fifo_data_in 1 16 }  { cfg1_s_num_data_valid fifo_status_num_data_valid 0 3 }  { cfg1_s_fifo_cap fifo_update 0 3 }  { cfg1_s_full_n fifo_status 0 1 }  { cfg1_s_write fifo_port_we 1 1 } } }
	cfg2_s { ap_fifo {  { cfg2_s_din fifo_data_in 1 16 }  { cfg2_s_num_data_valid fifo_status_num_data_valid 0 3 }  { cfg2_s_fifo_cap fifo_update 0 3 }  { cfg2_s_full_n fifo_status 0 1 }  { cfg2_s_write fifo_port_we 1 1 } } }
	cfg3_s { ap_fifo {  { cfg3_s_din fifo_data_in 1 16 }  { cfg3_s_num_data_valid fifo_status_num_data_valid 0 3 }  { cfg3_s_fifo_cap fifo_update 0 3 }  { cfg3_s_full_n fifo_status 0 1 }  { cfg3_s_write fifo_port_we 1 1 } } }
}
