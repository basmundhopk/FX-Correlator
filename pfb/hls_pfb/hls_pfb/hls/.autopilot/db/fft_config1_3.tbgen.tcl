set moduleName fft_config1_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fft<config1>.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ ch2_in int 32 regular {fifo 0 volatile }  }
	{ ch2_out int 32 regular {fifo 1 volatile }  }
	{ stat2_s int 8 regular {fifo 1 volatile }  }
	{ cfg2_s int 16 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "ch2_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch2_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stat2_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cfg2_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ch2_in_dout sc_in sc_lv 32 signal 0 } 
	{ ch2_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ ch2_in_read sc_out sc_logic 1 signal 0 } 
	{ ch2_out_din sc_out sc_lv 32 signal 1 } 
	{ ch2_out_full_n sc_in sc_logic 1 signal 1 } 
	{ ch2_out_write sc_out sc_logic 1 signal 1 } 
	{ stat2_s_din sc_out sc_lv 8 signal 2 } 
	{ stat2_s_full_n sc_in sc_logic 1 signal 2 } 
	{ stat2_s_write sc_out sc_logic 1 signal 2 } 
	{ cfg2_s_dout sc_in sc_lv 16 signal 3 } 
	{ cfg2_s_empty_n sc_in sc_logic 1 signal 3 } 
	{ cfg2_s_read sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "ch2_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch2_in", "role": "dout" }} , 
 	{ "name": "ch2_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_in", "role": "empty_n" }} , 
 	{ "name": "ch2_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_in", "role": "read" }} , 
 	{ "name": "ch2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch2_out", "role": "din" }} , 
 	{ "name": "ch2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_out", "role": "full_n" }} , 
 	{ "name": "ch2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_out", "role": "write" }} , 
 	{ "name": "stat2_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stat2_s", "role": "din" }} , 
 	{ "name": "stat2_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat2_s", "role": "full_n" }} , 
 	{ "name": "stat2_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stat2_s", "role": "write" }} , 
 	{ "name": "cfg2_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cfg2_s", "role": "dout" }} , 
 	{ "name": "cfg2_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg2_s", "role": "empty_n" }} , 
 	{ "name": "cfg2_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg2_s", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"ID" : "1", "Name" : "fft_syn_config1_5_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "fft_syn_config1_5_U0"}],
		"Port" : [
			{"Name" : "ch2_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "xn"}]},
			{"Name" : "ch2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "xk"}]},
			{"Name" : "stat2_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "status_data_V"}]},
			{"Name" : "cfg2_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_config1_5_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_syn_config1_5_U0", "Parent" : "0",
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
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []}]}


set ArgLastReadFirstWriteLatency {
	fft_config1_3 {
		ch2_in {Type I LastRead -1 FirstWrite -1}
		ch2_out {Type O LastRead -1 FirstWrite -1}
		stat2_s {Type O LastRead -1 FirstWrite -1}
		cfg2_s {Type I LastRead -1 FirstWrite -1}}
	fft_syn_config1_5 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3195", "Max" : "3195"}
	, {"Name" : "Interval", "Min" : "3196", "Max" : "3196"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ch2_in { ap_fifo {  { ch2_in_dout fifo_data_in 0 32 }  { ch2_in_empty_n fifo_status 0 1 }  { ch2_in_read fifo_port_we 1 1 } } }
	ch2_out { ap_fifo {  { ch2_out_din fifo_data_in 1 32 }  { ch2_out_full_n fifo_status 0 1 }  { ch2_out_write fifo_port_we 1 1 } } }
	stat2_s { ap_fifo {  { stat2_s_din fifo_data_in 1 8 }  { stat2_s_full_n fifo_status 0 1 }  { stat2_s_write fifo_port_we 1 1 } } }
	cfg2_s { ap_fifo {  { cfg2_s_dout fifo_data_in 0 16 }  { cfg2_s_empty_n fifo_status 0 1 }  { cfg2_s_read fifo_port_we 1 1 } } }
}
