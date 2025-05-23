set moduleName hyperspectral_hw_wrapped
set isTopModule 1
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
set C_modelName {hyperspectral_hw_wrapped}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 4 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 5 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 5 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 4 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 5 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 5 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 4 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 5 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 4 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 5 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 5 signal 13 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"hyperspectral_hw_wrapped","role":"start","value":"0","valid_bit":"0"},{"name":"hyperspectral_hw_wrapped","role":"continue","value":"0","valid_bit":"4"},{"name":"hyperspectral_hw_wrapped","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"hyperspectral_hw_wrapped","role":"start","value":"0","valid_bit":"0"},{"name":"hyperspectral_hw_wrapped","role":"done","value":"0","valid_bit":"1"},{"name":"hyperspectral_hw_wrapped","role":"idle","value":"0","valid_bit":"2"},{"name":"hyperspectral_hw_wrapped","role":"ready","value":"0","valid_bit":"3"},{"name":"hyperspectral_hw_wrapped","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "184", "194", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212"],
		"CDFG" : "hyperspectral_hw_wrapped",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "184997", "EstimateLatencyMax" : "184997",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_data_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_user_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_last_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_id_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "184", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "94", "Inst_end_state" : "95"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_data_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_user_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_last_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_id_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "97", "Inst_end_state" : "98"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_32_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_33_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_34_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_35_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_36_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_37_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_38_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_39_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_40_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_41_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_42_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_43_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_44_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_45_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_46_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_47_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_48_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_49_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_50_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_51_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_52_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_53_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_54_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_55_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_56_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_57_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_58_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_59_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_60_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_61_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_62_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_63_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_64_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_65_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_66_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_67_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_68_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_69_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_70_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_71_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_72_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_73_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_74_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_75_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_76_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_77_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_78_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_79_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_80_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_81_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_82_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_83_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_84_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_85_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_86_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_87_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_88_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_89_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_90_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_91_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_92_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_93_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_94_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_95_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_96_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_97_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_98_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_99_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_100_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_101_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_102_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_103_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_104_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_105_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_106_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_107_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_108_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_109_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_110_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_111_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_112_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_113_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_114_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_115_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_116_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_117_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_118_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_119_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_120_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_121_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_122_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_123_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_124_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_125_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_126_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_127_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_128_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_129_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_130_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_131_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_132_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_133_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_134_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_135_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_136_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_137_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_138_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_139_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_140_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_141_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_142_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_143_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_144_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_145_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_146_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_147_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_148_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_149_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_150_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_151_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_152_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_153_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_154_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_155_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_156_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_157_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_158_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_159_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_160_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_161_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_162_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_163_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_164_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_165_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_166_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_167_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_168_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_169_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_170_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_171_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_172_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_173_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_174_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_175_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_176_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_177_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_178_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_179_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_pixel_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653", "Parent" : "0", "Child" : ["183"],
		"CDFG" : "hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ref_pixel", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1_fu_2653.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672", "Parent" : "0", "Child" : ["185", "186", "187", "188", "189", "190", "191", "192", "193"],
		"CDFG" : "hyperspectral_hw_wrapped_Pipeline_L1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "184712", "EstimateLatencyMax" : "184712",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixels_179", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_178", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_177", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_176", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_175", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_174", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_173", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_172", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_171", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_170", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_169", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_168", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_167", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_166", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_165", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_164", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_163", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_162", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_161", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_160", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_159", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_158", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_157", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_156", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_155", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_154", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_153", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_152", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_151", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_150", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_149", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_148", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_147", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_146", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_145", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_144", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_143", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_142", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_141", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_140", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_139", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_138", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_137", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_136", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_135", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_134", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_133", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_132", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_131", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_130", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_129", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_128", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_127", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_126", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_125", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_124", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_123", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_122", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_121", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_120", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_119", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_118", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_117", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_116", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_115", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_114", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_113", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_112", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_111", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_110", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_109", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_108", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_107", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_106", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_105", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_104", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_103", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_102", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_101", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_100", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_99", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_98", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ref_band1_assign_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_33_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_33_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_35_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_35_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_36_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_36_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_38_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_38_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_39_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_39_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_40_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_40_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_41_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_41_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_42_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_42_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_43_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_43_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_44_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_44_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_45_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_45_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_46_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_46_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_47_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_47_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_48_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_48_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_49_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_49_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_50_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_50_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_51_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_51_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_52_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_52_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_53_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_53_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_54_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_54_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_55_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_55_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_57_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_57_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_58_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_58_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_59_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_59_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_60_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_60_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_61_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_61_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_62_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_62_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_63_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_63_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_64_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_64_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_65_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_65_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_66_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_66_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_67_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_67_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_68_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_68_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_69_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_69_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_70_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_70_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_71_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_71_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_72_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_72_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_73_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_73_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_74_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_74_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_75_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_75_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_76_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_76_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_77_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_77_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_78_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_78_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_79_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_79_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_80_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_80_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_81_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_81_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_82_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_82_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_83_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_83_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_84_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_84_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_85_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_85_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_86_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_86_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_87_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_87_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_88_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band2_assign_88_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_band1_assign_89_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln62", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distance_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "min_pixel_index_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "min_pixel_index_j_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "active_idx_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "L1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "90", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage29", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage29_subdone", "QuitState" : "ap_ST_fsm_pp0_stage30", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage30_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fadd_32ns_32ns_32_5_full_dsp_1_U9", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fadd_32ns_32ns_32_5_full_dsp_1_U10", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fmul_32ns_32ns_32_4_max_dsp_1_U11", "Parent" : "184"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fmul_32ns_32ns_32_4_max_dsp_1_U12", "Parent" : "184"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.sitofp_32s_32_4_no_dsp_1_U13", "Parent" : "184"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.sitofp_32s_32_4_no_dsp_1_U14", "Parent" : "184"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fcmp_32ns_32ns_1_2_no_dsp_1_U15", "Parent" : "184"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.fsqrt_32ns_32ns_32_10_no_dsp_1_U16", "Parent" : "184"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_L1_fu_2672.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056", "Parent" : "0", "Child" : ["195", "196", "197"],
		"CDFG" : "hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixels_179", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idxprom71", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixels_177", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_175", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_173", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_171", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_169", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_167", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_165", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_163", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_161", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_159", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_157", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_155", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_153", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_151", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_149", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_147", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_145", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_143", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_141", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_139", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_137", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_135", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_133", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_131", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_129", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_127", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_123", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_121", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_119", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_117", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_115", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_113", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_111", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_109", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_107", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_105", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_103", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_101", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_178", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_176", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_174", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_172", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_170", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_168", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_166", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_164", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_162", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_160", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_158", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_156", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_154", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_152", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_150", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_148", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_146", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_144", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_142", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_140", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_138", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_136", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_134", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_132", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_130", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_128", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_126", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_124", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_122", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_120", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_118", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_116", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_114", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_112", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_110", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_108", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_106", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_104", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056.mux_1798_32_1_1_U393", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056.mux_1798_32_1_1_U394", "Parent" : "194"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2_fu_3056.flow_control_loop_pipe_sequential_init_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hyperspectral_hw_wrapped {
		in_stream_V_data_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 89 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1 {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		ref_pixel {Type O LastRead -1 FirstWrite 0}}
	hyperspectral_hw_wrapped_Pipeline_L1 {
		pixels_179 {Type O LastRead -1 FirstWrite 390}
		pixels_178 {Type O LastRead -1 FirstWrite 390}
		pixels_177 {Type O LastRead -1 FirstWrite 390}
		pixels_176 {Type O LastRead -1 FirstWrite 390}
		pixels_175 {Type O LastRead -1 FirstWrite 390}
		pixels_174 {Type O LastRead -1 FirstWrite 390}
		pixels_173 {Type O LastRead -1 FirstWrite 390}
		pixels_172 {Type O LastRead -1 FirstWrite 390}
		pixels_171 {Type O LastRead -1 FirstWrite 390}
		pixels_170 {Type O LastRead -1 FirstWrite 390}
		pixels_169 {Type O LastRead -1 FirstWrite 390}
		pixels_168 {Type O LastRead -1 FirstWrite 390}
		pixels_167 {Type O LastRead -1 FirstWrite 390}
		pixels_166 {Type O LastRead -1 FirstWrite 390}
		pixels_165 {Type O LastRead -1 FirstWrite 390}
		pixels_164 {Type O LastRead -1 FirstWrite 390}
		pixels_163 {Type O LastRead -1 FirstWrite 390}
		pixels_162 {Type O LastRead -1 FirstWrite 390}
		pixels_161 {Type O LastRead -1 FirstWrite 390}
		pixels_160 {Type O LastRead -1 FirstWrite 390}
		pixels_159 {Type O LastRead -1 FirstWrite 390}
		pixels_158 {Type O LastRead -1 FirstWrite 390}
		pixels_157 {Type O LastRead -1 FirstWrite 390}
		pixels_156 {Type O LastRead -1 FirstWrite 390}
		pixels_155 {Type O LastRead -1 FirstWrite 390}
		pixels_154 {Type O LastRead -1 FirstWrite 390}
		pixels_153 {Type O LastRead -1 FirstWrite 390}
		pixels_152 {Type O LastRead -1 FirstWrite 390}
		pixels_151 {Type O LastRead -1 FirstWrite 390}
		pixels_150 {Type O LastRead -1 FirstWrite 390}
		pixels_149 {Type O LastRead -1 FirstWrite 390}
		pixels_148 {Type O LastRead -1 FirstWrite 390}
		pixels_147 {Type O LastRead -1 FirstWrite 390}
		pixels_146 {Type O LastRead -1 FirstWrite 390}
		pixels_145 {Type O LastRead -1 FirstWrite 390}
		pixels_144 {Type O LastRead -1 FirstWrite 390}
		pixels_143 {Type O LastRead -1 FirstWrite 390}
		pixels_142 {Type O LastRead -1 FirstWrite 390}
		pixels_141 {Type O LastRead -1 FirstWrite 390}
		pixels_140 {Type O LastRead -1 FirstWrite 390}
		pixels_139 {Type O LastRead -1 FirstWrite 390}
		pixels_138 {Type O LastRead -1 FirstWrite 390}
		pixels_137 {Type O LastRead -1 FirstWrite 390}
		pixels_136 {Type O LastRead -1 FirstWrite 390}
		pixels_135 {Type O LastRead -1 FirstWrite 390}
		pixels_134 {Type O LastRead -1 FirstWrite 390}
		pixels_133 {Type O LastRead -1 FirstWrite 390}
		pixels_132 {Type O LastRead -1 FirstWrite 390}
		pixels_131 {Type O LastRead -1 FirstWrite 390}
		pixels_130 {Type O LastRead -1 FirstWrite 390}
		pixels_129 {Type O LastRead -1 FirstWrite 390}
		pixels_128 {Type O LastRead -1 FirstWrite 390}
		pixels_127 {Type O LastRead -1 FirstWrite 390}
		pixels_126 {Type O LastRead -1 FirstWrite 390}
		pixels_125 {Type O LastRead -1 FirstWrite 390}
		pixels_124 {Type O LastRead -1 FirstWrite 390}
		pixels_123 {Type O LastRead -1 FirstWrite 390}
		pixels_122 {Type O LastRead -1 FirstWrite 390}
		pixels_121 {Type O LastRead -1 FirstWrite 390}
		pixels_120 {Type O LastRead -1 FirstWrite 390}
		pixels_119 {Type O LastRead -1 FirstWrite 390}
		pixels_118 {Type O LastRead -1 FirstWrite 390}
		pixels_117 {Type O LastRead -1 FirstWrite 390}
		pixels_116 {Type O LastRead -1 FirstWrite 390}
		pixels_115 {Type O LastRead -1 FirstWrite 390}
		pixels_114 {Type O LastRead -1 FirstWrite 390}
		pixels_113 {Type O LastRead -1 FirstWrite 390}
		pixels_112 {Type O LastRead -1 FirstWrite 390}
		pixels_111 {Type O LastRead -1 FirstWrite 390}
		pixels_110 {Type O LastRead -1 FirstWrite 390}
		pixels_109 {Type O LastRead -1 FirstWrite 390}
		pixels_108 {Type O LastRead -1 FirstWrite 390}
		pixels_107 {Type O LastRead -1 FirstWrite 390}
		pixels_106 {Type O LastRead -1 FirstWrite 390}
		pixels_105 {Type O LastRead -1 FirstWrite 390}
		pixels_104 {Type O LastRead -1 FirstWrite 390}
		pixels_103 {Type O LastRead -1 FirstWrite 390}
		pixels_102 {Type O LastRead -1 FirstWrite 390}
		pixels_101 {Type O LastRead -1 FirstWrite 390}
		pixels_100 {Type O LastRead -1 FirstWrite 390}
		pixels_99 {Type O LastRead -1 FirstWrite 390}
		pixels_98 {Type O LastRead -1 FirstWrite 390}
		pixels_97 {Type O LastRead -1 FirstWrite 390}
		pixels_96 {Type O LastRead -1 FirstWrite 390}
		pixels_95 {Type O LastRead -1 FirstWrite 390}
		pixels_94 {Type O LastRead -1 FirstWrite 390}
		pixels_93 {Type O LastRead -1 FirstWrite 390}
		pixels_92 {Type O LastRead -1 FirstWrite 390}
		pixels_91 {Type O LastRead -1 FirstWrite 390}
		pixels_90 {Type O LastRead -1 FirstWrite 390}
		pixels_89 {Type O LastRead -1 FirstWrite 390}
		pixels_88 {Type O LastRead -1 FirstWrite 390}
		pixels_87 {Type O LastRead -1 FirstWrite 390}
		pixels_86 {Type O LastRead -1 FirstWrite 390}
		pixels_85 {Type O LastRead -1 FirstWrite 390}
		pixels_84 {Type O LastRead -1 FirstWrite 390}
		pixels_83 {Type O LastRead -1 FirstWrite 390}
		pixels_82 {Type O LastRead -1 FirstWrite 390}
		pixels_81 {Type O LastRead -1 FirstWrite 390}
		pixels_80 {Type O LastRead -1 FirstWrite 390}
		pixels_79 {Type O LastRead -1 FirstWrite 390}
		pixels_78 {Type O LastRead -1 FirstWrite 390}
		pixels_77 {Type O LastRead -1 FirstWrite 390}
		pixels_76 {Type O LastRead -1 FirstWrite 390}
		pixels_75 {Type O LastRead -1 FirstWrite 390}
		pixels_74 {Type O LastRead -1 FirstWrite 390}
		pixels_73 {Type O LastRead -1 FirstWrite 390}
		pixels_72 {Type O LastRead -1 FirstWrite 390}
		pixels_71 {Type O LastRead -1 FirstWrite 390}
		pixels_70 {Type O LastRead -1 FirstWrite 390}
		pixels_69 {Type O LastRead -1 FirstWrite 390}
		pixels_68 {Type O LastRead -1 FirstWrite 390}
		pixels_67 {Type O LastRead -1 FirstWrite 390}
		pixels_66 {Type O LastRead -1 FirstWrite 390}
		pixels_65 {Type O LastRead -1 FirstWrite 390}
		pixels_64 {Type O LastRead -1 FirstWrite 390}
		pixels_63 {Type O LastRead -1 FirstWrite 390}
		pixels_62 {Type O LastRead -1 FirstWrite 390}
		pixels_61 {Type O LastRead -1 FirstWrite 390}
		pixels_60 {Type O LastRead -1 FirstWrite 390}
		pixels_59 {Type O LastRead -1 FirstWrite 390}
		pixels_58 {Type O LastRead -1 FirstWrite 390}
		pixels_57 {Type O LastRead -1 FirstWrite 390}
		pixels_56 {Type O LastRead -1 FirstWrite 390}
		pixels_55 {Type O LastRead -1 FirstWrite 390}
		pixels_54 {Type O LastRead -1 FirstWrite 390}
		pixels_53 {Type O LastRead -1 FirstWrite 390}
		pixels_52 {Type O LastRead -1 FirstWrite 390}
		pixels_51 {Type O LastRead -1 FirstWrite 390}
		pixels_50 {Type O LastRead -1 FirstWrite 390}
		pixels_49 {Type O LastRead -1 FirstWrite 390}
		pixels_48 {Type O LastRead -1 FirstWrite 390}
		pixels_47 {Type O LastRead -1 FirstWrite 390}
		pixels_46 {Type O LastRead -1 FirstWrite 390}
		pixels_45 {Type O LastRead -1 FirstWrite 390}
		pixels_44 {Type O LastRead -1 FirstWrite 390}
		pixels_43 {Type O LastRead -1 FirstWrite 390}
		pixels_42 {Type O LastRead -1 FirstWrite 390}
		pixels_41 {Type O LastRead -1 FirstWrite 390}
		pixels_40 {Type O LastRead -1 FirstWrite 390}
		pixels_39 {Type O LastRead -1 FirstWrite 390}
		pixels_38 {Type O LastRead -1 FirstWrite 390}
		pixels_37 {Type O LastRead -1 FirstWrite 390}
		pixels_36 {Type O LastRead -1 FirstWrite 390}
		pixels_35 {Type O LastRead -1 FirstWrite 390}
		pixels_34 {Type O LastRead -1 FirstWrite 390}
		pixels_33 {Type O LastRead -1 FirstWrite 390}
		pixels_32 {Type O LastRead -1 FirstWrite 390}
		pixels_31 {Type O LastRead -1 FirstWrite 390}
		pixels_30 {Type O LastRead -1 FirstWrite 390}
		pixels_29 {Type O LastRead -1 FirstWrite 390}
		pixels_28 {Type O LastRead -1 FirstWrite 390}
		pixels_27 {Type O LastRead -1 FirstWrite 390}
		pixels_26 {Type O LastRead -1 FirstWrite 390}
		pixels_25 {Type O LastRead -1 FirstWrite 390}
		pixels_24 {Type O LastRead -1 FirstWrite 390}
		pixels_23 {Type O LastRead -1 FirstWrite 390}
		pixels_22 {Type O LastRead -1 FirstWrite 390}
		pixels_21 {Type O LastRead -1 FirstWrite 390}
		pixels_20 {Type O LastRead -1 FirstWrite 390}
		pixels_19 {Type O LastRead -1 FirstWrite 390}
		pixels_18 {Type O LastRead -1 FirstWrite 390}
		pixels_17 {Type O LastRead -1 FirstWrite 390}
		pixels_16 {Type O LastRead -1 FirstWrite 390}
		pixels_15 {Type O LastRead -1 FirstWrite 390}
		pixels_14 {Type O LastRead -1 FirstWrite 390}
		pixels_13 {Type O LastRead -1 FirstWrite 390}
		pixels_12 {Type O LastRead -1 FirstWrite 390}
		pixels_11 {Type O LastRead -1 FirstWrite 390}
		pixels_10 {Type O LastRead -1 FirstWrite 390}
		pixels_9 {Type O LastRead -1 FirstWrite 390}
		pixels_8 {Type O LastRead -1 FirstWrite 390}
		pixels_7 {Type O LastRead -1 FirstWrite 390}
		pixels_6 {Type O LastRead -1 FirstWrite 390}
		pixels_5 {Type O LastRead -1 FirstWrite 390}
		pixels_4 {Type O LastRead -1 FirstWrite 390}
		pixels_3 {Type O LastRead -1 FirstWrite 390}
		pixels_2 {Type O LastRead -1 FirstWrite 390}
		pixels_1 {Type O LastRead -1 FirstWrite 390}
		pixels {Type O LastRead -1 FirstWrite 390}
		in_stream_V_data_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 89 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 89 FirstWrite -1}
		ref_band1_assign_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_1_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_1_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_2_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_2_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_3_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_3_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_4_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_4_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_5_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_5_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_6_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_6_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_7_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_7_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_8_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_8_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_9_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_9_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_10_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_10_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_11_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_11_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_12_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_12_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_13_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_13_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_14_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_14_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_15_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_15_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_16_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_16_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_17_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_17_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_18_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_18_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_19_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_19_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_20_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_20_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_21_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_21_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_22_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_22_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_23_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_23_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_24_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_24_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_25_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_25_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_26_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_26_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_27_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_27_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_28_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_28_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_29_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_29_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_30_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_30_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_31_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_31_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_32_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_32_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_33_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_33_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_34_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_34_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_35_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_35_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_36_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_36_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_37_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_37_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_38_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_38_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_39_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_39_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_40_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_40_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_41_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_41_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_42_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_42_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_43_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_43_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_44_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_44_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_45_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_45_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_46_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_46_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_47_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_47_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_48_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_48_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_49_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_49_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_50_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_50_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_51_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_51_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_52_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_52_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_53_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_53_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_54_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_54_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_55_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_55_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_56_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_56_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_57_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_57_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_58_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_58_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_59_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_59_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_60_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_60_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_61_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_61_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_62_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_62_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_63_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_63_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_64_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_64_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_65_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_65_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_66_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_66_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_67_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_67_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_68_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_68_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_69_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_69_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_70_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_70_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_71_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_71_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_72_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_72_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_73_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_73_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_74_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_74_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_75_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_75_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_76_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_76_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_77_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_77_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_78_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_78_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_79_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_79_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_80_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_80_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_81_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_81_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_82_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_82_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_83_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_83_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_84_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_84_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_85_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_85_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_86_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_86_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_87_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_87_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_88_cast {Type I LastRead 0 FirstWrite -1}
		ref_band2_assign_88_cast {Type I LastRead 0 FirstWrite -1}
		ref_band1_assign_89_cast {Type I LastRead 0 FirstWrite -1}
		zext_ln62 {Type I LastRead 0 FirstWrite -1}
		min_distance_out {Type O LastRead -1 FirstWrite 390}
		min_pixel_index_i_out {Type O LastRead -1 FirstWrite 390}
		min_pixel_index_j_out {Type O LastRead -1 FirstWrite 390}
		active_idx_2_out {Type O LastRead -1 FirstWrite 390}}
	hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_93_2 {
		pixels_179 {Type I LastRead 0 FirstWrite -1}
		idxprom71 {Type I LastRead 0 FirstWrite -1}
		pixels_177 {Type I LastRead 0 FirstWrite -1}
		pixels_175 {Type I LastRead 0 FirstWrite -1}
		pixels_173 {Type I LastRead 0 FirstWrite -1}
		pixels_171 {Type I LastRead 0 FirstWrite -1}
		pixels_169 {Type I LastRead 0 FirstWrite -1}
		pixels_167 {Type I LastRead 0 FirstWrite -1}
		pixels_165 {Type I LastRead 0 FirstWrite -1}
		pixels_163 {Type I LastRead 0 FirstWrite -1}
		pixels_161 {Type I LastRead 0 FirstWrite -1}
		pixels_159 {Type I LastRead 0 FirstWrite -1}
		pixels_157 {Type I LastRead 0 FirstWrite -1}
		pixels_155 {Type I LastRead 0 FirstWrite -1}
		pixels_153 {Type I LastRead 0 FirstWrite -1}
		pixels_151 {Type I LastRead 0 FirstWrite -1}
		pixels_149 {Type I LastRead 0 FirstWrite -1}
		pixels_147 {Type I LastRead 0 FirstWrite -1}
		pixels_145 {Type I LastRead 0 FirstWrite -1}
		pixels_143 {Type I LastRead 0 FirstWrite -1}
		pixels_141 {Type I LastRead 0 FirstWrite -1}
		pixels_139 {Type I LastRead 0 FirstWrite -1}
		pixels_137 {Type I LastRead 0 FirstWrite -1}
		pixels_135 {Type I LastRead 0 FirstWrite -1}
		pixels_133 {Type I LastRead 0 FirstWrite -1}
		pixels_131 {Type I LastRead 0 FirstWrite -1}
		pixels_129 {Type I LastRead 0 FirstWrite -1}
		pixels_127 {Type I LastRead 0 FirstWrite -1}
		pixels_125 {Type I LastRead 0 FirstWrite -1}
		pixels_123 {Type I LastRead 0 FirstWrite -1}
		pixels_121 {Type I LastRead 0 FirstWrite -1}
		pixels_119 {Type I LastRead 0 FirstWrite -1}
		pixels_117 {Type I LastRead 0 FirstWrite -1}
		pixels_115 {Type I LastRead 0 FirstWrite -1}
		pixels_113 {Type I LastRead 0 FirstWrite -1}
		pixels_111 {Type I LastRead 0 FirstWrite -1}
		pixels_109 {Type I LastRead 0 FirstWrite -1}
		pixels_107 {Type I LastRead 0 FirstWrite -1}
		pixels_105 {Type I LastRead 0 FirstWrite -1}
		pixels_103 {Type I LastRead 0 FirstWrite -1}
		pixels_101 {Type I LastRead 0 FirstWrite -1}
		pixels_99 {Type I LastRead 0 FirstWrite -1}
		pixels_97 {Type I LastRead 0 FirstWrite -1}
		pixels_95 {Type I LastRead 0 FirstWrite -1}
		pixels_93 {Type I LastRead 0 FirstWrite -1}
		pixels_91 {Type I LastRead 0 FirstWrite -1}
		pixels_89 {Type I LastRead 0 FirstWrite -1}
		pixels_87 {Type I LastRead 0 FirstWrite -1}
		pixels_85 {Type I LastRead 0 FirstWrite -1}
		pixels_83 {Type I LastRead 0 FirstWrite -1}
		pixels_81 {Type I LastRead 0 FirstWrite -1}
		pixels_79 {Type I LastRead 0 FirstWrite -1}
		pixels_77 {Type I LastRead 0 FirstWrite -1}
		pixels_75 {Type I LastRead 0 FirstWrite -1}
		pixels_73 {Type I LastRead 0 FirstWrite -1}
		pixels_71 {Type I LastRead 0 FirstWrite -1}
		pixels_69 {Type I LastRead 0 FirstWrite -1}
		pixels_67 {Type I LastRead 0 FirstWrite -1}
		pixels_65 {Type I LastRead 0 FirstWrite -1}
		pixels_63 {Type I LastRead 0 FirstWrite -1}
		pixels_61 {Type I LastRead 0 FirstWrite -1}
		pixels_59 {Type I LastRead 0 FirstWrite -1}
		pixels_57 {Type I LastRead 0 FirstWrite -1}
		pixels_55 {Type I LastRead 0 FirstWrite -1}
		pixels_53 {Type I LastRead 0 FirstWrite -1}
		pixels_51 {Type I LastRead 0 FirstWrite -1}
		pixels_49 {Type I LastRead 0 FirstWrite -1}
		pixels_47 {Type I LastRead 0 FirstWrite -1}
		pixels_45 {Type I LastRead 0 FirstWrite -1}
		pixels_43 {Type I LastRead 0 FirstWrite -1}
		pixels_41 {Type I LastRead 0 FirstWrite -1}
		pixels_39 {Type I LastRead 0 FirstWrite -1}
		pixels_37 {Type I LastRead 0 FirstWrite -1}
		pixels_35 {Type I LastRead 0 FirstWrite -1}
		pixels_33 {Type I LastRead 0 FirstWrite -1}
		pixels_31 {Type I LastRead 0 FirstWrite -1}
		pixels_29 {Type I LastRead 0 FirstWrite -1}
		pixels_27 {Type I LastRead 0 FirstWrite -1}
		pixels_25 {Type I LastRead 0 FirstWrite -1}
		pixels_23 {Type I LastRead 0 FirstWrite -1}
		pixels_21 {Type I LastRead 0 FirstWrite -1}
		pixels_19 {Type I LastRead 0 FirstWrite -1}
		pixels_17 {Type I LastRead 0 FirstWrite -1}
		pixels_15 {Type I LastRead 0 FirstWrite -1}
		pixels_13 {Type I LastRead 0 FirstWrite -1}
		pixels_11 {Type I LastRead 0 FirstWrite -1}
		pixels_9 {Type I LastRead 0 FirstWrite -1}
		pixels_7 {Type I LastRead 0 FirstWrite -1}
		pixels_5 {Type I LastRead 0 FirstWrite -1}
		pixels_3 {Type I LastRead 0 FirstWrite -1}
		pixels_1 {Type I LastRead 0 FirstWrite -1}
		pixels_178 {Type I LastRead 0 FirstWrite -1}
		pixels_176 {Type I LastRead 0 FirstWrite -1}
		pixels_174 {Type I LastRead 0 FirstWrite -1}
		pixels_172 {Type I LastRead 0 FirstWrite -1}
		pixels_170 {Type I LastRead 0 FirstWrite -1}
		pixels_168 {Type I LastRead 0 FirstWrite -1}
		pixels_166 {Type I LastRead 0 FirstWrite -1}
		pixels_164 {Type I LastRead 0 FirstWrite -1}
		pixels_162 {Type I LastRead 0 FirstWrite -1}
		pixels_160 {Type I LastRead 0 FirstWrite -1}
		pixels_158 {Type I LastRead 0 FirstWrite -1}
		pixels_156 {Type I LastRead 0 FirstWrite -1}
		pixels_154 {Type I LastRead 0 FirstWrite -1}
		pixels_152 {Type I LastRead 0 FirstWrite -1}
		pixels_150 {Type I LastRead 0 FirstWrite -1}
		pixels_148 {Type I LastRead 0 FirstWrite -1}
		pixels_146 {Type I LastRead 0 FirstWrite -1}
		pixels_144 {Type I LastRead 0 FirstWrite -1}
		pixels_142 {Type I LastRead 0 FirstWrite -1}
		pixels_140 {Type I LastRead 0 FirstWrite -1}
		pixels_138 {Type I LastRead 0 FirstWrite -1}
		pixels_136 {Type I LastRead 0 FirstWrite -1}
		pixels_134 {Type I LastRead 0 FirstWrite -1}
		pixels_132 {Type I LastRead 0 FirstWrite -1}
		pixels_130 {Type I LastRead 0 FirstWrite -1}
		pixels_128 {Type I LastRead 0 FirstWrite -1}
		pixels_126 {Type I LastRead 0 FirstWrite -1}
		pixels_124 {Type I LastRead 0 FirstWrite -1}
		pixels_122 {Type I LastRead 0 FirstWrite -1}
		pixels_120 {Type I LastRead 0 FirstWrite -1}
		pixels_118 {Type I LastRead 0 FirstWrite -1}
		pixels_116 {Type I LastRead 0 FirstWrite -1}
		pixels_114 {Type I LastRead 0 FirstWrite -1}
		pixels_112 {Type I LastRead 0 FirstWrite -1}
		pixels_110 {Type I LastRead 0 FirstWrite -1}
		pixels_108 {Type I LastRead 0 FirstWrite -1}
		pixels_106 {Type I LastRead 0 FirstWrite -1}
		pixels_104 {Type I LastRead 0 FirstWrite -1}
		pixels_102 {Type I LastRead 0 FirstWrite -1}
		pixels_100 {Type I LastRead 0 FirstWrite -1}
		pixels_98 {Type I LastRead 0 FirstWrite -1}
		pixels_96 {Type I LastRead 0 FirstWrite -1}
		pixels_94 {Type I LastRead 0 FirstWrite -1}
		pixels_92 {Type I LastRead 0 FirstWrite -1}
		pixels_90 {Type I LastRead 0 FirstWrite -1}
		pixels_88 {Type I LastRead 0 FirstWrite -1}
		pixels_86 {Type I LastRead 0 FirstWrite -1}
		pixels_84 {Type I LastRead 0 FirstWrite -1}
		pixels_82 {Type I LastRead 0 FirstWrite -1}
		pixels_80 {Type I LastRead 0 FirstWrite -1}
		pixels_78 {Type I LastRead 0 FirstWrite -1}
		pixels_76 {Type I LastRead 0 FirstWrite -1}
		pixels_74 {Type I LastRead 0 FirstWrite -1}
		pixels_72 {Type I LastRead 0 FirstWrite -1}
		pixels_70 {Type I LastRead 0 FirstWrite -1}
		pixels_68 {Type I LastRead 0 FirstWrite -1}
		pixels_66 {Type I LastRead 0 FirstWrite -1}
		pixels_64 {Type I LastRead 0 FirstWrite -1}
		pixels_62 {Type I LastRead 0 FirstWrite -1}
		pixels_60 {Type I LastRead 0 FirstWrite -1}
		pixels_58 {Type I LastRead 0 FirstWrite -1}
		pixels_56 {Type I LastRead 0 FirstWrite -1}
		pixels_54 {Type I LastRead 0 FirstWrite -1}
		pixels_52 {Type I LastRead 0 FirstWrite -1}
		pixels_50 {Type I LastRead 0 FirstWrite -1}
		pixels_48 {Type I LastRead 0 FirstWrite -1}
		pixels_46 {Type I LastRead 0 FirstWrite -1}
		pixels_44 {Type I LastRead 0 FirstWrite -1}
		pixels_42 {Type I LastRead 0 FirstWrite -1}
		pixels_40 {Type I LastRead 0 FirstWrite -1}
		pixels_38 {Type I LastRead 0 FirstWrite -1}
		pixels_36 {Type I LastRead 0 FirstWrite -1}
		pixels_34 {Type I LastRead 0 FirstWrite -1}
		pixels_32 {Type I LastRead 0 FirstWrite -1}
		pixels_30 {Type I LastRead 0 FirstWrite -1}
		pixels_28 {Type I LastRead 0 FirstWrite -1}
		pixels_26 {Type I LastRead 0 FirstWrite -1}
		pixels_24 {Type I LastRead 0 FirstWrite -1}
		pixels_22 {Type I LastRead 0 FirstWrite -1}
		pixels_20 {Type I LastRead 0 FirstWrite -1}
		pixels_18 {Type I LastRead 0 FirstWrite -1}
		pixels_16 {Type I LastRead 0 FirstWrite -1}
		pixels_14 {Type I LastRead 0 FirstWrite -1}
		pixels_12 {Type I LastRead 0 FirstWrite -1}
		pixels_10 {Type I LastRead 0 FirstWrite -1}
		pixels_8 {Type I LastRead 0 FirstWrite -1}
		pixels_6 {Type I LastRead 0 FirstWrite -1}
		pixels_4 {Type I LastRead 0 FirstWrite -1}
		pixels_2 {Type I LastRead 0 FirstWrite -1}
		pixels {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "184997", "Max" : "184997"}
	, {"Name" : "Interval", "Min" : "184998", "Max" : "184998"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 4 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 5 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 5 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 4 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDEST out_data 1 5 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
