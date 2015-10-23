// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:16 +0100
// 

module Mean_Shift_Main_main_loop_cal_update_weight(RESET, CLK, QuModel_COUNT, bin_DATA, weights_COUNT, QuModel_DATA, QuModel_SEND, PuModel_ACK, weights_RDY, PuModel_SEND, PuModel_DATA, PuModel_COUNT, weights_ACK, bin_ACK, weights_SEND, bin_SEND, weights_DATA, QuModel_ACK, bin_COUNT);
input		RESET;
input		CLK;
input	[15:0]	QuModel_COUNT;
wire		doneCountSend_done;
input	[31:0]	bin_DATA;
wire		send_done;
wire		getColorModelPu_done;
output	[15:0]	weights_COUNT;
wire		getBinValue_done;
wire		doneCount_bin_done;
wire		send_go;
wire		getColorModelPu_go;
wire		doneCountSend_go;
input	[31:0]	QuModel_DATA;
input		QuModel_SEND;
output		PuModel_ACK;
wire		update_weights_done;
input		weights_RDY;
input		PuModel_SEND;
wire		doneCount_mModel_done;
input	[31:0]	PuModel_DATA;
input	[15:0]	PuModel_COUNT;
input		weights_ACK;
wire		getColorModelQu_go;
output		bin_ACK;
output		weights_SEND;
input		bin_SEND;
output	[31:0]	weights_DATA;
wire		getColorModelQu_done;
wire		doneCount_mModel_go;
output		QuModel_ACK;
wire		doneCount_bin_go;
wire		getBinValue_go;
wire		update_weights_go;
input	[15:0]	bin_COUNT;
wire	[31:0]	bus_018b4bb0_;
wire		bus_01e299cf_;
wire		bus_01da49d8_;
wire	[31:0]	bus_015a3bad_;
wire	[2:0]	bus_0037440e_;
wire		bus_013e6a92_;
wire	[31:0]	bus_00b6e71c_;
wire		Mean_Shift_Main_main_loop_cal_update_weight_send_instance_DONE;
wire	[31:0]	send_u72;
wire		send_u65;
wire	[31:0]	send_u64;
wire		send_u70;
wire	[15:0]	send_u71;
wire	[2:0]	send_u69;
wire	[31:0]	send_u68;
wire		send;
wire		send_u67;
wire	[31:0]	send_u66;
wire	[31:0]	bus_00079a7b_;
wire	[31:0]	bus_000148bc_;
wire		bus_0174337c_;
wire		bus_010e04af_;
wire		bus_01fd560c_;
wire		bus_01d48329_;
wire		bus_0106212e_;
wire	[31:0]	doneCountSend_u3;
wire		Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend_instance_DONE;
wire		doneCountSend_u4;
wire		doneCountSend;
wire	[31:0]	doneCountSend_u5;
wire		bus_004eebfb_;
wire	[31:0]	bus_014fa87d_;
wire	[2:0]	bus_0067e5b6_;
wire	[31:0]	bus_01355240_;
wire		bus_01b97c46_;
wire		bus_01cdef87_;
wire		bus_003248e6_;
wire	[31:0]	bus_00675f0a_;
wire		bus_0156944e_;
wire		bus_0116c52a_;
wire	[31:0]	bus_00245aad_;
wire		bus_0133efab_;
wire		bus_01fa55b7_;
wire	[31:0]	update_weights_u36;
wire		update_weights_u43;
wire		update_weights_u35;
wire	[2:0]	update_weights_u42;
wire	[31:0]	update_weights_u40;
wire	[2:0]	update_weights_u55;
wire	[31:0]	update_weights_u41;
wire		update_weights_u46;
wire	[2:0]	update_weights_u45;
wire		update_weights;
wire	[31:0]	update_weights_u50;
wire	[31:0]	update_weights_u33;
wire		update_weights_u29;
wire	[31:0]	update_weights_u44;
wire	[2:0]	update_weights_u51;
wire		update_weights_u49;
wire	[31:0]	update_weights_u54;
wire	[2:0]	update_weights_u38;
wire	[2:0]	update_weights_u34;
wire	[2:0]	update_weights_u31;
wire	[31:0]	update_weights_u28;
wire	[31:0]	update_weights_u47;
wire	[2:0]	update_weights_u48;
wire	[31:0]	update_weights_u53;
wire	[31:0]	update_weights_u37;
wire		update_weights_u39;
wire		Mean_Shift_Main_main_loop_cal_update_weight_update_weights_instance_DONE;
wire		update_weights_u52;
wire		update_weights_u32;
wire	[31:0]	update_weights_u30;
wire		bus_01cbe7b3_;
wire	[31:0]	bus_007e3bc6_;
wire		bus_0096a522_;
wire		bus_008260c0_;
wire		bus_0198639c_;
wire	[31:0]	bus_00f9f650_;
wire	[2:0]	bus_00e324d4_;
wire	[31:0]	bus_00b7258f_;
wire		doneCount_mModel;
wire		Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel_instance_DONE;
wire	[31:0]	doneCount_mModel_u3;
wire		bus_0138c2b5_;
wire		bus_01c5222e_;
wire	[31:0]	bus_00ac9495_;
wire		bus_00d86805_;
wire	[2:0]	bus_01f4db00_;
wire	[31:0]	bus_0124590d_;
wire		bus_0182ae4a_;
wire		bus_014d79d6_;
wire		Mean_Shift_Main_main_loop_cal_update_weight_scheduler_instance_DONE;
wire		scheduler_u184;
wire		scheduler_u173;
wire		scheduler_u172;
wire		scheduler_u180;
wire		scheduler_u182;
wire		scheduler;
wire		scheduler_u179;
wire		scheduler_u174;
wire		scheduler_u183;
wire		scheduler_u170;
wire		scheduler_u171;
wire		scheduler_u175;
wire		scheduler_u186;
wire		scheduler_u177;
wire		scheduler_u178;
wire		scheduler_u176;
wire		scheduler_u181;
wire		scheduler_u185;
wire		bus_006011d1_;
wire	[31:0]	bus_015344bf_;
wire		bus_007aec7b_;
wire	[31:0]	bus_01b29f58_;
wire		getColorModelPu_u7;
wire	[31:0]	getColorModelPu_u8;
wire	[31:0]	getColorModelPu_u6;
wire	[31:0]	getColorModelPu_u9;
wire		getColorModelPu_u11;
wire	[2:0]	getColorModelPu_u10;
wire		Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu_instance_DONE;
wire		getColorModelPu;
wire		Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu_instance_DONE;
wire		getColorModelQu_u11;
wire	[31:0]	getColorModelQu_u9;
wire	[31:0]	getColorModelQu_u6;
wire		getColorModelQu_u7;
wire		getColorModelQu;
wire	[31:0]	getColorModelQu_u8;
wire	[2:0]	getColorModelQu_u10;
wire		bus_01ba280d_;
wire		doneCount_bin_u10;
wire	[31:0]	doneCount_bin_u9;
wire		Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin_instance_DONE;
wire	[31:0]	doneCount_bin_u11;
wire		doneCount_bin;
wire		bus_0089951e_;
wire		bus_01c01333_;
wire	[31:0]	bus_01073724_;
wire		bus_0026a958_;
wire	[31:0]	bus_000385fc_;
wire	[31:0]	bus_00c3dde4_;
wire	[31:0]	bus_00408aa5_;
wire		bus_00ca06e0_;
wire		bus_00110351_;
wire		bus_00985c10_;
wire	[2:0]	bus_0041f6e9_;
wire		bus_01095f15_;
wire	[31:0]	bus_00971d33_;
wire	[2:0]	bus_0138888b_;
wire	[31:0]	bus_0189a8a5_;
wire		bus_01107d5c_;
wire		bus_00efc6d9_;
wire		bus_0145d6f6_;
wire	[31:0]	bus_01f8fb88_;
wire	[31:0]	bus_010d4aa3_;
wire		bus_01e36f03_;
wire	[31:0]	bus_0157bd65_;
wire		bus_0050210a_;
wire	[31:0]	getBinValue_u13;
wire		Mean_Shift_Main_main_loop_cal_update_weight_getBinValue_instance_DONE;
wire	[31:0]	getBinValue_u12;
wire		getBinValue_u9;
wire		getBinValue;
wire	[2:0]	getBinValue_u14;
wire	[31:0]	getBinValue_u10;
wire		getBinValue_u11;
wire	[31:0]	getBinValue_u8;
wire		getBinValue_u15;
wire		bus_01daf2cd_;
wire	[31:0]	bus_018849f4_;
wire	[31:0]	bus_012f21a4_;
wire	[2:0]	bus_00f92f33_;
wire		bus_01a828dd_;
wire		bus_00e60f5d_;
wire	[31:0]	bus_004aee22_;
wire		bus_01402698_;
wire		bus_00e93f8f_;
wire	[31:0]	bus_0172db2c_;
wire		bus_017edaa2_;
wire	[31:0]	bus_00b45122_;
wire		bus_0125c5c4_;
assign doneCountSend_done=bus_01d48329_;
assign send_done=bus_01fa55b7_;
assign getColorModelPu_done=bus_0133efab_;
assign weights_COUNT=send_u71;
assign getBinValue_done=bus_0125c5c4_;
assign doneCount_bin_done=bus_0026a958_;
assign send_go=scheduler_u180;
assign getColorModelPu_go=scheduler_u179;
assign doneCountSend_go=scheduler_u182;
assign PuModel_ACK=getColorModelPu_u11;
assign update_weights_done=bus_007aec7b_;
assign doneCount_mModel_done=bus_01ba280d_;
assign getColorModelQu_go=scheduler_u185;
assign bin_ACK=getBinValue_u15;
assign weights_SEND=send_u70;
assign weights_DATA=send_u72;
assign getColorModelQu_done=bus_0156944e_;
assign doneCount_mModel_go=scheduler_u183;
assign QuModel_ACK=getColorModelQu_u11;
assign doneCount_bin_go=scheduler_u186;
assign getBinValue_go=scheduler_u181;
assign update_weights_go=scheduler_u184;
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00f5f36a_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00f5f36a__1(.bus_00a03358_(CLK), 
  .bus_018b154d_(bus_01fd560c_), .bus_012f33f0_(bus_0174337c_), .bus_0031b5a0_(bus_00079a7b_), 
  .bus_017fdc54_(update_weights_u49), .bus_00d3c8bc_(update_weights_u50), .bus_00a4515f_(3'h1), 
  .bus_018b4bb0_(bus_018b4bb0_), .bus_00b6e71c_(bus_00b6e71c_), .bus_01e299cf_(bus_01e299cf_), 
  .bus_013e6a92_(bus_013e6a92_), .bus_0037440e_(bus_0037440e_), .bus_015a3bad_(bus_015a3bad_), 
  .bus_01da49d8_(bus_01da49d8_));
Mean_Shift_Main_main_loop_cal_update_weight_send Mean_Shift_Main_main_loop_cal_update_weight_send_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(send_go), .port_0051776b_(bus_018849f4_), .port_017f567c_(bus_00245aad_), 
  .port_01cbb792_(bus_00efc6d9_), .port_003aa554_(bus_0189a8a5_), .RESULT(send), 
  .RESULT_u745(send_u64), .RESULT_u746(send_u65), .RESULT_u747(send_u66), .RESULT_u748(send_u67), 
  .RESULT_u749(send_u68), .RESULT_u750(send_u69), .RESULT_u751(send_u70), .RESULT_u752(send_u71), 
  .RESULT_u753(send_u72), .DONE(Mean_Shift_Main_main_loop_cal_update_weight_send_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f5930f_ Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f5930f__1(.CLK_u29(CLK), 
  .bus_0102ef32_(bus_01fd560c_), .bus_01f540b7_(bus_00675f0a_), .bus_004e0324_(3'h1), 
  .bus_0163c0b7_(bus_003248e6_), .bus_005b1549_(bus_004eebfb_), .bus_0194f7a3_(bus_014fa87d_), 
  .bus_00cebfb2_(bus_00b6e71c_), .bus_0104f9be_(3'h1), .bus_0139aede_(bus_013e6a92_), 
  .bus_000148bc_(bus_000148bc_), .bus_010e04af_(bus_010e04af_), .bus_00079a7b_(bus_00079a7b_), 
  .bus_0174337c_(bus_0174337c_));
Mean_Shift_Main_main_loop_cal_update_weight_globalreset_physical_00231b07_ Mean_Shift_Main_main_loop_cal_update_weight_globalreset_physical_00231b07__1(.bus_0005cdcb_(CLK), 
  .bus_002c6d26_(RESET), .bus_01fd560c_(bus_01fd560c_));
assign bus_01d48329_=Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s1_1(.bus_01db6a04_(CLK), 
  .bus_000d5ab2_(bus_01fd560c_), .bus_00f90df0_(scheduler_u171), .bus_00d8292c_(scheduler_u172), 
  .bus_0106212e_(bus_0106212e_));
Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(doneCountSend_go), .RESULT(doneCountSend), .RESULT_u754(doneCountSend_u3), 
  .RESULT_u755(doneCountSend_u4), .RESULT_u756(doneCountSend_u5), .DONE(Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0160c405_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0160c405__1(.bus_01178493_(CLK), 
  .bus_0100e0e4_(bus_01fd560c_), .bus_01de2826_(bus_010e04af_), .bus_01c531e8_(bus_000148bc_), 
  .bus_015484e1_(getColorModelPu_u7), .bus_0108d6b5_(getColorModelPu_u9), .bus_01fba782_(getColorModelPu_u8), 
  .bus_00e4e655_(3'h1), .bus_00dfa6a3_(update_weights_u32), .bus_006fcd6c_(update_weights_u33), 
  .bus_019a10a0_(3'h1), .bus_014fa87d_(bus_014fa87d_), .bus_00675f0a_(bus_00675f0a_), 
  .bus_004eebfb_(bus_004eebfb_), .bus_003248e6_(bus_003248e6_), .bus_0067e5b6_(bus_0067e5b6_), 
  .bus_01cdef87_(bus_01cdef87_), .bus_01355240_(bus_01355240_), .bus_01b97c46_(bus_01b97c46_));
assign bus_0156944e_=Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s4 Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s4_1(.bus_00e5f976_(CLK), 
  .bus_005cd550_(bus_01fd560c_), .bus_01f515f3_(scheduler_u177), .bus_0066f743_(scheduler_u178), 
  .bus_0116c52a_(bus_0116c52a_));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_y Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_y_1(.bus_016c2145_(CLK), 
  .bus_01fc7436_(bus_01fd560c_), .bus_008c48e5_(getBinValue_u9), .bus_00647e95_(getBinValue_u10), 
  .bus_01776ccf_(doneCount_bin), .bus_004f504f_(32'h0), .bus_01267de3_(send_u65), 
  .bus_01738493_(send_u66), .bus_0147183a_(doneCountSend), .bus_011e8fc2_(32'h0), 
  .bus_00245aad_(bus_00245aad_));
assign bus_0133efab_=Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu_instance_DONE}};
assign bus_01fa55b7_=Mean_Shift_Main_main_loop_cal_update_weight_send_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_send_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_update_weights Mean_Shift_Main_main_loop_cal_update_weight_update_weights_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(update_weights_go), .port_01b89954_(bus_01b29f58_), 
  .port_00c92d01_(bus_00985c10_), .port_01ad6c51_(bus_000385fc_), .port_011977c0_(bus_01b97c46_), 
  .port_00db092b_(bus_01355240_), .port_00343aca_(bus_01107d5c_), .port_01999013_(bus_00d86805_), 
  .port_01cf9f33_(bus_008260c0_), .port_0006e212_(bus_007e3bc6_), .port_00e30902_(bus_01402698_), 
  .port_01aa935b_(bus_004aee22_), .port_01cb4ddb_(bus_01da49d8_), .port_00e99c25_(bus_015a3bad_), 
  .port_0148096f_(bus_008260c0_), .RESULT(update_weights), .RESULT_u757(update_weights_u28), 
  .RESULT_u782(update_weights_u29), .RESULT_u783(update_weights_u30), .RESULT_u784(update_weights_u31), 
  .RESULT_u762(update_weights_u32), .RESULT_u763(update_weights_u33), .RESULT_u764(update_weights_u34), 
  .RESULT_u758(update_weights_u35), .RESULT_u759(update_weights_u36), .RESULT_u760(update_weights_u37), 
  .RESULT_u761(update_weights_u38), .RESULT_u775(update_weights_u39), .RESULT_u776(update_weights_u40), 
  .RESULT_u777(update_weights_u41), .RESULT_u778(update_weights_u42), .RESULT_u768(update_weights_u43), 
  .RESULT_u769(update_weights_u44), .RESULT_u770(update_weights_u45), .RESULT_u779(update_weights_u46), 
  .RESULT_u780(update_weights_u47), .RESULT_u781(update_weights_u48), .RESULT_u765(update_weights_u49), 
  .RESULT_u766(update_weights_u50), .RESULT_u767(update_weights_u51), .RESULT_u771(update_weights_u52), 
  .RESULT_u772(update_weights_u53), .RESULT_u773(update_weights_u54), .RESULT_u774(update_weights_u55), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_weight_update_weights_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s3 Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s3_1(.bus_0042c950_(CLK), 
  .bus_00aed9b0_(bus_01fd560c_), .bus_0058f6c6_(scheduler_u175), .bus_00bf2b7b_(scheduler_u176), 
  .bus_01cbe7b3_(bus_01cbe7b3_));
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00b9b42c_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00b9b42c__1(.bus_014694d4_(CLK), 
  .bus_00d506a5_(bus_01fd560c_), .bus_01944fe2_(bus_0089951e_), .bus_01b104e0_(bus_01073724_), 
  .bus_0126bde9_(update_weights_u43), .bus_01b863ea_(update_weights_u52), .bus_01d83e9b_(32'h0), 
  .bus_01c7545c_(update_weights_u53), .bus_00f42468_(3'h1), .bus_00b7258f_(bus_00b7258f_), 
  .bus_00f9f650_(bus_00f9f650_), .bus_0198639c_(bus_0198639c_), .bus_0096a522_(bus_0096a522_), 
  .bus_00e324d4_(bus_00e324d4_), .bus_007e3bc6_(bus_007e3bc6_), .bus_008260c0_(bus_008260c0_));
Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(doneCount_mModel_go), .RESULT(doneCount_mModel), .RESULT_u785(doneCount_mModel_u3), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_019a0a1d_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_019a0a1d__1(.bus_00c7137e_(CLK), 
  .bus_01d0b69e_(bus_01fd560c_), .bus_012b4408_(bus_01c01333_), .bus_01ab15cd_(32'h0), 
  .bus_01c70fcd_(update_weights_u39), .bus_0078ffb8_(update_weights_u41), .bus_003f0889_(update_weights_u40), 
  .bus_00fbbb95_(3'h1), .bus_0124590d_(bus_0124590d_), .bus_00ac9495_(bus_00ac9495_), 
  .bus_01c5222e_(bus_01c5222e_), .bus_0138c2b5_(bus_0138c2b5_), .bus_01f4db00_(bus_01f4db00_), 
  .bus_00d86805_(bus_00d86805_));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s2 Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s2_1(.bus_0170b799_(CLK), 
  .bus_0125bd52_(bus_01fd560c_), .bus_00b22082_(scheduler_u173), .bus_01805977_(scheduler_u174), 
  .bus_0182ae4a_(bus_0182ae4a_));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s0_1(.bus_01ce6684_(CLK), 
  .bus_01ac995a_(bus_01fd560c_), .bus_01a1580b_(scheduler), .bus_00aa6354_(scheduler_u170), 
  .bus_014d79d6_(bus_014d79d6_));
Mean_Shift_Main_main_loop_cal_update_weight_scheduler Mean_Shift_Main_main_loop_cal_update_weight_scheduler_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(bus_01daf2cd_), .port_017cfa56_(bus_014d79d6_), .port_01daee56_(bus_0106212e_), 
  .port_00168d65_(bus_0182ae4a_), .port_01a6bf02_(bus_01cbe7b3_), .port_00fa5eb8_(bus_0116c52a_), 
  .port_00f4587d_(bus_00971d33_), .port_01be5a5f_(bus_018849f4_), .port_01058e10_(doneCount_mModel_done), 
  .port_01beb003_(update_weights_done), .port_01f9c1c2_(getColorModelPu_done), 
  .port_00731552_(weights_RDY), .port_01fc5835_(getBinValue_done), .port_01bd62ee_(PuModel_SEND), 
  .port_01cf4406_(doneCountSend_done), .port_00506c1b_(bin_SEND), .port_01176595_(QuModel_SEND), 
  .port_0159cb3a_(getColorModelQu_done), .port_008d29e6_(doneCount_bin_done), 
  .port_01c82200_(send_done), .RESULT(scheduler), .RESULT_u786(scheduler_u170), 
  .RESULT_u787(scheduler_u171), .RESULT_u788(scheduler_u172), .RESULT_u789(scheduler_u173), 
  .RESULT_u790(scheduler_u174), .RESULT_u791(scheduler_u175), .RESULT_u792(scheduler_u176), 
  .RESULT_u793(scheduler_u177), .RESULT_u794(scheduler_u178), .RESULT_u796(scheduler_u179), 
  .RESULT_u795(scheduler_u180), .RESULT_u798(scheduler_u181), .RESULT_u797(scheduler_u182), 
  .RESULT_u800(scheduler_u183), .RESULT_u799(scheduler_u184), .RESULT_u801(scheduler_u185), 
  .RESULT_u802(scheduler_u186), .DONE(Mean_Shift_Main_main_loop_cal_update_weight_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00d3a699_ Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00d3a699__1(.CLK_u30(CLK), 
  .bus_01d1485d_(bus_01fd560c_), .bus_009f765d_(bus_0172db2c_), .bus_013a93e3_(3'h1), 
  .bus_003380e5_(bus_00e60f5d_), .bus_01aacab9_(bus_00e93f8f_), .bus_01ca0e0b_(bus_012f21a4_), 
  .bus_015344bf_(bus_015344bf_), .bus_006011d1_(bus_006011d1_));
assign bus_007aec7b_=Mean_Shift_Main_main_loop_cal_update_weight_update_weights_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_update_weights_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_sqrtValue Mean_Shift_Main_main_loop_cal_update_weight_stateVar_sqrtValue_1(.bus_0020201b_(CLK), 
  .bus_011bdd17_(bus_01fd560c_), .bus_00608c46_(update_weights), .bus_018c261f_(update_weights_u28), 
  .bus_01b29f58_(bus_01b29f58_));
Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(getColorModelPu_go), .port_0162ac11_(bus_00971d33_), 
  .port_00dec7a1_(bus_01cdef87_), .port_01852704_(PuModel_DATA), .RESULT(getColorModelPu), 
  .RESULT_u803(getColorModelPu_u6), .RESULT_u804(getColorModelPu_u7), .RESULT_u805(getColorModelPu_u8), 
  .RESULT_u806(getColorModelPu_u9), .RESULT_u807(getColorModelPu_u10), .RESULT_u808(getColorModelPu_u11), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(getColorModelQu_go), .port_0160dcae_(bus_00971d33_), 
  .port_0100bacc_(bus_00110351_), .port_01ca3a94_(QuModel_DATA), .RESULT(getColorModelQu), 
  .RESULT_u809(getColorModelQu_u6), .RESULT_u810(getColorModelQu_u7), .RESULT_u811(getColorModelQu_u8), 
  .RESULT_u812(getColorModelQu_u9), .RESULT_u813(getColorModelQu_u10), .RESULT_u814(getColorModelQu_u11), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu_instance_DONE));
assign bus_01ba280d_=Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(doneCount_bin_go), .RESULT(doneCount_bin), .RESULT_u815(doneCount_bin_u9), 
  .RESULT_u816(doneCount_bin_u10), .RESULT_u817(doneCount_bin_u11), .DONE(Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f0e25f_ Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f0e25f__1(.CLK_u31(CLK), 
  .bus_0102e69f_(bus_01fd560c_), .bus_01a425a7_(bus_00f9f650_), .bus_018f6901_(3'h1), 
  .bus_015d4f64_(bus_0096a522_), .bus_00b28dfa_(bus_0198639c_), .bus_00a6858b_(32'h0), 
  .bus_002a6d38_(bus_00ac9495_), .bus_004089f4_(3'h1), .bus_001e6b55_(bus_01c5222e_), 
  .bus_00064d59_(bus_0124590d_), .bus_01073724_(bus_01073724_), .bus_0089951e_(bus_0089951e_), 
  .bus_01c01333_(bus_01c01333_));
assign bus_0026a958_=Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_009af39b_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_009af39b__1(.bus_012d6ad1_(CLK), 
  .bus_00bffc77_(bus_01fd560c_), .bus_00d743b1_(bus_0050210a_), .bus_010df0de_(bus_0157bd65_), 
  .bus_01969247_(getColorModelQu_u7), .bus_01d098e0_(getColorModelQu_u9), .bus_0199c1ee_(getColorModelQu_u8), 
  .bus_00cacbe8_(3'h1), .bus_0067937b_(update_weights_u29), .bus_0151df80_(update_weights_u30), 
  .bus_00ace3b0_(3'h1), .bus_00408aa5_(bus_00408aa5_), .bus_00c3dde4_(bus_00c3dde4_), 
  .bus_01095f15_(bus_01095f15_), .bus_00ca06e0_(bus_00ca06e0_), .bus_0041f6e9_(bus_0041f6e9_), 
  .bus_00110351_(bus_00110351_), .bus_000385fc_(bus_000385fc_), .bus_00985c10_(bus_00985c10_));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_1(.bus_00fb3c0d_(CLK), 
  .bus_00237e16_(bus_01fd560c_), .bus_0162f35f_(getColorModelQu), .bus_00c7be8e_(getColorModelQu_u6), 
  .bus_01f70b9e_(getColorModelPu), .bus_0037f704_(getColorModelPu_u6), .bus_00632298_(doneCount_mModel), 
  .bus_01cd56ad_(32'h0), .bus_00971d33_(bus_00971d33_));
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0097f16a_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0097f16a__1(.bus_00b5ccb5_(CLK), 
  .bus_0192ab8c_(bus_01fd560c_), .bus_00dfb10f_(bus_017edaa2_), .bus_014bea73_(bus_00b45122_), 
  .bus_01f8061b_(update_weights_u35), .bus_01b3c340_(update_weights_u37), .bus_00662fb7_(update_weights_u36), 
  .bus_005a285f_(3'h1), .bus_015a0eec_(send_u67), .bus_00f43af4_(send_u68), .bus_00e4662b_(3'h1), 
  .bus_010d4aa3_(bus_010d4aa3_), .bus_01f8fb88_(bus_01f8fb88_), .bus_0145d6f6_(bus_0145d6f6_), 
  .bus_01e36f03_(bus_01e36f03_), .bus_0138888b_(bus_0138888b_), .bus_01107d5c_(bus_01107d5c_), 
  .bus_0189a8a5_(bus_0189a8a5_), .bus_00efc6d9_(bus_00efc6d9_));
Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01c072c4_ Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01c072c4__1(.CLK_u32(CLK), 
  .bus_01980751_(bus_01fd560c_), .bus_00c50fa5_(bus_00c3dde4_), .bus_01822593_(3'h1), 
  .bus_006e34f8_(bus_00ca06e0_), .bus_01a39ed5_(bus_01095f15_), .bus_00c27bd6_(bus_00408aa5_), 
  .bus_0157bd65_(bus_0157bd65_), .bus_0050210a_(bus_0050210a_));
Mean_Shift_Main_main_loop_cal_update_weight_getBinValue Mean_Shift_Main_main_loop_cal_update_weight_getBinValue_instance(.CLK(CLK), 
  .RESET(bus_01fd560c_), .GO(getBinValue_go), .port_01ef67f7_(bus_018849f4_), .port_00047038_(bus_00245aad_), 
  .port_01e412f9_(bus_01a828dd_), .port_007ccfee_(bin_DATA), .RESULT(getBinValue), 
  .RESULT_u818(getBinValue_u8), .RESULT_u819(getBinValue_u9), .RESULT_u820(getBinValue_u10), 
  .RESULT_u821(getBinValue_u11), .RESULT_u822(getBinValue_u12), .RESULT_u823(getBinValue_u13), 
  .RESULT_u824(getBinValue_u14), .RESULT_u825(getBinValue_u15), .DONE(Mean_Shift_Main_main_loop_cal_update_weight_getBinValue_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_weight_Kicker_14 Mean_Shift_Main_main_loop_cal_update_weight_Kicker_14_1(.CLK(CLK), 
  .RESET(bus_01fd560c_), .bus_01daf2cd_(bus_01daf2cd_));
Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_x Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_x_1(.bus_005fedf4_(CLK), 
  .bus_01ff60a1_(bus_01fd560c_), .bus_00f1c049_(getBinValue), .bus_01ed6e14_(getBinValue_u8), 
  .bus_0152e28f_(doneCount_bin_u10), .bus_013a6d2c_(32'h0), .bus_00f03fbb_(send), 
  .bus_00944272_(send_u64), .bus_014fd15d_(doneCountSend_u4), .bus_01bfe2b0_(32'h0), 
  .bus_018849f4_(bus_018849f4_));
Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_015bbe34_ Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_015bbe34__1(.bus_009f3fe0_(CLK), 
  .bus_011ab373_(bus_01fd560c_), .bus_017035e5_(bus_006011d1_), .bus_01e1c48d_(bus_015344bf_), 
  .bus_0159f537_(getBinValue_u11), .bus_01deb81b_(getBinValue_u13), .bus_005a92b3_(getBinValue_u12), 
  .bus_001ffb40_(3'h1), .bus_012a8bf6_(update_weights_u46), .bus_009d67d8_(update_weights_u47), 
  .bus_006696f2_(3'h1), .bus_012f21a4_(bus_012f21a4_), .bus_0172db2c_(bus_0172db2c_), 
  .bus_00e93f8f_(bus_00e93f8f_), .bus_00e60f5d_(bus_00e60f5d_), .bus_00f92f33_(bus_00f92f33_), 
  .bus_01a828dd_(bus_01a828dd_), .bus_004aee22_(bus_004aee22_), .bus_01402698_(bus_01402698_));
Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00ad6271_ Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00ad6271__1(.CLK_u33(CLK), 
  .bus_005e0962_(bus_01fd560c_), .bus_017cdc15_(bus_01f8fb88_), .bus_00d6811b_(3'h1), 
  .bus_009a2024_(bus_01e36f03_), .bus_0038c05a_(bus_0145d6f6_), .bus_0187152b_(bus_010d4aa3_), 
  .bus_00b45122_(bus_00b45122_), .bus_017edaa2_(bus_017edaa2_));
assign bus_0125c5c4_=Mean_Shift_Main_main_loop_cal_update_weight_getBinValue_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_weight_getBinValue_instance_DONE}};
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00f5f36a_(bus_00a03358_, bus_018b154d_, bus_012f33f0_, bus_0031b5a0_, bus_017fdc54_, bus_00d3c8bc_, bus_00a4515f_, bus_018b4bb0_, bus_00b6e71c_, bus_01e299cf_, bus_013e6a92_, bus_0037440e_, bus_015a3bad_, bus_01da49d8_);
input		bus_00a03358_;
input		bus_018b154d_;
input		bus_012f33f0_;
input	[31:0]	bus_0031b5a0_;
input		bus_017fdc54_;
input	[31:0]	bus_00d3c8bc_;
input	[2:0]	bus_00a4515f_;
output	[31:0]	bus_018b4bb0_;
output	[31:0]	bus_00b6e71c_;
output		bus_01e299cf_;
output		bus_013e6a92_;
output	[2:0]	bus_0037440e_;
output	[31:0]	bus_015a3bad_;
output		bus_01da49d8_;
assign bus_018b4bb0_=32'h0;
assign bus_00b6e71c_=bus_00d3c8bc_;
assign bus_01e299cf_=1'h0;
assign bus_013e6a92_=bus_017fdc54_;
assign bus_0037440e_=3'h1;
assign bus_015a3bad_=bus_0031b5a0_;
assign bus_01da49d8_=bus_012f33f0_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_send(CLK, RESET, GO, port_0051776b_, port_017f567c_, port_01cbb792_, port_003aa554_, RESULT, RESULT_u745, RESULT_u746, RESULT_u747, RESULT_u748, RESULT_u749, RESULT_u750, RESULT_u751, RESULT_u752, RESULT_u753, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0051776b_;
input	[31:0]	port_017f567c_;
input		port_01cbb792_;
input	[31:0]	port_003aa554_;
output		RESULT;
output	[31:0]	RESULT_u745;
output		RESULT_u746;
output	[31:0]	RESULT_u747;
output		RESULT_u748;
output	[31:0]	RESULT_u749;
output	[2:0]	RESULT_u750;
output		RESULT_u751;
output	[15:0]	RESULT_u752;
output	[31:0]	RESULT_u753;
output		DONE;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u68;
wire	[31:0]	add;
wire	[31:0]	add_u369;
wire		or_u338_u0;
wire		and_u1157_u0;
reg		done_cache_u42=1'h0;
wire	[31:0]	add_u370;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_a_signed;
wire		equals;
wire		and_u1158_u0;
wire		and_u1159_u0;
wire		not_u237_u0;
wire	[31:0]	add_u371;
wire		and_u1160_u0;
wire	[31:0]	mux_u364;
wire	[31:0]	mux_u365_u0;
wire		and_u1161_u0;
wire	[15:0]	simplePinWrite;
wire	[31:0]	simplePinWrite_u168;
wire		simplePinWrite_u169;
reg	[31:0]	syncEnable_u289=32'h0;
reg		reg_004fc806_u0=1'h0;
reg		reg_0118e1d5_u0=1'h0;
assign subtract={port_0051776b_[26:0], 5'b0}-{port_0051776b_[29:0], 2'b0};
assign subtract_u68=subtract-port_0051776b_;
assign add=subtract_u68+port_017f567c_;
assign add_u369=32'h0+add;
assign or_u338_u0=and_u1157_u0|RESET;
assign and_u1157_u0=done_cache_u42&port_01cbb792_;
always @(posedge CLK or posedge reg_0118e1d5_u0 or posedge or_u338_u0)
begin
if (or_u338_u0)
done_cache_u42<=1'h0;
else if (reg_0118e1d5_u0)
done_cache_u42<=1'h1;
else done_cache_u42<=done_cache_u42;
end
assign add_u370=port_017f567c_+32'h1;
assign equals_a_signed=add_u370;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1158_u0=GO&not_u237_u0;
assign and_u1159_u0=GO&equals;
assign not_u237_u0=~equals;
assign add_u371=port_0051776b_+32'h1;
assign and_u1160_u0=and_u1158_u0&GO;
assign mux_u364=(and_u1160_u0)?add_u370:32'h0;
assign mux_u365_u0=(and_u1160_u0)?port_0051776b_:add_u371;
assign and_u1161_u0=and_u1159_u0&GO;
assign simplePinWrite=16'h1&{16{1'h1}};
assign simplePinWrite_u168=port_003aa554_;
assign simplePinWrite_u169=reg_004fc806_u0&{1{reg_004fc806_u0}};
always @(posedge CLK)
begin
if (GO)
syncEnable_u289<=add_u369;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004fc806_u0<=1'h0;
else reg_004fc806_u0<=reg_0118e1d5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0118e1d5_u0<=1'h0;
else reg_0118e1d5_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u745=mux_u365_u0;
assign RESULT_u746=GO;
assign RESULT_u747=mux_u364;
assign RESULT_u748=reg_0118e1d5_u0;
assign RESULT_u749=syncEnable_u289;
assign RESULT_u750=3'h1;
assign RESULT_u751=simplePinWrite_u169;
assign RESULT_u752=simplePinWrite;
assign RESULT_u753=simplePinWrite_u168;
assign DONE=reg_004fc806_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_53(CLK, ENA, WEA, DINA, ENB, ADDRA, ADDRB, DOUTA, DOUTB, DONEA, DONEB);
input		CLK;
input		ENA;
input		WEA;
input	[31:0]	DINA;
input		ENB;
input	[31:0]	ADDRA;
input	[31:0]	ADDRB;
output	[31:0]	DOUTA;
output	[31:0]	DOUTB;
output		DONEA;
output		DONEB;
wire		wea_0;
wire	[31:0]	pre_douta_0;
wire	[31:0]	pre_doutb_0;
reg	[31:0]	mux_outa;
reg	[31:0]	mux_outb;
reg	[31:0]	ADDRA_reg;
reg	[31:0]	ADDRB_reg;
reg		rea_done;
reg		wea_done;
reg		reb_done;
assign wea_0=WEA&(ADDRA[31:12]==20'h0);
always @(posedge CLK)
begin
ADDRA_reg<=ADDRA;
end
always @(pre_douta_0)
begin
mux_outa<=pre_douta_0;
end
always @(posedge CLK)
begin
ADDRB_reg<=ADDRB;
end
always @(pre_doutb_0)
begin
mux_outb<=pre_doutb_0;
end
always @(posedge CLK)
begin
wea_done<=WEA;
rea_done<=ENA;
reb_done<=ENB;
end
assign DONEA=wea_done|rea_done;
assign DONEB=reb_done;
assign DOUTA=mux_outa;
assign DOUTB=mux_outb;
// Memory array element: COL: 0, ROW: 0
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_54(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[3:0]), .DOA(pre_douta_0[3:0]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[3:0]));
// Memory array element: COL: 0, ROW: 1
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_55(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[7:4]), .DOA(pre_douta_0[7:4]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[7:4]));
// Memory array element: COL: 0, ROW: 2
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_56(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[11:8]), .DOA(pre_douta_0[11:8]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[11:8]));
// Memory array element: COL: 0, ROW: 3
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_57(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[15:12]), .DOA(pre_douta_0[15:12]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[15:12]));
// Memory array element: COL: 0, ROW: 4
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_58(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[19:16]), .DOA(pre_douta_0[19:16]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[19:16]));
// Memory array element: COL: 0, ROW: 5
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_59(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[23:20]), .DOA(pre_douta_0[23:20]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[23:20]));
// Memory array element: COL: 0, ROW: 6
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_60(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[27:24]), .DOA(pre_douta_0[27:24]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[27:24]));
// Memory array element: COL: 0, ROW: 7
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_61(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[31:28]), .DOA(pre_douta_0[31:28]), 
  .CLKB(CLK), .WEB(1'b0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(4'b0), .DOB(pre_doutb_0[31:28]));
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f5930f_(CLK_u29, bus_0102ef32_, bus_01f540b7_, bus_004e0324_, bus_0163c0b7_, bus_005b1549_, bus_0194f7a3_, bus_00cebfb2_, bus_0104f9be_, bus_0139aede_, bus_000148bc_, bus_010e04af_, bus_00079a7b_, bus_0174337c_);
input		CLK_u29;
input		bus_0102ef32_;
input	[31:0]	bus_01f540b7_;
input	[2:0]	bus_004e0324_;
input		bus_0163c0b7_;
input		bus_005b1549_;
input	[31:0]	bus_0194f7a3_;
input	[31:0]	bus_00cebfb2_;
input	[2:0]	bus_0104f9be_;
input		bus_0139aede_;
output	[31:0]	bus_000148bc_;
output		bus_010e04af_;
output	[31:0]	bus_00079a7b_;
output		bus_0174337c_;
reg		logicalMem_9f08cb_re_delay0_u0=1'h0;
reg		logicalMem_9f08cb_we_delay0_u0=1'h0;
wire	[31:0]	bus_00019377_;
wire	[31:0]	bus_0000f12d_;
reg		logicalMem_9f08cb_re_delay0_u1_u0=1'h0;
wire		or_003277d7_u0;
wire		or_0131c7dc_u0;
always @(posedge CLK_u29 or posedge bus_0102ef32_)
begin
if (bus_0102ef32_)
logicalMem_9f08cb_re_delay0_u0<=1'h0;
else logicalMem_9f08cb_re_delay0_u0<=bus_0139aede_;
end
always @(posedge CLK_u29 or posedge bus_0102ef32_)
begin
if (bus_0102ef32_)
logicalMem_9f08cb_we_delay0_u0<=1'h0;
else logicalMem_9f08cb_we_delay0_u0<=bus_005b1549_;
end
Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_53 Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_53_instance0(.CLK(CLK_u29), 
  .ENA(or_0131c7dc_u0), .WEA(bus_005b1549_), .DINA(bus_0194f7a3_), .ADDRA(bus_01f540b7_), 
  .DOUTA(bus_00019377_), .DONEA(), .ENB(bus_0139aede_), .ADDRB(bus_00cebfb2_), .DOUTB(bus_0000f12d_), 
  .DONEB());
always @(posedge CLK_u29 or posedge bus_0102ef32_)
begin
if (bus_0102ef32_)
logicalMem_9f08cb_re_delay0_u1_u0<=1'h0;
else logicalMem_9f08cb_re_delay0_u1_u0<=bus_0163c0b7_;
end
assign bus_000148bc_=bus_00019377_;
assign bus_010e04af_=or_003277d7_u0;
assign bus_00079a7b_=bus_0000f12d_;
assign bus_0174337c_=logicalMem_9f08cb_re_delay0_u0;
assign or_003277d7_u0=logicalMem_9f08cb_re_delay0_u1_u0|logicalMem_9f08cb_we_delay0_u0;
assign or_0131c7dc_u0=bus_0163c0b7_|bus_005b1549_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_globalreset_physical_00231b07_(bus_0005cdcb_, bus_002c6d26_, bus_01fd560c_);
input		bus_0005cdcb_;
input		bus_002c6d26_;
output		bus_01fd560c_;
wire		and_016ee13b_u0;
reg		glitch_u14=1'h0;
wire		or_00b1e943_u0;
reg		sample_u14=1'h0;
reg		cross_u14=1'h0;
reg		final_u14=1'h1;
wire		not_002e642a_u0;
assign and_016ee13b_u0=cross_u14&glitch_u14;
always @(posedge bus_0005cdcb_)
begin
glitch_u14<=cross_u14;
end
assign bus_01fd560c_=or_00b1e943_u0;
assign or_00b1e943_u0=bus_002c6d26_|final_u14;
always @(posedge bus_0005cdcb_)
begin
sample_u14<=1'h1;
end
always @(posedge bus_0005cdcb_)
begin
cross_u14<=sample_u14;
end
always @(posedge bus_0005cdcb_)
begin
final_u14<=not_002e642a_u0;
end
assign not_002e642a_u0=~and_016ee13b_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s1(bus_01db6a04_, bus_000d5ab2_, bus_00f90df0_, bus_00d8292c_, bus_0106212e_);
input		bus_01db6a04_;
input		bus_000d5ab2_;
input		bus_00f90df0_;
input		bus_00d8292c_;
output		bus_0106212e_;
reg		stateVar_state_s1_u12=1'h0;
assign bus_0106212e_=stateVar_state_s1_u12;
always @(posedge bus_01db6a04_ or posedge bus_000d5ab2_)
begin
if (bus_000d5ab2_)
stateVar_state_s1_u12<=1'h0;
else if (bus_00f90df0_)
stateVar_state_s1_u12<=bus_00d8292c_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_doneCountSend(CLK, RESET, GO, RESULT, RESULT_u754, RESULT_u755, RESULT_u756, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u754;
output		RESULT_u755;
output	[31:0]	RESULT_u756;
output		DONE;
reg		reg_00d95610_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d95610_u0<=1'h0;
else reg_00d95610_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u754=32'h0;
assign RESULT_u755=GO;
assign RESULT_u756=32'h0;
assign DONE=reg_00d95610_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0160c405_(bus_01178493_, bus_0100e0e4_, bus_01de2826_, bus_01c531e8_, bus_015484e1_, bus_0108d6b5_, bus_01fba782_, bus_00e4e655_, bus_00dfa6a3_, bus_006fcd6c_, bus_019a10a0_, bus_014fa87d_, bus_00675f0a_, bus_004eebfb_, bus_003248e6_, bus_0067e5b6_, bus_01cdef87_, bus_01355240_, bus_01b97c46_);
input		bus_01178493_;
input		bus_0100e0e4_;
input		bus_01de2826_;
input	[31:0]	bus_01c531e8_;
input		bus_015484e1_;
input	[31:0]	bus_0108d6b5_;
input	[31:0]	bus_01fba782_;
input	[2:0]	bus_00e4e655_;
input		bus_00dfa6a3_;
input	[31:0]	bus_006fcd6c_;
input	[2:0]	bus_019a10a0_;
output	[31:0]	bus_014fa87d_;
output	[31:0]	bus_00675f0a_;
output		bus_004eebfb_;
output		bus_003248e6_;
output	[2:0]	bus_0067e5b6_;
output		bus_01cdef87_;
output	[31:0]	bus_01355240_;
output		bus_01b97c46_;
wire		or_01304e58_u0;
wire		or_013a0f8f_u0;
reg		done_qual_u63=1'h0;
reg		done_qual_u64_u0=1'h0;
wire		not_0098f059_u0;
wire		and_01dba09c_u0;
wire		or_004a0188_u0;
wire		and_00070fe8_u0;
wire		not_017ac324_u0;
wire	[31:0]	mux_00e20c9f_u0;
wire	[31:0]	mux_002cdbf1_u0;
assign or_01304e58_u0=bus_015484e1_|bus_00dfa6a3_;
assign or_013a0f8f_u0=bus_015484e1_|done_qual_u63;
always @(posedge bus_01178493_)
begin
if (bus_0100e0e4_)
done_qual_u63<=1'h0;
else done_qual_u63<=bus_015484e1_;
end
always @(posedge bus_01178493_)
begin
if (bus_0100e0e4_)
done_qual_u64_u0<=1'h0;
else done_qual_u64_u0<=bus_00dfa6a3_;
end
assign not_0098f059_u0=~bus_01de2826_;
assign and_01dba09c_u0=or_004a0188_u0&bus_01de2826_;
assign bus_014fa87d_=mux_00e20c9f_u0;
assign bus_00675f0a_=mux_002cdbf1_u0;
assign bus_004eebfb_=bus_015484e1_;
assign bus_003248e6_=or_01304e58_u0;
assign bus_0067e5b6_=3'h1;
assign bus_01cdef87_=and_00070fe8_u0;
assign bus_01355240_=bus_01c531e8_;
assign bus_01b97c46_=and_01dba09c_u0;
assign or_004a0188_u0=bus_00dfa6a3_|done_qual_u64_u0;
assign and_00070fe8_u0=or_013a0f8f_u0&bus_01de2826_;
assign not_017ac324_u0=~bus_01de2826_;
assign mux_00e20c9f_u0=({32{bus_015484e1_}}&bus_0108d6b5_);
assign mux_002cdbf1_u0=(bus_015484e1_)?bus_01fba782_:bus_006fcd6c_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s4(bus_00e5f976_, bus_005cd550_, bus_01f515f3_, bus_0066f743_, bus_0116c52a_);
input		bus_00e5f976_;
input		bus_005cd550_;
input		bus_01f515f3_;
input		bus_0066f743_;
output		bus_0116c52a_;
reg		stateVar_state_s4_u1=1'h0;
always @(posedge bus_00e5f976_ or posedge bus_005cd550_)
begin
if (bus_005cd550_)
stateVar_state_s4_u1<=1'h0;
else if (bus_01f515f3_)
stateVar_state_s4_u1<=bus_0066f743_;
end
assign bus_0116c52a_=stateVar_state_s4_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0033f9b5_(endianswapper_0033f9b5_in, endianswapper_0033f9b5_out);
input	[31:0]	endianswapper_0033f9b5_in;
output	[31:0]	endianswapper_0033f9b5_out;
assign endianswapper_0033f9b5_out=endianswapper_0033f9b5_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01f69301_(endianswapper_01f69301_in, endianswapper_01f69301_out);
input	[31:0]	endianswapper_01f69301_in;
output	[31:0]	endianswapper_01f69301_out;
assign endianswapper_01f69301_out=endianswapper_01f69301_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_y(bus_016c2145_, bus_01fc7436_, bus_008c48e5_, bus_00647e95_, bus_01776ccf_, bus_004f504f_, bus_01267de3_, bus_01738493_, bus_0147183a_, bus_011e8fc2_, bus_00245aad_);
input		bus_016c2145_;
input		bus_01fc7436_;
input		bus_008c48e5_;
input	[31:0]	bus_00647e95_;
input		bus_01776ccf_;
input	[31:0]	bus_004f504f_;
input		bus_01267de3_;
input	[31:0]	bus_01738493_;
input		bus_0147183a_;
input	[31:0]	bus_011e8fc2_;
output	[31:0]	bus_00245aad_;
wire	[31:0]	endianswapper_0033f9b5_out;
wire		or_01ba651d_u0;
wire	[31:0]	endianswapper_01f69301_out;
reg	[31:0]	stateVar_count_y_u5=32'h0;
wire	[31:0]	mux_01620ba8_u0;
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0033f9b5_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0033f9b5__1(.endianswapper_0033f9b5_in(mux_01620ba8_u0), 
  .endianswapper_0033f9b5_out(endianswapper_0033f9b5_out));
assign or_01ba651d_u0=bus_008c48e5_|bus_01776ccf_|bus_01267de3_|bus_0147183a_;
assign bus_00245aad_=endianswapper_01f69301_out;
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01f69301_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01f69301__1(.endianswapper_01f69301_in(stateVar_count_y_u5), 
  .endianswapper_01f69301_out(endianswapper_01f69301_out));
always @(posedge bus_016c2145_ or posedge bus_01fc7436_)
begin
if (bus_01fc7436_)
stateVar_count_y_u5<=32'h0;
else if (or_01ba651d_u0)
stateVar_count_y_u5<=endianswapper_0033f9b5_out;
end
assign mux_01620ba8_u0=({32{bus_008c48e5_}}&bus_00647e95_)|({32{bus_01776ccf_}}&32'h0)|({32{bus_01267de3_}}&bus_01738493_)|({32{bus_0147183a_}}&32'h0);
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_update_weights(CLK, RESET, GO, port_01b89954_, port_00343aca_, port_011977c0_, port_00db092b_, port_01cb4ddb_, port_00e99c25_, port_01cf9f33_, port_0006e212_, port_0148096f_, port_01999013_, port_00e30902_, port_01aa935b_, port_00c92d01_, port_01ad6c51_, RESULT, RESULT_u757, RESULT_u758, RESULT_u759, RESULT_u760, RESULT_u761, RESULT_u762, RESULT_u763, RESULT_u764, RESULT_u765, RESULT_u766, RESULT_u767, RESULT_u768, RESULT_u769, RESULT_u770, RESULT_u771, RESULT_u772, RESULT_u773, RESULT_u774, RESULT_u775, RESULT_u776, RESULT_u777, RESULT_u778, RESULT_u779, RESULT_u780, RESULT_u781, RESULT_u782, RESULT_u783, RESULT_u784, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01b89954_;
input		port_00343aca_;
input		port_011977c0_;
input	[31:0]	port_00db092b_;
input		port_01cb4ddb_;
input	[31:0]	port_00e99c25_;
input		port_01cf9f33_;
input	[31:0]	port_0006e212_;
input		port_0148096f_;
input		port_01999013_;
input		port_00e30902_;
input	[31:0]	port_01aa935b_;
input		port_00c92d01_;
input	[31:0]	port_01ad6c51_;
output		RESULT;
output	[31:0]	RESULT_u757;
output		RESULT_u758;
output	[31:0]	RESULT_u759;
output	[31:0]	RESULT_u760;
output	[2:0]	RESULT_u761;
output		RESULT_u762;
output	[31:0]	RESULT_u763;
output	[2:0]	RESULT_u764;
output		RESULT_u765;
output	[31:0]	RESULT_u766;
output	[2:0]	RESULT_u767;
output		RESULT_u768;
output	[31:0]	RESULT_u769;
output	[2:0]	RESULT_u770;
output		RESULT_u771;
output	[31:0]	RESULT_u772;
output	[31:0]	RESULT_u773;
output	[2:0]	RESULT_u774;
output		RESULT_u775;
output	[31:0]	RESULT_u776;
output	[31:0]	RESULT_u777;
output	[2:0]	RESULT_u778;
output		RESULT_u779;
output	[31:0]	RESULT_u780;
output	[2:0]	RESULT_u781;
output		RESULT_u782;
output	[31:0]	RESULT_u783;
output	[2:0]	RESULT_u784;
output		DONE;
wire		and_u1162_u0;
wire		and_u1163_u0;
wire		lessThanEqualTo;
wire signed	[31:0]	lessThanEqualTo_b_signed;
wire signed	[31:0]	lessThanEqualTo_a_signed;
wire		and_u1164_u0;
wire		not_u238_u0;
wire		and_u1165_u0;
wire	[31:0]	add;
wire		and_u1166_u0;
reg		done_cache_u43=1'h0;
wire		or_u339_u0;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_b_signed;
wire		equals;
wire		and_u1167_u0;
wire		not_u239_u0;
wire		and_u1168_u0;
wire	[31:0]	add_u372;
reg		reg_00245596_u0=1'h0;
wire		or_u340_u0;
wire		and_u1169_u0;
wire	[31:0]	add_u373;
wire		or_u341_u0;
reg		done_cache_u44_u0=1'h0;
wire		and_u1170_u0;
wire	[31:0]	add_u374;
reg		done_cache_u45_u0=1'h0;
wire		and_u1171_u0;
wire		or_u342_u0;
wire signed	[31:0]	lessThan_b_signed;
wire signed	[31:0]	lessThan_a_signed;
wire		lessThan;
wire		and_u1172_u0;
wire		not_u240_u0;
wire		and_u1173_u0;
wire	[31:0]	minus;
wire		and_u1174_u0;
wire	[31:0]	mux_u366;
wire		and_u1175_u0;
wire	[31:0]	mux_u367_u0;
wire signed	[31:0]	lessThan_u15_b_signed;
wire		lessThan_u15;
wire signed	[31:0]	lessThan_u15_a_signed;
wire		not_u241_u0;
wire		and_u1176_u0;
wire		and_u1177_u0;
wire	[31:0]	minus_u23;
wire	[31:0]	xor_u5;
wire		and_u1178_u0;
wire	[31:0]	mux_u368_u0;
wire	[31:0]	mux_u369_u0;
wire		and_u1179_u0;
wire		and_u1180_u0;
wire signed	[31:0]	lessThan_u16_a_signed;
wire		lessThan_u16;
wire signed	[31:0]	lessThan_u16_b_signed;
wire		and_u1181_u0;
wire		and_u1182_u0;
wire		not_u242_u0;
wire		and_u1183_u0;
wire	[31:0]	or_u343;
wire	[4:0]	subtract;
wire	[31:0]	leftShift_stage_1;
wire	[31:0]	leftShift;
wire	[31:0]	leftShift_stage_2;
wire	[31:0]	leftShift_stage_3;
wire	[31:0]	leftShift_stage_4;
wire	[31:0]	subtract_u69;
wire	[31:0]	add_u375;
wire	[31:0]	mux_u370_u0;
reg	[31:0]	fbReg_inlined_remainder0_1_1_u4=32'h0;
wire	[31:0]	mux_u371_u0;
wire		and_u1184_u0;
reg	[31:0]	fbReg_inlined_i0_1_1_u5=32'h0;
wire		or_u344_u0;
reg	[31:0]	fbReg_inlined_result0_1_1_u4=32'h0;
reg	[31:0]	fbReg_inlined_mask0_1_1_u4=32'h0;
reg	[31:0]	latch_01a07ff8_reg=32'h0;
wire	[31:0]	latch_01a07ff8_out;
wire		and_u1185_u0;
wire	[31:0]	mux_u372_u0;
reg		loopControl_u24=1'h0;
wire	[31:0]	mux_u373_u0;
wire signed	[31:0]	notEquals_b_signed;
wire		notEquals;
wire signed	[31:0]	notEquals_a_signed;
wire		and_u1186_u0;
wire		and_u1187_u0;
wire		not_u243_u0;
wire	[31:0]	minus_u24;
wire	[31:0]	mux_u374_u0;
wire		and_u1188_u0;
wire		and_u1189_u0;
wire		and_u1190_u0;
wire		and_u1191_u0;
wire		and_u1192_u0;
wire signed	[63:0]	multiply_a_signed;
wire signed	[63:0]	multiply_b_signed;
wire	[63:0]	multiply;
wire signed	[63:0]	equals_u14_a_signed;
wire signed	[63:0]	equals_u14_b_signed;
wire		equals_u14;
wire		not_u244_u0;
wire		and_u1193_u0;
wire		and_u1194_u0;
wire	[31:0]	mux_u375_u0;
wire	[31:0]	mux_u376_u0;
wire	[31:0]	mux_u377_u0;
wire		and_u1195_u0;
wire		and_u1196_u0;
wire	[31:0]	add_u376;
wire		lessThanEqualTo_u23;
wire signed	[31:0]	lessThanEqualTo_u23_a_signed;
wire signed	[31:0]	lessThanEqualTo_u23_b_signed;
wire		and_u1197_u0;
wire		and_u1198_u0;
wire		not_u245_u0;
wire		and_u1199_u0;
wire	[31:0]	mux_u378_u0;
reg		loopControl_u25_u0=1'h0;
wire	[31:0]	latch_0053a988_out;
reg	[31:0]	latch_0053a988_reg=32'h0;
wire		and_u1200_u0;
reg	[31:0]	fbReg_inlined_N4_5_5_u2=32'h0;
wire		and_u1201_u0;
reg	[31:0]	fbReg_inlined_j5_6_6_u2=32'h0;
wire	[31:0]	mux_u379_u0;
wire		or_u345_u0;
wire	[31:0]	mux_u380_u0;
reg	[31:0]	fbReg_inlined_pSq4_5_5_u2=32'h0;
wire signed	[31:0]	greaterThan_b_signed;
wire		greaterThan;
wire signed	[31:0]	greaterThan_a_signed;
wire		and_u1202_u0;
wire		and_u1203_u0;
wire		not_u246_u0;
wire	[31:0]	mux_u381_u0;
wire		and_u1204_u0;
wire		and_u1205_u0;
wire	[31:0]	subtract_u70;
wire	[31:0]	latch_00fbde1a_out;
reg	[31:0]	latch_00fbde1a_reg=32'h0;
wire signed	[31:0]	greaterThan_u11_a_signed;
wire		greaterThan_u11;
wire signed	[31:0]	greaterThan_u11_b_signed;
wire		and_u1206_u0;
wire		and_u1207_u0;
wire		not_u247_u0;
wire	[31:0]	mux_u382_u0;
reg	[31:0]	fbReg_inlined_i4_1_1_u2=32'h0;
wire	[31:0]	mux_u383_u0;
reg	[31:0]	fbReg_inlined_pSq0_1_1_u2=32'h0;
wire	[31:0]	mux_u384_u0;
wire		or_u346_u0;
wire		latch_0113b893_out;
reg		latch_0113b893_reg=1'h0;
reg		loopControl_u26_u0=1'h0;
reg	[31:0]	fbReg_inlined_N0_1_1_u2=32'h0;
wire	[31:0]	add_u377;
wire		or_u347_u0;
reg		reg_011010b1_u0=1'h0;
wire		and_u1208_u0;
reg		reg_01a16c23_u0=1'h0;
reg		reg_00fc0901_u0=1'h0;
reg		reg_01a16c23_result_delayed_u0=1'h0;
reg		block_GO_delayed_u33=1'h0;
reg	[31:0]	syncEnable_u290=32'h0;
reg		latch_0147024e_reg=1'h0;
wire		latch_0147024e_out;
wire		and_u1209_u0;
wire		and_u1210_u0;
reg		and_delayed_u63=1'h0;
wire		or_u348_u0;
wire	[31:0]	add_u378;
reg	[31:0]	syncEnable_u291_u0=32'h0;
reg	[31:0]	syncEnable_u292_u0=32'h0;
reg		block_GO_delayed_u34_u0=1'h0;
wire		or_u349_u0;
wire	[31:0]	mux_u385_u0;
wire		and_u1211_u0;
wire		and_u1212_u0;
reg		reg_00e2a86c_u0=1'h0;
wire		and_u1213_u0;
reg		reg_0105ef89_u0=1'h0;
wire	[31:0]	subtract_u71;
wire	[31:0]	subtract_u72;
wire	[31:0]	add_u379;
wire	[31:0]	add_u380;
wire		or_u350_u0;
wire		and_u1214_u0;
reg		done_cache_u46_u0=1'h0;
wire	[31:0]	add_u381;
wire		or_u351_u0;
reg		done_cache_u47_u0=1'h0;
wire		and_u1215_u0;
wire	[31:0]	subtract_u73;
wire	[31:0]	subtract_u74;
wire	[31:0]	add_u382;
wire	[31:0]	add_u383;
wire		or_u352_u0;
wire		and_u1216_u0;
reg		reg_01548d9f_u0=1'h0;
wire	[31:0]	add_u384;
reg		reg_01feed71_u0=1'h0;
reg		block_GO_delayed_u35_u0=1'h0;
reg	[31:0]	syncEnable_u293_u0=32'h0;
reg		reg_01feed71_result_delayed_u0=1'h0;
reg	[31:0]	syncEnable_u294_u0=32'h0;
reg	[31:0]	syncEnable_u295_u0=32'h0;
reg	[31:0]	syncEnable_u296_u0=32'h0;
reg	[31:0]	syncEnable_u297_u0=32'h0;
reg		reg_00923e1b_u0=1'h0;
wire		and_u1217_u0;
wire		lessThanEqualTo_u24;
wire signed	[31:0]	lessThanEqualTo_u24_a_signed;
wire signed	[31:0]	lessThanEqualTo_u24_b_signed;
wire		and_u1218_u0;
wire		not_u248_u0;
wire		and_u1219_u0;
reg		reg_00e2a86c_result_delayed_u0=1'h0;
wire		or_u353_u0;
wire	[31:0]	mux_u386_u0;
reg	[31:0]	latch_0169ade5_reg=32'h0;
wire	[31:0]	latch_0169ade5_out;
wire	[31:0]	mux_u387_u0;
wire	[31:0]	mux_u388_u0;
wire	[31:0]	add_u385;
reg		block_GO_delayed_u36_u0=1'h0;
reg	[31:0]	syncEnable_u298_u0=32'h0;
reg	[31:0]	syncEnable_u299_u0=32'h0;
reg	[31:0]	syncEnable_u300_u0=32'h0;
reg	[31:0]	syncEnable_u301_u0=32'h0;
wire signed	[31:0]	lessThanEqualTo_u25_a_signed;
wire signed	[31:0]	lessThanEqualTo_u25_b_signed;
wire		lessThanEqualTo_u25;
wire		and_u1220_u0;
wire		and_u1221_u0;
wire		not_u249_u0;
wire	[31:0]	mux_u389_u0;
wire		or_u354_u0;
wire	[31:0]	mux_u390_u0;
wire	[31:0]	mux_u391_u0;
wire	[31:0]	mux_u392_u0;
reg		reg_008df91e_u0=1'h0;
assign and_u1162_u0=and_u1165_u0&or_u349_u0;
assign and_u1163_u0=and_u1164_u0&or_u349_u0;
assign lessThanEqualTo_a_signed=mux_u385_u0;
assign lessThanEqualTo_b_signed=32'hfff;
assign lessThanEqualTo=lessThanEqualTo_a_signed<=lessThanEqualTo_b_signed;
assign and_u1164_u0=or_u349_u0&lessThanEqualTo;
assign not_u238_u0=~lessThanEqualTo;
assign and_u1165_u0=or_u349_u0&not_u238_u0;
assign add=32'h0+mux_u385_u0;
assign and_u1166_u0=done_cache_u43&port_011977c0_;
always @(posedge CLK or posedge and_u1163_u0 or posedge or_u339_u0)
begin
if (or_u339_u0)
done_cache_u43<=1'h0;
else if (and_u1163_u0)
done_cache_u43<=1'h1;
else done_cache_u43<=done_cache_u43;
end
assign or_u339_u0=and_u1166_u0|RESET;
assign equals_a_signed=port_00db092b_;
assign equals_b_signed=32'h0;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1167_u0=block_GO_delayed_u34_u0&not_u239_u0;
assign not_u239_u0=~equals;
assign and_u1168_u0=block_GO_delayed_u34_u0&equals;
assign add_u372=32'h0+syncEnable_u292_u0;
always @(posedge CLK or posedge and_u1210_u0 or posedge or_u340_u0)
begin
if (or_u340_u0)
reg_00245596_u0<=1'h0;
else if (and_u1210_u0)
reg_00245596_u0<=1'h1;
else reg_00245596_u0<=reg_00245596_u0;
end
assign or_u340_u0=and_u1169_u0|RESET;
assign and_u1169_u0=reg_00245596_u0&port_0148096f_;
assign add_u373=32'h0+syncEnable_u292_u0;
assign or_u341_u0=and_u1170_u0|RESET;
always @(posedge CLK or posedge and_u1209_u0 or posedge or_u341_u0)
begin
if (or_u341_u0)
done_cache_u44_u0<=1'h0;
else if (and_u1209_u0)
done_cache_u44_u0<=1'h1;
else done_cache_u44_u0<=done_cache_u44_u0;
end
assign and_u1170_u0=done_cache_u44_u0&port_00c92d01_;
assign add_u374=32'h0+syncEnable_u292_u0;
always @(posedge CLK or posedge and_u1209_u0 or posedge or_u342_u0)
begin
if (or_u342_u0)
done_cache_u45_u0<=1'h0;
else if (and_u1209_u0)
done_cache_u45_u0<=1'h1;
else done_cache_u45_u0<=done_cache_u45_u0;
end
assign and_u1171_u0=done_cache_u45_u0&port_01cb4ddb_;
assign or_u342_u0=and_u1171_u0|RESET;
assign lessThan_a_signed=port_01ad6c51_;
assign lessThan_b_signed=32'h0;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u1172_u0=block_GO_delayed_u33&not_u240_u0;
assign not_u240_u0=~lessThan;
assign and_u1173_u0=block_GO_delayed_u33&lessThan;
assign minus=~port_01ad6c51_+32'h1;
assign and_u1174_u0=and_u1172_u0&block_GO_delayed_u33;
assign mux_u366=(and_u1174_u0)?32'h0:32'h1;
assign and_u1175_u0=and_u1173_u0&block_GO_delayed_u33;
assign mux_u367_u0=(and_u1174_u0)?port_01ad6c51_:minus;
assign lessThan_u15_a_signed=port_00e99c25_;
assign lessThan_u15_b_signed=32'h0;
assign lessThan_u15=lessThan_u15_a_signed<lessThan_u15_b_signed;
assign not_u241_u0=~lessThan_u15;
assign and_u1176_u0=block_GO_delayed_u33&not_u241_u0;
assign and_u1177_u0=block_GO_delayed_u33&lessThan_u15;
assign minus_u23=~port_00e99c25_+32'h1;
assign xor_u5=mux_u366[0]^1'h1;
assign and_u1178_u0=and_u1177_u0&block_GO_delayed_u33;
assign mux_u368_u0=(and_u1179_u0)?port_00e99c25_:minus_u23;
assign mux_u369_u0=(and_u1179_u0)?{31'b0, mux_u366[0]}:{31'b0, xor_u5[0]};
assign and_u1179_u0=and_u1176_u0&block_GO_delayed_u33;
assign and_u1180_u0=and_u1181_u0&or_u344_u0;
assign lessThan_u16_a_signed=mux_u373_u0;
assign lessThan_u16_b_signed=32'h20;
assign lessThan_u16=lessThan_u16_a_signed<lessThan_u16_b_signed;
assign and_u1181_u0=or_u344_u0&not_u242_u0;
assign and_u1182_u0=or_u344_u0&lessThan_u16;
assign not_u242_u0=~lessThan_u16;
assign and_u1183_u0=and_u1182_u0&or_u344_u0;
assign or_u343=mux_u370_u0|mux_u372_u0;
assign subtract=5'h1f-mux_u373_u0[4:0];
assign leftShift_stage_1=(subtract[4])?{latch_01a07ff8_out[15:0], 16'h0}:latch_01a07ff8_out;
assign leftShift_stage_2=(subtract[3])?{leftShift_stage_1[23:0], 8'h0}:leftShift_stage_1;
assign leftShift_stage_3=(subtract[2])?{leftShift_stage_2[27:0], 4'h0}:leftShift_stage_2;
assign leftShift_stage_4=(subtract[1])?{leftShift_stage_3[29:0], 2'h0}:leftShift_stage_3;
assign leftShift=(subtract[0])?{leftShift_stage_4[30:0], 1'h0}:leftShift_stage_4;
assign subtract_u69=mux_u371_u0-leftShift;
assign add_u375=mux_u373_u0+32'h1;
assign mux_u370_u0=(block_GO_delayed_u33)?32'h0:fbReg_inlined_result0_1_1_u4;
always @(posedge CLK)
begin
if (and_u1184_u0)
fbReg_inlined_remainder0_1_1_u4<=subtract_u69;
end
assign mux_u371_u0=(block_GO_delayed_u33)?mux_u367_u0:fbReg_inlined_remainder0_1_1_u4;
assign and_u1184_u0=and_u1183_u0&or_u344_u0;
always @(posedge CLK)
begin
if (and_u1184_u0)
fbReg_inlined_i0_1_1_u5<=add_u375;
end
assign or_u344_u0=block_GO_delayed_u33|loopControl_u24;
always @(posedge CLK)
begin
if (and_u1184_u0)
fbReg_inlined_result0_1_1_u4<=or_u343;
end
always @(posedge CLK)
begin
if (and_u1184_u0)
fbReg_inlined_mask0_1_1_u4<={1'b0, mux_u372_u0[31:1]};
end
always @(posedge CLK)
begin
if (block_GO_delayed_u33)
latch_01a07ff8_reg<=mux_u368_u0;
end
assign latch_01a07ff8_out=(block_GO_delayed_u33)?mux_u368_u0:latch_01a07ff8_reg;
assign and_u1185_u0=and_u1180_u0&or_u344_u0;
assign mux_u372_u0=(block_GO_delayed_u33)?32'h80000000:{1'b0, fbReg_inlined_mask0_1_1_u4[30:0]};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u24<=1'h0;
else loopControl_u24<=and_u1183_u0;
end
assign mux_u373_u0=(block_GO_delayed_u33)?32'h0:fbReg_inlined_i0_1_1_u5;
assign notEquals_a_signed={31'b0, mux_u369_u0[0]};
assign notEquals_b_signed=32'h0;
assign notEquals=notEquals_a_signed!=notEquals_b_signed;
assign and_u1186_u0=and_u1185_u0&latch_0147024e_out;
assign and_u1187_u0=and_u1185_u0&not_u243_u0;
assign not_u243_u0=~latch_0147024e_out;
assign minus_u24=~mux_u370_u0+32'h1;
assign mux_u374_u0=(and_u1189_u0)?minus_u24:mux_u370_u0;
assign and_u1188_u0=and_u1187_u0&and_u1185_u0;
assign and_u1189_u0=and_u1186_u0&and_u1185_u0;
assign and_u1190_u0=and_u1206_u0&or_u346_u0;
assign and_u1191_u0=and_u1207_u0&or_u346_u0;
assign and_u1192_u0=and_u1198_u0&or_u345_u0;
assign multiply_a_signed={mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0};
assign multiply_b_signed={mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0[31], mux_u380_u0};
assign multiply=multiply_a_signed*multiply_b_signed;
assign equals_u14_a_signed=multiply;
assign equals_u14_b_signed={latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out[31], latch_0053a988_out};
assign equals_u14=equals_u14_a_signed==equals_u14_b_signed;
assign not_u244_u0=~equals_u14;
assign and_u1193_u0=and_u1192_u0&equals_u14;
assign and_u1194_u0=and_u1192_u0&not_u244_u0;
assign mux_u375_u0=(and_u1195_u0)?latch_0053a988_out:mux_u379_u0;
assign mux_u376_u0=(and_u1195_u0)?latch_0053a988_out:mux_u380_u0;
assign mux_u377_u0=(and_u1195_u0)?mux_u380_u0:mux_u378_u0;
assign and_u1195_u0=and_u1193_u0&and_u1192_u0;
assign and_u1196_u0=and_u1194_u0&and_u1192_u0;
assign add_u376=mux_u376_u0+32'h1;
assign lessThanEqualTo_u23_a_signed=mux_u380_u0;
assign lessThanEqualTo_u23_b_signed=latch_0053a988_out;
assign lessThanEqualTo_u23=lessThanEqualTo_u23_a_signed<=lessThanEqualTo_u23_b_signed;
assign and_u1197_u0=or_u345_u0&not_u245_u0;
assign and_u1198_u0=or_u345_u0&lessThanEqualTo_u23;
assign not_u245_u0=~lessThanEqualTo_u23;
assign and_u1199_u0=and_u1197_u0&or_u345_u0;
assign mux_u378_u0=(and_u1190_u0)?mux_u384_u0:fbReg_inlined_N4_5_5_u2;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u25_u0<=1'h0;
else loopControl_u25_u0<=and_u1192_u0;
end
assign latch_0053a988_out=(and_u1190_u0)?mux_u382_u0:latch_0053a988_reg;
always @(posedge CLK)
begin
if (and_u1190_u0)
latch_0053a988_reg<=mux_u382_u0;
end
assign and_u1200_u0=and_u1192_u0&or_u345_u0;
always @(posedge CLK)
begin
if (and_u1200_u0)
fbReg_inlined_N4_5_5_u2<=mux_u377_u0;
end
assign and_u1201_u0=and_u1199_u0&or_u345_u0;
always @(posedge CLK)
begin
if (and_u1200_u0)
fbReg_inlined_j5_6_6_u2<=add_u376;
end
assign mux_u379_u0=(and_u1190_u0)?mux_u383_u0:fbReg_inlined_pSq4_5_5_u2;
assign or_u345_u0=and_u1190_u0|loopControl_u25_u0;
assign mux_u380_u0=(and_u1190_u0)?32'h0:fbReg_inlined_j5_6_6_u2;
always @(posedge CLK)
begin
if (and_u1200_u0)
fbReg_inlined_pSq4_5_5_u2<=mux_u375_u0;
end
assign greaterThan_a_signed=mux_u379_u0;
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign and_u1202_u0=and_u1201_u0&greaterThan;
assign and_u1203_u0=and_u1201_u0&not_u246_u0;
assign not_u246_u0=~greaterThan;
assign mux_u381_u0=(and_u1204_u0)?32'h1:latch_00fbde1a_out;
assign and_u1204_u0=and_u1202_u0&and_u1201_u0;
assign and_u1205_u0=and_u1203_u0&and_u1201_u0;
assign subtract_u70=mux_u381_u0-32'h1;
assign latch_00fbde1a_out=(and_u1190_u0)?mux_u382_u0:latch_00fbde1a_reg;
always @(posedge CLK)
begin
if (and_u1190_u0)
latch_00fbde1a_reg<=mux_u382_u0;
end
assign greaterThan_u11_a_signed=mux_u382_u0;
assign greaterThan_u11_b_signed=32'h0;
assign greaterThan_u11=greaterThan_u11_a_signed>greaterThan_u11_b_signed;
assign and_u1206_u0=or_u346_u0&greaterThan_u11;
assign and_u1207_u0=or_u346_u0&not_u247_u0;
assign not_u247_u0=~greaterThan_u11;
assign mux_u382_u0=(loopControl_u26_u0)?fbReg_inlined_i4_1_1_u2:mux_u374_u0;
always @(posedge CLK)
begin
if (and_u1201_u0)
fbReg_inlined_i4_1_1_u2<=subtract_u70;
end
assign mux_u383_u0=(loopControl_u26_u0)?fbReg_inlined_pSq0_1_1_u2:32'h0;
always @(posedge CLK)
begin
if (and_u1201_u0)
fbReg_inlined_pSq0_1_1_u2<=mux_u379_u0;
end
assign mux_u384_u0=(loopControl_u26_u0)?fbReg_inlined_N0_1_1_u2:32'h0;
assign or_u346_u0=loopControl_u26_u0|and_u1185_u0;
assign latch_0113b893_out=(and_u1185_u0)?RESET:latch_0113b893_reg;
always @(posedge CLK)
begin
if (and_u1185_u0)
latch_0113b893_reg<=RESET;
end
always @(posedge CLK or posedge latch_0113b893_out)
begin
if (latch_0113b893_out)
loopControl_u26_u0<=1'h0;
else loopControl_u26_u0<=and_u1201_u0;
end
always @(posedge CLK)
begin
if (and_u1201_u0)
fbReg_inlined_N0_1_1_u2<=mux_u378_u0;
end
assign add_u377=32'h0+syncEnable_u292_u0;
assign or_u347_u0=and_u1208_u0|RESET;
always @(posedge CLK or posedge reg_01a16c23_u0 or posedge or_u347_u0)
begin
if (or_u347_u0)
reg_011010b1_u0<=1'h0;
else if (reg_01a16c23_u0)
reg_011010b1_u0<=1'h1;
else reg_011010b1_u0<=reg_011010b1_u0;
end
assign and_u1208_u0=reg_011010b1_u0&port_01999013_;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a16c23_u0<=1'h0;
else reg_01a16c23_u0<=reg_00fc0901_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00fc0901_u0<=1'h0;
else reg_00fc0901_u0<=and_u1191_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a16c23_result_delayed_u0<=1'h0;
else reg_01a16c23_result_delayed_u0<=reg_01a16c23_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u33<=1'h0;
else block_GO_delayed_u33<=and_u1209_u0;
end
always @(posedge CLK)
begin
if (and_u1209_u0)
syncEnable_u290<=add_u377;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u33)
latch_0147024e_reg<=notEquals;
end
assign latch_0147024e_out=(block_GO_delayed_u33)?notEquals:latch_0147024e_reg;
assign and_u1209_u0=and_u1167_u0&block_GO_delayed_u34_u0;
assign and_u1210_u0=and_u1168_u0&block_GO_delayed_u34_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u63<=1'h0;
else and_delayed_u63<=and_u1210_u0;
end
assign or_u348_u0=and_delayed_u63|reg_01a16c23_result_delayed_u0;
assign add_u378=mux_u385_u0+32'h1;
always @(posedge CLK)
begin
if (and_u1163_u0)
syncEnable_u291_u0<=add_u378;
end
always @(posedge CLK)
begin
if (and_u1163_u0)
syncEnable_u292_u0<=mux_u385_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u34_u0<=1'h0;
else block_GO_delayed_u34_u0<=and_u1163_u0;
end
assign or_u349_u0=or_u348_u0|reg_008df91e_u0;
assign mux_u385_u0=(or_u348_u0)?syncEnable_u291_u0:32'h0;
assign and_u1211_u0=and_u1220_u0&or_u354_u0;
assign and_u1212_u0=and_u1221_u0&or_u354_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e2a86c_u0<=1'h0;
else reg_00e2a86c_u0<=and_u1213_u0;
end
assign and_u1213_u0=and_u1218_u0&or_u353_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0105ef89_u0<=1'h0;
else reg_0105ef89_u0<=reg_00923e1b_u0;
end
assign subtract_u71={latch_0169ade5_out[26:0], 5'b0}-{latch_0169ade5_out[29:0], 2'b0};
assign subtract_u72=subtract_u71-latch_0169ade5_out;
assign add_u379=subtract_u72+mux_u388_u0;
assign add_u380=32'h0+add_u379;
assign or_u350_u0=and_u1214_u0|RESET;
assign and_u1214_u0=done_cache_u46_u0&port_00e30902_;
always @(posedge CLK or posedge block_GO_delayed_u35_u0 or posedge or_u350_u0)
begin
if (or_u350_u0)
done_cache_u46_u0<=1'h0;
else if (block_GO_delayed_u35_u0)
done_cache_u46_u0<=1'h1;
else done_cache_u46_u0<=done_cache_u46_u0;
end
assign add_u381=32'h0+port_01aa935b_;
assign or_u351_u0=and_u1215_u0|RESET;
always @(posedge CLK or posedge reg_01feed71_u0 or posedge or_u351_u0)
begin
if (or_u351_u0)
done_cache_u47_u0<=1'h0;
else if (reg_01feed71_u0)
done_cache_u47_u0<=1'h1;
else done_cache_u47_u0<=done_cache_u47_u0;
end
assign and_u1215_u0=done_cache_u47_u0&port_0148096f_;
assign subtract_u73={latch_0169ade5_out[26:0], 5'b0}-{latch_0169ade5_out[29:0], 2'b0};
assign subtract_u74=subtract_u73-latch_0169ade5_out;
assign add_u382=subtract_u74+mux_u388_u0;
assign add_u383=32'h0+add_u382;
assign or_u352_u0=and_u1216_u0|RESET;
assign and_u1216_u0=reg_01548d9f_u0&port_00343aca_;
always @(posedge CLK or posedge reg_01feed71_result_delayed_u0 or posedge or_u352_u0)
begin
if (or_u352_u0)
reg_01548d9f_u0<=1'h0;
else if (reg_01feed71_result_delayed_u0)
reg_01548d9f_u0<=1'h1;
else reg_01548d9f_u0<=reg_01548d9f_u0;
end
assign add_u384=mux_u388_u0+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01feed71_u0<=1'h0;
else reg_01feed71_u0<=block_GO_delayed_u35_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u35_u0<=1'h0;
else block_GO_delayed_u35_u0<=and_u1213_u0;
end
always @(posedge CLK)
begin
if (reg_01feed71_result_delayed_u0)
syncEnable_u293_u0<=port_0006e212_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01feed71_result_delayed_u0<=1'h0;
else reg_01feed71_result_delayed_u0<=reg_01feed71_u0;
end
always @(posedge CLK)
begin
if (and_u1213_u0)
syncEnable_u294_u0<=add_u383;
end
always @(posedge CLK)
begin
if (reg_01feed71_u0)
syncEnable_u295_u0<=port_01aa935b_;
end
always @(posedge CLK)
begin
if (and_u1213_u0)
syncEnable_u296_u0<=add_u380;
end
always @(posedge CLK)
begin
if (and_u1213_u0)
syncEnable_u297_u0<=add_u384;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00923e1b_u0<=1'h0;
else reg_00923e1b_u0<=reg_00e2a86c_result_delayed_u0;
end
assign and_u1217_u0=and_u1219_u0&or_u353_u0;
assign lessThanEqualTo_u24_a_signed=mux_u388_u0;
assign lessThanEqualTo_u24_b_signed=32'h1a;
assign lessThanEqualTo_u24=lessThanEqualTo_u24_a_signed<=lessThanEqualTo_u24_b_signed;
assign and_u1218_u0=or_u353_u0&lessThanEqualTo_u24;
assign not_u248_u0=~lessThanEqualTo_u24;
assign and_u1219_u0=or_u353_u0&not_u248_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e2a86c_result_delayed_u0<=1'h0;
else reg_00e2a86c_result_delayed_u0<=reg_00e2a86c_u0;
end
assign or_u353_u0=block_GO_delayed_u36_u0|reg_0105ef89_u0;
assign mux_u386_u0=(block_GO_delayed_u36_u0)?syncEnable_u298_u0:syncEnable_u293_u0;
always @(posedge CLK)
begin
if (block_GO_delayed_u36_u0)
latch_0169ade5_reg<=syncEnable_u299_u0;
end
assign latch_0169ade5_out=(block_GO_delayed_u36_u0)?syncEnable_u299_u0:latch_0169ade5_reg;
assign mux_u387_u0=(block_GO_delayed_u36_u0)?syncEnable_u301_u0:syncEnable_u295_u0;
assign mux_u388_u0=(block_GO_delayed_u36_u0)?32'h0:syncEnable_u297_u0;
assign add_u385=mux_u390_u0+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u36_u0<=1'h0;
else block_GO_delayed_u36_u0<=and_u1211_u0;
end
always @(posedge CLK)
begin
if (and_u1211_u0)
syncEnable_u298_u0<=mux_u391_u0;
end
always @(posedge CLK)
begin
if (and_u1211_u0)
syncEnable_u299_u0<=mux_u390_u0;
end
always @(posedge CLK)
begin
if (and_u1211_u0)
syncEnable_u300_u0<=add_u385;
end
always @(posedge CLK)
begin
if (and_u1211_u0)
syncEnable_u301_u0<=mux_u389_u0;
end
assign lessThanEqualTo_u25_a_signed=mux_u390_u0;
assign lessThanEqualTo_u25_b_signed=32'h14;
assign lessThanEqualTo_u25=lessThanEqualTo_u25_a_signed<=lessThanEqualTo_u25_b_signed;
assign and_u1220_u0=or_u354_u0&lessThanEqualTo_u25;
assign and_u1221_u0=or_u354_u0&not_u249_u0;
assign not_u249_u0=~lessThanEqualTo_u25;
assign mux_u389_u0=(and_u1162_u0)?32'h0:mux_u387_u0;
assign or_u354_u0=and_u1162_u0|and_u1217_u0;
assign mux_u390_u0=(and_u1162_u0)?32'h0:syncEnable_u300_u0;
assign mux_u391_u0=(and_u1162_u0)?32'h0:mux_u386_u0;
assign mux_u392_u0=(and_u1210_u0)?add_u372:add_u381;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_008df91e_u0<=1'h0;
else reg_008df91e_u0<=GO;
end
assign RESULT=and_u1191_u0;
assign RESULT_u757=mux_u384_u0;
assign RESULT_u758=reg_01feed71_result_delayed_u0;
assign RESULT_u759=syncEnable_u294_u0;
assign RESULT_u760=port_0006e212_;
assign RESULT_u761=3'h1;
assign RESULT_u762=and_u1163_u0;
assign RESULT_u763=add;
assign RESULT_u764=3'h1;
assign RESULT_u765=and_u1209_u0;
assign RESULT_u766=add_u374;
assign RESULT_u767=3'h1;
assign RESULT_u768=reg_01feed71_u0;
assign RESULT_u769=mux_u392_u0;
assign RESULT_u770=3'h1;
assign RESULT_u771=and_u1210_u0;
assign RESULT_u772=mux_u392_u0;
assign RESULT_u773=32'h0;
assign RESULT_u774=3'h1;
assign RESULT_u775=reg_01a16c23_u0;
assign RESULT_u776=syncEnable_u290;
assign RESULT_u777=port_01b89954_;
assign RESULT_u778=3'h1;
assign RESULT_u779=block_GO_delayed_u35_u0;
assign RESULT_u780=syncEnable_u296_u0;
assign RESULT_u781=3'h1;
assign RESULT_u782=and_u1209_u0;
assign RESULT_u783=add_u373;
assign RESULT_u784=3'h1;
assign DONE=and_u1212_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s3(bus_0042c950_, bus_00aed9b0_, bus_0058f6c6_, bus_00bf2b7b_, bus_01cbe7b3_);
input		bus_0042c950_;
input		bus_00aed9b0_;
input		bus_0058f6c6_;
input		bus_00bf2b7b_;
output		bus_01cbe7b3_;
reg		stateVar_state_s3_u7=1'h0;
assign bus_01cbe7b3_=stateVar_state_s3_u7;
always @(posedge bus_0042c950_ or posedge bus_00aed9b0_)
begin
if (bus_00aed9b0_)
stateVar_state_s3_u7<=1'h0;
else if (bus_0058f6c6_)
stateVar_state_s3_u7<=bus_00bf2b7b_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_00b9b42c_(bus_014694d4_, bus_00d506a5_, bus_01944fe2_, bus_01b104e0_, bus_0126bde9_, bus_01b863ea_, bus_01d83e9b_, bus_01c7545c_, bus_00f42468_, bus_00b7258f_, bus_00f9f650_, bus_0198639c_, bus_0096a522_, bus_00e324d4_, bus_007e3bc6_, bus_008260c0_);
input		bus_014694d4_;
input		bus_00d506a5_;
input		bus_01944fe2_;
input	[31:0]	bus_01b104e0_;
input		bus_0126bde9_;
input		bus_01b863ea_;
input	[31:0]	bus_01d83e9b_;
input	[31:0]	bus_01c7545c_;
input	[2:0]	bus_00f42468_;
output	[31:0]	bus_00b7258f_;
output	[31:0]	bus_00f9f650_;
output		bus_0198639c_;
output		bus_0096a522_;
output	[2:0]	bus_00e324d4_;
output	[31:0]	bus_007e3bc6_;
output		bus_008260c0_;
wire		or_01970e56_u0;
assign or_01970e56_u0=bus_0126bde9_|bus_01b863ea_;
assign bus_00b7258f_=32'h0;
assign bus_00f9f650_=bus_01c7545c_;
assign bus_0198639c_=bus_01b863ea_;
assign bus_0096a522_=or_01970e56_u0;
assign bus_00e324d4_=3'h1;
assign bus_007e3bc6_=bus_01b104e0_;
assign bus_008260c0_=bus_01944fe2_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_doneCount_mModel(CLK, RESET, GO, RESULT, RESULT_u785, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u785;
output		DONE;
reg		reg_0008b53d_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0008b53d_u0<=1'h0;
else reg_0008b53d_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u785=32'h0;
assign DONE=reg_0008b53d_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_019a0a1d_(bus_00c7137e_, bus_01d0b69e_, bus_012b4408_, bus_01ab15cd_, bus_01c70fcd_, bus_0078ffb8_, bus_003f0889_, bus_00fbbb95_, bus_0124590d_, bus_00ac9495_, bus_01c5222e_, bus_0138c2b5_, bus_01f4db00_, bus_00d86805_);
input		bus_00c7137e_;
input		bus_01d0b69e_;
input		bus_012b4408_;
input	[31:0]	bus_01ab15cd_;
input		bus_01c70fcd_;
input	[31:0]	bus_0078ffb8_;
input	[31:0]	bus_003f0889_;
input	[2:0]	bus_00fbbb95_;
output	[31:0]	bus_0124590d_;
output	[31:0]	bus_00ac9495_;
output		bus_01c5222e_;
output		bus_0138c2b5_;
output	[2:0]	bus_01f4db00_;
output		bus_00d86805_;
assign bus_0124590d_=bus_0078ffb8_;
assign bus_00ac9495_=bus_003f0889_;
assign bus_01c5222e_=bus_01c70fcd_;
assign bus_0138c2b5_=bus_01c70fcd_;
assign bus_01f4db00_=3'h1;
assign bus_00d86805_=bus_012b4408_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s2(bus_0170b799_, bus_0125bd52_, bus_00b22082_, bus_01805977_, bus_0182ae4a_);
input		bus_0170b799_;
input		bus_0125bd52_;
input		bus_00b22082_;
input		bus_01805977_;
output		bus_0182ae4a_;
reg		stateVar_state_s2_u7=1'h0;
assign bus_0182ae4a_=stateVar_state_s2_u7;
always @(posedge bus_0170b799_ or posedge bus_0125bd52_)
begin
if (bus_0125bd52_)
stateVar_state_s2_u7<=1'h0;
else if (bus_00b22082_)
stateVar_state_s2_u7<=bus_01805977_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_state_s0(bus_01ce6684_, bus_01ac995a_, bus_01a1580b_, bus_00aa6354_, bus_014d79d6_);
input		bus_01ce6684_;
input		bus_01ac995a_;
input		bus_01a1580b_;
input		bus_00aa6354_;
output		bus_014d79d6_;
reg		stateVar_state_s0_u10=1'h0;
assign bus_014d79d6_=stateVar_state_s0_u10;
always @(posedge bus_01ce6684_ or posedge bus_01ac995a_)
begin
if (bus_01ac995a_)
stateVar_state_s0_u10<=1'h0;
else if (bus_01a1580b_)
stateVar_state_s0_u10<=bus_00aa6354_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_scheduler(CLK, RESET, GO, port_017cfa56_, port_01daee56_, port_00168d65_, port_01a6bf02_, port_00fa5eb8_, port_00f4587d_, port_01be5a5f_, port_01beb003_, port_01058e10_, port_01f9c1c2_, port_00731552_, port_01fc5835_, port_01bd62ee_, port_01176595_, port_00506c1b_, port_01cf4406_, port_01c82200_, port_008d29e6_, port_0159cb3a_, RESULT, RESULT_u786, RESULT_u787, RESULT_u788, RESULT_u789, RESULT_u790, RESULT_u791, RESULT_u792, RESULT_u793, RESULT_u794, RESULT_u795, RESULT_u796, RESULT_u797, RESULT_u798, RESULT_u799, RESULT_u800, RESULT_u801, RESULT_u802, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_017cfa56_;
input		port_01daee56_;
input		port_00168d65_;
input		port_01a6bf02_;
input		port_00fa5eb8_;
input	[31:0]	port_00f4587d_;
input	[31:0]	port_01be5a5f_;
input		port_01beb003_;
input		port_01058e10_;
input		port_01f9c1c2_;
input		port_00731552_;
input		port_01fc5835_;
input		port_01bd62ee_;
input		port_01176595_;
input		port_00506c1b_;
input		port_01cf4406_;
input		port_01c82200_;
input		port_008d29e6_;
input		port_0159cb3a_;
output		RESULT;
output		RESULT_u786;
output		RESULT_u787;
output		RESULT_u788;
output		RESULT_u789;
output		RESULT_u790;
output		RESULT_u791;
output		RESULT_u792;
output		RESULT_u793;
output		RESULT_u794;
output		RESULT_u795;
output		RESULT_u796;
output		RESULT_u797;
output		RESULT_u798;
output		RESULT_u799;
output		RESULT_u800;
output		RESULT_u801;
output		RESULT_u802;
output		DONE;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_b_signed;
wire		equals;
wire signed	[31:0]	equals_u15_b_signed;
wire signed	[31:0]	equals_u15_a_signed;
wire		equals_u15;
wire		equals_u16;
wire signed	[31:0]	equals_u16_a_signed;
wire signed	[31:0]	equals_u16_b_signed;
wire		and_u1222_u0;
wire		not_u250_u0;
wire		and_u1223_u0;
wire		not_u251_u0;
wire		and_u1224_u0;
wire		and_u1225_u0;
wire		simplePinWrite;
wire		and_u1226_u0;
wire		not_u252_u0;
wire		and_u1227_u0;
wire		and_u1228_u0;
wire		simplePinWrite_u170;
wire		and_u1229_u0;
wire		and_u1230_u0;
wire		and_u1231_u0;
wire		and_u1232_u0;
wire		and_u1233_u0;
wire		and_u1234_u0;
wire		not_u253_u0;
wire		and_u1235_u0;
wire		and_u1236_u0;
wire		and_u1237_u0;
wire		not_u254_u0;
wire		simplePinWrite_u171;
wire		and_u1238_u0;
wire		and_u1239_u0;
wire		and_u1240_u0;
wire		not_u255_u0;
wire		simplePinWrite_u172;
wire		and_u1241_u0;
wire		and_u1242_u0;
wire		and_u1243_u0;
wire		and_u1244_u0;
wire		and_u1245_u0;
wire		and_u1246_u0;
wire		not_u256_u0;
wire		and_u1247_u0;
wire		and_u1248_u0;
wire		not_u257_u0;
wire		and_u1249_u0;
wire		simplePinWrite_u173;
wire		and_u1250_u0;
wire		not_u258_u0;
wire		and_u1251_u0;
wire		and_u1252_u0;
wire		simplePinWrite_u174;
wire		and_u1253_u0;
wire		and_u1254_u0;
wire		and_u1255_u0;
wire		and_u1256_u0;
wire		and_u1257_u0;
wire		not_u259_u0;
wire		and_u1258_u0;
wire		and_u1259_u0;
wire		simplePinWrite_u175;
wire		and_u1260_u0;
wire		and_u1261_u0;
reg		reg_01a39927_u0=1'h0;
wire		and_u1262_u0;
wire		and_u1263_u0;
wire		or_u355_u0;
wire		and_u1264_u0;
wire		and_u1265_u0;
wire		not_u260_u0;
wire		not_u261_u0;
wire		and_u1266_u0;
wire		and_u1267_u0;
wire		simplePinWrite_u176;
wire		and_u1268_u0;
wire		and_u1269_u0;
wire		not_u262_u0;
wire		and_u1270_u0;
wire		simplePinWrite_u177;
reg		reg_0024e11c_u0=1'h0;
wire		and_u1271_u0;
wire		and_u1272_u0;
reg		and_delayed_u64=1'h0;
wire		or_u356_u0;
reg		and_delayed_result_delayed_u9=1'h0;
wire		and_u1273_u0;
reg		reg_00cdace4_u0=1'h0;
wire		and_u1274_u0;
wire		or_u357_u0;
wire		and_u1275_u0;
wire		and_u1276_u0;
wire		or_u358_u0;
wire		and_u1277_u0;
reg		and_delayed_u65_u0=1'h0;
wire		mux_u393;
wire		or_u359_u0;
wire		or_u360_u0;
wire		mux_u394_u0;
wire		doneCount_mModel_go_merge;
reg		scoreboard_010eeecf_reg0=1'h0;
wire		scoreboard_010eeecf_and;
wire		bus_00b90241_;
wire		scoreboard_010eeecf_resOr0;
wire		scoreboard_010eeecf_resOr1;
reg		scoreboard_010eeecf_reg1=1'h0;
wire		mux_u395_u0;
wire		or_u361_u0;
wire		mux_u396_u0;
wire		or_u362_u0;
reg		block_GO_delayed_u37=1'h0;
reg		syncEnable_u302=1'h0;
reg		syncEnable_u303_u0=1'h0;
reg		syncEnable_u304_u0=1'h0;
reg		syncEnable_u305_u0=1'h0;
reg		syncEnable_u306_u0=1'h0;
reg		syncEnable_u307_u0=1'h0;
reg		syncEnable_u308_u0=1'h0;
reg		syncEnable_u309_u0=1'h0;
reg		syncEnable_u310_u0=1'h0;
reg		syncEnable_u311_u0=1'h0;
reg		syncEnable_u312_u0=1'h0;
wire		and_u1278_u0;
reg		loopControl_u27=1'h0;
reg		syncEnable_u313_u0=1'h0;
wire		or_u363_u0;
wire		or_u364_u0;
wire		mux_u397_u0;
reg		reg_01e9d759_u0=1'h0;
wire		or_u365_u0;
wire		mux_u398_u0;
reg		reg_01e9d759_result_delayed_u0=1'h0;
wire		or_u366_u0;
wire		mux_u399_u0;
wire		mux_u400_u0;
wire		or_u367_u0;
wire		mux_u401_u0;
wire		or_u368_u0;
assign equals_a_signed=port_00f4587d_;
assign equals_b_signed=32'h1000;
assign equals=equals_a_signed==equals_b_signed;
assign equals_u15_a_signed=port_01be5a5f_;
assign equals_u15_b_signed=32'h15;
assign equals_u15=equals_u15_a_signed==equals_u15_b_signed;
assign equals_u16_a_signed=port_01be5a5f_;
assign equals_u16_b_signed=32'h15;
assign equals_u16=equals_u16_a_signed==equals_u16_b_signed;
assign and_u1222_u0=block_GO_delayed_u37&not_u250_u0;
assign not_u250_u0=~syncEnable_u306_u0;
assign and_u1223_u0=block_GO_delayed_u37&syncEnable_u306_u0;
assign not_u251_u0=~syncEnable_u302;
assign and_u1224_u0=and_u1233_u0&not_u251_u0;
assign and_u1225_u0=and_u1233_u0&syncEnable_u302;
assign simplePinWrite=and_u1226_u0&{1{and_u1226_u0}};
assign and_u1226_u0=and_u1232_u0&and_u1232_u0;
assign not_u252_u0=~syncEnable_u304_u0;
assign and_u1227_u0=and_u1231_u0&not_u252_u0;
assign and_u1228_u0=and_u1231_u0&syncEnable_u304_u0;
assign simplePinWrite_u170=and_u1229_u0&{1{and_u1229_u0}};
assign and_u1229_u0=and_u1230_u0&and_u1230_u0;
assign and_u1230_u0=and_u1228_u0&and_u1231_u0;
assign and_u1231_u0=and_u1224_u0&and_u1233_u0;
assign and_u1232_u0=and_u1225_u0&and_u1233_u0;
assign and_u1233_u0=and_u1223_u0&block_GO_delayed_u37;
assign and_u1234_u0=block_GO_delayed_u37&syncEnable_u303_u0;
assign not_u253_u0=~syncEnable_u303_u0;
assign and_u1235_u0=block_GO_delayed_u37&not_u253_u0;
assign and_u1236_u0=and_u1245_u0&not_u254_u0;
assign and_u1237_u0=and_u1245_u0&syncEnable_u302;
assign not_u254_u0=~syncEnable_u302;
assign simplePinWrite_u171=and_u1238_u0&{1{and_u1238_u0}};
assign and_u1238_u0=and_u1244_u0&and_u1244_u0;
assign and_u1239_u0=and_u1243_u0&not_u255_u0;
assign and_u1240_u0=and_u1243_u0&syncEnable_u308_u0;
assign not_u255_u0=~syncEnable_u308_u0;
assign simplePinWrite_u172=and_u1241_u0&{1{and_u1241_u0}};
assign and_u1241_u0=and_u1242_u0&and_u1242_u0;
assign and_u1242_u0=and_u1240_u0&and_u1243_u0;
assign and_u1243_u0=and_u1236_u0&and_u1245_u0;
assign and_u1244_u0=and_u1237_u0&and_u1245_u0;
assign and_u1245_u0=and_u1234_u0&block_GO_delayed_u37;
assign and_u1246_u0=block_GO_delayed_u37&syncEnable_u305_u0;
assign not_u256_u0=~syncEnable_u305_u0;
assign and_u1247_u0=block_GO_delayed_u37&not_u256_u0;
assign and_u1248_u0=and_u1257_u0&syncEnable_u309_u0;
assign not_u257_u0=~syncEnable_u309_u0;
assign and_u1249_u0=and_u1257_u0&not_u257_u0;
assign simplePinWrite_u173=and_u1250_u0&{1{and_u1250_u0}};
assign and_u1250_u0=and_u1256_u0&and_u1256_u0;
assign not_u258_u0=~syncEnable_u307_u0;
assign and_u1251_u0=and_u1255_u0&syncEnable_u307_u0;
assign and_u1252_u0=and_u1255_u0&not_u258_u0;
assign simplePinWrite_u174=and_u1253_u0&{1{and_u1253_u0}};
assign and_u1253_u0=and_u1254_u0&and_u1254_u0;
assign and_u1254_u0=and_u1251_u0&and_u1255_u0;
assign and_u1255_u0=and_u1249_u0&and_u1257_u0;
assign and_u1256_u0=and_u1248_u0&and_u1257_u0;
assign and_u1257_u0=and_u1246_u0&block_GO_delayed_u37;
assign not_u259_u0=~syncEnable_u311_u0;
assign and_u1258_u0=block_GO_delayed_u37&not_u259_u0;
assign and_u1259_u0=block_GO_delayed_u37&syncEnable_u311_u0;
assign simplePinWrite_u175=and_u1260_u0&{1{and_u1260_u0}};
assign and_u1260_u0=and_u1261_u0&and_u1261_u0;
assign and_u1261_u0=and_u1263_u0&and_u1263_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a39927_u0<=1'h0;
else reg_01a39927_u0<=and_u1262_u0;
end
assign and_u1262_u0=and_u1258_u0&block_GO_delayed_u37;
assign and_u1263_u0=and_u1259_u0&block_GO_delayed_u37;
assign or_u355_u0=port_01beb003_|reg_01a39927_u0;
assign and_u1264_u0=block_GO_delayed_u37&not_u260_u0;
assign and_u1265_u0=block_GO_delayed_u37&syncEnable_u312_u0;
assign not_u260_u0=~syncEnable_u312_u0;
assign not_u261_u0=~syncEnable_u310_u0;
assign and_u1266_u0=and_u1277_u0&not_u261_u0;
assign and_u1267_u0=and_u1277_u0&syncEnable_u310_u0;
assign simplePinWrite_u176=and_u1268_u0&{1{and_u1268_u0}};
assign and_u1268_u0=and_u1274_u0&and_u1274_u0;
assign and_u1269_u0=and_u1273_u0&port_00731552_;
assign not_u262_u0=~port_00731552_;
assign and_u1270_u0=and_u1273_u0&not_u262_u0;
assign simplePinWrite_u177=and_u1272_u0&{1{and_u1272_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0024e11c_u0<=1'h0;
else reg_0024e11c_u0<=and_u1271_u0;
end
assign and_u1271_u0=and_u1270_u0&and_u1273_u0;
assign and_u1272_u0=and_u1269_u0&and_u1273_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u64<=1'h0;
else and_delayed_u64<=and_u1272_u0;
end
assign or_u356_u0=reg_0024e11c_u0|and_delayed_result_delayed_u9;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u9<=1'h0;
else and_delayed_result_delayed_u9<=and_delayed_u64;
end
assign and_u1273_u0=and_u1275_u0&and_u1275_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00cdace4_u0<=1'h0;
else reg_00cdace4_u0<=and_u1274_u0;
end
assign and_u1274_u0=and_u1267_u0&and_u1277_u0;
assign or_u357_u0=reg_00cdace4_u0|or_u356_u0;
assign and_u1275_u0=and_u1266_u0&and_u1277_u0;
assign and_u1276_u0=and_u1264_u0&block_GO_delayed_u37;
assign or_u358_u0=or_u357_u0|and_delayed_u65_u0;
assign and_u1277_u0=and_u1265_u0&block_GO_delayed_u37;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u65_u0<=1'h0;
else and_delayed_u65_u0<=and_u1276_u0;
end
assign mux_u393=(and_u1250_u0)?1'h1:1'h0;
assign or_u359_u0=and_u1250_u0|and_u1260_u0;
assign or_u360_u0=and_u1238_u0|and_u1250_u0;
assign mux_u394_u0=(and_u1238_u0)?1'h1:1'h0;
assign doneCount_mModel_go_merge=simplePinWrite|simplePinWrite_u171;
always @(posedge CLK)
begin
if (bus_00b90241_)
scoreboard_010eeecf_reg0<=1'h0;
else if (or_u358_u0)
scoreboard_010eeecf_reg0<=1'h1;
else scoreboard_010eeecf_reg0<=scoreboard_010eeecf_reg0;
end
assign scoreboard_010eeecf_and=scoreboard_010eeecf_resOr0&scoreboard_010eeecf_resOr1;
assign bus_00b90241_=scoreboard_010eeecf_and|RESET;
assign scoreboard_010eeecf_resOr0=or_u358_u0|scoreboard_010eeecf_reg0;
assign scoreboard_010eeecf_resOr1=or_u355_u0|scoreboard_010eeecf_reg1;
always @(posedge CLK)
begin
if (bus_00b90241_)
scoreboard_010eeecf_reg1<=1'h0;
else if (or_u355_u0)
scoreboard_010eeecf_reg1<=1'h1;
else scoreboard_010eeecf_reg1<=scoreboard_010eeecf_reg1;
end
assign mux_u395_u0=(and_u1260_u0)?1'h1:1'h0;
assign or_u361_u0=and_u1260_u0|and_u1268_u0;
assign mux_u396_u0=({1{and_u1226_u0}}&1'h1)|({1{and_u1238_u0}}&1'h0)|({1{and_u1268_u0}}&1'h1);
assign or_u362_u0=and_u1226_u0|and_u1238_u0|and_u1268_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u37<=1'h0;
else block_GO_delayed_u37<=and_u1278_u0;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u302<=equals;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u303_u0<=port_01daee56_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u304_u0<=port_01176595_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u305_u0<=port_00168d65_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u306_u0<=port_017cfa56_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u307_u0<=port_00506c1b_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u308_u0<=port_01bd62ee_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u309_u0<=equals_u15;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u310_u0<=equals_u16;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u311_u0<=port_01a6bf02_;
end
always @(posedge CLK)
begin
if (and_u1278_u0)
syncEnable_u312_u0<=port_00fa5eb8_;
end
assign and_u1278_u0=or_u363_u0&or_u363_u0;
always @(posedge CLK or posedge syncEnable_u313_u0)
begin
if (syncEnable_u313_u0)
loopControl_u27<=1'h0;
else loopControl_u27<=scoreboard_010eeecf_and;
end
always @(posedge CLK)
begin
if (reg_01e9d759_result_delayed_u0)
syncEnable_u313_u0<=RESET;
end
assign or_u363_u0=reg_01e9d759_result_delayed_u0|loopControl_u27;
assign or_u364_u0=GO|and_u1226_u0;
assign mux_u397_u0=(GO)?1'h1:1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e9d759_u0<=1'h0;
else reg_01e9d759_u0<=GO;
end
assign or_u365_u0=GO|or_u360_u0;
assign mux_u398_u0=(GO)?1'h0:mux_u394_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e9d759_result_delayed_u0<=1'h0;
else reg_01e9d759_result_delayed_u0<=reg_01e9d759_u0;
end
assign or_u366_u0=GO|or_u361_u0;
assign mux_u399_u0=(GO)?1'h0:mux_u395_u0;
assign mux_u400_u0=(GO)?1'h0:mux_u396_u0;
assign or_u367_u0=GO|or_u362_u0;
assign mux_u401_u0=(GO)?1'h0:mux_u393;
assign or_u368_u0=GO|or_u359_u0;
assign RESULT=or_u364_u0;
assign RESULT_u786=mux_u397_u0;
assign RESULT_u787=or_u367_u0;
assign RESULT_u788=mux_u400_u0;
assign RESULT_u789=or_u365_u0;
assign RESULT_u790=mux_u398_u0;
assign RESULT_u791=or_u368_u0;
assign RESULT_u792=mux_u401_u0;
assign RESULT_u793=or_u366_u0;
assign RESULT_u794=mux_u399_u0;
assign RESULT_u795=simplePinWrite_u177;
assign RESULT_u796=simplePinWrite_u172;
assign RESULT_u797=simplePinWrite_u176;
assign RESULT_u798=simplePinWrite_u174;
assign RESULT_u799=simplePinWrite_u175;
assign RESULT_u800=doneCount_mModel_go_merge;
assign RESULT_u801=simplePinWrite_u170;
assign RESULT_u802=simplePinWrite_u173;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_567x32_54(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
input		CLK;
input		EN;
input		WE;
input	[31:0]	ADDR;
input	[31:0]	DIN;
output	[31:0]	DOUT;
output		DONE;
wire		we_0;
wire	[31:0]	pre_dout_0;
wire	[3:0]	extras_0;
reg	[31:0]	mux_out;
reg	[31:0]	ADDR_reg;
reg		ren_done;
reg		wen_done;
wire	[1:0]	parOut;
assign we_0=WE;
always @(posedge CLK)
begin
ADDR_reg<=ADDR;
end
always @(pre_dout_0)
begin
mux_out<=pre_dout_0;
end
always @(posedge CLK)
begin
ren_done<=EN;
wen_done<=WE;
end
assign DOUT=mux_out;
assign DONE=ren_done|wen_done;
//  Memory array element: COL: 0, ROW: 0
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S18#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S18_instance_108(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[15:0]), 
  .DO(pre_dout_0[15:0]), .DIP(DIN[17:16]), .DOP(pre_dout_0[17:16]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S18#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S18_instance_109(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI({2'b0, DIN[31:18]}), 
  .DO({extras_0, pre_dout_0[31:18]}), .DIP(2'b0), .DOP(parOut));
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00d3a699_(CLK_u30, bus_01d1485d_, bus_009f765d_, bus_013a93e3_, bus_003380e5_, bus_01aacab9_, bus_01ca0e0b_, bus_015344bf_, bus_006011d1_);
input		CLK_u30;
input		bus_01d1485d_;
input	[31:0]	bus_009f765d_;
input	[2:0]	bus_013a93e3_;
input		bus_003380e5_;
input		bus_01aacab9_;
input	[31:0]	bus_01ca0e0b_;
output	[31:0]	bus_015344bf_;
output		bus_006011d1_;
reg		logicalMem_840cd6_we_delay0_u0=1'h0;
wire	[31:0]	bus_0070fb0e_;
wire		or_01417880_u0;
reg		logicalMem_840cd6_re_delay0_u0=1'h0;
wire		or_011ccf9c_u0;
assign bus_015344bf_=bus_0070fb0e_;
assign bus_006011d1_=or_01417880_u0;
always @(posedge CLK_u30 or posedge bus_01d1485d_)
begin
if (bus_01d1485d_)
logicalMem_840cd6_we_delay0_u0<=1'h0;
else logicalMem_840cd6_we_delay0_u0<=bus_01aacab9_;
end
Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_567x32_54 Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_567x32_54_instance0(.CLK(CLK_u30), 
  .EN(or_011ccf9c_u0), .WE(bus_01aacab9_), .ADDR(bus_009f765d_), .DIN(bus_01ca0e0b_), 
  .DOUT(bus_0070fb0e_), .DONE());
assign or_01417880_u0=logicalMem_840cd6_re_delay0_u0|logicalMem_840cd6_we_delay0_u0;
always @(posedge CLK_u30 or posedge bus_01d1485d_)
begin
if (bus_01d1485d_)
logicalMem_840cd6_re_delay0_u0<=1'h0;
else logicalMem_840cd6_re_delay0_u0<=bus_003380e5_;
end
assign or_011ccf9c_u0=bus_003380e5_|bus_01aacab9_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00707d22_(endianswapper_00707d22_in, endianswapper_00707d22_out);
input	[31:0]	endianswapper_00707d22_in;
output	[31:0]	endianswapper_00707d22_out;
assign endianswapper_00707d22_out=endianswapper_00707d22_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_017b504a_(endianswapper_017b504a_in, endianswapper_017b504a_out);
input	[31:0]	endianswapper_017b504a_in;
output	[31:0]	endianswapper_017b504a_out;
assign endianswapper_017b504a_out=endianswapper_017b504a_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_sqrtValue(bus_0020201b_, bus_011bdd17_, bus_00608c46_, bus_018c261f_, bus_01b29f58_);
input		bus_0020201b_;
input		bus_011bdd17_;
input		bus_00608c46_;
input	[31:0]	bus_018c261f_;
output	[31:0]	bus_01b29f58_;
wire	[31:0]	endianswapper_00707d22_out;
reg	[31:0]	stateVar_sqrtValue_u4=32'h0;
wire	[31:0]	endianswapper_017b504a_out;
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00707d22_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00707d22__1(.endianswapper_00707d22_in(stateVar_sqrtValue_u4), 
  .endianswapper_00707d22_out(endianswapper_00707d22_out));
always @(posedge bus_0020201b_ or posedge bus_011bdd17_)
begin
if (bus_011bdd17_)
stateVar_sqrtValue_u4<=32'h0;
else if (bus_00608c46_)
stateVar_sqrtValue_u4<=endianswapper_017b504a_out;
end
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_017b504a_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_017b504a__1(.endianswapper_017b504a_in(bus_018c261f_), 
  .endianswapper_017b504a_out(endianswapper_017b504a_out));
assign bus_01b29f58_=endianswapper_00707d22_out;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_getColorModelPu(CLK, RESET, GO, port_0162ac11_, port_00dec7a1_, port_01852704_, RESULT, RESULT_u803, RESULT_u804, RESULT_u805, RESULT_u806, RESULT_u807, RESULT_u808, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0162ac11_;
input		port_00dec7a1_;
input	[31:0]	port_01852704_;
output		RESULT;
output	[31:0]	RESULT_u803;
output		RESULT_u804;
output	[31:0]	RESULT_u805;
output	[31:0]	RESULT_u806;
output	[2:0]	RESULT_u807;
output		RESULT_u808;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	add;
reg		reg_000730be_u0=1'h0;
wire		and_u1279_u0;
wire		or_u369_u0;
wire	[31:0]	add_u386;
reg		reg_01fd76ad_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign add=32'h0+port_0162ac11_;
always @(posedge CLK or posedge GO or posedge or_u369_u0)
begin
if (or_u369_u0)
reg_000730be_u0<=1'h0;
else if (GO)
reg_000730be_u0<=1'h1;
else reg_000730be_u0<=reg_000730be_u0;
end
assign and_u1279_u0=reg_000730be_u0&port_00dec7a1_;
assign or_u369_u0=and_u1279_u0|RESET;
assign add_u386=port_0162ac11_+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd76ad_u0<=1'h0;
else reg_01fd76ad_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u803=add_u386;
assign RESULT_u804=GO;
assign RESULT_u805=add;
assign RESULT_u806=port_01852704_;
assign RESULT_u807=3'h1;
assign RESULT_u808=simplePinWrite;
assign DONE=reg_01fd76ad_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_getColorModelQu(CLK, RESET, GO, port_0160dcae_, port_0100bacc_, port_01ca3a94_, RESULT, RESULT_u809, RESULT_u810, RESULT_u811, RESULT_u812, RESULT_u813, RESULT_u814, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0160dcae_;
input		port_0100bacc_;
input	[31:0]	port_01ca3a94_;
output		RESULT;
output	[31:0]	RESULT_u809;
output		RESULT_u810;
output	[31:0]	RESULT_u811;
output	[31:0]	RESULT_u812;
output	[2:0]	RESULT_u813;
output		RESULT_u814;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	add;
wire		or_u370_u0;
wire		and_u1280_u0;
reg		reg_00d617f9_u0=1'h0;
wire	[31:0]	add_u387;
reg		reg_002cfe83_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign add=32'h0+port_0160dcae_;
assign or_u370_u0=and_u1280_u0|RESET;
assign and_u1280_u0=reg_00d617f9_u0&port_0100bacc_;
always @(posedge CLK or posedge GO or posedge or_u370_u0)
begin
if (or_u370_u0)
reg_00d617f9_u0<=1'h0;
else if (GO)
reg_00d617f9_u0<=1'h1;
else reg_00d617f9_u0<=reg_00d617f9_u0;
end
assign add_u387=port_0160dcae_+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002cfe83_u0<=1'h0;
else reg_002cfe83_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u809=add_u387;
assign RESULT_u810=GO;
assign RESULT_u811=add;
assign RESULT_u812=port_01ca3a94_;
assign RESULT_u813=3'h1;
assign RESULT_u814=simplePinWrite;
assign DONE=reg_002cfe83_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_doneCount_bin(CLK, RESET, GO, RESULT, RESULT_u815, RESULT_u816, RESULT_u817, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u815;
output		RESULT_u816;
output	[31:0]	RESULT_u817;
output		DONE;
reg		reg_0010702e_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0010702e_u0<=1'h0;
else reg_0010702e_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u815=32'h0;
assign RESULT_u816=GO;
assign RESULT_u817=32'h0;
assign DONE=reg_0010702e_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_55(CLK, ENA, WEA, DINA, ENB, WEB, DINB, ADDRA, ADDRB, DOUTA, DONEA, DONEB);
input		CLK;
input		ENA;
input		WEA;
input	[31:0]	DINA;
input		ENB;
input		WEB;
input	[31:0]	DINB;
input	[31:0]	ADDRA;
input	[31:0]	ADDRB;
output	[31:0]	DOUTA;
output		DONEA;
output		DONEB;
wire		wea_0;
wire		web_0;
wire	[31:0]	pre_douta_0;
reg	[31:0]	mux_outa;
reg	[31:0]	ADDRA_reg;
reg	[31:0]	ADDRB_reg;
reg	[31:0]	mux_outb;
wire	[31:0]	pre_doutb_0;
reg		rea_done;
reg		web_done;
reg		wea_done;
assign wea_0=WEA&(ADDRA[31:12]==20'h0);
assign web_0=WEB&(ADDRB[31:12]==20'h0);
always @(posedge CLK)
begin
ADDRA_reg<=ADDRA;
end
always @(pre_douta_0)
begin
mux_outa<=pre_douta_0;
end
always @(posedge CLK)
begin
ADDRB_reg<=ADDRB;
end
always @(pre_doutb_0)
begin
mux_outb<=pre_doutb_0;
end
always @(posedge CLK)
begin
wea_done<=WEA;
rea_done<=ENA;
web_done<=WEB;
end
assign DONEA=wea_done|rea_done;
assign DONEB=web_done;
assign DOUTA=mux_outa;
// Memory array element: COL: 0, ROW: 0
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_62(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[3:0]), .DOA(pre_douta_0[3:0]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[3:0]), .DOB());
// Memory array element: COL: 0, ROW: 1
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_63(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[7:4]), .DOA(pre_douta_0[7:4]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[7:4]), .DOB());
// Memory array element: COL: 0, ROW: 2
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_64(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[11:8]), .DOA(pre_douta_0[11:8]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[11:8]), .DOB());
// Memory array element: COL: 0, ROW: 3
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_65(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[15:12]), .DOA(pre_douta_0[15:12]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[15:12]), 
  .DOB());
// Memory array element: COL: 0, ROW: 4
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_66(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[19:16]), .DOA(pre_douta_0[19:16]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[19:16]), 
  .DOB());
// Memory array element: COL: 0, ROW: 5
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_67(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[23:20]), .DOA(pre_douta_0[23:20]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[23:20]), 
  .DOB());
// Memory array element: COL: 0, ROW: 6
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_68(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[27:24]), .DOA(pre_douta_0[27:24]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[27:24]), 
  .DOB());
// Memory array element: COL: 0, ROW: 7
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S4_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_69(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[31:28]), .DOA(pre_douta_0[31:28]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[31:28]), 
  .DOB());
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01f0e25f_(CLK_u31, bus_0102e69f_, bus_01a425a7_, bus_018f6901_, bus_015d4f64_, bus_00b28dfa_, bus_00a6858b_, bus_002a6d38_, bus_004089f4_, bus_001e6b55_, bus_00064d59_, bus_01073724_, bus_0089951e_, bus_01c01333_);
input		CLK_u31;
input		bus_0102e69f_;
input	[31:0]	bus_01a425a7_;
input	[2:0]	bus_018f6901_;
input		bus_015d4f64_;
input		bus_00b28dfa_;
input	[31:0]	bus_00a6858b_;
input	[31:0]	bus_002a6d38_;
input	[2:0]	bus_004089f4_;
input		bus_001e6b55_;
input	[31:0]	bus_00064d59_;
output	[31:0]	bus_01073724_;
output		bus_0089951e_;
output		bus_01c01333_;
wire		or_00db77a3_u0;
reg		logicalMem_b1c157_we_delay0_u0=1'h0;
reg		logicalMem_b1c157_we_delay0_u1_u0=1'h0;
wire	[31:0]	bus_01d17bb3_;
reg		logicalMem_b1c157_re_delay0_u0=1'h0;
wire		or_008ff65f_u0;
assign or_00db77a3_u0=logicalMem_b1c157_re_delay0_u0|logicalMem_b1c157_we_delay0_u1_u0;
always @(posedge CLK_u31 or posedge bus_0102e69f_)
begin
if (bus_0102e69f_)
logicalMem_b1c157_we_delay0_u0<=1'h0;
else logicalMem_b1c157_we_delay0_u0<=bus_001e6b55_;
end
always @(posedge CLK_u31 or posedge bus_0102e69f_)
begin
if (bus_0102e69f_)
logicalMem_b1c157_we_delay0_u1_u0<=1'h0;
else logicalMem_b1c157_we_delay0_u1_u0<=bus_00b28dfa_;
end
Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_55 Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_55_instance0(.CLK(CLK_u31), 
  .ENA(or_008ff65f_u0), .WEA(bus_00b28dfa_), .DINA(32'h0), .ADDRA(bus_01a425a7_), 
  .DOUTA(bus_01d17bb3_), .DONEA(), .ENB(bus_001e6b55_), .WEB(bus_001e6b55_), .DINB(bus_00064d59_), 
  .ADDRB(bus_002a6d38_), .DONEB());
assign bus_01073724_=bus_01d17bb3_;
assign bus_0089951e_=or_00db77a3_u0;
assign bus_01c01333_=logicalMem_b1c157_we_delay0_u0;
always @(posedge CLK_u31 or posedge bus_0102e69f_)
begin
if (bus_0102e69f_)
logicalMem_b1c157_re_delay0_u0<=1'h0;
else logicalMem_b1c157_re_delay0_u0<=bus_015d4f64_;
end
assign or_008ff65f_u0=bus_015d4f64_|bus_00b28dfa_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_009af39b_(bus_012d6ad1_, bus_00bffc77_, bus_00d743b1_, bus_010df0de_, bus_01969247_, bus_01d098e0_, bus_0199c1ee_, bus_00cacbe8_, bus_0067937b_, bus_0151df80_, bus_00ace3b0_, bus_00408aa5_, bus_00c3dde4_, bus_01095f15_, bus_00ca06e0_, bus_0041f6e9_, bus_00110351_, bus_000385fc_, bus_00985c10_);
input		bus_012d6ad1_;
input		bus_00bffc77_;
input		bus_00d743b1_;
input	[31:0]	bus_010df0de_;
input		bus_01969247_;
input	[31:0]	bus_01d098e0_;
input	[31:0]	bus_0199c1ee_;
input	[2:0]	bus_00cacbe8_;
input		bus_0067937b_;
input	[31:0]	bus_0151df80_;
input	[2:0]	bus_00ace3b0_;
output	[31:0]	bus_00408aa5_;
output	[31:0]	bus_00c3dde4_;
output		bus_01095f15_;
output		bus_00ca06e0_;
output	[2:0]	bus_0041f6e9_;
output		bus_00110351_;
output	[31:0]	bus_000385fc_;
output		bus_00985c10_;
wire		not_0186cad9_u0;
wire		or_01e6d13b_u0;
reg		done_qual_u65_u0=1'h0;
wire		or_0199f26b_u0;
wire		and_01549a3c_u0;
wire	[31:0]	mux_01be5592_u0;
wire		or_003700d7_u0;
wire		and_013b5175_u0;
reg		done_qual_u66_u0=1'h0;
wire	[31:0]	mux_007d6ffd_u0;
wire		not_0090256b_u0;
assign not_0186cad9_u0=~bus_00d743b1_;
assign or_01e6d13b_u0=bus_01969247_|bus_0067937b_;
always @(posedge bus_012d6ad1_)
begin
if (bus_00bffc77_)
done_qual_u65_u0<=1'h0;
else done_qual_u65_u0<=bus_01969247_;
end
assign or_0199f26b_u0=bus_01969247_|done_qual_u65_u0;
assign bus_00408aa5_=mux_01be5592_u0;
assign bus_00c3dde4_=mux_007d6ffd_u0;
assign bus_01095f15_=bus_01969247_;
assign bus_00ca06e0_=or_01e6d13b_u0;
assign bus_0041f6e9_=3'h1;
assign bus_00110351_=and_01549a3c_u0;
assign bus_000385fc_=bus_010df0de_;
assign bus_00985c10_=and_013b5175_u0;
assign and_01549a3c_u0=or_0199f26b_u0&bus_00d743b1_;
assign mux_01be5592_u0=({32{bus_01969247_}}&bus_01d098e0_);
assign or_003700d7_u0=bus_0067937b_|done_qual_u66_u0;
assign and_013b5175_u0=or_003700d7_u0&bus_00d743b1_;
always @(posedge bus_012d6ad1_)
begin
if (bus_00bffc77_)
done_qual_u66_u0<=1'h0;
else done_qual_u66_u0<=bus_0067937b_;
end
assign mux_007d6ffd_u0=(bus_01969247_)?bus_0199c1ee_:bus_0151df80_;
assign not_0090256b_u0=~bus_00d743b1_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01eb4bee_(endianswapper_01eb4bee_in, endianswapper_01eb4bee_out);
input	[31:0]	endianswapper_01eb4bee_in;
output	[31:0]	endianswapper_01eb4bee_out;
assign endianswapper_01eb4bee_out=endianswapper_01eb4bee_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0157dad6_(endianswapper_0157dad6_in, endianswapper_0157dad6_out);
input	[31:0]	endianswapper_0157dad6_in;
output	[31:0]	endianswapper_0157dad6_out;
assign endianswapper_0157dad6_out=endianswapper_0157dad6_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count(bus_00fb3c0d_, bus_00237e16_, bus_0162f35f_, bus_00c7be8e_, bus_01f70b9e_, bus_0037f704_, bus_00632298_, bus_01cd56ad_, bus_00971d33_);
input		bus_00fb3c0d_;
input		bus_00237e16_;
input		bus_0162f35f_;
input	[31:0]	bus_00c7be8e_;
input		bus_01f70b9e_;
input	[31:0]	bus_0037f704_;
input		bus_00632298_;
input	[31:0]	bus_01cd56ad_;
output	[31:0]	bus_00971d33_;
reg	[31:0]	stateVar_count_u5=32'h0;
wire	[31:0]	mux_009cdc44_u0;
wire	[31:0]	endianswapper_01eb4bee_out;
wire	[31:0]	endianswapper_0157dad6_out;
wire		or_00fd0781_u0;
always @(posedge bus_00fb3c0d_ or posedge bus_00237e16_)
begin
if (bus_00237e16_)
stateVar_count_u5<=32'h0;
else if (or_00fd0781_u0)
stateVar_count_u5<=endianswapper_0157dad6_out;
end
assign mux_009cdc44_u0=({32{bus_0162f35f_}}&bus_00c7be8e_)|({32{bus_01f70b9e_}}&bus_0037f704_)|({32{bus_00632298_}}&32'h0);
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01eb4bee_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_01eb4bee__1(.endianswapper_01eb4bee_in(stateVar_count_u5), 
  .endianswapper_01eb4bee_out(endianswapper_01eb4bee_out));
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0157dad6_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_0157dad6__1(.endianswapper_0157dad6_in(mux_009cdc44_u0), 
  .endianswapper_0157dad6_out(endianswapper_0157dad6_out));
assign bus_00971d33_=endianswapper_01eb4bee_out;
assign or_00fd0781_u0=bus_0162f35f_|bus_01f70b9e_|bus_00632298_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_0097f16a_(bus_00b5ccb5_, bus_0192ab8c_, bus_00dfb10f_, bus_014bea73_, bus_01f8061b_, bus_01b3c340_, bus_00662fb7_, bus_005a285f_, bus_015a0eec_, bus_00f43af4_, bus_00e4662b_, bus_010d4aa3_, bus_01f8fb88_, bus_0145d6f6_, bus_01e36f03_, bus_0138888b_, bus_01107d5c_, bus_0189a8a5_, bus_00efc6d9_);
input		bus_00b5ccb5_;
input		bus_0192ab8c_;
input		bus_00dfb10f_;
input	[31:0]	bus_014bea73_;
input		bus_01f8061b_;
input	[31:0]	bus_01b3c340_;
input	[31:0]	bus_00662fb7_;
input	[2:0]	bus_005a285f_;
input		bus_015a0eec_;
input	[31:0]	bus_00f43af4_;
input	[2:0]	bus_00e4662b_;
output	[31:0]	bus_010d4aa3_;
output	[31:0]	bus_01f8fb88_;
output		bus_0145d6f6_;
output		bus_01e36f03_;
output	[2:0]	bus_0138888b_;
output		bus_01107d5c_;
output	[31:0]	bus_0189a8a5_;
output		bus_00efc6d9_;
wire		or_00d38e67_u0;
wire		and_00b1e2dc_u0;
wire		not_009f64da_u0;
wire		and_01b4daff_u0;
wire	[31:0]	mux_016b9724_u0;
reg		done_qual_u67_u0=1'h0;
wire		not_017caeaa_u0;
wire		or_01ff7ecc_u0;
wire		or_01a7e315_u0;
wire	[31:0]	mux_003e4f42_u0;
reg		done_qual_u68_u0=1'h0;
assign or_00d38e67_u0=bus_01f8061b_|done_qual_u67_u0;
assign and_00b1e2dc_u0=or_00d38e67_u0&bus_00dfb10f_;
assign bus_010d4aa3_=mux_003e4f42_u0;
assign bus_01f8fb88_=mux_016b9724_u0;
assign bus_0145d6f6_=bus_01f8061b_;
assign bus_01e36f03_=or_01ff7ecc_u0;
assign bus_0138888b_=3'h1;
assign bus_01107d5c_=and_00b1e2dc_u0;
assign bus_0189a8a5_=bus_014bea73_;
assign bus_00efc6d9_=and_01b4daff_u0;
assign not_009f64da_u0=~bus_00dfb10f_;
assign and_01b4daff_u0=or_01a7e315_u0&bus_00dfb10f_;
assign mux_016b9724_u0=(bus_01f8061b_)?bus_00662fb7_:bus_00f43af4_;
always @(posedge bus_00b5ccb5_)
begin
if (bus_0192ab8c_)
done_qual_u67_u0<=1'h0;
else done_qual_u67_u0<=bus_01f8061b_;
end
assign not_017caeaa_u0=~bus_00dfb10f_;
assign or_01ff7ecc_u0=bus_01f8061b_|bus_015a0eec_;
assign or_01a7e315_u0=bus_015a0eec_|done_qual_u68_u0;
assign mux_003e4f42_u0=({32{bus_01f8061b_}}&bus_01b3c340_);
always @(posedge bus_00b5ccb5_)
begin
if (bus_0192ab8c_)
done_qual_u68_u0<=1'h0;
else done_qual_u68_u0<=bus_015a0eec_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_56(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
input		CLK;
input		EN;
input		WE;
input	[31:0]	ADDR;
input	[31:0]	DIN;
output	[31:0]	DOUT;
output		DONE;
wire		we_0;
wire	[31:0]	pre_dout_0;
reg	[31:0]	mux_out;
reg	[31:0]	ADDR_reg;
reg		ren_done;
reg		wen_done;
assign we_0=WE;
always @(posedge CLK)
begin
ADDR_reg<=ADDR;
end
always @(pre_dout_0)
begin
mux_out<=pre_dout_0;
end
always @(posedge CLK)
begin
ren_done<=EN;
wen_done<=WE;
end
assign DOUT=mux_out;
assign DONE=ren_done|wen_done;
//  Memory array element: COL: 0, ROW: 0
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_110(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[3:0]), 
  .DO(pre_dout_0[3:0]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_111(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[7:4]), 
  .DO(pre_dout_0[7:4]));
//  Memory array element: COL: 0, ROW: 2
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_112(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[11:8]), 
  .DO(pre_dout_0[11:8]));
//  Memory array element: COL: 0, ROW: 3
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_113(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[15:12]), 
  .DO(pre_dout_0[15:12]));
//  Memory array element: COL: 0, ROW: 4
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_114(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[19:16]), 
  .DO(pre_dout_0[19:16]));
//  Memory array element: COL: 0, ROW: 5
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_115(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[23:20]), 
  .DO(pre_dout_0[23:20]));
//  Memory array element: COL: 0, ROW: 6
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_116(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[27:24]), 
  .DO(pre_dout_0[27:24]));
//  Memory array element: COL: 0, ROW: 7
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S4#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S4_instance_117(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[31:28]), 
  .DO(pre_dout_0[31:28]));
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_01c072c4_(CLK_u32, bus_01980751_, bus_00c50fa5_, bus_01822593_, bus_006e34f8_, bus_01a39ed5_, bus_00c27bd6_, bus_0157bd65_, bus_0050210a_);
input		CLK_u32;
input		bus_01980751_;
input	[31:0]	bus_00c50fa5_;
input	[2:0]	bus_01822593_;
input		bus_006e34f8_;
input		bus_01a39ed5_;
input	[31:0]	bus_00c27bd6_;
output	[31:0]	bus_0157bd65_;
output		bus_0050210a_;
reg		logicalMem_397ee3_we_delay0_u0=1'h0;
wire		or_01093753_u0;
wire		or_00e19dea_u0;
reg		logicalMem_397ee3_re_delay0_u0=1'h0;
wire	[31:0]	bus_00701a54_;
always @(posedge CLK_u32 or posedge bus_01980751_)
begin
if (bus_01980751_)
logicalMem_397ee3_we_delay0_u0<=1'h0;
else logicalMem_397ee3_we_delay0_u0<=bus_01a39ed5_;
end
assign or_01093753_u0=logicalMem_397ee3_re_delay0_u0|logicalMem_397ee3_we_delay0_u0;
assign or_00e19dea_u0=bus_006e34f8_|bus_01a39ed5_;
always @(posedge CLK_u32 or posedge bus_01980751_)
begin
if (bus_01980751_)
logicalMem_397ee3_re_delay0_u0<=1'h0;
else logicalMem_397ee3_re_delay0_u0<=bus_006e34f8_;
end
assign bus_0157bd65_=bus_00701a54_;
assign bus_0050210a_=or_01093753_u0;
Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_56 Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_4096x32_56_instance0(.CLK(CLK_u32), 
  .EN(or_00e19dea_u0), .WE(bus_01a39ed5_), .ADDR(bus_00c50fa5_), .DIN(bus_00c27bd6_), 
  .DOUT(bus_00701a54_), .DONE());
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_getBinValue(CLK, RESET, GO, port_01ef67f7_, port_00047038_, port_01e412f9_, port_007ccfee_, RESULT, RESULT_u818, RESULT_u819, RESULT_u820, RESULT_u821, RESULT_u822, RESULT_u823, RESULT_u824, RESULT_u825, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01ef67f7_;
input	[31:0]	port_00047038_;
input		port_01e412f9_;
input	[31:0]	port_007ccfee_;
output		RESULT;
output	[31:0]	RESULT_u818;
output		RESULT_u819;
output	[31:0]	RESULT_u820;
output		RESULT_u821;
output	[31:0]	RESULT_u822;
output	[31:0]	RESULT_u823;
output	[2:0]	RESULT_u824;
output		RESULT_u825;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u75;
wire	[31:0]	add;
wire	[31:0]	add_u388;
wire		or_u371_u0;
wire		and_u1281_u0;
reg		reg_011ac239_u0=1'h0;
wire	[31:0]	add_u389;
wire signed	[31:0]	equals_b_signed;
wire		equals;
wire signed	[31:0]	equals_a_signed;
wire		and_u1282_u0;
wire		not_u263_u0;
wire		and_u1283_u0;
wire	[31:0]	add_u390;
wire		and_u1284_u0;
wire	[31:0]	mux_u402;
wire	[31:0]	mux_u403_u0;
wire		and_u1285_u0;
reg		reg_00e23b6c_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign subtract={port_01ef67f7_[26:0], 5'b0}-{port_01ef67f7_[29:0], 2'b0};
assign subtract_u75=subtract-port_01ef67f7_;
assign add=subtract_u75+port_00047038_;
assign add_u388=32'h0+add;
assign or_u371_u0=and_u1281_u0|RESET;
assign and_u1281_u0=reg_011ac239_u0&port_01e412f9_;
always @(posedge CLK or posedge GO or posedge or_u371_u0)
begin
if (or_u371_u0)
reg_011ac239_u0<=1'h0;
else if (GO)
reg_011ac239_u0<=1'h1;
else reg_011ac239_u0<=reg_011ac239_u0;
end
assign add_u389=port_00047038_+32'h1;
assign equals_a_signed=add_u389;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1282_u0=GO&equals;
assign not_u263_u0=~equals;
assign and_u1283_u0=GO&not_u263_u0;
assign add_u390=port_01ef67f7_+32'h1;
assign and_u1284_u0=and_u1283_u0&GO;
assign mux_u402=(and_u1285_u0)?32'h0:add_u389;
assign mux_u403_u0=(and_u1285_u0)?add_u390:port_01ef67f7_;
assign and_u1285_u0=and_u1282_u0&GO;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e23b6c_u0<=1'h0;
else reg_00e23b6c_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u818=mux_u403_u0;
assign RESULT_u819=GO;
assign RESULT_u820=mux_u402;
assign RESULT_u821=GO;
assign RESULT_u822=add_u388;
assign RESULT_u823=port_007ccfee_;
assign RESULT_u824=3'h1;
assign RESULT_u825=simplePinWrite;
assign DONE=reg_00e23b6c_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_Kicker_14(CLK, RESET, bus_01daf2cd_);
input		CLK;
input		RESET;
output		bus_01daf2cd_;
wire		bus_00c28585_;
wire		bus_017f87b1_;
reg		kicker_1=1'h0;
wire		bus_001588af_;
reg		kicker_res=1'h0;
wire		bus_01738565_;
reg		kicker_2=1'h0;
assign bus_00c28585_=kicker_1&bus_017f87b1_&bus_001588af_;
assign bus_017f87b1_=~RESET;
always @(posedge CLK)
begin
kicker_1<=bus_017f87b1_;
end
assign bus_001588af_=~kicker_2;
always @(posedge CLK)
begin
kicker_res<=bus_00c28585_;
end
assign bus_01daf2cd_=kicker_res;
assign bus_01738565_=bus_017f87b1_&kicker_1;
always @(posedge CLK)
begin
kicker_2<=bus_01738565_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00ea002d_(endianswapper_00ea002d_in, endianswapper_00ea002d_out);
input	[31:0]	endianswapper_00ea002d_in;
output	[31:0]	endianswapper_00ea002d_out;
assign endianswapper_00ea002d_out=endianswapper_00ea002d_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00b930ff_(endianswapper_00b930ff_in, endianswapper_00b930ff_out);
input	[31:0]	endianswapper_00b930ff_in;
output	[31:0]	endianswapper_00b930ff_out;
assign endianswapper_00b930ff_out=endianswapper_00b930ff_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_stateVar_count_x(bus_005fedf4_, bus_01ff60a1_, bus_00f1c049_, bus_01ed6e14_, bus_0152e28f_, bus_013a6d2c_, bus_00f03fbb_, bus_00944272_, bus_014fd15d_, bus_01bfe2b0_, bus_018849f4_);
input		bus_005fedf4_;
input		bus_01ff60a1_;
input		bus_00f1c049_;
input	[31:0]	bus_01ed6e14_;
input		bus_0152e28f_;
input	[31:0]	bus_013a6d2c_;
input		bus_00f03fbb_;
input	[31:0]	bus_00944272_;
input		bus_014fd15d_;
input	[31:0]	bus_01bfe2b0_;
output	[31:0]	bus_018849f4_;
wire		or_006d550b_u0;
wire	[31:0]	endianswapper_00ea002d_out;
wire	[31:0]	endianswapper_00b930ff_out;
reg	[31:0]	stateVar_count_x_u5=32'h0;
wire	[31:0]	mux_0012b538_u0;
assign or_006d550b_u0=bus_00f1c049_|bus_0152e28f_|bus_00f03fbb_|bus_014fd15d_;
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00ea002d_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00ea002d__1(.endianswapper_00ea002d_in(stateVar_count_x_u5), 
  .endianswapper_00ea002d_out(endianswapper_00ea002d_out));
Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00b930ff_ Mean_Shift_Main_main_loop_cal_update_weight_endianswapper_00b930ff__1(.endianswapper_00b930ff_in(mux_0012b538_u0), 
  .endianswapper_00b930ff_out(endianswapper_00b930ff_out));
always @(posedge bus_005fedf4_ or posedge bus_01ff60a1_)
begin
if (bus_01ff60a1_)
stateVar_count_x_u5<=32'h0;
else if (or_006d550b_u0)
stateVar_count_x_u5<=endianswapper_00b930ff_out;
end
assign mux_0012b538_u0=({32{bus_00f1c049_}}&bus_01ed6e14_)|({32{bus_0152e28f_}}&32'h0)|({32{bus_00f03fbb_}}&bus_00944272_)|({32{bus_014fd15d_}}&32'h0);
assign bus_018849f4_=endianswapper_00ea002d_out;
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_simplememoryreferee_015bbe34_(bus_009f3fe0_, bus_011ab373_, bus_017035e5_, bus_01e1c48d_, bus_0159f537_, bus_01deb81b_, bus_005a92b3_, bus_001ffb40_, bus_012a8bf6_, bus_009d67d8_, bus_006696f2_, bus_012f21a4_, bus_0172db2c_, bus_00e93f8f_, bus_00e60f5d_, bus_00f92f33_, bus_01a828dd_, bus_004aee22_, bus_01402698_);
input		bus_009f3fe0_;
input		bus_011ab373_;
input		bus_017035e5_;
input	[31:0]	bus_01e1c48d_;
input		bus_0159f537_;
input	[31:0]	bus_01deb81b_;
input	[31:0]	bus_005a92b3_;
input	[2:0]	bus_001ffb40_;
input		bus_012a8bf6_;
input	[31:0]	bus_009d67d8_;
input	[2:0]	bus_006696f2_;
output	[31:0]	bus_012f21a4_;
output	[31:0]	bus_0172db2c_;
output		bus_00e93f8f_;
output		bus_00e60f5d_;
output	[2:0]	bus_00f92f33_;
output		bus_01a828dd_;
output	[31:0]	bus_004aee22_;
output		bus_01402698_;
wire		not_003e845e_u0;
wire		and_0165abad_u0;
wire		or_017a0e92_u0;
wire		or_01c7519f_u0;
wire		or_009f66c0_u0;
wire	[31:0]	mux_01cc8f3e_u0;
wire	[31:0]	mux_00d562e6_u0;
wire		and_019a49e3_u0;
wire		not_00253edc_u0;
reg		done_qual_u69_u0=1'h0;
reg		done_qual_u70_u0=1'h0;
assign not_003e845e_u0=~bus_017035e5_;
assign and_0165abad_u0=or_017a0e92_u0&bus_017035e5_;
assign or_017a0e92_u0=bus_0159f537_|done_qual_u69_u0;
assign or_01c7519f_u0=bus_0159f537_|bus_012a8bf6_;
assign or_009f66c0_u0=bus_012a8bf6_|done_qual_u70_u0;
assign mux_01cc8f3e_u0=(bus_0159f537_)?bus_005a92b3_:bus_009d67d8_;
assign mux_00d562e6_u0=({32{bus_0159f537_}}&bus_01deb81b_);
assign and_019a49e3_u0=or_009f66c0_u0&bus_017035e5_;
assign not_00253edc_u0=~bus_017035e5_;
assign bus_012f21a4_=mux_00d562e6_u0;
assign bus_0172db2c_=mux_01cc8f3e_u0;
assign bus_00e93f8f_=bus_0159f537_;
assign bus_00e60f5d_=or_01c7519f_u0;
assign bus_00f92f33_=3'h1;
assign bus_01a828dd_=and_0165abad_u0;
assign bus_004aee22_=bus_01e1c48d_;
assign bus_01402698_=and_019a49e3_u0;
always @(posedge bus_009f3fe0_)
begin
if (bus_011ab373_)
done_qual_u69_u0<=1'h0;
else done_qual_u69_u0<=bus_0159f537_;
end
always @(posedge bus_009f3fe0_)
begin
if (bus_011ab373_)
done_qual_u70_u0<=1'h0;
else done_qual_u70_u0<=bus_012a8bf6_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_weight_structuralmemory_00ad6271_(CLK_u33, bus_005e0962_, bus_017cdc15_, bus_00d6811b_, bus_009a2024_, bus_0038c05a_, bus_0187152b_, bus_00b45122_, bus_017edaa2_);
input		CLK_u33;
input		bus_005e0962_;
input	[31:0]	bus_017cdc15_;
input	[2:0]	bus_00d6811b_;
input		bus_009a2024_;
input		bus_0038c05a_;
input	[31:0]	bus_0187152b_;
output	[31:0]	bus_00b45122_;
output		bus_017edaa2_;
wire		or_00d0bde8_u0;
reg		logicalMem_110d3c9_re_delay0_u0=1'h0;
reg		logicalMem_110d3c9_we_delay0_u0=1'h0;
wire		or_0196e2f7_u0;
wire	[31:0]	bus_01300d2e_;
assign or_00d0bde8_u0=logicalMem_110d3c9_re_delay0_u0|logicalMem_110d3c9_we_delay0_u0;
assign bus_00b45122_=bus_01300d2e_;
assign bus_017edaa2_=or_00d0bde8_u0;
always @(posedge CLK_u33 or posedge bus_005e0962_)
begin
if (bus_005e0962_)
logicalMem_110d3c9_re_delay0_u0<=1'h0;
else logicalMem_110d3c9_re_delay0_u0<=bus_009a2024_;
end
always @(posedge CLK_u33 or posedge bus_005e0962_)
begin
if (bus_005e0962_)
logicalMem_110d3c9_we_delay0_u0<=1'h0;
else logicalMem_110d3c9_we_delay0_u0<=bus_0038c05a_;
end
assign or_0196e2f7_u0=bus_009a2024_|bus_0038c05a_;
Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_567x32_54 Mean_Shift_Main_main_loop_cal_update_weight_forge_memory_567x32_54_instance1(.CLK(CLK_u33), 
  .EN(or_0196e2f7_u0), .WE(bus_0038c05a_), .ADDR(bus_017cdc15_), .DIN(bus_0187152b_), 
  .DOUT(bus_01300d2e_), .DONE());
endmodule


