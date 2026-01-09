set moduleName pfb_multichannel_decimator
set isTopModule 1
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
set C_modelName {pfb_multichannel_decimator}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 16 regular {axi_master 0}  }
	{ din_data_i0 int 16 regular {axi_s 0 volatile  { din_data_i0 Data } }  }
	{ din_data_q0 int 16 regular {axi_s 0 volatile  { din_data_q0 Data } }  }
	{ din_data_i1 int 16 regular {axi_s 0 volatile  { din_data_i1 Data } }  }
	{ din_data_q1 int 16 regular {axi_s 0 volatile  { din_data_q1 Data } }  }
	{ din_data_i2 int 16 regular {axi_s 0 volatile  { din_data_i2 Data } }  }
	{ din_data_q2 int 16 regular {axi_s 0 volatile  { din_data_q2 Data } }  }
	{ din_data_i3 int 16 regular {axi_s 0 volatile  { din_data_i3 Data } }  }
	{ din_data_q3 int 16 regular {axi_s 0 volatile  { din_data_q3 Data } }  }
	{ dout_data_0 int 32 regular {axi_s 1 volatile  { dout_data_0 Data } }  }
	{ dout_data_1 int 32 regular {axi_s 1 volatile  { dout_data_1 Data } }  }
	{ dout_data_2 int 32 regular {axi_s 1 volatile  { dout_data_2 Data } }  }
	{ dout_data_3 int 32 regular {axi_s 1 volatile  { dout_data_3 Data } }  }
	{ coeff int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "coeff","offset": { "type": "dynamic","port_name": "coeff","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "din_data_i0", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q0", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i1", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q1", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_i3", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "din_data_q3", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dout_data_0", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dout_data_1", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dout_data_2", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dout_data_3", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coeff", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ din_data_i0_TDATA sc_in sc_lv 16 signal 1 } 
	{ din_data_q0_TDATA sc_in sc_lv 16 signal 2 } 
	{ din_data_i1_TDATA sc_in sc_lv 16 signal 3 } 
	{ din_data_q1_TDATA sc_in sc_lv 16 signal 4 } 
	{ din_data_i2_TDATA sc_in sc_lv 16 signal 5 } 
	{ din_data_q2_TDATA sc_in sc_lv 16 signal 6 } 
	{ din_data_i3_TDATA sc_in sc_lv 16 signal 7 } 
	{ din_data_q3_TDATA sc_in sc_lv 16 signal 8 } 
	{ dout_data_0_TDATA sc_out sc_lv 32 signal 9 } 
	{ dout_data_1_TDATA sc_out sc_lv 32 signal 10 } 
	{ dout_data_2_TDATA sc_out sc_lv 32 signal 11 } 
	{ dout_data_3_TDATA sc_out sc_lv 32 signal 12 } 
	{ din_data_i0_TVALID sc_in sc_logic 1 invld 1 } 
	{ din_data_i0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ din_data_q0_TVALID sc_in sc_logic 1 invld 2 } 
	{ din_data_q0_TREADY sc_out sc_logic 1 inacc 2 } 
	{ din_data_i1_TVALID sc_in sc_logic 1 invld 3 } 
	{ din_data_i1_TREADY sc_out sc_logic 1 inacc 3 } 
	{ din_data_q1_TVALID sc_in sc_logic 1 invld 4 } 
	{ din_data_q1_TREADY sc_out sc_logic 1 inacc 4 } 
	{ din_data_i2_TVALID sc_in sc_logic 1 invld 5 } 
	{ din_data_i2_TREADY sc_out sc_logic 1 inacc 5 } 
	{ din_data_q2_TVALID sc_in sc_logic 1 invld 6 } 
	{ din_data_q2_TREADY sc_out sc_logic 1 inacc 6 } 
	{ din_data_i3_TVALID sc_in sc_logic 1 invld 7 } 
	{ din_data_i3_TREADY sc_out sc_logic 1 inacc 7 } 
	{ din_data_q3_TVALID sc_in sc_logic 1 invld 8 } 
	{ din_data_q3_TREADY sc_out sc_logic 1 inacc 8 } 
	{ dout_data_0_TVALID sc_out sc_logic 1 outvld 9 } 
	{ dout_data_0_TREADY sc_in sc_logic 1 outacc 9 } 
	{ dout_data_1_TVALID sc_out sc_logic 1 outvld 10 } 
	{ dout_data_1_TREADY sc_in sc_logic 1 outacc 10 } 
	{ dout_data_2_TVALID sc_out sc_logic 1 outvld 11 } 
	{ dout_data_2_TREADY sc_in sc_logic 1 outacc 11 } 
	{ dout_data_3_TVALID sc_out sc_logic 1 outvld 12 } 
	{ dout_data_3_TREADY sc_in sc_logic 1 outacc 12 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"pfb_multichannel_decimator","role":"start","value":"0","valid_bit":"0"},{"name":"pfb_multichannel_decimator","role":"continue","value":"0","valid_bit":"4"},{"name":"pfb_multichannel_decimator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"pfb_multichannel_decimator","role":"start","value":"0","valid_bit":"0"},{"name":"pfb_multichannel_decimator","role":"done","value":"0","valid_bit":"1"},{"name":"pfb_multichannel_decimator","role":"idle","value":"0","valid_bit":"2"},{"name":"pfb_multichannel_decimator","role":"ready","value":"0","valid_bit":"3"},{"name":"pfb_multichannel_decimator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } },
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"coeff","role":"data","value":"16"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "din_data_i0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i0", "role": "TDATA" }} , 
 	{ "name": "din_data_q0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q0", "role": "TDATA" }} , 
 	{ "name": "din_data_i1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i1", "role": "TDATA" }} , 
 	{ "name": "din_data_q1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q1", "role": "TDATA" }} , 
 	{ "name": "din_data_i2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i2", "role": "TDATA" }} , 
 	{ "name": "din_data_q2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q2", "role": "TDATA" }} , 
 	{ "name": "din_data_i3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_i3", "role": "TDATA" }} , 
 	{ "name": "din_data_q3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_data_q3", "role": "TDATA" }} , 
 	{ "name": "dout_data_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_data_0", "role": "TDATA" }} , 
 	{ "name": "dout_data_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_data_1", "role": "TDATA" }} , 
 	{ "name": "dout_data_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_data_2", "role": "TDATA" }} , 
 	{ "name": "dout_data_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_data_3", "role": "TDATA" }} , 
 	{ "name": "din_data_i0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i0", "role": "TVALID" }} , 
 	{ "name": "din_data_i0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i0", "role": "TREADY" }} , 
 	{ "name": "din_data_q0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q0", "role": "TVALID" }} , 
 	{ "name": "din_data_q0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q0", "role": "TREADY" }} , 
 	{ "name": "din_data_i1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i1", "role": "TVALID" }} , 
 	{ "name": "din_data_i1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i1", "role": "TREADY" }} , 
 	{ "name": "din_data_q1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q1", "role": "TVALID" }} , 
 	{ "name": "din_data_q1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q1", "role": "TREADY" }} , 
 	{ "name": "din_data_i2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i2", "role": "TVALID" }} , 
 	{ "name": "din_data_i2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i2", "role": "TREADY" }} , 
 	{ "name": "din_data_q2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q2", "role": "TVALID" }} , 
 	{ "name": "din_data_q2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q2", "role": "TREADY" }} , 
 	{ "name": "din_data_i3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_i3", "role": "TVALID" }} , 
 	{ "name": "din_data_i3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_i3", "role": "TREADY" }} , 
 	{ "name": "din_data_q3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din_data_q3", "role": "TVALID" }} , 
 	{ "name": "din_data_q3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din_data_q3", "role": "TREADY" }} , 
 	{ "name": "dout_data_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_data_0", "role": "TVALID" }} , 
 	{ "name": "dout_data_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dout_data_0", "role": "TREADY" }} , 
 	{ "name": "dout_data_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_data_1", "role": "TVALID" }} , 
 	{ "name": "dout_data_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dout_data_1", "role": "TREADY" }} , 
 	{ "name": "dout_data_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_data_2", "role": "TVALID" }} , 
 	{ "name": "dout_data_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dout_data_2", "role": "TREADY" }} , 
 	{ "name": "dout_data_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_data_3", "role": "TVALID" }} , 
 	{ "name": "dout_data_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dout_data_3", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "13", "116", "121", "122", "123"],
		"CDFG" : "pfb_multichannel_decimator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1106", "EstimateLatencyMax" : "5204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "read_inputs_U0"},
			{"ID" : "13", "Name" : "compute_pfb_U0"}],
		"OutputProcess" : [
			{"ID" : "116", "Name" : "write_outputs_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "gmem"}]},
			{"Name" : "din_data_i0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_i0"}]},
			{"Name" : "din_data_q0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_q0"}]},
			{"Name" : "din_data_i1", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_i1"}]},
			{"Name" : "din_data_q1", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_q1"}]},
			{"Name" : "din_data_i2", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_i2"}]},
			{"Name" : "din_data_q2", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_q2"}]},
			{"Name" : "din_data_i3", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_i3"}]},
			{"Name" : "din_data_q3", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_U0", "Port" : "din_data_q3"}]},
			{"Name" : "dout_data_0", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "write_outputs_U0", "Port" : "dout_data_0"}]},
			{"Name" : "dout_data_1", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "write_outputs_U0", "Port" : "dout_data_1"}]},
			{"Name" : "dout_data_2", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "write_outputs_U0", "Port" : "dout_data_2"}]},
			{"Name" : "dout_data_3", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "write_outputs_U0", "Port" : "dout_data_3"}]},
			{"Name" : "coeff", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff_loaded", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "coeff_loaded"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs"}]},
			{"Name" : "write_bank_idx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "write_bank_idx"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "compute_pfb_U0", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12"],
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
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "121", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_read_to_compute_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4"]}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_i0_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_q0_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_i1_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_q1_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_i2_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_q2_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_i3_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_U0.regslice_both_din_data_q3_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute_pfb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1034", "EstimateLatencyMax" : "5204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_read_to_compute", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "121", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "stream_read_to_compute", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "stream_compute_to_write", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["116"], "DependentChan" : "122", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "stream_compute_to_write", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "coeff", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff_loaded", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "write_bank_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_compute_pfb_Pipeline_compute_loop_fu_168", "Port" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6", "Inst_start_state" : "74", "Inst_end_state" : "75"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_load_coeffs_fu_151", "Parent" : "13",
		"CDFG" : "compute_pfb_Pipeline_load_coeffs",
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
			{"Name" : "sext_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "load_coeffs", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168", "Parent" : "13", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_30_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_19_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_8_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_4_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_3_U", "Parent" : "20"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_2_U", "Parent" : "20"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_U", "Parent" : "20"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_29_U", "Parent" : "20"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_28_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_26_U", "Parent" : "20"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_25_U", "Parent" : "20"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_24_U", "Parent" : "20"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_22_U", "Parent" : "20"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_21_U", "Parent" : "20"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_20_U", "Parent" : "20"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_17_U", "Parent" : "20"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_16_U", "Parent" : "20"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_15_U", "Parent" : "20"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_13_U", "Parent" : "20"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_12_U", "Parent" : "20"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_11_U", "Parent" : "20"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_9_U", "Parent" : "20"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_7_U", "Parent" : "20"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6_U", "Parent" : "20"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_11ns_13ns_23_1_1_U25", "Parent" : "20"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_12ns_14ns_25_1_1_U26", "Parent" : "20"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_12ns_14ns_25_1_1_U27", "Parent" : "20"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U28", "Parent" : "20"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U29", "Parent" : "20"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U30", "Parent" : "20"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U31", "Parent" : "20"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U32", "Parent" : "20"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U33", "Parent" : "20"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U34", "Parent" : "20"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U35", "Parent" : "20"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U36", "Parent" : "20"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U37", "Parent" : "20"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U38", "Parent" : "20"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U39", "Parent" : "20"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U40", "Parent" : "20"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U41", "Parent" : "20"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U42", "Parent" : "20"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U43", "Parent" : "20"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U44", "Parent" : "20"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U45", "Parent" : "20"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U46", "Parent" : "20"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U47", "Parent" : "20"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U48", "Parent" : "20"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U49", "Parent" : "20"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U50", "Parent" : "20"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U51", "Parent" : "20"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U52", "Parent" : "20"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_9_2_16_1_1_U53", "Parent" : "20"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U54", "Parent" : "20"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.sparsemux_11_3_16_1_1_U55", "Parent" : "20"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U56", "Parent" : "20"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U57", "Parent" : "20"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U58", "Parent" : "20"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U59", "Parent" : "20"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U60", "Parent" : "20"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U61", "Parent" : "20"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U62", "Parent" : "20"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U63", "Parent" : "20"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U64", "Parent" : "20"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U65", "Parent" : "20"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U66", "Parent" : "20"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U67", "Parent" : "20"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U68", "Parent" : "20"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U69", "Parent" : "20"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U70", "Parent" : "20"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U71", "Parent" : "20"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U72", "Parent" : "20"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mul_16s_16s_31_1_1_U73", "Parent" : "20"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U74", "Parent" : "20"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U75", "Parent" : "20"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U76", "Parent" : "20"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U77", "Parent" : "20"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U78", "Parent" : "20"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U79", "Parent" : "20"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U80", "Parent" : "20"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U81", "Parent" : "20"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U82", "Parent" : "20"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U83", "Parent" : "20"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U84", "Parent" : "20"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U85", "Parent" : "20"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U86", "Parent" : "20"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_pfb_U0.grp_compute_pfb_Pipeline_compute_loop_fu_168.mac_muladd_16s_16s_31s_31_4_1_U87", "Parent" : "20"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_outputs_U0", "Parent" : "0", "Child" : ["117", "118", "119", "120"],
		"CDFG" : "write_outputs",
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
		"StartSource" : "13",
		"StartFifo" : "start_for_write_outputs_U0_U",
		"Port" : [
			{"Name" : "stream_compute_to_write", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "122", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stream_compute_to_write_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_data_0", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_data_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_data_1", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_data_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_data_2", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_data_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_data_3", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_data_3_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "write_loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_outputs_U0.regslice_both_dout_data_0_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_outputs_U0.regslice_both_dout_data_1_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_outputs_U0.regslice_both_dout_data_2_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_outputs_U0.regslice_both_dout_data_3_U", "Parent" : "116"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_read_to_compute_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_compute_to_write_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_outputs_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pfb_multichannel_decimator {
		gmem {Type I LastRead 2 FirstWrite -1}
		din_data_i0 {Type I LastRead 1 FirstWrite -1}
		din_data_q0 {Type I LastRead 1 FirstWrite -1}
		din_data_i1 {Type I LastRead 1 FirstWrite -1}
		din_data_q1 {Type I LastRead 1 FirstWrite -1}
		din_data_i2 {Type I LastRead 1 FirstWrite -1}
		din_data_q2 {Type I LastRead 1 FirstWrite -1}
		din_data_i3 {Type I LastRead 1 FirstWrite -1}
		din_data_q3 {Type I LastRead 1 FirstWrite -1}
		dout_data_0 {Type O LastRead -1 FirstWrite 2}
		dout_data_1 {Type O LastRead -1 FirstWrite 2}
		dout_data_2 {Type O LastRead -1 FirstWrite 2}
		dout_data_3 {Type O LastRead -1 FirstWrite 2}
		coeff {Type I LastRead 2 FirstWrite -1}
		coeff_loaded {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type IO LastRead -1 FirstWrite -1}
		write_bank_idx {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10 {Type IO LastRead -1 FirstWrite -1}
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
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}}
	read_inputs {
		din_data_i0 {Type I LastRead 1 FirstWrite -1}
		din_data_q0 {Type I LastRead 1 FirstWrite -1}
		din_data_i1 {Type I LastRead 1 FirstWrite -1}
		din_data_q1 {Type I LastRead 1 FirstWrite -1}
		din_data_i2 {Type I LastRead 1 FirstWrite -1}
		din_data_q2 {Type I LastRead 1 FirstWrite -1}
		din_data_i3 {Type I LastRead 1 FirstWrite -1}
		din_data_q3 {Type I LastRead 1 FirstWrite -1}
		stream_read_to_compute {Type O LastRead -1 FirstWrite 2}}
	compute_pfb {
		stream_read_to_compute {Type I LastRead 2 FirstWrite -1}
		stream_compute_to_write {Type O LastRead -1 FirstWrite 7}
		gmem {Type I LastRead 2 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		coeff_loaded {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type IO LastRead -1 FirstWrite -1}
		write_bank_idx {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_31 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_5 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_1 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_27 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_23 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_18 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_14 {Type IO LastRead -1 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_10 {Type IO LastRead -1 FirstWrite -1}
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
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}}
	compute_pfb_Pipeline_load_coeffs {
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln49 {Type I LastRead 0 FirstWrite -1}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_4 {Type O LastRead -1 FirstWrite 3}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_3 {Type O LastRead -1 FirstWrite 3}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_2 {Type O LastRead -1 FirstWrite 3}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs_1 {Type O LastRead -1 FirstWrite 3}
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_local_coeffs {Type O LastRead -1 FirstWrite 3}}
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
		compute_pfb_stream_stream_ap_fixed_16_1_5_3_0_const_branch_memory_6 {Type IO LastRead -1 FirstWrite -1}}
	write_outputs {
		stream_compute_to_write {Type I LastRead 2 FirstWrite -1}
		dout_data_0 {Type O LastRead -1 FirstWrite 2}
		dout_data_1 {Type O LastRead -1 FirstWrite 2}
		dout_data_2 {Type O LastRead -1 FirstWrite 2}
		dout_data_3 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1106", "Max" : "5204"}
	, {"Name" : "Interval", "Min" : "1035", "Max" : "5205"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	din_data_i0 { axis {  { din_data_i0_TDATA in_data 0 16 }  { din_data_i0_TVALID in_vld 0 1 }  { din_data_i0_TREADY in_acc 1 1 } } }
	din_data_q0 { axis {  { din_data_q0_TDATA in_data 0 16 }  { din_data_q0_TVALID in_vld 0 1 }  { din_data_q0_TREADY in_acc 1 1 } } }
	din_data_i1 { axis {  { din_data_i1_TDATA in_data 0 16 }  { din_data_i1_TVALID in_vld 0 1 }  { din_data_i1_TREADY in_acc 1 1 } } }
	din_data_q1 { axis {  { din_data_q1_TDATA in_data 0 16 }  { din_data_q1_TVALID in_vld 0 1 }  { din_data_q1_TREADY in_acc 1 1 } } }
	din_data_i2 { axis {  { din_data_i2_TDATA in_data 0 16 }  { din_data_i2_TVALID in_vld 0 1 }  { din_data_i2_TREADY in_acc 1 1 } } }
	din_data_q2 { axis {  { din_data_q2_TDATA in_data 0 16 }  { din_data_q2_TVALID in_vld 0 1 }  { din_data_q2_TREADY in_acc 1 1 } } }
	din_data_i3 { axis {  { din_data_i3_TDATA in_data 0 16 }  { din_data_i3_TVALID in_vld 0 1 }  { din_data_i3_TREADY in_acc 1 1 } } }
	din_data_q3 { axis {  { din_data_q3_TDATA in_data 0 16 }  { din_data_q3_TVALID in_vld 0 1 }  { din_data_q3_TREADY in_acc 1 1 } } }
	dout_data_0 { axis {  { dout_data_0_TDATA out_data 1 32 }  { dout_data_0_TVALID out_vld 1 1 }  { dout_data_0_TREADY out_acc 0 1 } } }
	dout_data_1 { axis {  { dout_data_1_TDATA out_data 1 32 }  { dout_data_1_TVALID out_vld 1 1 }  { dout_data_1_TREADY out_acc 0 1 } } }
	dout_data_2 { axis {  { dout_data_2_TDATA out_data 1 32 }  { dout_data_2_TVALID out_vld 1 1 }  { dout_data_2_TREADY out_acc 0 1 } } }
	dout_data_3 { axis {  { dout_data_3_TDATA out_data 1 32 }  { dout_data_3_TVALID out_vld 1 1 }  { dout_data_3_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
