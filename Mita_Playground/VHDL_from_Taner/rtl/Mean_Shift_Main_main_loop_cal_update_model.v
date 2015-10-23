// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:55:52 +0100
// 

module Mean_Shift_Main_main_loop_cal_update_model(B_COUNT, loop_status_COUNT, centre_x_i_SEND, bin_o_COUNT, G_COUNT, Qu_SEND, kArray_DATA, B_ACK, Qu_RDY, Pu_SEND, bin_o_DATA, B_SEND, Pu_ACK, bin_o_RDY, centre_y_i_DATA, G_ACK, R_COUNT, G_DATA, B_DATA, centre_x_i_ACK, Pu_DATA, Qu_COUNT, Qu_ACK, Pu_COUNT, centre_y_i_SEND, kArray_COUNT, Qu_DATA, centre_x_i_COUNT, bin_o_SEND, G_SEND, centre_y_i_COUNT, kArray_ACK, loop_status_DATA, centre_x_i_DATA, kArray_SEND, R_SEND, R_DATA, centre_y_i_ACK, RESET, Pu_RDY, bin_o_ACK, loop_status_ACK, R_ACK, CLK, loop_status_SEND);
input	[15:0]	B_COUNT;
input	[15:0]	loop_status_COUNT;
input		centre_x_i_SEND;
wire		doneArrayCount_go;
output	[15:0]	bin_o_COUNT;
input	[15:0]	G_COUNT;
output		Qu_SEND;
input	[31:0]	kArray_DATA;
output		B_ACK;
input		Qu_RDY;
wire		initialise_go;
output		Pu_SEND;
output	[31:0]	bin_o_DATA;
input		B_SEND;
wire		send_Qu_go;
input		Pu_ACK;
wire		doneCount_mModel_go;
input		bin_o_RDY;
wire		updateModel_done;
wire		doneCount_bin_done;
input	[31:0]	centre_y_i_DATA;
wire		isLoopTrue_done;
output		G_ACK;
wire		updateModel_go;
input	[15:0]	R_COUNT;
input	[7:0]	G_DATA;
wire		getValueRGB_go;
input	[7:0]	B_DATA;
wire		doneCount_mModel_done;
wire		getCentreXY_loop_go;
wire		getkArray_done;
output		centre_x_i_ACK;
output	[31:0]	Pu_DATA;
output	[15:0]	Qu_COUNT;
input		Qu_ACK;
output	[15:0]	Pu_COUNT;
input		centre_y_i_SEND;
wire		getkArray_go;
input	[15:0]	kArray_COUNT;
wire		send_bin_go;
output	[31:0]	Qu_DATA;
input	[15:0]	centre_x_i_COUNT;
wire		doneArrayCount_done;
wire		doneCountIm_done;
wire		initialise_done;
wire		getCentreXY_loop_done;
output		bin_o_SEND;
input		G_SEND;
input	[15:0]	centre_y_i_COUNT;
output		kArray_ACK;
input		loop_status_DATA;
input	[31:0]	centre_x_i_DATA;
wire		doneCountIm_go;
wire		send_Qu_done;
wire		send_bin_done;
wire		isLoopTrue_go;
input		kArray_SEND;
input		R_SEND;
input	[7:0]	R_DATA;
output		centre_y_i_ACK;
input		RESET;
input		Pu_RDY;
input		bin_o_ACK;
output		loop_status_ACK;
wire		send_Pu_done;
wire		getValueRGB_done;
output		R_ACK;
wire		doneCount_bin_go;
input		CLK;
input		loop_status_SEND;
wire		send_Pu_go;
wire	[31:0]	bus_01d75496_;
wire		bus_00fab74a_;
wire	[31:0]	bus_00650005_;
wire	[31:0]	bus_00744f75_;
wire		bus_00826391_;
wire		bus_00a4ac0e_;
wire		bus_0140b50b_;
wire	[2:0]	bus_0042e8f2_;
wire		bus_00aa5d63_;
wire		bus_0019761f_;
wire	[31:0]	updateModel_u73;
wire	[31:0]	updateModel_u70;
wire	[2:0]	updateModel_u74;
wire	[31:0]	updateModel_u46;
wire	[2:0]	updateModel_u71;
wire	[31:0]	updateModel_u80;
wire	[2:0]	updateModel_u48;
wire		updateModel_u79;
wire		updateModel_u42;
wire		updateModel_u59;
wire	[2:0]	updateModel_u68;
wire	[2:0]	updateModel_u51;
wire	[2:0]	updateModel_u64;
wire	[2:0]	updateModel_u58;
wire	[31:0]	updateModel_u57;
wire	[31:0]	updateModel_u47;
wire	[31:0]	updateModel_u43;
wire		updateModel_u72;
wire	[2:0]	updateModel_u54;
wire		updateModel_u45;
wire	[31:0]	updateModel_u77;
wire	[31:0]	updateModel_u41;
wire		updateModel_u69;
wire	[2:0]	updateModel_u61;
wire		updateModel_u62;
wire		updateModel;
wire	[31:0]	updateModel_u60;
wire	[31:0]	updateModel_u76;
wire	[31:0]	updateModel_u66;
wire	[2:0]	updateModel_u81;
wire	[31:0]	updateModel_u63;
wire	[2:0]	updateModel_u78;
wire		updateModel_u52;
wire	[31:0]	updateModel_u53;
wire	[31:0]	updateModel_u56;
wire		Mean_Shift_Main_main_loop_cal_update_model_updateModel_instance_DONE;
wire		updateModel_u65;
wire	[31:0]	updateModel_u50;
wire	[31:0]	updateModel_u67;
wire		updateModel_u49;
wire		updateModel_u55;
wire	[2:0]	updateModel_u44;
wire		updateModel_u75;
wire		bus_00f7b60a_;
wire		bus_012a4053_;
wire		bus_01314f5e_;
wire		bus_003e6472_;
wire		bus_011f7370_;
wire		scheduler_u143;
wire		scheduler_u136;
wire		scheduler_u169;
wire		scheduler_u158;
wire		scheduler_u138;
wire		scheduler_u137;
wire		scheduler_u161;
wire		scheduler_u135;
wire		scheduler_u146;
wire		scheduler_u163;
wire		scheduler_u140;
wire		scheduler_u162;
wire		scheduler_u155;
wire		scheduler_u150;
wire		scheduler_u144;
wire		scheduler_u141;
wire		scheduler_u152;
wire		scheduler_u157;
wire		scheduler;
wire		scheduler_u147;
wire		scheduler_u159;
wire		scheduler_u156;
wire		scheduler_u151;
wire		scheduler_u168;
wire		scheduler_u142;
wire		scheduler_u160;
wire		Mean_Shift_Main_main_loop_cal_update_model_scheduler_instance_DONE;
wire		scheduler_u148;
wire		scheduler_u154;
wire		scheduler_u139;
wire		scheduler_u166;
wire		scheduler_u153;
wire		scheduler_u167;
wire		scheduler_u145;
wire		scheduler_u134;
wire		scheduler_u149;
wire		scheduler_u165;
wire		scheduler_u164;
wire	[7:0]	bus_0163b523_;
wire		bus_01f84f26_;
wire		bus_012b8347_;
wire	[7:0]	bus_00e15ac3_;
wire		bus_016d2a56_;
wire	[2:0]	bus_00776aba_;
wire	[31:0]	bus_0141c80f_;
wire		bus_01cdb2b4_;
wire		bus_01f392ef_;
wire		bus_000e4cf5_;
wire	[31:0]	bus_014dbaef_;
wire		bus_0013f67c_;
wire		bus_01e84628_;
wire	[7:0]	bus_01043094_;
wire		bus_01752101_;
wire	[2:0]	bus_00e794cd_;
wire		bus_003ae01e_;
wire	[31:0]	bus_00888c9d_;
wire	[31:0]	bus_0043e7a5_;
wire		bus_016c695e_;
wire		bus_012d8749_;
wire	[31:0]	bus_00929fb4_;
wire		bus_01cfacb2_;
wire	[31:0]	bus_006f8f15_;
wire		bus_007154c6_;
wire		bus_014169ee_;
wire	[7:0]	bus_01a6530f_;
wire		bus_010edc33_;
wire	[2:0]	bus_005945e8_;
wire		bus_00f5747a_;
wire	[7:0]	bus_01312cc7_;
wire		bus_005ce7d5_;
wire	[31:0]	bus_00e43103_;
wire		bus_0099d30d_;
wire		doneCount_bin_u7;
wire	[31:0]	doneCount_bin_u6;
wire		doneCount_bin;
wire		Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin_instance_DONE;
wire	[31:0]	doneCount_bin_u8;
wire		bus_00b137c6_;
wire	[7:0]	bus_01df9fbf_;
wire		bus_01e9c568_;
wire	[31:0]	bus_00ff65e6_;
wire	[31:0]	bus_0063014e_;
wire		bus_014ebb92_;
wire		send_bin;
wire		send_bin_u16;
wire	[31:0]	send_bin_u9;
wire		send_bin_u10;
wire	[15:0]	send_bin_u15;
wire		Mean_Shift_Main_main_loop_cal_update_model_send_bin_instance_DONE;
wire	[31:0]	send_bin_u17;
wire	[2:0]	send_bin_u14;
wire	[31:0]	send_bin_u13;
wire	[31:0]	send_bin_u11;
wire		send_bin_u12;
wire		bus_014431f8_;
wire		initialise_u13;
wire	[31:0]	initialise_u14;
wire		Mean_Shift_Main_main_loop_cal_update_model_initialise_instance_DONE;
wire		initialise_u12;
wire		initialise;
wire	[31:0]	initialise_u10;
wire		initialise_u11;
wire		bus_003d3efe_;
wire		bus_014b4f99_;
wire		bus_00b73f11_;
wire	[31:0]	bus_001319e0_;
wire	[31:0]	bus_0111f902_;
wire	[2:0]	bus_01d147d6_;
wire	[31:0]	bus_00ac9a64_;
wire		bus_015c430e_;
wire	[31:0]	bus_00ee55dc_;
wire		bus_005048a9_;
wire		bus_013e718a_;
wire		bus_01a94b5f_;
wire		bus_01b4a830_;
wire	[31:0]	bus_007fbaa6_;
wire		bus_012eae2a_;
wire	[31:0]	bus_0081b941_;
wire		bus_00e16980_;
wire		bus_01e08800_;
wire	[31:0]	bus_00b8f971_;
wire		bus_003646a5_;
wire	[7:0]	bus_01f25e8c_;
wire		doneCountIm;
wire		doneCountIm_u5;
wire		Mean_Shift_Main_main_loop_cal_update_model_doneCountIm_instance_DONE;
wire	[31:0]	doneCountIm_u6;
wire	[31:0]	doneCountIm_u4;
wire		bus_0171974c_;
wire	[31:0]	bus_00996ce9_;
wire		bus_009ade55_;
wire	[31:0]	bus_00e1cd76_;
wire		bus_012932ec_;
wire		bus_00b9fded_;
wire	[31:0]	send_Qu_u7;
wire		send_Qu_u12;
wire	[2:0]	send_Qu_u10;
wire	[31:0]	send_Qu_u9;
wire	[31:0]	send_Qu_u11;
wire		Mean_Shift_Main_main_loop_cal_update_model_send_Qu_instance_DONE;
wire	[15:0]	send_Qu_u13;
wire		send_Qu_u8;
wire		send_Qu;
wire	[2:0]	send_Pu_u10;
wire		Mean_Shift_Main_main_loop_cal_update_model_send_Pu_instance_DONE;
wire		send_Pu_u8;
wire	[31:0]	send_Pu_u7;
wire		send_Pu_u12;
wire	[31:0]	send_Pu_u9;
wire	[31:0]	send_Pu_u11;
wire		send_Pu;
wire	[15:0]	send_Pu_u13;
wire		bus_00415c77_;
wire		isLoopTrue;
wire		isLoopTrue_u3;
wire		Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue_instance_DONE;
wire		isLoopTrue_u4;
wire	[31:0]	isLoopTrue_u5;
wire		bus_002e4a17_;
wire		bus_010aca1d_;
wire	[31:0]	getkArray_u8;
wire	[31:0]	getkArray_u13;
wire		getkArray;
wire	[2:0]	getkArray_u14;
wire	[31:0]	getkArray_u12;
wire	[31:0]	getkArray_u10;
wire		getkArray_u9;
wire		getkArray_u11;
wire		getkArray_u15;
wire		Mean_Shift_Main_main_loop_cal_update_model_getkArray_instance_DONE;
wire	[31:0]	bus_00514c8c_;
wire	[31:0]	bus_00a86ae4_;
wire		bus_01d5c310_;
wire	[2:0]	bus_0159583c_;
wire		bus_00533f94_;
wire	[31:0]	bus_01f49581_;
wire		bus_00cb8421_;
wire	[31:0]	bus_01cbf77c_;
wire		bus_01a9dc7f_;
wire		bus_009529f3_;
wire	[31:0]	bus_019a346d_;
wire		bus_00a4abb0_;
wire		Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel_instance_DONE;
wire		doneCount_mModel;
wire	[31:0]	doneCount_mModel_u2;
wire		bus_0108a701_;
wire	[7:0]	bus_00eb5317_;
wire		bus_0198205f_;
wire	[7:0]	bus_001efbc6_;
wire	[2:0]	bus_01fce371_;
wire	[31:0]	bus_0105527f_;
wire		bus_002ca1bd_;
wire		bus_01a14872_;
wire	[31:0]	bus_009861cf_;
wire	[31:0]	bus_014f6e4b_;
wire		bus_01c8cda9_;
wire	[31:0]	bus_00797d62_;
wire		bus_00acc438_;
wire		bus_01c220d2_;
wire	[31:0]	bus_0127a53f_;
wire	[31:0]	bus_01bbe4d4_;
wire	[2:0]	bus_0093d16c_;
wire		bus_01549baa_;
wire		doneArrayCount_u7;
wire		Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount_instance_DONE;
wire		doneArrayCount;
wire	[31:0]	doneArrayCount_u8;
wire	[31:0]	doneArrayCount_u6;
wire		getCentreXY_loop_u14;
wire		getCentreXY_loop_u13;
wire		getCentreXY_loop_u9;
wire		getCentreXY_loop_u15;
wire	[31:0]	getCentreXY_loop_u12;
wire		getCentreXY_loop_u11;
wire		getCentreXY_loop_u10;
wire		getCentreXY_loop;
wire		Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop_instance_DONE;
wire	[31:0]	getCentreXY_loop_u8;
wire		getValueRGB_u43;
wire	[7:0]	getValueRGB_u49;
wire	[31:0]	getValueRGB_u48;
wire		getValueRGB_u39;
wire	[7:0]	getValueRGB_u41;
wire	[31:0]	getValueRGB_u38;
wire		getValueRGB_u37;
wire	[31:0]	getValueRGB_u40;
wire		Mean_Shift_Main_main_loop_cal_update_model_getValueRGB_instance_DONE;
wire		getValueRGB_u51;
wire		getValueRGB_u52;
wire	[7:0]	getValueRGB_u45;
wire	[2:0]	getValueRGB_u50;
wire		getValueRGB;
wire	[31:0]	getValueRGB_u36;
wire		getValueRGB_u53;
wire	[2:0]	getValueRGB_u42;
wire	[2:0]	getValueRGB_u46;
wire		getValueRGB_u47;
wire	[31:0]	getValueRGB_u44;
assign doneArrayCount_go=scheduler_u162;
assign bin_o_COUNT=send_bin_u15;
assign Qu_SEND=send_Qu_u12;
assign B_ACK=getValueRGB_u53;
assign initialise_go=scheduler_u159;
assign Pu_SEND=send_Pu_u12;
assign bin_o_DATA=send_bin_u17;
assign send_Qu_go=scheduler_u168;
assign doneCount_mModel_go=scheduler_u158;
assign updateModel_done=bus_0013f67c_;
assign doneCount_bin_done=bus_014169ee_;
assign isLoopTrue_done=bus_010aca1d_;
assign G_ACK=getValueRGB_u52;
assign updateModel_go=scheduler_u167;
assign getValueRGB_go=scheduler_u161;
assign doneCount_mModel_done=bus_01752101_;
assign getCentreXY_loop_go=scheduler_u163;
assign getkArray_done=bus_007154c6_;
assign centre_x_i_ACK=getCentreXY_loop_u13;
assign Pu_DATA=send_Pu_u11;
assign Qu_COUNT=send_Qu_u13;
assign Pu_COUNT=send_Pu_u13;
assign getkArray_go=scheduler_u157;
assign send_bin_go=scheduler_u164;
assign Qu_DATA=send_Qu_u11;
assign doneArrayCount_done=bus_014ebb92_;
assign doneCountIm_done=bus_000e4cf5_;
assign initialise_done=bus_014431f8_;
assign getCentreXY_loop_done=bus_00a4abb0_;
assign bin_o_SEND=send_bin_u16;
assign kArray_ACK=getkArray_u15;
assign doneCountIm_go=scheduler_u160;
assign send_Qu_done=bus_01f392ef_;
assign send_bin_done=bus_003d3efe_;
assign isLoopTrue_go=scheduler_u165;
assign centre_y_i_ACK=getCentreXY_loop_u14;
assign loop_status_ACK=getCentreXY_loop_u15;
assign send_Pu_done=bus_012a4053_;
assign getValueRGB_done=bus_011f7370_;
assign R_ACK=getValueRGB_u51;
assign doneCount_bin_go=scheduler_u166;
assign send_Pu_go=scheduler_u169;
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00984b23_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00984b23__1(.bus_00baf2c3_(CLK), 
  .bus_01980aa3_(bus_002e4a17_), .bus_00cb1e99_(bus_012eae2a_), .bus_00a01778_(bus_007fbaa6_), 
  .bus_003dd62d_(getkArray_u11), .bus_01db75c8_(getkArray_u13), .bus_012272bd_(getkArray_u12), 
  .bus_01910a62_(3'h1), .bus_014c2e4f_(updateModel_u49), .bus_004af1b1_(updateModel_u50), 
  .bus_017741d2_(3'h1), .bus_00650005_(bus_00650005_), .bus_01d75496_(bus_01d75496_), 
  .bus_00fab74a_(bus_00fab74a_), .bus_00a4ac0e_(bus_00a4ac0e_), .bus_0042e8f2_(bus_0042e8f2_), 
  .bus_0140b50b_(bus_0140b50b_), .bus_00744f75_(bus_00744f75_), .bus_00826391_(bus_00826391_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s11 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s11_1(.bus_000b22ba_(CLK), 
  .bus_01151acd_(bus_002e4a17_), .bus_006488ee_(scheduler_u139), .bus_00c607cc_(scheduler_u140), 
  .bus_00aa5d63_(bus_00aa5d63_));
Mean_Shift_Main_main_loop_cal_update_model_Kicker_13 Mean_Shift_Main_main_loop_cal_update_model_Kicker_13_1(.CLK(CLK), 
  .RESET(bus_002e4a17_), .bus_0019761f_(bus_0019761f_));
Mean_Shift_Main_main_loop_cal_update_model_updateModel Mean_Shift_Main_main_loop_cal_update_model_updateModel_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(updateModel_go), .port_01574be7_(bus_014f6e4b_), .port_00ea17ef_(bus_00ff65e6_), 
  .port_0005cee3_(bus_001319e0_), .port_00904e6d_(bus_01cfacb2_), .port_00e97c4d_(bus_0043e7a5_), 
  .port_013e6975_(bus_00cb8421_), .port_0145f3ca_(bus_00826391_), .port_001cbeac_(bus_00744f75_), 
  .port_01309e36_(bus_005048a9_), .port_01daa741_(bus_00ee55dc_), .port_00fa971f_(bus_01c220d2_), 
  .port_01f7f3e5_(bus_01c220d2_), .port_010da36a_(bus_00797d62_), .port_01ed94c3_(bus_00cb8421_), 
  .port_01e37f2f_(bus_01f49581_), .port_012bd60e_(bus_01cfacb2_), .port_00b89952_(bus_00f5747a_), 
  .port_0028cbd1_(bus_01a6530f_), .port_0068b39b_(bus_0198205f_), .port_00c6643b_(bus_001efbc6_), 
  .port_000e4b21_(bus_005048a9_), .port_012eed5e_(bus_01f84f26_), .port_002981d2_(bus_0163b523_), 
  .RESULT(updateModel), .RESULT_u593(updateModel_u41), .RESULT_u601(updateModel_u42), 
  .RESULT_u602(updateModel_u43), .RESULT_u603(updateModel_u44), .RESULT_u597(updateModel_u45), 
  .RESULT_u598(updateModel_u46), .RESULT_u599(updateModel_u47), .RESULT_u600(updateModel_u48), 
  .RESULT_u625(updateModel_u49), .RESULT_u626(updateModel_u50), .RESULT_u627(updateModel_u51), 
  .RESULT_u608(updateModel_u52), .RESULT_u609(updateModel_u53), .RESULT_u610(updateModel_u54), 
  .RESULT_u618(updateModel_u55), .RESULT_u619(updateModel_u56), .RESULT_u620(updateModel_u57), 
  .RESULT_u621(updateModel_u58), .RESULT_u615(updateModel_u59), .RESULT_u616(updateModel_u60), 
  .RESULT_u617(updateModel_u61), .RESULT_u594(updateModel_u62), .RESULT_u595(updateModel_u63), 
  .RESULT_u596(updateModel_u64), .RESULT_u604(updateModel_u65), .RESULT_u605(updateModel_u66), 
  .RESULT_u606(updateModel_u67), .RESULT_u607(updateModel_u68), .RESULT_u628(updateModel_u69), 
  .RESULT_u629(updateModel_u70), .RESULT_u630(updateModel_u71), .RESULT_u631(updateModel_u72), 
  .RESULT_u632(updateModel_u73), .RESULT_u633(updateModel_u74), .RESULT_u611(updateModel_u75), 
  .RESULT_u612(updateModel_u76), .RESULT_u613(updateModel_u77), .RESULT_u614(updateModel_u78), 
  .RESULT_u622(updateModel_u79), .RESULT_u623(updateModel_u80), .RESULT_u624(updateModel_u81), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_model_updateModel_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s2 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s2_1(.bus_00c4b67b_(CLK), 
  .bus_00a86b96_(bus_002e4a17_), .bus_01c52553_(scheduler_u143), .bus_01b722e6_(scheduler_u144), 
  .bus_00f7b60a_(bus_00f7b60a_));
assign bus_012a4053_=Mean_Shift_Main_main_loop_cal_update_model_send_Pu_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_send_Pu_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s12 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s12_1(.bus_00c6f5e9_(CLK), 
  .bus_003aa7e2_(bus_002e4a17_), .bus_00badbc0_(scheduler_u141), .bus_011431b7_(scheduler_u142), 
  .bus_01314f5e_(bus_01314f5e_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s5 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s5_1(.bus_00079408_(CLK), 
  .bus_0187a691_(bus_002e4a17_), .bus_0144e3ca_(scheduler_u147), .bus_001106ec_(scheduler_u148), 
  .bus_003e6472_(bus_003e6472_));
assign bus_011f7370_=Mean_Shift_Main_main_loop_cal_update_model_getValueRGB_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_getValueRGB_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_scheduler Mean_Shift_Main_main_loop_cal_update_model_scheduler_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(bus_0019761f_), .port_0085ce1f_(bus_01e9c568_), .port_014dfbad_(bus_0171974c_), 
  .port_00eb3e0a_(bus_01c8cda9_), .port_017843f6_(bus_00aa5d63_), .port_00d71d69_(bus_01314f5e_), 
  .port_013abe9f_(bus_00f7b60a_), .port_00106308_(bus_014b4f99_), .port_009ae2c7_(bus_003e6472_), 
  .port_006bb200_(bus_00415c77_), .port_0117db18_(bus_01b4a830_), .port_004f68ad_(bus_01a94b5f_), 
  .port_005224b2_(bus_00b73f11_), .port_011b3267_(bus_009861cf_), .port_01872ea9_(bus_0063014e_), 
  .port_00a1bdb0_(Pu_RDY), .port_01c2a8b3_(Qu_RDY), .port_009931c5_(bin_o_RDY), 
  .port_00fc16a6_(updateModel_done), .port_01651433_(send_Qu_done), .port_01562e6e_(doneCount_bin_done), 
  .port_0068b6c4_(send_bin_done), .port_014dc097_(doneCount_mModel_done), .port_006ff98d_(centre_x_i_SEND), 
  .port_01d20327_(getkArray_done), .port_0193d6aa_(send_Pu_done), .port_009939eb_(getValueRGB_done), 
  .port_00423f34_(kArray_SEND), .port_00f5c308_(isLoopTrue_done), .port_007ff298_(doneArrayCount_done), 
  .port_013ff323_(R_SEND), .port_0064c076_(B_SEND), .port_016a21eb_(doneCountIm_done), 
  .port_003b6bbf_(initialise_done), .port_003a680f_(loop_status_SEND), .port_01d70c86_(getCentreXY_loop_done), 
  .port_0077bfe8_(G_SEND), .port_01eff15b_(centre_y_i_SEND), .RESULT(scheduler), 
  .RESULT_u634(scheduler_u134), .RESULT_u635(scheduler_u135), .RESULT_u636(scheduler_u136), 
  .RESULT_u637(scheduler_u137), .RESULT_u638(scheduler_u138), .RESULT_u639(scheduler_u139), 
  .RESULT_u640(scheduler_u140), .RESULT_u641(scheduler_u141), .RESULT_u642(scheduler_u142), 
  .RESULT_u643(scheduler_u143), .RESULT_u644(scheduler_u144), .RESULT_u645(scheduler_u145), 
  .RESULT_u646(scheduler_u146), .RESULT_u647(scheduler_u147), .RESULT_u648(scheduler_u148), 
  .RESULT_u649(scheduler_u149), .RESULT_u650(scheduler_u150), .RESULT_u651(scheduler_u151), 
  .RESULT_u652(scheduler_u152), .RESULT_u653(scheduler_u153), .RESULT_u654(scheduler_u154), 
  .RESULT_u655(scheduler_u155), .RESULT_u656(scheduler_u156), .RESULT_u657(scheduler_u157), 
  .RESULT_u658(scheduler_u158), .RESULT_u659(scheduler_u159), .RESULT_u660(scheduler_u160), 
  .RESULT_u661(scheduler_u161), .RESULT_u662(scheduler_u162), .RESULT_u663(scheduler_u163), 
  .RESULT_u664(scheduler_u164), .RESULT_u665(scheduler_u165), .RESULT_u666(scheduler_u166), 
  .RESULT_u667(scheduler_u167), .RESULT_u668(scheduler_u168), .RESULT_u669(scheduler_u169), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_model_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_004642a8_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_004642a8__1(.bus_0001ca9d_(CLK), 
  .bus_019d3795_(bus_002e4a17_), .bus_00d60edb_(bus_00b137c6_), .bus_00601864_(bus_01df9fbf_), 
  .bus_01c2af4d_(getValueRGB_u47), .bus_00cc836e_(getValueRGB_u49), .bus_01f0d5cb_(getValueRGB_u48), 
  .bus_0136fd3c_(3'h1), .bus_01379244_(updateModel_u79), .bus_001d0f45_(updateModel_u80), 
  .bus_00750a51_(3'h1), .bus_00e15ac3_(bus_00e15ac3_), .bus_0141c80f_(bus_0141c80f_), 
  .bus_016d2a56_(bus_016d2a56_), .bus_01cdb2b4_(bus_01cdb2b4_), .bus_00776aba_(bus_00776aba_), 
  .bus_012b8347_(bus_012b8347_), .bus_0163b523_(bus_0163b523_), .bus_01f84f26_(bus_01f84f26_));
assign bus_01f392ef_=Mean_Shift_Main_main_loop_cal_update_model_send_Qu_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_send_Qu_instance_DONE}};
assign bus_000e4cf5_=Mean_Shift_Main_main_loop_cal_update_model_doneCountIm_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_doneCountIm_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_y Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_y_1(.bus_01b39c13_(CLK), 
  .bus_00cbdebd_(bus_002e4a17_), .bus_011dcc30_(getValueRGB_u37), .bus_010e3232_(getValueRGB_u38), 
  .bus_01eeab7b_(doneCountIm), .bus_004ad489_(32'h0), .bus_005121d5_(getkArray_u9), 
  .bus_003e8ee7_(getkArray_u10), .bus_01fa608d_(doneArrayCount), .bus_00c26f7f_(32'h0), 
  .bus_014cc37d_(send_bin_u10), .bus_01a2d704_(send_bin_u11), .bus_0083d374_(doneCount_bin), 
  .bus_01fd7e94_(32'h0), .bus_014dbaef_(bus_014dbaef_));
assign bus_0013f67c_=Mean_Shift_Main_main_loop_cal_update_model_updateModel_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_updateModel_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_017e6bfa_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_017e6bfa__1(.CLK_u23(CLK), 
  .bus_01f0bda8_(bus_002e4a17_), .bus_0038e6f1_(bus_00e43103_), .bus_0089aa08_(3'h1), 
  .bus_01aa3af3_(bus_005ce7d5_), .bus_009a2ef9_(bus_0099d30d_), .bus_00c12ae9_(bus_01312cc7_), 
  .bus_01043094_(bus_01043094_), .bus_01e84628_(bus_01e84628_));
assign bus_01752101_=Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0129ceb5_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0129ceb5__1(.bus_01688cf5_(CLK), 
  .bus_00fe4b66_(bus_002e4a17_), .bus_00972f33_(bus_012932ec_), .bus_01ad15c2_(bus_00996ce9_), 
  .bus_016b099c_(updateModel_u42), .bus_01765e94_(updateModel_u65), .bus_00667bed_(32'h0), 
  .bus_0131f1c8_(updateModel_u66), .bus_01d30872_(3'h1), .bus_01fdb161_(send_bin_u12), 
  .bus_0136b0e9_(send_bin_u13), .bus_004a3e38_(3'h1), .bus_006f8f15_(bus_006f8f15_), 
  .bus_00929fb4_(bus_00929fb4_), .bus_012d8749_(bus_012d8749_), .bus_016c695e_(bus_016c695e_), 
  .bus_00e794cd_(bus_00e794cd_), .bus_0043e7a5_(bus_0043e7a5_), .bus_01cfacb2_(bus_01cfacb2_), 
  .bus_00888c9d_(bus_00888c9d_), .bus_003ae01e_(bus_003ae01e_));
assign bus_007154c6_=Mean_Shift_Main_main_loop_cal_update_model_getkArray_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_getkArray_instance_DONE}};
assign bus_014169ee_=Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_007c5369_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_007c5369__1(.bus_01abb265_(CLK), 
  .bus_014d1521_(bus_002e4a17_), .bus_0112c2f1_(bus_01e84628_), .bus_01b13586_(bus_01043094_), 
  .bus_006bc83c_(getValueRGB_u43), .bus_01d483aa_(getValueRGB_u45), .bus_014b14d1_(getValueRGB_u44), 
  .bus_002b849b_(3'h1), .bus_0105fb11_(updateModel_u69), .bus_019b8fc0_(updateModel_u70), 
  .bus_019dfbaa_(3'h1), .bus_01312cc7_(bus_01312cc7_), .bus_00e43103_(bus_00e43103_), 
  .bus_0099d30d_(bus_0099d30d_), .bus_005ce7d5_(bus_005ce7d5_), .bus_005945e8_(bus_005945e8_), 
  .bus_010edc33_(bus_010edc33_), .bus_01a6530f_(bus_01a6530f_), .bus_00f5747a_(bus_00f5747a_));
Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(doneCount_bin_go), .RESULT(doneCount_bin), .RESULT_u670(doneCount_bin_u6), 
  .RESULT_u671(doneCount_bin_u7), .RESULT_u672(doneCount_bin_u8), .DONE(Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00169eff_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00169eff__1(.CLK_u24(CLK), 
  .bus_00809c2b_(bus_002e4a17_), .bus_00ea6255_(bus_0141c80f_), .bus_015cce02_(3'h1), 
  .bus_00c8b10c_(bus_01cdb2b4_), .bus_016a3bdc_(bus_016d2a56_), .bus_00c49f38_(bus_00e15ac3_), 
  .bus_01df9fbf_(bus_01df9fbf_), .bus_00b137c6_(bus_00b137c6_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_init Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_init_1(.bus_01d08b7a_(CLK), 
  .bus_00752299_(bus_002e4a17_), .bus_0089bf0f_(scheduler), .bus_01ad28e9_(scheduler_u134), 
  .bus_01e9c568_(bus_01e9c568_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_x Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_x_1(.bus_00c5a466_(CLK), 
  .bus_01ac386c_(bus_002e4a17_), .bus_0032c0af_(initialise), .bus_01107461_(32'h9f), 
  .bus_01c43cc1_(getCentreXY_loop), .bus_001134ad_(getCentreXY_loop_u8), .bus_00ff65e6_(bus_00ff65e6_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_count Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_1(.bus_00afc8d1_(CLK), 
  .bus_00a93491_(bus_002e4a17_), .bus_013b0bd7_(send_Qu), .bus_006a7195_(send_Qu_u7), 
  .bus_01059746_(send_Pu), .bus_00eb87b3_(send_Pu_u7), .bus_00e8bf11_(doneCount_mModel), 
  .bus_01410845_(32'h0), .bus_0063014e_(bus_0063014e_));
assign bus_014ebb92_=Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_send_bin Mean_Shift_Main_main_loop_cal_update_model_send_bin_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(send_bin_go), .port_00f484c3_(bus_009861cf_), .port_00f63402_(bus_014dbaef_), 
  .port_009d0a6f_(bus_003ae01e_), .port_001f3750_(bus_00888c9d_), .RESULT(send_bin), 
  .RESULT_u673(send_bin_u9), .RESULT_u674(send_bin_u10), .RESULT_u675(send_bin_u11), 
  .RESULT_u676(send_bin_u12), .RESULT_u677(send_bin_u13), .RESULT_u678(send_bin_u14), 
  .RESULT_u679(send_bin_u15), .RESULT_u681(send_bin_u16), .RESULT_u680(send_bin_u17), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_model_send_bin_instance_DONE));
assign bus_014431f8_=Mean_Shift_Main_main_loop_cal_update_model_initialise_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_initialise_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_initialise Mean_Shift_Main_main_loop_cal_update_model_initialise_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(initialise_go), .RESULT(initialise), .RESULT_u682(initialise_u10), 
  .RESULT_u683(initialise_u11), .RESULT_u684(initialise_u12), .RESULT_u685(initialise_u13), 
  .RESULT_u686(initialise_u14), .DONE(Mean_Shift_Main_main_loop_cal_update_model_initialise_instance_DONE));
assign bus_003d3efe_=Mean_Shift_Main_main_loop_cal_update_model_send_bin_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_send_bin_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s3 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s3_1(.bus_01b5159b_(CLK), 
  .bus_019d877a_(bus_002e4a17_), .bus_00d13f1b_(scheduler_u145), .bus_00396570_(scheduler_u146), 
  .bus_014b4f99_(bus_014b4f99_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s9 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s9_1(.bus_0149d8c6_(CLK), 
  .bus_0136f073_(bus_002e4a17_), .bus_00f5d1e2_(scheduler_u155), .bus_012c4a77_(scheduler_u156), 
  .bus_00b73f11_(bus_00b73f11_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_binValue Mean_Shift_Main_main_loop_cal_update_model_stateVar_binValue_1(.bus_001cd8f2_(CLK), 
  .bus_01e720f5_(bus_002e4a17_), .bus_01bd1544_(updateModel), .bus_00bb9a0a_(updateModel_u41), 
  .bus_001319e0_(bus_001319e0_));
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00b28bb3_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00b28bb3__1(.bus_018c66ee_(CLK), 
  .bus_00b9b4e0_(bus_002e4a17_), .bus_01158031_(bus_00e16980_), .bus_0011befd_(bus_0081b941_), 
  .bus_00a2cfa4_(updateModel_u52), .bus_00ba28af_(updateModel_u75), .bus_0045f35f_(updateModel_u77), 
  .bus_007008ed_(updateModel_u76), .bus_0008f607_(3'h1), .bus_0111f902_(bus_0111f902_), 
  .bus_00ac9a64_(bus_00ac9a64_), .bus_015c430e_(bus_015c430e_), .bus_013e718a_(bus_013e718a_), 
  .bus_01d147d6_(bus_01d147d6_), .bus_00ee55dc_(bus_00ee55dc_), .bus_005048a9_(bus_005048a9_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s8 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s8_1(.bus_00290b81_(CLK), 
  .bus_00b24b77_(bus_002e4a17_), .bus_0175442e_(scheduler_u153), .bus_016eea5e_(scheduler_u154), 
  .bus_01a94b5f_(bus_01a94b5f_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s7 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s7_1(.bus_014c648d_(CLK), 
  .bus_005d8ca0_(bus_002e4a17_), .bus_00832e88_(scheduler_u151), .bus_00d77615_(scheduler_u152), 
  .bus_01b4a830_(bus_01b4a830_));
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_01275630_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_01275630__1(.CLK_u25(CLK), 
  .bus_01e27912_(bus_002e4a17_), .bus_009e2fd1_(bus_01d75496_), .bus_012ca5b1_(3'h1), 
  .bus_006b7b99_(bus_00a4ac0e_), .bus_0095f71c_(bus_00fab74a_), .bus_007d21b0_(bus_00650005_), 
  .bus_007fbaa6_(bus_007fbaa6_), .bus_012eae2a_(bus_012eae2a_));
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_0069da77_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_0069da77__1(.CLK_u26(CLK), 
  .bus_01429da7_(bus_002e4a17_), .bus_00d8258a_(bus_019a346d_), .bus_00826d0c_(3'h1), 
  .bus_01d91422_(bus_01a9dc7f_), .bus_003a2588_(bus_009529f3_), .bus_0045baa4_(bus_00a86ae4_), 
  .bus_003ea82b_(bus_00ac9a64_), .bus_01893406_(3'h1), .bus_00456f1c_(bus_013e718a_), 
  .bus_01cabd6c_(bus_015c430e_), .bus_000762b5_(bus_0111f902_), .bus_00b8f971_(bus_00b8f971_), 
  .bus_01e08800_(bus_01e08800_), .bus_0081b941_(bus_0081b941_), .bus_00e16980_(bus_00e16980_));
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_011e6929_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_011e6929__1(.CLK_u27(CLK), 
  .bus_009809c3_(bus_002e4a17_), .bus_01626424_(bus_0105527f_), .bus_01b16c68_(3'h1), 
  .bus_01b109ad_(bus_002ca1bd_), .bus_00f1d55a_(bus_01a14872_), .bus_00fd1fda_(bus_00eb5317_), 
  .bus_01f25e8c_(bus_01f25e8c_), .bus_003646a5_(bus_003646a5_));
Mean_Shift_Main_main_loop_cal_update_model_doneCountIm Mean_Shift_Main_main_loop_cal_update_model_doneCountIm_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(doneCountIm_go), .RESULT(doneCountIm), .RESULT_u687(doneCountIm_u4), 
  .RESULT_u688(doneCountIm_u5), .RESULT_u689(doneCountIm_u6), .DONE(Mean_Shift_Main_main_loop_cal_update_model_doneCountIm_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s1_1(.bus_01b450dc_(CLK), 
  .bus_0128d3c8_(bus_002e4a17_), .bus_00550311_(scheduler_u135), .bus_01ecbafb_(scheduler_u136), 
  .bus_0171974c_(bus_0171974c_));
Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00431d38_ Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00431d38__1(.CLK_u28(CLK), 
  .bus_007d6680_(bus_002e4a17_), .bus_00280129_(bus_00929fb4_), .bus_00526c10_(3'h1), 
  .bus_0004175b_(bus_016c695e_), .bus_0060614a_(bus_012d8749_), .bus_006ae235_(bus_006f8f15_), 
  .bus_014e14ab_(bus_01bbe4d4_), .bus_0075e941_(3'h1), .bus_01b753d9_(bus_00acc438_), 
  .bus_0023412f_(bus_01549baa_), .bus_008698d1_(bus_0127a53f_), .bus_00996ce9_(bus_00996ce9_), 
  .bus_012932ec_(bus_012932ec_), .bus_00e1cd76_(bus_00e1cd76_), .bus_009ade55_(bus_009ade55_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_while_loop_status Mean_Shift_Main_main_loop_cal_update_model_stateVar_while_loop_status_1(.bus_00484e7a_(CLK), 
  .bus_01183b1e_(bus_002e4a17_), .bus_001c2c8a_(initialise_u11), .bus_004d3cbd_(1'h0), 
  .bus_0058973c_(getCentreXY_loop_u9), .bus_01b50d1b_(getCentreXY_loop_u10), 
  .bus_01a00f02_(isLoopTrue), .bus_008b64a1_(isLoopTrue_u3), .bus_00b9fded_(bus_00b9fded_));
Mean_Shift_Main_main_loop_cal_update_model_send_Qu Mean_Shift_Main_main_loop_cal_update_model_send_Qu_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(send_Qu_go), .port_00580fe6_(bus_0063014e_), .port_00046039_(bus_00533f94_), 
  .port_01fd307b_(bus_00514c8c_), .RESULT(send_Qu), .RESULT_u690(send_Qu_u7), .RESULT_u691(send_Qu_u8), 
  .RESULT_u692(send_Qu_u9), .RESULT_u693(send_Qu_u10), .RESULT_u694(send_Qu_u11), 
  .RESULT_u695(send_Qu_u12), .RESULT_u696(send_Qu_u13), .DONE(Mean_Shift_Main_main_loop_cal_update_model_send_Qu_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_send_Pu Mean_Shift_Main_main_loop_cal_update_model_send_Pu_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(send_Pu_go), .port_01e50b59_(bus_0063014e_), .port_013cf011_(bus_01d5c310_), 
  .port_003beb54_(bus_01cbf77c_), .RESULT(send_Pu), .RESULT_u697(send_Pu_u7), .RESULT_u698(send_Pu_u8), 
  .RESULT_u699(send_Pu_u9), .RESULT_u700(send_Pu_u10), .RESULT_u702(send_Pu_u11), 
  .RESULT_u701(send_Pu_u12), .RESULT_u703(send_Pu_u13), .DONE(Mean_Shift_Main_main_loop_cal_update_model_send_Pu_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s6 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s6_1(.bus_0057e531_(CLK), 
  .bus_00882040_(bus_002e4a17_), .bus_01c304b0_(scheduler_u149), .bus_01d9a513_(scheduler_u150), 
  .bus_00415c77_(bus_00415c77_));
Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(isLoopTrue_go), .port_00a3b668_(bus_00b9fded_), .port_011b811a_(bus_009861cf_), 
  .RESULT(isLoopTrue), .RESULT_u704(isLoopTrue_u3), .RESULT_u705(isLoopTrue_u4), 
  .RESULT_u706(isLoopTrue_u5), .DONE(Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_globalreset_physical_0068846e_ Mean_Shift_Main_main_loop_cal_update_model_globalreset_physical_0068846e__1(.bus_01ec44d6_(CLK), 
  .bus_009b5ffe_(RESET), .bus_002e4a17_(bus_002e4a17_));
assign bus_010aca1d_=Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_getkArray Mean_Shift_Main_main_loop_cal_update_model_getkArray_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(getkArray_go), .port_01578ffe_(bus_009861cf_), .port_010e074b_(bus_014dbaef_), 
  .port_00bfb19f_(bus_0140b50b_), .port_0002afab_(kArray_DATA), .RESULT(getkArray), 
  .RESULT_u707(getkArray_u8), .RESULT_u708(getkArray_u9), .RESULT_u709(getkArray_u10), 
  .RESULT_u710(getkArray_u11), .RESULT_u711(getkArray_u12), .RESULT_u712(getkArray_u13), 
  .RESULT_u713(getkArray_u14), .RESULT_u714(getkArray_u15), .DONE(Mean_Shift_Main_main_loop_cal_update_model_getkArray_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0034b59d_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0034b59d__1(.bus_00a2398c_(CLK), 
  .bus_0070356d_(bus_002e4a17_), .bus_0019f4aa_(bus_01e08800_), .bus_01c61952_(bus_00b8f971_), 
  .bus_01165ff0_(updateModel_u62), .bus_011d1970_(updateModel_u45), .bus_019be2ab_(updateModel_u47), 
  .bus_005d490a_(updateModel_u46), .bus_00093e17_(3'h1), .bus_00262527_(send_Qu_u8), 
  .bus_015592ca_(send_Qu_u9), .bus_01e6df60_(3'h1), .bus_00f3f2d6_(send_Pu_u8), 
  .bus_00ae8475_(send_Pu_u9), .bus_003f25f8_(3'h1), .bus_00a86ae4_(bus_00a86ae4_), 
  .bus_019a346d_(bus_019a346d_), .bus_009529f3_(bus_009529f3_), .bus_01a9dc7f_(bus_01a9dc7f_), 
  .bus_0159583c_(bus_0159583c_), .bus_01f49581_(bus_01f49581_), .bus_00cb8421_(bus_00cb8421_), 
  .bus_00514c8c_(bus_00514c8c_), .bus_00533f94_(bus_00533f94_), .bus_01cbf77c_(bus_01cbf77c_), 
  .bus_01d5c310_(bus_01d5c310_));
assign bus_00a4abb0_=Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop_instance_DONE}};
Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(doneCount_mModel_go), .RESULT(doneCount_mModel), .RESULT_u715(doneCount_mModel_u2), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00220790_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00220790__1(.bus_01ce2883_(CLK), 
  .bus_01c5c0c5_(bus_002e4a17_), .bus_005897a0_(bus_003646a5_), .bus_00ea5ea3_(bus_01f25e8c_), 
  .bus_015e6b88_(getValueRGB_u39), .bus_001e22f6_(getValueRGB_u41), .bus_0050bcae_(getValueRGB_u40), 
  .bus_00d28c89_(3'h1), .bus_017c00e5_(updateModel_u72), .bus_00c46370_(updateModel_u73), 
  .bus_00eba8d0_(3'h1), .bus_00eb5317_(bus_00eb5317_), .bus_0105527f_(bus_0105527f_), 
  .bus_01a14872_(bus_01a14872_), .bus_002ca1bd_(bus_002ca1bd_), .bus_01fce371_(bus_01fce371_), 
  .bus_0108a701_(bus_0108a701_), .bus_001efbc6_(bus_001efbc6_), .bus_0198205f_(bus_0198205f_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_x Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_x_1(.bus_0138316d_(CLK), 
  .bus_00352b54_(bus_002e4a17_), .bus_015ff5e5_(getValueRGB), .bus_007181a4_(getValueRGB_u36), 
  .bus_01d93c38_(doneCountIm_u5), .bus_004e9aa6_(32'h0), .bus_0119ae94_(getkArray), 
  .bus_00db4783_(getkArray_u8), .bus_007599ff_(doneArrayCount_u7), .bus_00e03451_(32'h0), 
  .bus_011d3853_(isLoopTrue_u4), .bus_0129abd3_(isLoopTrue_u5), .bus_01bde77f_(send_bin), 
  .bus_01902b1b_(send_bin_u9), .bus_00c9a0e5_(doneCount_bin_u7), .bus_01be47f7_(32'h0), 
  .bus_009861cf_(bus_009861cf_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_y Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_y_1(.bus_01600dc4_(CLK), 
  .bus_0127fc16_(bus_002e4a17_), .bus_00fab1fe_(initialise_u13), .bus_00bb7ec2_(32'h4c), 
  .bus_012004fd_(getCentreXY_loop_u11), .bus_00cdebfa_(getCentreXY_loop_u12), 
  .bus_014f6e4b_(bus_014f6e4b_));
Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s10 Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s10_1(.bus_00569985_(CLK), 
  .bus_01790cc9_(bus_002e4a17_), .bus_00c0a245_(scheduler_u137), .bus_0184ce5a_(scheduler_u138), 
  .bus_01c8cda9_(bus_01c8cda9_));
Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00274de2_ Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00274de2__1(.bus_00c7a572_(CLK), 
  .bus_013eec13_(bus_002e4a17_), .bus_01ab7229_(bus_009ade55_), .bus_0012b8e0_(bus_00e1cd76_), 
  .bus_01b72377_(updateModel_u59), .bus_00d1fd30_(updateModel_u55), .bus_0154d678_(updateModel_u57), 
  .bus_00bb29fc_(updateModel_u56), .bus_01091ec1_(3'h1), .bus_0127a53f_(bus_0127a53f_), 
  .bus_01bbe4d4_(bus_01bbe4d4_), .bus_01549baa_(bus_01549baa_), .bus_00acc438_(bus_00acc438_), 
  .bus_0093d16c_(bus_0093d16c_), .bus_00797d62_(bus_00797d62_), .bus_01c220d2_(bus_01c220d2_));
Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(doneArrayCount_go), .RESULT(doneArrayCount), .RESULT_u716(doneArrayCount_u6), 
  .RESULT_u717(doneArrayCount_u7), .RESULT_u718(doneArrayCount_u8), .DONE(Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(getCentreXY_loop_go), .port_01c8c2c2_(loop_status_DATA), 
  .port_01280da7_(centre_y_i_DATA), .port_00145342_(centre_x_i_DATA), .RESULT(getCentreXY_loop), 
  .RESULT_u719(getCentreXY_loop_u8), .RESULT_u720(getCentreXY_loop_u9), .RESULT_u721(getCentreXY_loop_u10), 
  .RESULT_u722(getCentreXY_loop_u11), .RESULT_u723(getCentreXY_loop_u12), .RESULT_u724(getCentreXY_loop_u13), 
  .RESULT_u725(getCentreXY_loop_u14), .RESULT_u726(getCentreXY_loop_u15), .DONE(Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop_instance_DONE));
Mean_Shift_Main_main_loop_cal_update_model_getValueRGB Mean_Shift_Main_main_loop_cal_update_model_getValueRGB_instance(.CLK(CLK), 
  .RESET(bus_002e4a17_), .GO(getValueRGB_go), .port_0046646f_(bus_009861cf_), .port_01fc293e_(bus_014dbaef_), 
  .port_003d6d7d_(bus_0108a701_), .port_01997172_(bus_010edc33_), .port_0047ca90_(bus_012b8347_), 
  .port_018b7143_(G_DATA), .port_001707e3_(B_DATA), .port_0106867e_(R_DATA), .RESULT(getValueRGB), 
  .RESULT_u727(getValueRGB_u36), .RESULT_u728(getValueRGB_u37), .RESULT_u729(getValueRGB_u38), 
  .RESULT_u738(getValueRGB_u39), .RESULT_u739(getValueRGB_u40), .RESULT_u740(getValueRGB_u41), 
  .RESULT_u741(getValueRGB_u42), .RESULT_u734(getValueRGB_u43), .RESULT_u735(getValueRGB_u44), 
  .RESULT_u736(getValueRGB_u45), .RESULT_u737(getValueRGB_u46), .RESULT_u730(getValueRGB_u47), 
  .RESULT_u731(getValueRGB_u48), .RESULT_u732(getValueRGB_u49), .RESULT_u733(getValueRGB_u50), 
  .RESULT_u742(getValueRGB_u51), .RESULT_u743(getValueRGB_u52), .RESULT_u744(getValueRGB_u53), 
  .DONE(Mean_Shift_Main_main_loop_cal_update_model_getValueRGB_instance_DONE));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00984b23_(bus_00baf2c3_, bus_01980aa3_, bus_00cb1e99_, bus_00a01778_, bus_003dd62d_, bus_01db75c8_, bus_012272bd_, bus_01910a62_, bus_014c2e4f_, bus_004af1b1_, bus_017741d2_, bus_00650005_, bus_01d75496_, bus_00fab74a_, bus_00a4ac0e_, bus_0042e8f2_, bus_0140b50b_, bus_00744f75_, bus_00826391_);
input		bus_00baf2c3_;
input		bus_01980aa3_;
input		bus_00cb1e99_;
input	[31:0]	bus_00a01778_;
input		bus_003dd62d_;
input	[31:0]	bus_01db75c8_;
input	[31:0]	bus_012272bd_;
input	[2:0]	bus_01910a62_;
input		bus_014c2e4f_;
input	[31:0]	bus_004af1b1_;
input	[2:0]	bus_017741d2_;
output	[31:0]	bus_00650005_;
output	[31:0]	bus_01d75496_;
output		bus_00fab74a_;
output		bus_00a4ac0e_;
output	[2:0]	bus_0042e8f2_;
output		bus_0140b50b_;
output	[31:0]	bus_00744f75_;
output		bus_00826391_;
wire		or_00470727_u0;
reg		done_qual_u50=1'h0;
wire		or_00f4f535_u0;
wire		not_01a0ce72_u0;
reg		done_qual_u51_u0=1'h0;
wire	[31:0]	mux_014c6d87_u0;
wire		and_0161c2ba_u0;
wire		and_015e1bfb_u0;
wire		or_0199e4f2_u0;
wire	[31:0]	mux_00e54547_u0;
wire		not_00ba6c26_u0;
assign or_00470727_u0=bus_003dd62d_|bus_014c2e4f_;
always @(posedge bus_00baf2c3_)
begin
if (bus_01980aa3_)
done_qual_u50<=1'h0;
else done_qual_u50<=bus_014c2e4f_;
end
assign or_00f4f535_u0=bus_014c2e4f_|done_qual_u50;
assign not_01a0ce72_u0=~bus_00cb1e99_;
assign bus_00650005_=mux_00e54547_u0;
assign bus_01d75496_=mux_014c6d87_u0;
assign bus_00fab74a_=bus_003dd62d_;
assign bus_00a4ac0e_=or_00470727_u0;
assign bus_0042e8f2_=3'h1;
assign bus_0140b50b_=and_0161c2ba_u0;
assign bus_00744f75_=bus_00a01778_;
assign bus_00826391_=and_015e1bfb_u0;
always @(posedge bus_00baf2c3_)
begin
if (bus_01980aa3_)
done_qual_u51_u0<=1'h0;
else done_qual_u51_u0<=bus_003dd62d_;
end
assign mux_014c6d87_u0=(bus_003dd62d_)?bus_012272bd_:bus_004af1b1_;
assign and_0161c2ba_u0=or_0199e4f2_u0&bus_00cb1e99_;
assign and_015e1bfb_u0=or_00f4f535_u0&bus_00cb1e99_;
assign or_0199e4f2_u0=bus_003dd62d_|done_qual_u51_u0;
assign mux_00e54547_u0=({32{bus_003dd62d_}}&bus_01db75c8_);
assign not_00ba6c26_u0=~bus_00cb1e99_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s11(bus_000b22ba_, bus_01151acd_, bus_006488ee_, bus_00c607cc_, bus_00aa5d63_);
input		bus_000b22ba_;
input		bus_01151acd_;
input		bus_006488ee_;
input		bus_00c607cc_;
output		bus_00aa5d63_;
reg		stateVar_state_s11_u1=1'h0;
always @(posedge bus_000b22ba_ or posedge bus_01151acd_)
begin
if (bus_01151acd_)
stateVar_state_s11_u1<=1'h0;
else if (bus_006488ee_)
stateVar_state_s11_u1<=bus_00c607cc_;
end
assign bus_00aa5d63_=stateVar_state_s11_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_Kicker_13(CLK, RESET, bus_0019761f_);
input		CLK;
input		RESET;
output		bus_0019761f_;
wire		bus_0196571a_;
reg		kicker_res=1'h0;
reg		kicker_2=1'h0;
wire		bus_00102a5b_;
wire		bus_001e5ba2_;
wire		bus_0050b2cf_;
reg		kicker_1=1'h0;
assign bus_0196571a_=bus_0050b2cf_&kicker_1;
always @(posedge CLK)
begin
kicker_res<=bus_00102a5b_;
end
always @(posedge CLK)
begin
kicker_2<=bus_0196571a_;
end
assign bus_00102a5b_=kicker_1&bus_0050b2cf_&bus_001e5ba2_;
assign bus_001e5ba2_=~kicker_2;
assign bus_0019761f_=kicker_res;
assign bus_0050b2cf_=~RESET;
always @(posedge CLK)
begin
kicker_1<=bus_0050b2cf_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_updateModel(CLK, RESET, GO, port_01574be7_, port_00ea17ef_, port_0005cee3_, port_01ed94c3_, port_01e37f2f_, port_013e6975_, port_00904e6d_, port_00e97c4d_, port_012bd60e_, port_01309e36_, port_01daa741_, port_000e4b21_, port_01f7f3e5_, port_010da36a_, port_00fa971f_, port_012eed5e_, port_002981d2_, port_0145f3ca_, port_001cbeac_, port_00b89952_, port_0028cbd1_, port_0068b39b_, port_00c6643b_, RESULT, RESULT_u593, RESULT_u594, RESULT_u595, RESULT_u596, RESULT_u597, RESULT_u598, RESULT_u599, RESULT_u600, RESULT_u601, RESULT_u602, RESULT_u603, RESULT_u604, RESULT_u605, RESULT_u606, RESULT_u607, RESULT_u608, RESULT_u609, RESULT_u610, RESULT_u611, RESULT_u612, RESULT_u613, RESULT_u614, RESULT_u615, RESULT_u616, RESULT_u617, RESULT_u618, RESULT_u619, RESULT_u620, RESULT_u621, RESULT_u622, RESULT_u623, RESULT_u624, RESULT_u625, RESULT_u626, RESULT_u627, RESULT_u628, RESULT_u629, RESULT_u630, RESULT_u631, RESULT_u632, RESULT_u633, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01574be7_;
input	[31:0]	port_00ea17ef_;
input	[31:0]	port_0005cee3_;
input		port_01ed94c3_;
input	[31:0]	port_01e37f2f_;
input		port_013e6975_;
input		port_00904e6d_;
input	[31:0]	port_00e97c4d_;
input		port_012bd60e_;
input		port_01309e36_;
input	[31:0]	port_01daa741_;
input		port_000e4b21_;
input		port_01f7f3e5_;
input	[31:0]	port_010da36a_;
input		port_00fa971f_;
input		port_012eed5e_;
input	[7:0]	port_002981d2_;
input		port_0145f3ca_;
input	[31:0]	port_001cbeac_;
input		port_00b89952_;
input	[7:0]	port_0028cbd1_;
input		port_0068b39b_;
input	[7:0]	port_00c6643b_;
output		RESULT;
output	[31:0]	RESULT_u593;
output		RESULT_u594;
output	[31:0]	RESULT_u595;
output	[2:0]	RESULT_u596;
output		RESULT_u597;
output	[31:0]	RESULT_u598;
output	[31:0]	RESULT_u599;
output	[2:0]	RESULT_u600;
output		RESULT_u601;
output	[31:0]	RESULT_u602;
output	[2:0]	RESULT_u603;
output		RESULT_u604;
output	[31:0]	RESULT_u605;
output	[31:0]	RESULT_u606;
output	[2:0]	RESULT_u607;
output		RESULT_u608;
output	[31:0]	RESULT_u609;
output	[2:0]	RESULT_u610;
output		RESULT_u611;
output	[31:0]	RESULT_u612;
output	[31:0]	RESULT_u613;
output	[2:0]	RESULT_u614;
output		RESULT_u615;
output	[31:0]	RESULT_u616;
output	[2:0]	RESULT_u617;
output		RESULT_u618;
output	[31:0]	RESULT_u619;
output	[31:0]	RESULT_u620;
output	[2:0]	RESULT_u621;
output		RESULT_u622;
output	[31:0]	RESULT_u623;
output	[2:0]	RESULT_u624;
output		RESULT_u625;
output	[31:0]	RESULT_u626;
output	[2:0]	RESULT_u627;
output		RESULT_u628;
output	[31:0]	RESULT_u629;
output	[2:0]	RESULT_u630;
output		RESULT_u631;
output	[31:0]	RESULT_u632;
output	[2:0]	RESULT_u633;
output		DONE;
reg		reg_01806257_u0=1'h0;
reg		reg_00ae928c_u0=1'h0;
wire		and_u930_u0;
wire		and_u931_u0;
wire	[31:0]	add;
wire		and_u932_u0;
wire		or_u259_u0;
reg		reg_006b0465_u0=1'h0;
wire	[31:0]	add_u294;
reg		block_GO_delayed_u27=1'h0;
reg	[31:0]	syncEnable_u213=32'h0;
reg	[31:0]	syncEnable_u214_u0=32'h0;
wire signed	[31:0]	lessThanEqualTo_b_signed;
wire		lessThanEqualTo;
wire signed	[31:0]	lessThanEqualTo_a_signed;
wire		and_u933_u0;
wire		not_u192_u0;
wire		and_u934_u0;
wire	[31:0]	mux_u288;
wire		or_u260_u0;
reg		reg_0061f107_u0=1'h0;
reg		reg_017526ba_u0=1'h0;
reg		reg_018f3c6f_u0=1'h0;
reg		reg_00c29c0e_u0=1'h0;
reg		reg_00c0ce2d_u0=1'h0;
reg		reg_01bd15bc_u0=1'h0;
reg		reg_017526ba_result_delayed_u0=1'h0;
reg		reg_01be9407_u0=1'h0;
wire		and_u935_u0;
reg		reg_0046d884_u0=1'h0;
reg		reg_002937b2_u0=1'h0;
reg		reg_0046d884_result_delayed_u0=1'h0;
wire signed	[31:0]	lessThanEqualTo_u17_a_signed;
wire		lessThanEqualTo_u17;
wire signed	[31:0]	lessThanEqualTo_u17_b_signed;
wire		not_u193_u0;
wire		and_u936_u0;
wire		and_u937_u0;
wire	[31:0]	add_u295;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u55;
wire	[31:0]	add_u296;
wire	[31:0]	add_u297;
wire	[31:0]	add_u298;
wire		or_u261_u0;
wire		and_u938_u0;
reg		reg_0018b96a_u0=1'h0;
wire	[31:0]	add_u299;
reg	[31:0]	syncEnable_u215_u0=32'h0;
reg		block_GO_delayed_u28_u0=1'h0;
reg	[31:0]	syncEnable_u216_u0=32'h0;
wire		and_u939_u0;
reg		and_delayed_u42=1'h0;
reg		and_delayed_result_delayed_u4=1'h0;
wire		and_u940_u0;
wire		or_u262_u0;
wire	[31:0]	mux_u289_u0;
reg	[31:0]	latch_010f30ba_reg=32'h0;
wire	[31:0]	latch_010f30ba_out;
wire	[31:0]	add_u300;
reg	[31:0]	syncEnable_u217_u0=32'h0;
reg		reg_00c3b6f1_u0=1'h0;
reg		reg_01d04c82_u0=1'h0;
reg		reg_0076954c_u0=1'h0;
reg		reg_01712e46_u0=1'h0;
reg		reg_00c29c0e_result_delayed_u0=1'h0;
reg		reg_0128f589_u0=1'h0;
reg		reg_0126107c_u0=1'h0;
reg		reg_0139b0d5_u0=1'h0;
reg		reg_00c29c0e_result_delayed_result_delayed_u0=1'h0;
reg		reg_0061f107_result_delayed_u0=1'h0;
reg		reg_002937b2_result_delayed_u0=1'h0;
reg		reg_005c2177_u0=1'h0;
reg		reg_01ee67a9_u0=1'h0;
wire		and_u941_u0;
reg		reg_01712e46_result_delayed_u0=1'h0;
reg		reg_01bd15bc_result_delayed_u0=1'h0;
reg		reg_0106515b_u0=1'h0;
reg		reg_0126107c_result_delayed_u0=1'h0;
reg		reg_0128f589_result_delayed_u0=1'h0;
reg		reg_00b3da46_u0=1'h0;
reg		reg_01c599d1_u0=1'h0;
reg		and_delayed_u43_u0=1'h0;
reg		reg_01726a54_u0=1'h0;
reg		reg_00f9d097_u0=1'h0;
reg		reg_0046d884_result_delayed_result_delayed_u0=1'h0;
reg		reg_002937b2_result_delayed_result_delayed_u0=1'h0;
reg		reg_017526ba_result_delayed_result_delayed_u0=1'h0;
reg		reg_0046d884_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_0128f589_result_delayed_result_delayed_u0=1'h0;
reg		reg_01b9d070_u0=1'h0;
reg		reg_00c3b6f1_result_delayed_u0=1'h0;
reg		reg_001e45cf_u0=1'h0;
reg		and_delayed_result_delayed_u5_u0=1'h0;
wire		lessThanEqualTo_u18;
wire signed	[31:0]	lessThanEqualTo_u18_a_signed;
wire signed	[31:0]	lessThanEqualTo_u18_b_signed;
wire		and_u942_u0;
wire		and_u943_u0;
wire		not_u194_u0;
reg		reg_0076954c_result_delayed_u0=1'h0;
reg		and_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_018f3c6f_result_delayed_u0=1'h0;
reg		reg_0046d884_result_delayed_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_01ee67a9_result_delayed_u0=1'h0;
reg		reg_0139b0d5_result_delayed_u0=1'h0;
reg		reg_01be9407_result_delayed_u0=1'h0;
reg		reg_00b3da46_result_delayed_u0=1'h0;
reg		and_delayed_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_00c3b6f1_result_delayed_result_delayed_u0=1'h0;
reg		reg_00c3b6f1_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		loopControl_u21=1'h0;
reg		syncEnable_u218_u0=1'h0;
reg	[31:0]	fbReg_x_1_1_u1=32'h0;
wire	[31:0]	mux_u290_u0;
wire		or_u263_u0;
reg		reg_01a249a2_u0=1'h0;
reg		reg_016545d8_u0=1'h0;
reg		reg_004e5111_u0=1'h0;
reg		reg_0096e8be_u0=1'h0;
reg		reg_0050a013_u0=1'h0;
reg		reg_01641ce3_u0=1'h0;
reg		reg_01d93333_u0=1'h0;
reg		reg_01e5f70a_u0=1'h0;
reg		reg_004bc17e_u0=1'h0;
reg		reg_01e90fac_u0=1'h0;
reg		reg_00d3ac74_u0=1'h0;
reg		reg_01fd2c89_u0=1'h0;
reg		reg_01ef340f_u0=1'h0;
reg		reg_0077c6f9_u0=1'h0;
reg		reg_00a115fb_u0=1'h0;
reg		reg_019bb047_u0=1'h0;
reg		reg_0067abd6_u0=1'h0;
reg		reg_0083f250_u0=1'h0;
reg		reg_00d3ac74_result_delayed_u0=1'h0;
reg		reg_00777a66_u0=1'h0;
reg		reg_0009601c_u0=1'h0;
reg		reg_0129c044_u0=1'h0;
reg		reg_018e47fa_u0=1'h0;
reg		reg_01ecfd64_u0=1'h0;
reg		reg_0167d3f0_u0=1'h0;
reg		reg_01210be6_u0=1'h0;
reg		reg_00882019_u0=1'h0;
reg		reg_000e7154_u0=1'h0;
reg		reg_00dc41df_u0=1'h0;
reg		reg_004e5111_result_delayed_u0=1'h0;
reg		reg_01e90fac_result_delayed_u0=1'h0;
reg		reg_014efb89_u0=1'h0;
reg		reg_0089dc14_u0=1'h0;
reg		reg_0050d3a7_u0=1'h0;
reg		reg_0092328c_u0=1'h0;
reg		reg_00bc3ad5_u0=1'h0;
reg		reg_01ecb321_u0=1'h0;
reg		reg_01ca65aa_u0=1'h0;
reg		reg_00bffb6b_u0=1'h0;
reg		reg_01cce2b0_u0=1'h0;
reg		reg_00ba3238_u0=1'h0;
reg		reg_0050a013_result_delayed_u0=1'h0;
reg		reg_00c455e0_u0=1'h0;
reg		reg_00a115fb_result_delayed_u0=1'h0;
reg		reg_0092b366_u0=1'h0;
reg		reg_012e6f41_u0=1'h0;
reg		reg_00e9feec_u0=1'h0;
reg		reg_00bc3ad5_result_delayed_u0=1'h0;
reg		reg_00d7d7f1_u0=1'h0;
reg		reg_00fc6344_u0=1'h0;
reg		reg_018980ae_u0=1'h0;
reg		reg_00d6a8eb_u0=1'h0;
reg		reg_010d63b6_u0=1'h0;
reg		reg_01a249a2_result_delayed_u0=1'h0;
reg		reg_00baa87e_u0=1'h0;
reg		reg_00b450ec_u0=1'h0;
reg		reg_007cee32_u0=1'h0;
reg		reg_00322b4e_u0=1'h0;
reg		reg_012d388a_u0=1'h0;
reg		reg_01338f6a_u0=1'h0;
reg		reg_004bc17e_result_delayed_u0=1'h0;
reg		reg_0050a013_result_delayed_result_delayed_u0=1'h0;
reg		reg_004e5111_result_delayed_result_delayed_u0=1'h0;
reg		reg_013eb8de_u0=1'h0;
reg		reg_016545d8_result_delayed_u0=1'h0;
reg		reg_01fd2c89_result_delayed_u0=1'h0;
reg		reg_0069e79b_u0=1'h0;
reg		reg_011224d5_u0=1'h0;
reg		reg_01fd2c89_result_delayed_result_delayed_u0=1'h0;
reg		reg_00efcbf3_u0=1'h0;
reg		reg_01087a35_u0=1'h0;
reg		reg_00ba3238_result_delayed_u0=1'h0;
reg		reg_00807d50_u0=1'h0;
reg		reg_0050d3a7_result_delayed_u0=1'h0;
reg		reg_004233d4_u0=1'h0;
reg		reg_014efb89_result_delayed_u0=1'h0;
reg		reg_012497e1_u0=1'h0;
reg		reg_002ad85f_u0=1'h0;
reg		reg_00bc3ad5_result_delayed_result_delayed_u0=1'h0;
reg		reg_006e1fac_u0=1'h0;
reg		reg_019bb047_result_delayed_u0=1'h0;
reg		reg_00d8ddd0_u0=1'h0;
wire		and_u944_u0;
reg		reg_01d9b699_u0=1'h0;
reg		reg_0083f250_result_delayed_u0=1'h0;
reg		reg_00d7d7f1_result_delayed_u0=1'h0;
reg		reg_000e7154_result_delayed_u0=1'h0;
reg		reg_00a115fb_result_delayed_result_delayed_u0=1'h0;
reg		reg_00c455e0_result_delayed_u0=1'h0;
reg		reg_00639f96_u0=1'h0;
reg		reg_010d63b6_result_delayed_u0=1'h0;
reg		reg_01a6d04a_u0=1'h0;
reg		reg_00eb67f0_u0=1'h0;
reg		reg_0030ed21_u0=1'h0;
reg		reg_01a72a16_u0=1'h0;
reg		reg_004bea9d_u0=1'h0;
reg		reg_00bffb6b_result_delayed_u0=1'h0;
reg		reg_011224d5_result_delayed_u0=1'h0;
reg		reg_01a249a2_result_delayed_result_delayed_u0=1'h0;
reg		reg_00bc3ad5_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_004e5111_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_0174d3be_u0=1'h0;
reg		reg_01d9b699_result_delayed_u0=1'h0;
reg		reg_00e98042_u0=1'h0;
wire		and_u945_u0;
reg		reg_018e47fa_result_delayed_u0=1'h0;
reg		reg_0096e8be_result_delayed_u0=1'h0;
reg		reg_00b450ec_result_delayed_u0=1'h0;
reg		reg_01fd2c89_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_01e90fac_result_delayed_result_delayed_u0=1'h0;
reg		reg_01e3d24d_u0=1'h0;
reg		reg_017c3c0d_u0=1'h0;
reg		reg_00807d50_result_delayed_u0=1'h0;
reg		reg_0171c2cb_u0=1'h0;
reg		reg_0092328c_result_delayed_u0=1'h0;
reg		reg_00322b4e_result_delayed_u0=1'h0;
reg		reg_0159fde1_u0=1'h0;
reg		reg_00a4aa3a_u0=1'h0;
reg		reg_01db2123_u0=1'h0;
reg		reg_0092328c_result_delayed_result_delayed_u0=1'h0;
reg		reg_00b450ec_result_delayed_result_delayed_u0=1'h0;
reg		reg_01ef340f_result_delayed_u0=1'h0;
reg		reg_01e3d24d_result_delayed_u0=1'h0;
reg		reg_017c3c0d_result_delayed_u0=1'h0;
reg		reg_01cc3baf_u0=1'h0;
wire		lessThanEqualTo_u19;
wire signed	[31:0]	lessThanEqualTo_u19_a_signed;
wire signed	[31:0]	lessThanEqualTo_u19_b_signed;
wire		not_u195_u0;
wire		and_u946_u0;
wire		and_u947_u0;
reg		reg_016545d8_result_delayed_result_delayed_u0=1'h0;
reg		reg_00322b4e_result_delayed_result_delayed_u0=1'h0;
reg		and_delayed_u44_u0=1'h0;
reg		reg_00777a66_result_delayed_u0=1'h0;
reg		reg_00fa9cef_u0=1'h0;
reg		reg_00e3d9b9_u0=1'h0;
reg		reg_0001ee7a_u0=1'h0;
reg		reg_01cc3baf_result_delayed_u0=1'h0;
reg		reg_00c455e0_result_delayed_result_delayed_u0=1'h0;
reg		reg_004233d4_result_delayed_u0=1'h0;
reg		reg_0050d3a7_result_delayed_result_delayed_u0=1'h0;
reg		reg_00870b20_u0=1'h0;
reg		reg_018e47fa_result_delayed_result_delayed_u0=1'h0;
reg		reg_00f4a185_u0=1'h0;
reg		reg_01709101_u0=1'h0;
reg		reg_005aefab_u0=1'h0;
reg		reg_01d93333_result_delayed_u0=1'h0;
reg		reg_01216e4f_u0=1'h0;
reg		reg_01b4c2fe_u0=1'h0;
reg		reg_01a249a2_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_000e7154_result_delayed_result_delayed_u0=1'h0;
reg		reg_0092b366_result_delayed_u0=1'h0;
reg		reg_01411b64_u0=1'h0;
reg		reg_01cce2b0_result_delayed_u0=1'h0;
reg		reg_012d388a_result_delayed_u0=1'h0;
reg		reg_012da103_u0=1'h0;
reg		reg_00882019_result_delayed_u0=1'h0;
reg		reg_01fd2c89_result_delayed_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_00d3ac74_result_delayed_result_delayed_u0=1'h0;
reg		and_delayed_result_delayed_u6_u0=1'h0;
reg		reg_01168c0e_u0=1'h0;
reg		reg_0092b366_result_delayed_result_delayed_u0=1'h0;
reg		reg_012497e1_result_delayed_u0=1'h0;
reg		reg_00ba3238_result_delayed_result_delayed_u0=1'h0;
reg		reg_01655ffb_u0=1'h0;
reg		reg_01e5f70a_result_delayed_u0=1'h0;
reg		reg_016545d8_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_0167d3f0_result_delayed_u0=1'h0;
reg		reg_00efcbf3_result_delayed_u0=1'h0;
reg		reg_0141c9d2_u0=1'h0;
reg		reg_005aefab_result_delayed_u0=1'h0;
reg		reg_00bffb6b_result_delayed_result_delayed_u0=1'h0;
reg		reg_017c3c0d_result_delayed_result_delayed_u0=1'h0;
reg		reg_00d6a8eb_result_delayed_u0=1'h0;
reg		reg_00322b4e_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_0077c6f9_result_delayed_u0=1'h0;
reg		reg_0050a013_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_00b450ec_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_0089dc14_result_delayed_u0=1'h0;
reg		reg_0001ee7a_result_delayed_u0=1'h0;
reg		reg_0001ee7a_result_delayed_result_delayed_u0=1'h0;
reg		reg_0077c6f9_result_delayed_result_delayed_u0=1'h0;
reg		reg_00e3d9b9_result_delayed_u0=1'h0;
reg		reg_013eb8de_result_delayed_u0=1'h0;
reg		reg_018980ae_result_delayed_u0=1'h0;
reg		reg_00176c96_u0=1'h0;
reg		reg_0174d3be_result_delayed_u0=1'h0;
reg		reg_00e9feec_result_delayed_u0=1'h0;
reg		reg_01709101_result_delayed_u0=1'h0;
reg		reg_0159fde1_result_delayed_u0=1'h0;
reg		reg_00777a66_result_delayed_result_delayed_u0=1'h0;
reg		reg_01abe0f0_u0=1'h0;
reg		reg_00975c43_u0=1'h0;
reg		reg_00e42380_u0=1'h0;
wire		lessThanEqualTo_u20;
wire signed	[31:0]	lessThanEqualTo_u20_a_signed;
wire signed	[31:0]	lessThanEqualTo_u20_b_signed;
wire		and_u948_u0;
wire		not_u196_u0;
wire		and_u949_u0;
wire	[31:0]	add_u301;
wire	[31:0]	add_u302;
wire	[31:0]	add_u303;
wire	[31:0]	add_u304;
wire	[31:0]	add_u305;
wire	[31:0]	add_u306;
wire		or_u264_u0;
reg		done_cache_u30=1'h0;
wire		and_u950_u0;
wire	[31:0]	add_u307;
wire	[31:0]	add_u308;
wire	[31:0]	add_u309;
wire	[31:0]	add_u310;
reg		done_cache_u31_u0=1'h0;
wire		or_u265_u0;
wire		and_u951_u0;
wire	[31:0]	add_u311;
wire	[31:0]	add_u312;
wire	[31:0]	add_u313;
wire	[31:0]	add_u314;
wire		and_u952_u0;
reg		done_cache_u32_u0=1'h0;
wire		or_u266_u0;
wire	[7:0]	greaterThanEqualTo_a_unsigned;
wire		greaterThanEqualTo;
wire	[7:0]	greaterThanEqualTo_b_unsigned;
wire		and_u953_u0;
wire		not_u197_u0;
wire		and_u954_u0;
wire	[7:0]	minus;
wire	[7:0]	minus_u15;
wire		and_u955_u0;
wire		and_u956_u0;
wire	[7:0]	mux_u291_u0;
wire		greaterThanEqualTo_u2;
wire	[7:0]	greaterThanEqualTo_u2_a_unsigned;
wire	[7:0]	greaterThanEqualTo_u2_b_unsigned;
wire		not_u198_u0;
wire		and_u957_u0;
wire		and_u958_u0;
wire	[7:0]	minus_u16;
wire	[7:0]	minus_u17;
wire	[7:0]	mux_u292_u0;
wire		and_u959_u0;
wire		and_u960_u0;
wire		greaterThanEqualTo_u3;
wire	[7:0]	greaterThanEqualTo_u3_a_unsigned;
wire	[7:0]	greaterThanEqualTo_u3_b_unsigned;
wire		and_u961_u0;
wire		not_u199_u0;
wire		and_u962_u0;
wire	[7:0]	minus_u18;
wire	[7:0]	minus_u19;
wire		and_u963_u0;
wire		and_u964_u0;
wire	[7:0]	mux_u293_u0;
wire	[31:0]	add_u315;
wire	[31:0]	add_u316;
wire	[31:0]	add_u317;
wire	[31:0]	subtract_u56;
wire	[31:0]	subtract_u57;
wire	[31:0]	add_u318;
wire	[31:0]	add_u319;
wire	[31:0]	add_u320;
wire		or_u267_u0;
reg		reg_008bc6ea_u0=1'h0;
wire		and_u965_u0;
wire	[31:0]	add_u321;
wire	[31:0]	subtract_u58;
wire	[31:0]	subtract_u59;
wire	[31:0]	add_u322;
wire	[31:0]	add_u323;
wire	[31:0]	add_u324;
wire		or_u268_u0;
wire		and_u966_u0;
reg		done_cache_u33_u0=1'h0;
wire	[31:0]	add_u325;
wire	[31:0]	subtract_u60;
wire	[31:0]	subtract_u61;
wire	[31:0]	add_u326;
wire	[31:0]	add_u327;
wire	[31:0]	add_u328;
reg		done_cache_u34_u0=1'h0;
wire		and_u967_u0;
wire		or_u269_u0;
wire	[31:0]	add_u329;
wire		and_u968_u0;
reg		done_cache_u35_u0=1'h0;
wire		or_u270_u0;
wire	[31:0]	add_u330;
wire	[31:0]	subtract_u62;
wire	[31:0]	subtract_u63;
wire	[31:0]	add_u331;
wire	[31:0]	add_u332;
wire	[31:0]	add_u333;
wire		and_u969_u0;
reg		done_cache_u36_u0=1'h0;
wire		or_u271_u0;
wire	[31:0]	add_u334;
wire	[31:0]	add_u335;
wire		and_u970_u0;
wire		or_u272_u0;
reg		reg_01f8da82_u0=1'h0;
wire	[31:0]	add_u336;
reg	[31:0]	syncEnable_u219_u0=32'h0;
reg		block_GO_delayed_u29_u0=1'h0;
reg	[31:0]	syncEnable_u220_u0=32'h0;
reg	[31:0]	syncEnable_u221_u0=32'h0;
reg	[31:0]	syncEnable_u222_u0=32'h0;
reg	[31:0]	syncEnable_u223_u0=32'h0;
reg	[7:0]	syncEnable_u224_u0=8'h0;
reg		reg_0144f98c_u0=1'h0;
wire	[31:0]	mux_u294_u0;
reg	[31:0]	syncEnable_u225_u0=32'h0;
reg		block_GO_delayed_result_delayed_u3=1'h0;
reg		reg_0144f98c_result_delayed_u0=1'h0;
reg	[31:0]	syncEnable_u226_u0=32'h0;
reg	[31:0]	syncEnable_u227_u0=32'h0;
reg	[31:0]	syncEnable_u228_u0=32'h0;
reg	[31:0]	syncEnable_u229_u0=32'h0;
reg	[7:0]	syncEnable_u230_u0=8'h0;
reg	[7:0]	syncEnable_u231_u0=8'h0;
reg		reg_0144f98c_result_delayed_result_delayed_u0=1'h0;
reg	[31:0]	syncEnable_u232_u0=32'h0;
reg	[31:0]	syncEnable_u233_u0=32'h0;
reg		reg_0144f98c_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg	[31:0]	syncEnable_u234_u0=32'h0;
wire		and_u971_u0;
reg		reg_01074a67_u0=1'h0;
reg		reg_00e42380_result_delayed_u0=1'h0;
wire		and_u972_u0;
reg		reg_01abe0f0_result_delayed_u0=1'h0;
reg		reg_00975c43_result_delayed_u0=1'h0;
wire	[7:0]	mux_u295_u0;
wire	[7:0]	mux_u296_u0;
wire	[31:0]	latch_0069eed8_out;
reg	[31:0]	latch_0069eed8_reg=32'h0;
wire	[31:0]	mux_u297_u0;
wire	[31:0]	mux_u298_u0;
wire		or_u273_u0;
wire	[31:0]	mux_u299_u0;
wire	[31:0]	mux_u300_u0;
wire	[31:0]	mux_u301_u0;
wire	[31:0]	mux_u302_u0;
wire	[7:0]	mux_u303_u0;
wire	[31:0]	mux_u304_u0;
wire	[31:0]	mux_u305_u0;
wire	[31:0]	latch_01382a89_out;
reg	[31:0]	latch_01382a89_reg=32'h0;
reg	[31:0]	latch_011d6043_reg=32'h0;
wire	[31:0]	latch_011d6043_out;
wire	[31:0]	add_u337;
reg	[7:0]	syncEnable_u235_u0=8'h0;
reg	[7:0]	syncEnable_u236_u0=8'h0;
reg	[31:0]	syncEnable_u237_u0=32'h0;
reg	[31:0]	syncEnable_u238_u0=32'h0;
reg	[31:0]	syncEnable_u239_u0=32'h0;
reg	[31:0]	syncEnable_u240_u0=32'h0;
reg	[31:0]	syncEnable_u241_u0=32'h0;
reg	[7:0]	syncEnable_u242_u0=8'h0;
reg	[31:0]	syncEnable_u243_u0=32'h0;
reg	[31:0]	syncEnable_u244_u0=32'h0;
reg		block_GO_delayed_u30_u0=1'h0;
reg	[31:0]	syncEnable_u245_u0=32'h0;
reg	[31:0]	syncEnable_u246_u0=32'h0;
reg	[31:0]	syncEnable_u247_u0=32'h0;
reg	[31:0]	syncEnable_u248_u0=32'h0;
reg		reg_00a4aa3a_result_delayed_u0=1'h0;
reg		reg_00176c96_result_delayed_u0=1'h0;
reg		reg_0009601c_result_delayed_u0=1'h0;
reg		reg_0092328c_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_012e6f41_result_delayed_u0=1'h0;
reg		reg_0129c044_result_delayed_u0=1'h0;
wire	[31:0]	mux_u306_u0;
wire	[31:0]	mux_u307_u0;
wire	[31:0]	mux_u308_u0;
wire	[7:0]	mux_u309_u0;
wire	[31:0]	mux_u310_u0;
wire	[31:0]	mux_u311_u0;
wire	[31:0]	mux_u312_u0;
wire	[31:0]	latch_0094f530_out;
reg	[31:0]	latch_0094f530_reg=32'h0;
wire	[31:0]	mux_u313_u0;
wire	[31:0]	mux_u314_u0;
wire	[31:0]	latch_0053b498_out;
reg	[31:0]	latch_0053b498_reg=32'h0;
wire		or_u274_u0;
wire	[7:0]	mux_u315_u0;
wire	[7:0]	mux_u316_u0;
wire signed	[31:0]	lessThanEqualTo_u21_a_signed;
wire signed	[31:0]	lessThanEqualTo_u21_b_signed;
wire		lessThanEqualTo_u21;
wire		and_u973_u0;
wire		not_u200_u0;
wire		and_u974_u0;
reg		reg_014e4785_u0=1'h0;
wire		and_u975_u0;
wire	[31:0]	add_u338;
wire		or_u275_u0;
wire		and_u976_u0;
reg		done_cache_u37_u0=1'h0;
wire	[31:0]	add_u339;
wire	[31:0]	add_u340;
reg	[31:0]	syncEnable_u249_u0=32'h0;
reg	[31:0]	syncEnable_u250_u0=32'h0;
wire		and_u977_u0;
wire	[31:0]	mux_u317_u0;
wire	[31:0]	mux_u318_u0;
wire		or_u276_u0;
wire	[43:0]	add_u341;
wire	[43:0]	add_u342;
wire	[43:0]	add_u343;
wire		and_u978_u0;
wire		and_u979_u0;
wire		lessThanEqualTo_u22;
wire signed	[31:0]	lessThanEqualTo_u22_b_signed;
wire signed	[31:0]	lessThanEqualTo_u22_a_signed;
wire		and_u980_u0;
wire		and_u981_u0;
wire		not_u201_u0;
wire	[31:0]	add_u344;
wire		and_u982_u0;
reg		done_cache_u38_u0=1'h0;
wire		or_u277_u0;
wire		lessThan;
wire signed	[31:0]	lessThan_a_signed;
wire signed	[31:0]	lessThan_b_signed;
wire		not_u202_u0;
wire		and_u983_u0;
wire		and_u984_u0;
wire	[31:0]	minus_u20;
wire	[31:0]	mux_u319_u0;
wire		and_u985_u0;
wire		and_u986_u0;
wire	[31:0]	mux_u320_u0;
wire signed	[31:0]	lessThan_u13_b_signed;
wire		lessThan_u13;
wire signed	[31:0]	lessThan_u13_a_signed;
wire		not_u203_u0;
wire		and_u987_u0;
wire		and_u988_u0;
wire	[31:0]	minus_u21;
wire	[31:0]	xor_u4;
wire		and_u989_u0;
wire		and_u990_u0;
wire	[31:0]	mux_u321_u0;
wire	[31:0]	mux_u322_u0;
wire		lessThan_u14;
wire signed	[31:0]	lessThan_u14_a_signed;
wire signed	[31:0]	lessThan_u14_b_signed;
wire		not_u204_u0;
wire		and_u991_u0;
wire		and_u992_u0;
wire	[31:0]	or_u278;
wire	[4:0]	subtract_u64;
wire	[31:0]	leftShift;
wire	[31:0]	leftShift_stage_2;
wire	[31:0]	leftShift_stage_4;
wire	[31:0]	leftShift_stage_3;
wire	[31:0]	leftShift_stage_1;
wire	[31:0]	subtract_u65;
wire	[31:0]	add_u345;
wire		and_u993_u0;
wire		and_u994_u0;
wire	[31:0]	mux_u323_u0;
wire	[31:0]	mux_u324_u0;
reg	[31:0]	fbReg_inlined_mask0_1_1_u3=32'h0;
reg	[31:0]	fbReg_inlined_i0_1_1_u4=32'h0;
wire	[31:0]	mux_u325_u0;
wire	[31:0]	latch_00962151_out;
reg	[13:0]	latch_00962151_reg=14'h0;
wire		and_u995_u0;
reg		loopControl_u22_u0=1'h0;
reg	[31:0]	fbReg_inlined_result0_1_1_u3=32'h0;
wire		and_u996_u0;
reg	[31:0]	fbReg_inlined_remainder0_1_1_u3=32'h0;
wire		or_u279_u0;
wire	[31:0]	mux_u326_u0;
wire		notEquals;
wire signed	[31:0]	notEquals_a_signed;
wire signed	[31:0]	notEquals_b_signed;
wire		and_u997_u0;
wire		and_u998_u0;
wire		not_u205_u0;
wire	[31:0]	minus_u22;
wire		and_u999_u0;
wire		and_u1000_u0;
wire	[31:0]	mux_u327_u0;
wire	[31:0]	add_u346;
reg		reg_0023c883_u0=1'h0;
wire		or_u280_u0;
wire		and_u1001_u0;
wire	[31:0]	add_u347;
reg		reg_00e48df9_u0=1'h0;
reg	[12:0]	syncEnable_u251_u0=13'h0;
reg		latch_01d9a798_reg=1'h0;
wire		latch_01d9a798_out;
reg		reg_0190420a_u0=1'h0;
reg	[31:0]	syncEnable_u252_u0=32'h0;
reg	[31:0]	syncEnable_u253_u0=32'h0;
reg		syncEnable_u254_u0=1'h0;
reg	[31:0]	syncEnable_u255_u0=32'h0;
reg		block_GO_delayed_u31_u0=1'h0;
wire		or_u281_u0;
reg	[12:0]	latch_0050a3c7_reg=13'h0;
wire	[31:0]	latch_0050a3c7_out;
wire	[31:0]	mux_u328_u0;
reg		scoreboard_01c18509_reg0=1'h0;
wire		scoreboard_01c18509_and;
wire		scoreboard_01c18509_resOr1;
wire		bus_018575bc_;
reg		scoreboard_01c18509_reg1=1'h0;
wire		scoreboard_01c18509_resOr0;
wire	[31:0]	mux_u329_u0;
wire	[31:0]	mux_u330_u0;
wire		or_u282_u0;
reg		reg_00ec8717_u0=1'h0;
wire	[31:0]	mux_u331_u0;
wire		or_u283_u0;
wire	[31:0]	mux_u332_u0;
reg	[31:0]	syncEnable_u256_u0=32'h0;
reg	[31:0]	syncEnable_u257_u0=32'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01806257_u0<=1'h0;
else reg_01806257_u0<=reg_00ae928c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ae928c_u0<=1'h0;
else reg_00ae928c_u0<=and_u931_u0;
end
assign and_u930_u0=and_u933_u0&or_u260_u0;
assign and_u931_u0=and_u934_u0&or_u260_u0;
assign add=32'h0+mux_u288;
assign and_u932_u0=reg_006b0465_u0&port_013e6975_;
assign or_u259_u0=and_u932_u0|RESET;
always @(posedge CLK or posedge block_GO_delayed_u27 or posedge or_u259_u0)
begin
if (or_u259_u0)
reg_006b0465_u0<=1'h0;
else if (block_GO_delayed_u27)
reg_006b0465_u0<=1'h1;
else reg_006b0465_u0<=reg_006b0465_u0;
end
assign add_u294=mux_u288+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u27<=1'h0;
else block_GO_delayed_u27<=and_u931_u0;
end
always @(posedge CLK)
begin
if (and_u931_u0)
syncEnable_u213<=add_u294;
end
always @(posedge CLK)
begin
if (and_u931_u0)
syncEnable_u214_u0<=add;
end
assign lessThanEqualTo_a_signed=mux_u288;
assign lessThanEqualTo_b_signed=32'hfff;
assign lessThanEqualTo=lessThanEqualTo_a_signed<=lessThanEqualTo_b_signed;
assign and_u933_u0=or_u260_u0&not_u192_u0;
assign not_u192_u0=~lessThanEqualTo;
assign and_u934_u0=or_u260_u0&lessThanEqualTo;
assign mux_u288=(reg_01806257_u0)?syncEnable_u213:32'h0;
assign or_u260_u0=reg_01806257_u0|reg_00ec8717_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0061f107_u0<=1'h0;
else reg_0061f107_u0<=reg_002937b2_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017526ba_u0<=1'h0;
else reg_017526ba_u0<=reg_01d04c82_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018f3c6f_u0<=1'h0;
else reg_018f3c6f_u0<=and_delayed_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c29c0e_u0<=1'h0;
else reg_00c29c0e_u0<=reg_00c0ce2d_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c0ce2d_u0<=1'h0;
else reg_00c0ce2d_u0<=reg_005c2177_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01bd15bc_u0<=1'h0;
else reg_01bd15bc_u0<=reg_01be9407_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017526ba_result_delayed_u0<=1'h0;
else reg_017526ba_result_delayed_u0<=reg_017526ba_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01be9407_u0<=1'h0;
else reg_01be9407_u0<=reg_00b3da46_result_delayed_u0;
end
assign and_u935_u0=and_u942_u0&or_u263_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0046d884_u0<=1'h0;
else reg_0046d884_u0<=reg_00f9d097_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002937b2_u0<=1'h0;
else reg_002937b2_u0<=reg_0126107c_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0046d884_result_delayed_u0<=1'h0;
else reg_0046d884_result_delayed_u0<=reg_0046d884_u0;
end
assign lessThanEqualTo_u17_a_signed=mux_u289_u0;
assign lessThanEqualTo_u17_b_signed=32'hd;
assign lessThanEqualTo_u17=lessThanEqualTo_u17_a_signed<=lessThanEqualTo_u17_b_signed;
assign not_u193_u0=~lessThanEqualTo_u17;
assign and_u936_u0=or_u262_u0&not_u193_u0;
assign and_u937_u0=or_u262_u0&lessThanEqualTo_u17;
assign add_u295=latch_010f30ba_out+32'ha;
assign subtract={add_u295[26:0], 5'b0}-{add_u295[29:0], 2'b0};
assign subtract_u55=subtract-add_u295;
assign add_u296=mux_u289_u0+32'hd;
assign add_u297=subtract_u55+add_u296;
assign add_u298=32'h0+add_u297;
assign or_u261_u0=and_u938_u0|RESET;
assign and_u938_u0=reg_0018b96a_u0&port_012bd60e_;
always @(posedge CLK or posedge block_GO_delayed_u28_u0 or posedge or_u261_u0)
begin
if (or_u261_u0)
reg_0018b96a_u0<=1'h0;
else if (block_GO_delayed_u28_u0)
reg_0018b96a_u0<=1'h1;
else reg_0018b96a_u0<=reg_0018b96a_u0;
end
assign add_u299=mux_u289_u0+32'h1;
always @(posedge CLK)
begin
if (and_u939_u0)
syncEnable_u215_u0<=add_u299;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u28_u0<=1'h0;
else block_GO_delayed_u28_u0<=and_u939_u0;
end
always @(posedge CLK)
begin
if (and_u939_u0)
syncEnable_u216_u0<=add_u298;
end
assign and_u939_u0=and_u937_u0&or_u262_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u42<=1'h0;
else and_delayed_u42<=and_u939_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u4<=1'h0;
else and_delayed_result_delayed_u4<=and_delayed_u42;
end
assign and_u940_u0=and_u936_u0&or_u262_u0;
assign or_u262_u0=and_delayed_result_delayed_u4|and_u941_u0;
assign mux_u289_u0=(and_delayed_result_delayed_u4)?syncEnable_u215_u0:32'hfffffff3;
always @(posedge CLK)
begin
if (and_u941_u0)
latch_010f30ba_reg<=mux_u290_u0;
end
assign latch_010f30ba_out=(and_u941_u0)?mux_u290_u0:latch_010f30ba_reg;
assign add_u300=mux_u290_u0+32'h1;
always @(posedge CLK)
begin
if (and_u941_u0)
syncEnable_u217_u0<=add_u300;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c3b6f1_u0<=1'h0;
else reg_00c3b6f1_u0<=reg_01bd15bc_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d04c82_u0<=1'h0;
else reg_01d04c82_u0<=reg_01712e46_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0076954c_u0<=1'h0;
else reg_0076954c_u0<=reg_0061f107_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01712e46_u0<=1'h0;
else reg_01712e46_u0<=reg_01726a54_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c29c0e_result_delayed_u0<=1'h0;
else reg_00c29c0e_result_delayed_u0<=reg_00c29c0e_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0128f589_u0<=1'h0;
else reg_0128f589_u0<=reg_00c29c0e_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0126107c_u0<=1'h0;
else reg_0126107c_u0<=reg_018f3c6f_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0139b0d5_u0<=1'h0;
else reg_0139b0d5_u0<=reg_0128f589_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c29c0e_result_delayed_result_delayed_u0<=1'h0;
else reg_00c29c0e_result_delayed_result_delayed_u0<=reg_00c29c0e_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0061f107_result_delayed_u0<=1'h0;
else reg_0061f107_result_delayed_u0<=reg_0061f107_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002937b2_result_delayed_u0<=1'h0;
else reg_002937b2_result_delayed_u0<=reg_002937b2_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_005c2177_u0<=1'h0;
else reg_005c2177_u0<=reg_017526ba_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ee67a9_u0<=1'h0;
else reg_01ee67a9_u0<=reg_0076954c_result_delayed_u0;
end
assign and_u941_u0=and_u943_u0&or_u263_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01712e46_result_delayed_u0<=1'h0;
else reg_01712e46_result_delayed_u0<=reg_01712e46_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01bd15bc_result_delayed_u0<=1'h0;
else reg_01bd15bc_result_delayed_u0<=reg_01bd15bc_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0106515b_u0<=1'h0;
else reg_0106515b_u0<=reg_001e45cf_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0126107c_result_delayed_u0<=1'h0;
else reg_0126107c_result_delayed_u0<=reg_0126107c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0128f589_result_delayed_u0<=1'h0;
else reg_0128f589_result_delayed_u0<=reg_0128f589_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b3da46_u0<=1'h0;
else reg_00b3da46_u0<=reg_01c599d1_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01c599d1_u0<=1'h0;
else reg_01c599d1_u0<=reg_0046d884_result_delayed_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u43_u0<=1'h0;
else and_delayed_u43_u0<=and_u941_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01726a54_u0<=1'h0;
else reg_01726a54_u0<=reg_00c3b6f1_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00f9d097_u0<=1'h0;
else reg_00f9d097_u0<=reg_01b9d070_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0046d884_result_delayed_result_delayed_u0<=1'h0;
else reg_0046d884_result_delayed_result_delayed_u0<=reg_0046d884_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002937b2_result_delayed_result_delayed_u0<=1'h0;
else reg_002937b2_result_delayed_result_delayed_u0<=reg_002937b2_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017526ba_result_delayed_result_delayed_u0<=1'h0;
else reg_017526ba_result_delayed_result_delayed_u0<=reg_017526ba_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0046d884_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_0046d884_result_delayed_result_delayed_result_delayed_u0<=reg_0046d884_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0128f589_result_delayed_result_delayed_u0<=1'h0;
else reg_0128f589_result_delayed_result_delayed_u0<=reg_0128f589_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b9d070_u0<=1'h0;
else reg_01b9d070_u0<=reg_01ee67a9_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c3b6f1_result_delayed_u0<=1'h0;
else reg_00c3b6f1_result_delayed_u0<=reg_00c3b6f1_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_001e45cf_u0<=1'h0;
else reg_001e45cf_u0<=reg_0139b0d5_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u5_u0<=1'h0;
else and_delayed_result_delayed_u5_u0<=and_delayed_u43_u0;
end
assign lessThanEqualTo_u18_a_signed=mux_u290_u0;
assign lessThanEqualTo_u18_b_signed=32'ha;
assign lessThanEqualTo_u18=lessThanEqualTo_u18_a_signed<=lessThanEqualTo_u18_b_signed;
assign and_u942_u0=or_u263_u0&not_u194_u0;
assign and_u943_u0=or_u263_u0&lessThanEqualTo_u18;
assign not_u194_u0=~lessThanEqualTo_u18;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0076954c_result_delayed_u0<=1'h0;
else reg_0076954c_result_delayed_u0<=reg_0076954c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_result_delayed_u0<=1'h0;
else and_delayed_result_delayed_result_delayed_u0<=and_delayed_result_delayed_u5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018f3c6f_result_delayed_u0<=1'h0;
else reg_018f3c6f_result_delayed_u0<=reg_018f3c6f_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0046d884_result_delayed_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_0046d884_result_delayed_result_delayed_result_delayed_result_delayed_u0<=reg_0046d884_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ee67a9_result_delayed_u0<=1'h0;
else reg_01ee67a9_result_delayed_u0<=reg_01ee67a9_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0139b0d5_result_delayed_u0<=1'h0;
else reg_0139b0d5_result_delayed_u0<=reg_0139b0d5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01be9407_result_delayed_u0<=1'h0;
else reg_01be9407_result_delayed_u0<=reg_01be9407_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b3da46_result_delayed_u0<=1'h0;
else reg_00b3da46_result_delayed_u0<=reg_00b3da46_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else and_delayed_result_delayed_result_delayed_result_delayed_u0<=and_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c3b6f1_result_delayed_result_delayed_u0<=1'h0;
else reg_00c3b6f1_result_delayed_result_delayed_u0<=reg_00c3b6f1_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c3b6f1_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_00c3b6f1_result_delayed_result_delayed_result_delayed_u0<=reg_00c3b6f1_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge syncEnable_u218_u0)
begin
if (syncEnable_u218_u0)
loopControl_u21<=1'h0;
else loopControl_u21<=reg_0106515b_u0;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u218_u0<=RESET;
end
always @(posedge CLK)
begin
if (reg_0106515b_u0)
fbReg_x_1_1_u1<=syncEnable_u217_u0;
end
assign mux_u290_u0=(loopControl_u21)?fbReg_x_1_1_u1:32'hfffffff6;
assign or_u263_u0=loopControl_u21|GO;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a249a2_u0<=1'h0;
else reg_01a249a2_u0<=reg_004e5111_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016545d8_u0<=1'h0;
else reg_016545d8_u0<=reg_0030ed21_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004e5111_u0<=1'h0;
else reg_004e5111_u0<=and_delayed_result_delayed_u6_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0096e8be_u0<=1'h0;
else reg_0096e8be_u0<=reg_01ecb321_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050a013_u0<=1'h0;
else reg_0050a013_u0<=reg_01641ce3_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01641ce3_u0<=1'h0;
else reg_01641ce3_u0<=reg_0083f250_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d93333_u0<=1'h0;
else reg_01d93333_u0<=reg_00639f96_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e5f70a_u0<=1'h0;
else reg_01e5f70a_u0<=reg_01cc3baf_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004bc17e_u0<=1'h0;
else reg_004bc17e_u0<=reg_00dc41df_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e90fac_u0<=1'h0;
else reg_01e90fac_u0<=reg_004bc17e_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d3ac74_u0<=1'h0;
else reg_00d3ac74_u0<=reg_012497e1_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd2c89_u0<=1'h0;
else reg_01fd2c89_u0<=reg_00a115fb_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ef340f_u0<=1'h0;
else reg_01ef340f_u0<=reg_0067abd6_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0077c6f9_u0<=1'h0;
else reg_0077c6f9_u0<=reg_01210be6_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a115fb_u0<=1'h0;
else reg_00a115fb_u0<=reg_00d7d7f1_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_019bb047_u0<=1'h0;
else reg_019bb047_u0<=reg_01338f6a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0067abd6_u0<=1'h0;
else reg_0067abd6_u0<=reg_00eb67f0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0083f250_u0<=1'h0;
else reg_0083f250_u0<=reg_01168c0e_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d3ac74_result_delayed_u0<=1'h0;
else reg_00d3ac74_result_delayed_u0<=reg_00d3ac74_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00777a66_u0<=1'h0;
else reg_00777a66_u0<=reg_01ecfd64_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0009601c_u0<=1'h0;
else reg_0009601c_u0<=reg_01db2123_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0129c044_u0<=1'h0;
else reg_0129c044_u0<=reg_000e7154_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018e47fa_u0<=1'h0;
else reg_018e47fa_u0<=reg_019bb047_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ecfd64_u0<=1'h0;
else reg_01ecfd64_u0<=reg_01a249a2_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0167d3f0_u0<=1'h0;
else reg_0167d3f0_u0<=reg_01d9b699_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01210be6_u0<=1'h0;
else reg_01210be6_u0<=reg_00bc3ad5_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00882019_u0<=1'h0;
else reg_00882019_u0<=reg_011224d5_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_000e7154_u0<=1'h0;
else reg_000e7154_u0<=reg_00baa87e_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00dc41df_u0<=1'h0;
else reg_00dc41df_u0<=reg_0077c6f9_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004e5111_result_delayed_u0<=1'h0;
else reg_004e5111_result_delayed_u0<=reg_004e5111_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e90fac_result_delayed_u0<=1'h0;
else reg_01e90fac_result_delayed_u0<=reg_01e90fac_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_014efb89_u0<=1'h0;
else reg_014efb89_u0<=reg_01ca65aa_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0089dc14_u0<=1'h0;
else reg_0089dc14_u0<=reg_01b4c2fe_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050d3a7_u0<=1'h0;
else reg_0050d3a7_u0<=reg_012da103_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092328c_u0<=1'h0;
else reg_0092328c_u0<=reg_00ba3238_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bc3ad5_u0<=1'h0;
else reg_00bc3ad5_u0<=reg_00fc6344_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ecb321_u0<=1'h0;
else reg_01ecb321_u0<=reg_006e1fac_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ca65aa_u0<=1'h0;
else reg_01ca65aa_u0<=reg_00e9feec_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bffb6b_u0<=1'h0;
else reg_00bffb6b_u0<=reg_01e3d24d_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01cce2b0_u0<=1'h0;
else reg_01cce2b0_u0<=reg_01709101_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ba3238_u0<=1'h0;
else reg_00ba3238_u0<=reg_018e47fa_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050a013_result_delayed_u0<=1'h0;
else reg_0050a013_result_delayed_u0<=reg_0050a013_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c455e0_u0<=1'h0;
else reg_00c455e0_u0<=reg_01a72a16_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a115fb_result_delayed_u0<=1'h0;
else reg_00a115fb_result_delayed_u0<=reg_00a115fb_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092b366_u0<=1'h0;
else reg_0092b366_u0<=reg_00882019_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012e6f41_u0<=1'h0;
else reg_012e6f41_u0<=reg_00b450ec_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e9feec_u0<=1'h0;
else reg_00e9feec_u0<=reg_01a6d04a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bc3ad5_result_delayed_u0<=1'h0;
else reg_00bc3ad5_result_delayed_u0<=reg_00bc3ad5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d7d7f1_u0<=1'h0;
else reg_00d7d7f1_u0<=reg_01ef340f_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00fc6344_u0<=1'h0;
else reg_00fc6344_u0<=reg_014efb89_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018980ae_u0<=1'h0;
else reg_018980ae_u0<=reg_007cee32_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d6a8eb_u0<=1'h0;
else reg_00d6a8eb_u0<=reg_00807d50_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_010d63b6_u0<=1'h0;
else reg_010d63b6_u0<=reg_00bffb6b_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a249a2_result_delayed_u0<=1'h0;
else reg_01a249a2_result_delayed_u0<=reg_01a249a2_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00baa87e_u0<=1'h0;
else reg_00baa87e_u0<=reg_00e98042_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b450ec_u0<=1'h0;
else reg_00b450ec_u0<=reg_01411b64_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007cee32_u0<=1'h0;
else reg_007cee32_u0<=reg_004bea9d_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00322b4e_u0<=1'h0;
else reg_00322b4e_u0<=reg_01087a35_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012d388a_u0<=1'h0;
else reg_012d388a_u0<=reg_0069e79b_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01338f6a_u0<=1'h0;
else reg_01338f6a_u0<=reg_013eb8de_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004bc17e_result_delayed_u0<=1'h0;
else reg_004bc17e_result_delayed_u0<=reg_004bc17e_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050a013_result_delayed_result_delayed_u0<=1'h0;
else reg_0050a013_result_delayed_result_delayed_u0<=reg_0050a013_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004e5111_result_delayed_result_delayed_u0<=1'h0;
else reg_004e5111_result_delayed_result_delayed_u0<=reg_004e5111_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_013eb8de_u0<=1'h0;
else reg_013eb8de_u0<=reg_002ad85f_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016545d8_result_delayed_u0<=1'h0;
else reg_016545d8_result_delayed_u0<=reg_016545d8_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd2c89_result_delayed_u0<=1'h0;
else reg_01fd2c89_result_delayed_u0<=reg_01fd2c89_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0069e79b_u0<=1'h0;
else reg_0069e79b_u0<=reg_00d8ddd0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_011224d5_u0<=1'h0;
else reg_011224d5_u0<=reg_012d388a_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd2c89_result_delayed_result_delayed_u0<=1'h0;
else reg_01fd2c89_result_delayed_result_delayed_u0<=reg_01fd2c89_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00efcbf3_u0<=1'h0;
else reg_00efcbf3_u0<=reg_0096e8be_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01087a35_u0<=1'h0;
else reg_01087a35_u0<=reg_010d63b6_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ba3238_result_delayed_u0<=1'h0;
else reg_00ba3238_result_delayed_u0<=reg_00ba3238_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00807d50_u0<=1'h0;
else reg_00807d50_u0<=reg_00322b4e_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050d3a7_result_delayed_u0<=1'h0;
else reg_0050d3a7_result_delayed_u0<=reg_0050d3a7_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004233d4_u0<=1'h0;
else reg_004233d4_u0<=reg_01d93333_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_014efb89_result_delayed_u0<=1'h0;
else reg_014efb89_result_delayed_u0<=reg_014efb89_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012497e1_u0<=1'h0;
else reg_012497e1_u0<=reg_01e90fac_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002ad85f_u0<=1'h0;
else reg_002ad85f_u0<=reg_00fa9cef_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bc3ad5_result_delayed_result_delayed_u0<=1'h0;
else reg_00bc3ad5_result_delayed_result_delayed_u0<=reg_00bc3ad5_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_006e1fac_u0<=1'h0;
else reg_006e1fac_u0<=reg_018980ae_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_019bb047_result_delayed_u0<=1'h0;
else reg_019bb047_result_delayed_u0<=reg_019bb047_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d8ddd0_u0<=1'h0;
else reg_00d8ddd0_u0<=reg_00a4aa3a_result_delayed_u0;
end
assign and_u944_u0=and_u947_u0&or_u274_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d9b699_u0<=1'h0;
else reg_01d9b699_u0<=reg_0174d3be_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0083f250_result_delayed_u0<=1'h0;
else reg_0083f250_result_delayed_u0<=reg_0083f250_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d7d7f1_result_delayed_u0<=1'h0;
else reg_00d7d7f1_result_delayed_u0<=reg_00d7d7f1_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_000e7154_result_delayed_u0<=1'h0;
else reg_000e7154_result_delayed_u0<=reg_000e7154_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a115fb_result_delayed_result_delayed_u0<=1'h0;
else reg_00a115fb_result_delayed_result_delayed_u0<=reg_00a115fb_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c455e0_result_delayed_u0<=1'h0;
else reg_00c455e0_result_delayed_u0<=reg_00c455e0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00639f96_u0<=1'h0;
else reg_00639f96_u0<=reg_0092328c_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_010d63b6_result_delayed_u0<=1'h0;
else reg_010d63b6_result_delayed_u0<=reg_010d63b6_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a6d04a_u0<=1'h0;
else reg_01a6d04a_u0<=reg_00c455e0_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00eb67f0_u0<=1'h0;
else reg_00eb67f0_u0<=reg_0089dc14_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0030ed21_u0<=1'h0;
else reg_0030ed21_u0<=reg_00f4a185_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a72a16_u0<=1'h0;
else reg_01a72a16_u0<=reg_00870b20_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004bea9d_u0<=1'h0;
else reg_004bea9d_u0<=reg_0050d3a7_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bffb6b_result_delayed_u0<=1'h0;
else reg_00bffb6b_result_delayed_u0<=reg_00bffb6b_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_011224d5_result_delayed_u0<=1'h0;
else reg_011224d5_result_delayed_u0<=reg_011224d5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a249a2_result_delayed_result_delayed_u0<=1'h0;
else reg_01a249a2_result_delayed_result_delayed_u0<=reg_01a249a2_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bc3ad5_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_00bc3ad5_result_delayed_result_delayed_result_delayed_u0<=reg_00bc3ad5_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004e5111_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_004e5111_result_delayed_result_delayed_result_delayed_u0<=reg_004e5111_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0174d3be_u0<=1'h0;
else reg_0174d3be_u0<=reg_016545d8_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d9b699_result_delayed_u0<=1'h0;
else reg_01d9b699_result_delayed_u0<=reg_01d9b699_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e98042_u0<=1'h0;
else reg_00e98042_u0<=reg_0050a013_result_delayed_result_delayed_result_delayed_u0;
end
assign and_u945_u0=and_u946_u0&or_u274_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018e47fa_result_delayed_u0<=1'h0;
else reg_018e47fa_result_delayed_u0<=reg_018e47fa_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0096e8be_result_delayed_u0<=1'h0;
else reg_0096e8be_result_delayed_u0<=reg_0096e8be_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b450ec_result_delayed_u0<=1'h0;
else reg_00b450ec_result_delayed_u0<=reg_00b450ec_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd2c89_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_01fd2c89_result_delayed_result_delayed_result_delayed_u0<=reg_01fd2c89_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e90fac_result_delayed_result_delayed_u0<=1'h0;
else reg_01e90fac_result_delayed_result_delayed_u0<=reg_01e90fac_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e3d24d_u0<=1'h0;
else reg_01e3d24d_u0<=reg_0009601c_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017c3c0d_u0<=1'h0;
else reg_017c3c0d_u0<=reg_0171c2cb_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00807d50_result_delayed_u0<=1'h0;
else reg_00807d50_result_delayed_u0<=reg_00807d50_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0171c2cb_u0<=1'h0;
else reg_0171c2cb_u0<=reg_0129c044_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092328c_result_delayed_u0<=1'h0;
else reg_0092328c_result_delayed_u0<=reg_0092328c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00322b4e_result_delayed_u0<=1'h0;
else reg_00322b4e_result_delayed_u0<=reg_00322b4e_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0159fde1_u0<=1'h0;
else reg_0159fde1_u0<=reg_00176c96_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a4aa3a_u0<=1'h0;
else reg_00a4aa3a_u0<=reg_00d6a8eb_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01db2123_u0<=1'h0;
else reg_01db2123_u0<=reg_01e5f70a_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092328c_result_delayed_result_delayed_u0<=1'h0;
else reg_0092328c_result_delayed_result_delayed_u0<=reg_0092328c_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b450ec_result_delayed_result_delayed_u0<=1'h0;
else reg_00b450ec_result_delayed_result_delayed_u0<=reg_00b450ec_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ef340f_result_delayed_u0<=1'h0;
else reg_01ef340f_result_delayed_u0<=reg_01ef340f_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e3d24d_result_delayed_u0<=1'h0;
else reg_01e3d24d_result_delayed_u0<=reg_01e3d24d_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017c3c0d_result_delayed_u0<=1'h0;
else reg_017c3c0d_result_delayed_u0<=reg_017c3c0d_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01cc3baf_u0<=1'h0;
else reg_01cc3baf_u0<=reg_01fd2c89_result_delayed_result_delayed_result_delayed_result_delayed_u0;
end
assign lessThanEqualTo_u19_a_signed=mux_u307_u0;
assign lessThanEqualTo_u19_b_signed=32'ha;
assign lessThanEqualTo_u19=lessThanEqualTo_u19_a_signed<=lessThanEqualTo_u19_b_signed;
assign not_u195_u0=~lessThanEqualTo_u19;
assign and_u946_u0=or_u274_u0&lessThanEqualTo_u19;
assign and_u947_u0=or_u274_u0&not_u195_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016545d8_result_delayed_result_delayed_u0<=1'h0;
else reg_016545d8_result_delayed_result_delayed_u0<=reg_016545d8_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00322b4e_result_delayed_result_delayed_u0<=1'h0;
else reg_00322b4e_result_delayed_result_delayed_u0<=reg_00322b4e_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u44_u0<=1'h0;
else and_delayed_u44_u0<=and_u945_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00777a66_result_delayed_u0<=1'h0;
else reg_00777a66_result_delayed_u0<=reg_00777a66_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00fa9cef_u0<=1'h0;
else reg_00fa9cef_u0<=reg_00d3ac74_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e3d9b9_u0<=1'h0;
else reg_00e3d9b9_u0<=reg_017c3c0d_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0001ee7a_u0<=1'h0;
else reg_0001ee7a_u0<=reg_004233d4_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01cc3baf_result_delayed_u0<=1'h0;
else reg_01cc3baf_result_delayed_u0<=reg_01cc3baf_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c455e0_result_delayed_result_delayed_u0<=1'h0;
else reg_00c455e0_result_delayed_result_delayed_u0<=reg_00c455e0_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004233d4_result_delayed_u0<=1'h0;
else reg_004233d4_result_delayed_u0<=reg_004233d4_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050d3a7_result_delayed_result_delayed_u0<=1'h0;
else reg_0050d3a7_result_delayed_result_delayed_u0<=reg_0050d3a7_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00870b20_u0<=1'h0;
else reg_00870b20_u0<=reg_01cce2b0_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018e47fa_result_delayed_result_delayed_u0<=1'h0;
else reg_018e47fa_result_delayed_result_delayed_u0<=reg_018e47fa_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00f4a185_u0<=1'h0;
else reg_00f4a185_u0<=reg_0141c9d2_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01709101_u0<=1'h0;
else reg_01709101_u0<=reg_00e3d9b9_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_005aefab_u0<=1'h0;
else reg_005aefab_u0<=reg_01216e4f_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d93333_result_delayed_u0<=1'h0;
else reg_01d93333_result_delayed_u0<=reg_01d93333_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01216e4f_u0<=1'h0;
else reg_01216e4f_u0<=reg_01655ffb_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b4c2fe_u0<=1'h0;
else reg_01b4c2fe_u0<=reg_0167d3f0_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a249a2_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_01a249a2_result_delayed_result_delayed_result_delayed_u0<=reg_01a249a2_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_000e7154_result_delayed_result_delayed_u0<=1'h0;
else reg_000e7154_result_delayed_result_delayed_u0<=reg_000e7154_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092b366_result_delayed_u0<=1'h0;
else reg_0092b366_result_delayed_u0<=reg_0092b366_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01411b64_u0<=1'h0;
else reg_01411b64_u0<=reg_0092b366_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01cce2b0_result_delayed_u0<=1'h0;
else reg_01cce2b0_result_delayed_u0<=reg_01cce2b0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012d388a_result_delayed_u0<=1'h0;
else reg_012d388a_result_delayed_u0<=reg_012d388a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012da103_u0<=1'h0;
else reg_012da103_u0<=reg_0001ee7a_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00882019_result_delayed_u0<=1'h0;
else reg_00882019_result_delayed_u0<=reg_00882019_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fd2c89_result_delayed_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_01fd2c89_result_delayed_result_delayed_result_delayed_result_delayed_u0<=reg_01fd2c89_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d3ac74_result_delayed_result_delayed_u0<=1'h0;
else reg_00d3ac74_result_delayed_result_delayed_u0<=reg_00d3ac74_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u6_u0<=1'h0;
else and_delayed_result_delayed_u6_u0<=and_delayed_u44_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01168c0e_u0<=1'h0;
else reg_01168c0e_u0<=reg_005aefab_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092b366_result_delayed_result_delayed_u0<=1'h0;
else reg_0092b366_result_delayed_result_delayed_u0<=reg_0092b366_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012497e1_result_delayed_u0<=1'h0;
else reg_012497e1_result_delayed_u0<=reg_012497e1_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ba3238_result_delayed_result_delayed_u0<=1'h0;
else reg_00ba3238_result_delayed_result_delayed_u0<=reg_00ba3238_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01655ffb_u0<=1'h0;
else reg_01655ffb_u0<=reg_0159fde1_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e5f70a_result_delayed_u0<=1'h0;
else reg_01e5f70a_result_delayed_u0<=reg_01e5f70a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016545d8_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_016545d8_result_delayed_result_delayed_result_delayed_u0<=reg_016545d8_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0167d3f0_result_delayed_u0<=1'h0;
else reg_0167d3f0_result_delayed_u0<=reg_0167d3f0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00efcbf3_result_delayed_u0<=1'h0;
else reg_00efcbf3_result_delayed_u0<=reg_00efcbf3_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0141c9d2_u0<=1'h0;
else reg_0141c9d2_u0<=reg_00777a66_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_005aefab_result_delayed_u0<=1'h0;
else reg_005aefab_result_delayed_u0<=reg_005aefab_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bffb6b_result_delayed_result_delayed_u0<=1'h0;
else reg_00bffb6b_result_delayed_result_delayed_u0<=reg_00bffb6b_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_017c3c0d_result_delayed_result_delayed_u0<=1'h0;
else reg_017c3c0d_result_delayed_result_delayed_u0<=reg_017c3c0d_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d6a8eb_result_delayed_u0<=1'h0;
else reg_00d6a8eb_result_delayed_u0<=reg_00d6a8eb_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00322b4e_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_00322b4e_result_delayed_result_delayed_result_delayed_u0<=reg_00322b4e_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0077c6f9_result_delayed_u0<=1'h0;
else reg_0077c6f9_result_delayed_u0<=reg_0077c6f9_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0050a013_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_0050a013_result_delayed_result_delayed_result_delayed_u0<=reg_0050a013_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00b450ec_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_00b450ec_result_delayed_result_delayed_result_delayed_u0<=reg_00b450ec_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0089dc14_result_delayed_u0<=1'h0;
else reg_0089dc14_result_delayed_u0<=reg_0089dc14_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0001ee7a_result_delayed_u0<=1'h0;
else reg_0001ee7a_result_delayed_u0<=reg_0001ee7a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0001ee7a_result_delayed_result_delayed_u0<=1'h0;
else reg_0001ee7a_result_delayed_result_delayed_u0<=reg_0001ee7a_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0077c6f9_result_delayed_result_delayed_u0<=1'h0;
else reg_0077c6f9_result_delayed_result_delayed_u0<=reg_0077c6f9_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e3d9b9_result_delayed_u0<=1'h0;
else reg_00e3d9b9_result_delayed_u0<=reg_00e3d9b9_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_013eb8de_result_delayed_u0<=1'h0;
else reg_013eb8de_result_delayed_u0<=reg_013eb8de_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_018980ae_result_delayed_u0<=1'h0;
else reg_018980ae_result_delayed_u0<=reg_018980ae_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00176c96_u0<=1'h0;
else reg_00176c96_u0<=reg_012e6f41_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0174d3be_result_delayed_u0<=1'h0;
else reg_0174d3be_result_delayed_u0<=reg_0174d3be_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e9feec_result_delayed_u0<=1'h0;
else reg_00e9feec_result_delayed_u0<=reg_00e9feec_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01709101_result_delayed_u0<=1'h0;
else reg_01709101_result_delayed_u0<=reg_01709101_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0159fde1_result_delayed_u0<=1'h0;
else reg_0159fde1_result_delayed_u0<=reg_0159fde1_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00777a66_result_delayed_result_delayed_u0<=1'h0;
else reg_00777a66_result_delayed_result_delayed_u0<=reg_00777a66_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01abe0f0_u0<=1'h0;
else reg_01abe0f0_u0<=and_u971_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00975c43_u0<=1'h0;
else reg_00975c43_u0<=reg_01abe0f0_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e42380_u0<=1'h0;
else reg_00e42380_u0<=reg_00975c43_result_delayed_u0;
end
assign lessThanEqualTo_u20_a_signed=mux_u305_u0;
assign lessThanEqualTo_u20_b_signed=32'hd;
assign lessThanEqualTo_u20=lessThanEqualTo_u20_a_signed<=lessThanEqualTo_u20_b_signed;
assign and_u948_u0=or_u273_u0&not_u196_u0;
assign not_u196_u0=~lessThanEqualTo_u20;
assign and_u949_u0=or_u273_u0&lessThanEqualTo_u20;
assign add_u301=latch_0069eed8_out+latch_011d6043_out;
assign add_u302=latch_01382a89_out+mux_u305_u0;
assign add_u303={add_u302[24:0], 7'b0}+{add_u302[26:0], 5'b0};
assign add_u304={add_u303[31:5], 5'b0}+{add_u302[27:0], 4'b0};
assign add_u305={add_u304[31:4], 4'b0}+add_u301;
assign add_u306=32'h0+add_u305;
assign or_u264_u0=and_u950_u0|RESET;
always @(posedge CLK or posedge and_u971_u0 or posedge or_u264_u0)
begin
if (or_u264_u0)
done_cache_u30<=1'h0;
else if (and_u971_u0)
done_cache_u30<=1'h1;
else done_cache_u30<=done_cache_u30;
end
assign and_u950_u0=done_cache_u30&port_012eed5e_;
assign add_u307={add_u302[24:0], 7'b0}+{add_u302[26:0], 5'b0};
assign add_u308={add_u307[31:5], 5'b0}+{add_u302[27:0], 4'b0};
assign add_u309={add_u308[31:4], 4'b0}+add_u301;
assign add_u310=32'h0+add_u309;
always @(posedge CLK or posedge and_u971_u0 or posedge or_u265_u0)
begin
if (or_u265_u0)
done_cache_u31_u0<=1'h0;
else if (and_u971_u0)
done_cache_u31_u0<=1'h1;
else done_cache_u31_u0<=done_cache_u31_u0;
end
assign or_u265_u0=and_u951_u0|RESET;
assign and_u951_u0=done_cache_u31_u0&port_00b89952_;
assign add_u311={add_u302[24:0], 7'b0}+{add_u302[26:0], 5'b0};
assign add_u312={add_u311[31:5], 5'b0}+{add_u302[27:0], 4'b0};
assign add_u313={add_u312[31:4], 4'b0}+add_u301;
assign add_u314=32'h0+add_u313;
assign and_u952_u0=done_cache_u32_u0&port_0068b39b_;
always @(posedge CLK or posedge and_u971_u0 or posedge or_u266_u0)
begin
if (or_u266_u0)
done_cache_u32_u0<=1'h0;
else if (and_u971_u0)
done_cache_u32_u0<=1'h1;
else done_cache_u32_u0<=done_cache_u32_u0;
end
assign or_u266_u0=and_u952_u0|RESET;
assign greaterThanEqualTo_a_unsigned=port_002981d2_;
assign greaterThanEqualTo_b_unsigned=8'h0;
assign greaterThanEqualTo=greaterThanEqualTo_a_unsigned>=greaterThanEqualTo_b_unsigned;
assign and_u953_u0=block_GO_delayed_u29_u0&greaterThanEqualTo;
assign not_u197_u0=~greaterThanEqualTo;
assign and_u954_u0=block_GO_delayed_u29_u0&not_u197_u0;
assign minus=~port_002981d2_+8'h1;
assign minus_u15=~{4'b0, minus[7:4]}+8'h1;
assign and_u955_u0=and_u954_u0&block_GO_delayed_u29_u0;
assign and_u956_u0=and_u953_u0&block_GO_delayed_u29_u0;
assign mux_u291_u0=(and_u956_u0)?{4'b0, port_002981d2_[7:4]}:{minus_u15[5], minus_u15[5], minus_u15[5:0]};
assign greaterThanEqualTo_u2_a_unsigned=port_0028cbd1_;
assign greaterThanEqualTo_u2_b_unsigned=8'h0;
assign greaterThanEqualTo_u2=greaterThanEqualTo_u2_a_unsigned>=greaterThanEqualTo_u2_b_unsigned;
assign not_u198_u0=~greaterThanEqualTo_u2;
assign and_u957_u0=block_GO_delayed_u29_u0&not_u198_u0;
assign and_u958_u0=block_GO_delayed_u29_u0&greaterThanEqualTo_u2;
assign minus_u16=~port_0028cbd1_+8'h1;
assign minus_u17=~{4'b0, minus_u16[7:4]}+8'h1;
assign mux_u292_u0=(and_u960_u0)?{4'b0, port_0028cbd1_[7:4]}:{minus_u17[5], minus_u17[5], minus_u17[5:0]};
assign and_u959_u0=and_u957_u0&block_GO_delayed_u29_u0;
assign and_u960_u0=and_u958_u0&block_GO_delayed_u29_u0;
assign greaterThanEqualTo_u3_a_unsigned=port_00c6643b_;
assign greaterThanEqualTo_u3_b_unsigned=8'h0;
assign greaterThanEqualTo_u3=greaterThanEqualTo_u3_a_unsigned>=greaterThanEqualTo_u3_b_unsigned;
assign and_u961_u0=block_GO_delayed_u29_u0&not_u199_u0;
assign not_u199_u0=~greaterThanEqualTo_u3;
assign and_u962_u0=block_GO_delayed_u29_u0&greaterThanEqualTo_u3;
assign minus_u18=~port_00c6643b_+8'h1;
assign minus_u19=~{4'b0, minus_u18[7:4]}+8'h1;
assign and_u963_u0=and_u962_u0&block_GO_delayed_u29_u0;
assign and_u964_u0=and_u961_u0&block_GO_delayed_u29_u0;
assign mux_u293_u0=(and_u963_u0)?{4'b0, port_00c6643b_[7:4]}:{minus_u19[5], minus_u19[5], minus_u19[5:0]};
assign add_u315={24'b0, mux_u291_u0}+{20'b0, mux_u292_u0, 4'b0};
assign add_u316={add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13], add_u315[13:0]}+{16'b0, mux_u293_u0, 8'b0};
assign add_u317=latch_011d6043_out+32'ha;
assign subtract_u56={add_u317[26:0], 5'b0}-{add_u317[29:0], 2'b0};
assign subtract_u57=subtract_u56-add_u317;
assign add_u318=mux_u305_u0+32'hd;
assign add_u319=subtract_u57+add_u318;
assign add_u320=32'h0+add_u319;
assign or_u267_u0=and_u965_u0|RESET;
always @(posedge CLK or posedge reg_0144f98c_u0 or posedge or_u267_u0)
begin
if (or_u267_u0)
reg_008bc6ea_u0<=1'h0;
else if (reg_0144f98c_u0)
reg_008bc6ea_u0<=1'h1;
else reg_008bc6ea_u0<=reg_008bc6ea_u0;
end
assign and_u965_u0=reg_008bc6ea_u0&port_00fa971f_;
assign add_u321=latch_011d6043_out+32'ha;
assign subtract_u58={add_u321[26:0], 5'b0}-{add_u321[29:0], 2'b0};
assign subtract_u59=subtract_u58-add_u321;
assign add_u322=mux_u305_u0+32'hd;
assign add_u323=subtract_u59+add_u322;
assign add_u324=32'h0+add_u323;
assign or_u268_u0=and_u966_u0|RESET;
assign and_u966_u0=done_cache_u33_u0&port_012bd60e_;
always @(posedge CLK or posedge reg_0144f98c_result_delayed_u0 or posedge or_u268_u0)
begin
if (or_u268_u0)
done_cache_u33_u0<=1'h0;
else if (reg_0144f98c_result_delayed_u0)
done_cache_u33_u0<=1'h1;
else done_cache_u33_u0<=done_cache_u33_u0;
end
assign add_u325=latch_011d6043_out+32'ha;
assign subtract_u60={add_u325[26:0], 5'b0}-{add_u325[29:0], 2'b0};
assign subtract_u61=subtract_u60-add_u325;
assign add_u326=mux_u305_u0+32'hd;
assign add_u327=subtract_u61+add_u326;
assign add_u328=32'h0+add_u327;
always @(posedge CLK or posedge reg_0144f98c_result_delayed_u0 or posedge or_u269_u0)
begin
if (or_u269_u0)
done_cache_u34_u0<=1'h0;
else if (reg_0144f98c_result_delayed_u0)
done_cache_u34_u0<=1'h1;
else done_cache_u34_u0<=done_cache_u34_u0;
end
assign and_u967_u0=done_cache_u34_u0&port_00fa971f_;
assign or_u269_u0=and_u967_u0|RESET;
assign add_u329=32'h0+port_010da36a_;
assign and_u968_u0=done_cache_u35_u0&port_000e4b21_;
always @(posedge CLK or posedge reg_0144f98c_result_delayed_result_delayed_u0 or posedge or_u270_u0)
begin
if (or_u270_u0)
done_cache_u35_u0<=1'h0;
else if (reg_0144f98c_result_delayed_result_delayed_u0)
done_cache_u35_u0<=1'h1;
else done_cache_u35_u0<=done_cache_u35_u0;
end
assign or_u270_u0=and_u968_u0|RESET;
assign add_u330=latch_011d6043_out+32'ha;
assign subtract_u62={add_u330[26:0], 5'b0}-{add_u330[29:0], 2'b0};
assign subtract_u63=subtract_u62-add_u330;
assign add_u331=mux_u305_u0+32'hd;
assign add_u332=subtract_u63+add_u331;
assign add_u333=32'h0+add_u332;
assign and_u969_u0=done_cache_u36_u0&port_0145f3ca_;
always @(posedge CLK or posedge and_u971_u0 or posedge or_u271_u0)
begin
if (or_u271_u0)
done_cache_u36_u0<=1'h0;
else if (and_u971_u0)
done_cache_u36_u0<=1'h1;
else done_cache_u36_u0<=done_cache_u36_u0;
end
assign or_u271_u0=and_u969_u0|RESET;
assign add_u334=port_01daa741_+syncEnable_u229_u0;
assign add_u335=32'h0+port_00e97c4d_;
assign and_u970_u0=reg_01f8da82_u0&port_013e6975_;
assign or_u272_u0=and_u970_u0|RESET;
always @(posedge CLK or posedge reg_0144f98c_result_delayed_result_delayed_result_delayed_u0 or posedge or_u272_u0)
begin
if (or_u272_u0)
reg_01f8da82_u0<=1'h0;
else if (reg_0144f98c_result_delayed_result_delayed_result_delayed_u0)
reg_01f8da82_u0<=1'h1;
else reg_01f8da82_u0<=reg_01f8da82_u0;
end
assign add_u336=mux_u305_u0+32'h1;
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u219_u0<=add_u302;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u29_u0<=1'h0;
else block_GO_delayed_u29_u0<=and_u971_u0;
end
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u220_u0<=add_u320;
end
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u221_u0<=add_u328;
end
always @(posedge CLK)
begin
if (reg_0144f98c_result_delayed_result_delayed_result_delayed_u0)
syncEnable_u222_u0<=port_01daa741_;
end
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u223_u0<=add_u336;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u29_u0)
syncEnable_u224_u0<=port_002981d2_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0144f98c_u0<=1'h0;
else reg_0144f98c_u0<=block_GO_delayed_result_delayed_u3;
end
assign mux_u294_u0=(reg_0144f98c_u0)?syncEnable_u220_u0:syncEnable_u221_u0;
always @(posedge CLK)
begin
if (block_GO_delayed_u29_u0)
syncEnable_u225_u0<=port_001cbeac_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_result_delayed_u3<=1'h0;
else block_GO_delayed_result_delayed_u3<=block_GO_delayed_u29_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0144f98c_result_delayed_u0<=1'h0;
else reg_0144f98c_result_delayed_u0<=reg_0144f98c_u0;
end
always @(posedge CLK)
begin
if (reg_0144f98c_result_delayed_result_delayed_u0)
syncEnable_u226_u0<=port_010da36a_;
end
always @(posedge CLK)
begin
if (reg_0144f98c_u0)
syncEnable_u227_u0<=port_0005cee3_;
end
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u228_u0<=add_u301;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u29_u0)
syncEnable_u229_u0<=port_001cbeac_;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u29_u0)
syncEnable_u230_u0<=port_00c6643b_;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u29_u0)
syncEnable_u231_u0<=port_0028cbd1_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0144f98c_result_delayed_result_delayed_u0<=1'h0;
else reg_0144f98c_result_delayed_result_delayed_u0<=reg_0144f98c_result_delayed_u0;
end
always @(posedge CLK)
begin
if (reg_0144f98c_result_delayed_result_delayed_u0)
syncEnable_u232_u0<=port_00e97c4d_;
end
always @(posedge CLK)
begin
if (reg_0144f98c_result_delayed_result_delayed_u0)
syncEnable_u233_u0<=add_u335;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0144f98c_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_0144f98c_result_delayed_result_delayed_result_delayed_u0<=reg_0144f98c_result_delayed_result_delayed_u0;
end
always @(posedge CLK)
begin
if (and_u971_u0)
syncEnable_u234_u0<=add_u324;
end
assign and_u971_u0=and_u949_u0&or_u273_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01074a67_u0<=1'h0;
else reg_01074a67_u0<=reg_00e42380_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e42380_result_delayed_u0<=1'h0;
else reg_00e42380_result_delayed_u0<=reg_00e42380_u0;
end
assign and_u972_u0=and_u948_u0&or_u273_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01abe0f0_result_delayed_u0<=1'h0;
else reg_01abe0f0_result_delayed_u0<=reg_01abe0f0_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00975c43_result_delayed_u0<=1'h0;
else reg_00975c43_result_delayed_u0<=reg_00975c43_u0;
end
assign mux_u295_u0=(block_GO_delayed_u30_u0)?syncEnable_u242_u0:syncEnable_u224_u0;
assign mux_u296_u0=(block_GO_delayed_u30_u0)?syncEnable_u235_u0:syncEnable_u230_u0;
assign latch_0069eed8_out=(block_GO_delayed_u30_u0)?syncEnable_u247_u0:latch_0069eed8_reg;
always @(posedge CLK)
begin
if (block_GO_delayed_u30_u0)
latch_0069eed8_reg<=syncEnable_u247_u0;
end
assign mux_u297_u0=(block_GO_delayed_u30_u0)?syncEnable_u243_u0:syncEnable_u225_u0;
assign mux_u298_u0=(block_GO_delayed_u30_u0)?syncEnable_u240_u0:syncEnable_u228_u0;
assign or_u273_u0=block_GO_delayed_u30_u0|reg_01074a67_u0;
assign mux_u299_u0=(block_GO_delayed_u30_u0)?syncEnable_u237_u0:syncEnable_u227_u0;
assign mux_u300_u0=(block_GO_delayed_u30_u0)?syncEnable_u238_u0:syncEnable_u219_u0;
assign mux_u301_u0=(block_GO_delayed_u30_u0)?syncEnable_u239_u0:syncEnable_u226_u0;
assign mux_u302_u0=(block_GO_delayed_u30_u0)?syncEnable_u248_u0:syncEnable_u222_u0;
assign mux_u303_u0=(block_GO_delayed_u30_u0)?syncEnable_u236_u0:syncEnable_u231_u0;
assign mux_u304_u0=(block_GO_delayed_u30_u0)?syncEnable_u244_u0:syncEnable_u232_u0;
assign mux_u305_u0=(block_GO_delayed_u30_u0)?32'hfffffff3:syncEnable_u223_u0;
assign latch_01382a89_out=(block_GO_delayed_u30_u0)?syncEnable_u245_u0:latch_01382a89_reg;
always @(posedge CLK)
begin
if (block_GO_delayed_u30_u0)
latch_01382a89_reg<=syncEnable_u245_u0;
end
always @(posedge CLK)
begin
if (block_GO_delayed_u30_u0)
latch_011d6043_reg<=syncEnable_u241_u0;
end
assign latch_011d6043_out=(block_GO_delayed_u30_u0)?syncEnable_u241_u0:latch_011d6043_reg;
assign add_u337=mux_u307_u0+32'h1;
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u235_u0<=mux_u309_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u236_u0<=mux_u315_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u237_u0<=mux_u314_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u238_u0<=mux_u308_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u239_u0<=mux_u312_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u240_u0<=mux_u311_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u241_u0<=mux_u307_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u242_u0<=mux_u316_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u243_u0<=mux_u313_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u244_u0<=mux_u310_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u30_u0<=1'h0;
else block_GO_delayed_u30_u0<=and_u945_u0;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u245_u0<=latch_0094f530_out;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u246_u0<=add_u337;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u247_u0<=latch_0053b498_out;
end
always @(posedge CLK)
begin
if (and_u945_u0)
syncEnable_u248_u0<=mux_u306_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a4aa3a_result_delayed_u0<=1'h0;
else reg_00a4aa3a_result_delayed_u0<=reg_00a4aa3a_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00176c96_result_delayed_u0<=1'h0;
else reg_00176c96_result_delayed_u0<=reg_00176c96_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0009601c_result_delayed_u0<=1'h0;
else reg_0009601c_result_delayed_u0<=reg_0009601c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0092328c_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_0092328c_result_delayed_result_delayed_result_delayed_u0<=reg_0092328c_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012e6f41_result_delayed_u0<=1'h0;
else reg_012e6f41_result_delayed_u0<=reg_012e6f41_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0129c044_result_delayed_u0<=1'h0;
else reg_0129c044_result_delayed_u0<=reg_0129c044_u0;
end
assign mux_u306_u0=(reg_00efcbf3_result_delayed_u0)?mux_u302_u0:32'h0;
assign mux_u307_u0=(reg_00efcbf3_result_delayed_u0)?syncEnable_u246_u0:32'hfffffff6;
assign mux_u308_u0=(reg_00efcbf3_result_delayed_u0)?mux_u300_u0:32'h0;
assign mux_u309_u0=(reg_00efcbf3_result_delayed_u0)?mux_u296_u0:8'h0;
assign mux_u310_u0=(reg_00efcbf3_result_delayed_u0)?mux_u304_u0:32'h0;
assign mux_u311_u0=(reg_00efcbf3_result_delayed_u0)?mux_u298_u0:32'h0;
assign mux_u312_u0=(reg_00efcbf3_result_delayed_u0)?mux_u301_u0:32'h0;
assign latch_0094f530_out=(scoreboard_01c18509_and)?syncEnable_u256_u0:latch_0094f530_reg;
always @(posedge CLK)
begin
if (scoreboard_01c18509_and)
latch_0094f530_reg<=syncEnable_u256_u0;
end
assign mux_u313_u0=(reg_00efcbf3_result_delayed_u0)?mux_u297_u0:32'h0;
assign mux_u314_u0=(reg_00efcbf3_result_delayed_u0)?mux_u299_u0:32'h0;
assign latch_0053b498_out=(scoreboard_01c18509_and)?syncEnable_u257_u0:latch_0053b498_reg;
always @(posedge CLK)
begin
if (scoreboard_01c18509_and)
latch_0053b498_reg<=syncEnable_u257_u0;
end
assign or_u274_u0=reg_00efcbf3_result_delayed_u0|scoreboard_01c18509_and;
assign mux_u315_u0=(reg_00efcbf3_result_delayed_u0)?mux_u303_u0:8'h0;
assign mux_u316_u0=(reg_00efcbf3_result_delayed_u0)?mux_u295_u0:8'h0;
assign lessThanEqualTo_u21_a_signed=mux_u317_u0;
assign lessThanEqualTo_u21_b_signed=32'hfff;
assign lessThanEqualTo_u21=lessThanEqualTo_u21_a_signed<=lessThanEqualTo_u21_b_signed;
assign and_u973_u0=or_u276_u0&lessThanEqualTo_u21;
assign not_u200_u0=~lessThanEqualTo_u21;
assign and_u974_u0=or_u276_u0&not_u200_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_014e4785_u0<=1'h0;
else reg_014e4785_u0<=and_u977_u0;
end
assign and_u975_u0=and_u974_u0&or_u276_u0;
assign add_u338=32'h0+mux_u317_u0;
assign or_u275_u0=and_u976_u0|RESET;
assign and_u976_u0=done_cache_u37_u0&port_000e4b21_;
always @(posedge CLK or posedge and_u977_u0 or posedge or_u275_u0)
begin
if (or_u275_u0)
done_cache_u37_u0<=1'h0;
else if (and_u977_u0)
done_cache_u37_u0<=1'h1;
else done_cache_u37_u0<=done_cache_u37_u0;
end
assign add_u339=syncEnable_u250_u0+port_01daa741_;
assign add_u340=mux_u317_u0+32'h1;
always @(posedge CLK)
begin
if (and_u977_u0)
syncEnable_u249_u0<=add_u340;
end
always @(posedge CLK)
begin
if (and_u977_u0)
syncEnable_u250_u0<=mux_u318_u0;
end
assign and_u977_u0=and_u973_u0&or_u276_u0;
assign mux_u317_u0=(and_u944_u0)?32'h0:syncEnable_u249_u0;
assign mux_u318_u0=(and_u944_u0)?32'h0:add_u339;
assign or_u276_u0=and_u944_u0|reg_014e4785_u0;
assign add_u341={mux_u318_u0[31], mux_u318_u0, 11'b0}+{mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0, 6'b0};
assign add_u342={add_u341[43:6], 6'b0}+{mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0, 5'b0};
assign add_u343={add_u342[43:5], 5'b0}+{mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0[31], mux_u318_u0, 2'b0};
assign and_u978_u0=and_u981_u0&or_u281_u0;
assign and_u979_u0=and_u980_u0&or_u281_u0;
assign lessThanEqualTo_u22_a_signed=mux_u328_u0;
assign lessThanEqualTo_u22_b_signed=32'hfff;
assign lessThanEqualTo_u22=lessThanEqualTo_u22_a_signed<=lessThanEqualTo_u22_b_signed;
assign and_u980_u0=or_u281_u0&not_u201_u0;
assign and_u981_u0=or_u281_u0&lessThanEqualTo_u22;
assign not_u201_u0=~lessThanEqualTo_u22;
assign add_u344=32'h0+mux_u328_u0;
assign and_u982_u0=done_cache_u38_u0&port_013e6975_;
always @(posedge CLK or posedge block_GO_delayed_u31_u0 or posedge or_u277_u0)
begin
if (or_u277_u0)
done_cache_u38_u0<=1'h0;
else if (block_GO_delayed_u31_u0)
done_cache_u38_u0<=1'h1;
else done_cache_u38_u0<=done_cache_u38_u0;
end
assign or_u277_u0=and_u982_u0|RESET;
assign lessThan_a_signed=port_01e37f2f_;
assign lessThan_b_signed=32'h0;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign not_u202_u0=~lessThan;
assign and_u983_u0=reg_00e48df9_u0&lessThan;
assign and_u984_u0=reg_00e48df9_u0&not_u202_u0;
assign minus_u20=~port_01e37f2f_+32'h1;
assign mux_u319_u0=(and_u986_u0)?minus_u20:port_01e37f2f_;
assign and_u985_u0=and_u984_u0&reg_00e48df9_u0;
assign and_u986_u0=and_u983_u0&reg_00e48df9_u0;
assign mux_u320_u0=(and_u986_u0)?32'h1:32'h0;
assign lessThan_u13_a_signed={latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12], latch_0050a3c7_out[12:0]};
assign lessThan_u13_b_signed=32'h0;
assign lessThan_u13=lessThan_u13_a_signed<lessThan_u13_b_signed;
assign not_u203_u0=~syncEnable_u254_u0;
assign and_u987_u0=reg_00e48df9_u0&not_u203_u0;
assign and_u988_u0=reg_00e48df9_u0&syncEnable_u254_u0;
assign minus_u21=~{syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0}+32'h1;
assign xor_u4=mux_u320_u0[0]^1'h1;
assign and_u989_u0=and_u988_u0&reg_00e48df9_u0;
assign and_u990_u0=and_u987_u0&reg_00e48df9_u0;
assign mux_u321_u0=(and_u989_u0)?{31'b0, xor_u4[0]}:{31'b0, mux_u320_u0[0]};
assign mux_u322_u0=(and_u989_u0)?{minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13], minus_u21[13:0]}:{syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0[12], syncEnable_u251_u0};
assign lessThan_u14_a_signed=mux_u324_u0;
assign lessThan_u14_b_signed=32'h20;
assign lessThan_u14=lessThan_u14_a_signed<lessThan_u14_b_signed;
assign not_u204_u0=~lessThan_u14;
assign and_u991_u0=or_u279_u0&lessThan_u14;
assign and_u992_u0=or_u279_u0&not_u204_u0;
assign or_u278=mux_u323_u0|mux_u326_u0;
assign subtract_u64=5'h1f-mux_u324_u0[4:0];
assign leftShift_stage_1=(subtract_u64[4])?{{latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13:0]}, 16'h0}:{latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13], latch_00962151_out[13:0]};
assign leftShift_stage_2=(subtract_u64[3])?{leftShift_stage_1[23:0], 8'h0}:leftShift_stage_1;
assign leftShift_stage_3=(subtract_u64[2])?{leftShift_stage_2[27:0], 4'h0}:leftShift_stage_2;
assign leftShift_stage_4=(subtract_u64[1])?{leftShift_stage_3[29:0], 2'h0}:leftShift_stage_3;
assign leftShift=(subtract_u64[0])?{leftShift_stage_4[30:0], 1'h0}:leftShift_stage_4;
assign subtract_u65=mux_u325_u0-leftShift;
assign add_u345=mux_u324_u0+32'h1;
assign and_u993_u0=and_u991_u0&or_u279_u0;
assign and_u994_u0=and_u992_u0&or_u279_u0;
assign mux_u323_u0=(loopControl_u22_u0)?fbReg_inlined_result0_1_1_u3:32'h0;
assign mux_u324_u0=(loopControl_u22_u0)?fbReg_inlined_i0_1_1_u4:32'h0;
always @(posedge CLK)
begin
if (and_u995_u0)
fbReg_inlined_mask0_1_1_u3<={1'b0, mux_u326_u0[31:1]};
end
always @(posedge CLK)
begin
if (and_u995_u0)
fbReg_inlined_i0_1_1_u4<=add_u345;
end
assign mux_u325_u0=(loopControl_u22_u0)?fbReg_inlined_remainder0_1_1_u3:mux_u319_u0;
assign latch_00962151_out=(reg_00e48df9_u0)?{mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13], mux_u322_u0[13:0]}:{latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg[13], latch_00962151_reg};
always @(posedge CLK)
begin
if (reg_00e48df9_u0)
latch_00962151_reg<=mux_u322_u0[13:0];
end
assign and_u995_u0=and_u993_u0&or_u279_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u22_u0<=1'h0;
else loopControl_u22_u0<=and_u993_u0;
end
always @(posedge CLK)
begin
if (and_u995_u0)
fbReg_inlined_result0_1_1_u3<=or_u278;
end
assign and_u996_u0=and_u994_u0&or_u279_u0;
always @(posedge CLK)
begin
if (and_u995_u0)
fbReg_inlined_remainder0_1_1_u3<=subtract_u65;
end
assign or_u279_u0=loopControl_u22_u0|reg_00e48df9_u0;
assign mux_u326_u0=(loopControl_u22_u0)?{1'b0, fbReg_inlined_mask0_1_1_u3[30:0]}:32'h80000000;
assign notEquals_a_signed={31'b0, mux_u321_u0[0]};
assign notEquals_b_signed=32'h0;
assign notEquals=notEquals_a_signed!=notEquals_b_signed;
assign and_u997_u0=and_u996_u0&latch_01d9a798_out;
assign and_u998_u0=and_u996_u0&not_u205_u0;
assign not_u205_u0=~latch_01d9a798_out;
assign minus_u22=~mux_u323_u0+32'h1;
assign and_u999_u0=and_u997_u0&and_u996_u0;
assign and_u1000_u0=and_u998_u0&and_u996_u0;
assign mux_u327_u0=(and_u999_u0)?minus_u22:mux_u323_u0;
assign add_u346=32'h0+mux_u328_u0;
always @(posedge CLK or posedge and_u996_u0 or posedge or_u280_u0)
begin
if (or_u280_u0)
reg_0023c883_u0<=1'h0;
else if (and_u996_u0)
reg_0023c883_u0<=1'h1;
else reg_0023c883_u0<=reg_0023c883_u0;
end
assign or_u280_u0=and_u1001_u0|RESET;
assign and_u1001_u0=reg_0023c883_u0&port_000e4b21_;
assign add_u347=mux_u328_u0+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e48df9_u0<=1'h0;
else reg_00e48df9_u0<=block_GO_delayed_u31_u0;
end
always @(posedge CLK)
begin
if (and_u978_u0)
syncEnable_u251_u0<=latch_0050a3c7_out[12:0];
end
always @(posedge CLK)
begin
if (reg_00e48df9_u0)
latch_01d9a798_reg<=notEquals;
end
assign latch_01d9a798_out=(reg_00e48df9_u0)?notEquals:latch_01d9a798_reg;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0190420a_u0<=1'h0;
else reg_0190420a_u0<=and_u996_u0;
end
always @(posedge CLK)
begin
if (and_u978_u0)
syncEnable_u252_u0<=add_u344;
end
always @(posedge CLK)
begin
if (and_u978_u0)
syncEnable_u253_u0<=add_u346;
end
always @(posedge CLK)
begin
if (and_u978_u0)
syncEnable_u254_u0<=lessThan_u13;
end
always @(posedge CLK)
begin
if (and_u978_u0)
syncEnable_u255_u0<=add_u347;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u31_u0<=1'h0;
else block_GO_delayed_u31_u0<=and_u978_u0;
end
assign or_u281_u0=and_u975_u0|reg_0190420a_u0;
always @(posedge CLK)
begin
if (and_u975_u0)
latch_0050a3c7_reg<=add_u343[43:31];
end
assign latch_0050a3c7_out=(and_u975_u0)?{add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43], add_u343[43:31]}:{latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg[12], latch_0050a3c7_reg};
assign mux_u328_u0=(and_u975_u0)?32'h0:syncEnable_u255_u0;
always @(posedge CLK)
begin
if (bus_018575bc_)
scoreboard_01c18509_reg0<=1'h0;
else if (and_u930_u0)
scoreboard_01c18509_reg0<=1'h1;
else scoreboard_01c18509_reg0<=scoreboard_01c18509_reg0;
end
assign scoreboard_01c18509_and=scoreboard_01c18509_resOr0&scoreboard_01c18509_resOr1;
assign scoreboard_01c18509_resOr1=and_u935_u0|scoreboard_01c18509_reg1;
assign bus_018575bc_=scoreboard_01c18509_and|RESET;
always @(posedge CLK)
begin
if (bus_018575bc_)
scoreboard_01c18509_reg1<=1'h0;
else if (and_u935_u0)
scoreboard_01c18509_reg1<=1'h1;
else scoreboard_01c18509_reg1<=scoreboard_01c18509_reg1;
end
assign scoreboard_01c18509_resOr0=and_u930_u0|scoreboard_01c18509_reg0;
assign mux_u329_u0=(block_GO_delayed_u28_u0)?syncEnable_u216_u0:syncEnable_u234_u0;
assign mux_u330_u0=({32{and_u996_u0}}&syncEnable_u253_u0)|({32{reg_0144f98c_result_delayed_result_delayed_u0}}&add_u329)|({32{and_u977_u0}}&add_u338);
assign or_u282_u0=reg_0144f98c_result_delayed_result_delayed_u0|and_u977_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ec8717_u0<=1'h0;
else reg_00ec8717_u0<=GO;
end
assign mux_u331_u0=({32{block_GO_delayed_u27}}&syncEnable_u214_u0)|({32{reg_0144f98c_result_delayed_result_delayed_result_delayed_u0}}&syncEnable_u233_u0)|({32{block_GO_delayed_u31_u0}}&syncEnable_u252_u0);
assign or_u283_u0=block_GO_delayed_u27|reg_0144f98c_result_delayed_result_delayed_result_delayed_u0;
assign mux_u332_u0=(block_GO_delayed_u27)?32'h0:add_u334;
always @(posedge CLK)
begin
if (GO)
syncEnable_u256_u0<=port_01574be7_;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u257_u0<=port_00ea17ef_;
end
assign RESULT=block_GO_delayed_u29_u0;
assign RESULT_u593={add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17], add_u316[17:0]};
assign RESULT_u594=block_GO_delayed_u31_u0;
assign RESULT_u595=mux_u331_u0;
assign RESULT_u596=3'h1;
assign RESULT_u597=or_u283_u0;
assign RESULT_u598=mux_u331_u0;
assign RESULT_u599=mux_u332_u0;
assign RESULT_u600=3'h1;
assign RESULT_u601=reg_0144f98c_result_delayed_u0;
assign RESULT_u602=mux_u329_u0;
assign RESULT_u603=3'h1;
assign RESULT_u604=block_GO_delayed_u28_u0;
assign RESULT_u605=mux_u329_u0;
assign RESULT_u606=32'h0;
assign RESULT_u607=3'h1;
assign RESULT_u608=or_u282_u0;
assign RESULT_u609=mux_u330_u0;
assign RESULT_u610=3'h1;
assign RESULT_u611=and_u996_u0;
assign RESULT_u612=mux_u330_u0;
assign RESULT_u613=mux_u327_u0;
assign RESULT_u614=3'h1;
assign RESULT_u615=reg_0144f98c_result_delayed_u0;
assign RESULT_u616=mux_u294_u0;
assign RESULT_u617=3'h1;
assign RESULT_u618=reg_0144f98c_u0;
assign RESULT_u619=mux_u294_u0;
assign RESULT_u620=port_0005cee3_;
assign RESULT_u621=3'h1;
assign RESULT_u622=and_u971_u0;
assign RESULT_u623=add_u306;
assign RESULT_u624=3'h1;
assign RESULT_u625=and_u971_u0;
assign RESULT_u626=add_u333;
assign RESULT_u627=3'h1;
assign RESULT_u628=and_u971_u0;
assign RESULT_u629=add_u310;
assign RESULT_u630=3'h1;
assign RESULT_u631=and_u971_u0;
assign RESULT_u632=add_u314;
assign RESULT_u633=3'h1;
assign DONE=and_u979_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s2(bus_00c4b67b_, bus_00a86b96_, bus_01c52553_, bus_01b722e6_, bus_00f7b60a_);
input		bus_00c4b67b_;
input		bus_00a86b96_;
input		bus_01c52553_;
input		bus_01b722e6_;
output		bus_00f7b60a_;
reg		stateVar_state_s2_u6=1'h0;
assign bus_00f7b60a_=stateVar_state_s2_u6;
always @(posedge bus_00c4b67b_ or posedge bus_00a86b96_)
begin
if (bus_00a86b96_)
stateVar_state_s2_u6<=1'h0;
else if (bus_01c52553_)
stateVar_state_s2_u6<=bus_01b722e6_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s12(bus_00c6f5e9_, bus_003aa7e2_, bus_00badbc0_, bus_011431b7_, bus_01314f5e_);
input		bus_00c6f5e9_;
input		bus_003aa7e2_;
input		bus_00badbc0_;
input		bus_011431b7_;
output		bus_01314f5e_;
reg		stateVar_state_s12_u1=1'h0;
always @(posedge bus_00c6f5e9_ or posedge bus_003aa7e2_)
begin
if (bus_003aa7e2_)
stateVar_state_s12_u1<=1'h0;
else if (bus_00badbc0_)
stateVar_state_s12_u1<=bus_011431b7_;
end
assign bus_01314f5e_=stateVar_state_s12_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s5(bus_00079408_, bus_0187a691_, bus_0144e3ca_, bus_001106ec_, bus_003e6472_);
input		bus_00079408_;
input		bus_0187a691_;
input		bus_0144e3ca_;
input		bus_001106ec_;
output		bus_003e6472_;
reg		stateVar_state_s5_u1=1'h0;
always @(posedge bus_00079408_ or posedge bus_0187a691_)
begin
if (bus_0187a691_)
stateVar_state_s5_u1<=1'h0;
else if (bus_0144e3ca_)
stateVar_state_s5_u1<=bus_001106ec_;
end
assign bus_003e6472_=stateVar_state_s5_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_scheduler(CLK, RESET, GO, port_0085ce1f_, port_014dfbad_, port_00eb3e0a_, port_017843f6_, port_00d71d69_, port_013abe9f_, port_00106308_, port_009ae2c7_, port_006bb200_, port_0117db18_, port_004f68ad_, port_005224b2_, port_011b3267_, port_01872ea9_, port_00a1bdb0_, port_01c2a8b3_, port_009931c5_, port_00fc16a6_, port_01651433_, port_01562e6e_, port_0068b6c4_, port_014dc097_, port_006ff98d_, port_01d20327_, port_0193d6aa_, port_009939eb_, port_00423f34_, port_0064c076_, port_013ff323_, port_007ff298_, port_00f5c308_, port_016a21eb_, port_003a680f_, port_003b6bbf_, port_01eff15b_, port_0077bfe8_, port_01d70c86_, RESULT, RESULT_u634, RESULT_u635, RESULT_u636, RESULT_u637, RESULT_u638, RESULT_u639, RESULT_u640, RESULT_u641, RESULT_u642, RESULT_u643, RESULT_u644, RESULT_u645, RESULT_u646, RESULT_u647, RESULT_u648, RESULT_u649, RESULT_u650, RESULT_u651, RESULT_u652, RESULT_u653, RESULT_u654, RESULT_u655, RESULT_u656, RESULT_u657, RESULT_u658, RESULT_u659, RESULT_u660, RESULT_u661, RESULT_u662, RESULT_u663, RESULT_u664, RESULT_u665, RESULT_u666, RESULT_u667, RESULT_u668, RESULT_u669, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_0085ce1f_;
input		port_014dfbad_;
input		port_00eb3e0a_;
input		port_017843f6_;
input		port_00d71d69_;
input		port_013abe9f_;
input		port_00106308_;
input		port_009ae2c7_;
input		port_006bb200_;
input		port_0117db18_;
input		port_004f68ad_;
input		port_005224b2_;
input	[31:0]	port_011b3267_;
input	[31:0]	port_01872ea9_;
input		port_00a1bdb0_;
input		port_01c2a8b3_;
input		port_009931c5_;
input		port_00fc16a6_;
input		port_01651433_;
input		port_01562e6e_;
input		port_0068b6c4_;
input		port_014dc097_;
input		port_006ff98d_;
input		port_01d20327_;
input		port_0193d6aa_;
input		port_009939eb_;
input		port_00423f34_;
input		port_0064c076_;
input		port_013ff323_;
input		port_007ff298_;
input		port_00f5c308_;
input		port_016a21eb_;
input		port_003a680f_;
input		port_003b6bbf_;
input		port_01eff15b_;
input		port_0077bfe8_;
input		port_01d70c86_;
output		RESULT;
output		RESULT_u634;
output		RESULT_u635;
output		RESULT_u636;
output		RESULT_u637;
output		RESULT_u638;
output		RESULT_u639;
output		RESULT_u640;
output		RESULT_u641;
output		RESULT_u642;
output		RESULT_u643;
output		RESULT_u644;
output		RESULT_u645;
output		RESULT_u646;
output		RESULT_u647;
output		RESULT_u648;
output		RESULT_u649;
output		RESULT_u650;
output		RESULT_u651;
output		RESULT_u652;
output		RESULT_u653;
output		RESULT_u654;
output		RESULT_u655;
output		RESULT_u656;
output		RESULT_u657;
output		RESULT_u658;
output		RESULT_u659;
output		RESULT_u660;
output		RESULT_u661;
output		RESULT_u662;
output		RESULT_u663;
output		RESULT_u664;
output		RESULT_u665;
output		RESULT_u666;
output		RESULT_u667;
output		RESULT_u668;
output		RESULT_u669;
output		DONE;
wire		and_u1002_u0;
wire		and_u1003_u0;
wire		and_u1004_u0;
wire signed	[31:0]	equals_a_signed;
wire		equals;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_u11_b_signed;
wire		equals_u11;
wire signed	[31:0]	equals_u11_a_signed;
wire		and_u1005_u0;
wire		and_u1006_u0;
wire		equals_u12;
wire signed	[31:0]	equals_u12_a_signed;
wire signed	[31:0]	equals_u12_b_signed;
wire signed	[31:0]	equals_u13_a_signed;
wire		equals_u13;
wire signed	[31:0]	equals_u13_b_signed;
wire		and_u1007_u0;
wire		and_u1008_u0;
wire		not_u206_u0;
wire		simplePinWrite;
wire		and_u1009_u0;
wire		and_u1010_u0;
wire		and_u1011_u0;
wire		and_u1012_u0;
wire		and_u1013_u0;
wire		not_u207_u0;
wire		not_u208_u0;
wire		and_u1014_u0;
wire		and_u1015_u0;
wire		simplePinWrite_u140;
wire		and_u1016_u0;
wire		and_u1017_u0;
wire		and_u1018_u0;
wire		not_u209_u0;
wire		simplePinWrite_u141;
wire		and_u1019_u0;
reg		reg_012610de_u0=1'h0;
wire		and_u1020_u0;
wire		or_u284_u0;
wire		and_u1021_u0;
reg		and_delayed_u45=1'h0;
reg		and_delayed_result_delayed_u7=1'h0;
wire		and_u1022_u0;
reg		and_delayed_u46_u0=1'h0;
wire		or_u285_u0;
wire		and_u1023_u0;
reg		reg_00221d6b_u0=1'h0;
wire		and_u1024_u0;
wire		or_u286_u0;
wire		and_u1025_u0;
wire		not_u210_u0;
wire		and_u1026_u0;
wire		and_u1027_u0;
wire		simplePinWrite_u142;
wire		and_u1028_u0;
wire		and_u1029_u0;
reg		reg_00fcd3a8_u0=1'h0;
wire		and_u1030_u0;
wire		or_u287_u0;
wire		and_u1031_u0;
wire		not_u211_u0;
wire		and_u1032_u0;
wire		and_u1033_u0;
wire		not_u212_u0;
wire		and_u1034_u0;
wire		and_u1035_u0;
wire		simplePinWrite_u143;
wire		and_u1036_u0;
wire		and_u1037_u0;
wire		and_u1038_u0;
wire		not_u213_u0;
wire		simplePinWrite_u144;
reg		reg_010b0269_u0=1'h0;
wire		and_u1039_u0;
wire		or_u288_u0;
reg		and_delayed_u47_u0=1'h0;
reg		reg_010b0269_result_delayed_u0=1'h0;
wire		and_u1040_u0;
wire		and_u1041_u0;
wire		or_u289_u0;
wire		and_u1042_u0;
reg		reg_011b54e2_u0=1'h0;
wire		and_u1043_u0;
wire		and_u1044_u0;
wire		or_u290_u0;
wire		and_u1045_u0;
reg		and_delayed_u48_u0=1'h0;
wire		and_u1046_u0;
wire		not_u214_u0;
wire		and_u1047_u0;
wire		and_u1048_u0;
wire		and_u1049_u0;
wire		not_u215_u0;
wire		simplePinWrite_u145;
wire		and_u1050_u0;
wire		not_u216_u0;
wire		and_u1051_u0;
wire		and_u1052_u0;
wire		simplePinWrite_u146;
reg		reg_00862cc8_u0=1'h0;
wire		and_u1053_u0;
wire		and_u1054_u0;
reg		and_delayed_u49_u0=1'h0;
wire		or_u291_u0;
reg		and_delayed_result_delayed_u8_u0=1'h0;
wire		and_u1055_u0;
wire		and_u1056_u0;
wire		or_u292_u0;
reg		and_delayed_u50_u0=1'h0;
wire		and_u1057_u0;
reg		reg_009036c8_u0=1'h0;
wire		and_u1058_u0;
wire		and_u1059_u0;
wire		or_u293_u0;
wire		not_u217_u0;
wire		and_u1060_u0;
wire		and_u1061_u0;
wire		and_u1062_u0;
wire		not_u218_u0;
wire		and_u1063_u0;
wire		simplePinWrite_u147;
wire		and_u1064_u0;
wire		and_u1065_u0;
wire		not_u219_u0;
wire		and_u1066_u0;
wire		simplePinWrite_u148;
wire		and_u1067_u0;
wire		and_u1068_u0;
wire		and_u1069_u0;
reg		reg_003c02b0_u0=1'h0;
reg		and_delayed_u51_u0=1'h0;
reg		and_delayed_u52_u0=1'h0;
wire		or_u294_u0;
wire		or_u295_u0;
wire		and_u1070_u0;
wire		and_u1071_u0;
reg		and_delayed_u53_u0=1'h0;
wire		or_u296_u0;
reg		reg_005035ec_u0=1'h0;
wire		and_u1072_u0;
wire		and_u1073_u0;
wire		and_u1074_u0;
wire		and_u1075_u0;
wire		not_u220_u0;
wire		simplePinWrite_u149;
wire		and_u1076_u0;
wire		and_u1077_u0;
wire		and_u1078_u0;
wire		and_u1079_u0;
wire		or_u297_u0;
reg		and_delayed_u54_u0=1'h0;
wire		and_u1080_u0;
wire		and_u1081_u0;
wire		not_u221_u0;
wire		not_u222_u0;
wire		and_u1082_u0;
wire		and_u1083_u0;
wire		simplePinWrite_u150;
wire		and_u1084_u0;
wire		and_u1085_u0;
wire		not_u223_u0;
wire		and_u1086_u0;
wire		simplePinWrite_u151;
wire		or_u298_u0;
wire		and_u1087_u0;
reg		reg_01de61cc_u0=1'h0;
reg		reg_000eb935_u0=1'h0;
wire		and_u1088_u0;
reg		and_delayed_u55_u0=1'h0;
wire		and_u1089_u0;
reg		reg_0078deba_u0=1'h0;
wire		and_u1090_u0;
wire		or_u299_u0;
wire		and_u1091_u0;
wire		and_u1092_u0;
reg		and_delayed_u56_u0=1'h0;
wire		and_u1093_u0;
wire		or_u300_u0;
wire		and_u1094_u0;
wire		and_u1095_u0;
wire		not_u224_u0;
wire		not_u225_u0;
wire		and_u1096_u0;
wire		and_u1097_u0;
wire		simplePinWrite_u152;
wire		and_u1098_u0;
wire		and_u1099_u0;
wire		and_u1100_u0;
wire		and_u1101_u0;
wire		and_u1102_u0;
wire		not_u226_u0;
wire		simplePinWrite_u153;
wire		and_u1103_u0;
wire		and_u1104_u0;
wire		and_u1105_u0;
wire		and_u1106_u0;
wire		and_u1107_u0;
wire		not_u227_u0;
wire		and_u1108_u0;
wire		not_u228_u0;
wire		and_u1109_u0;
wire		simplePinWrite_u154;
wire		and_u1110_u0;
wire		and_u1111_u0;
wire		not_u229_u0;
wire		and_u1112_u0;
wire		simplePinWrite_u155;
wire		and_u1113_u0;
reg		reg_00646dce_u0=1'h0;
wire		and_u1114_u0;
wire		and_u1115_u0;
wire		or_u301_u0;
reg		and_delayed_u57_u0=1'h0;
reg		and_delayed_u58_u0=1'h0;
wire		and_u1116_u0;
wire		and_u1117_u0;
reg		and_delayed_u59_u0=1'h0;
wire		or_u302_u0;
reg		reg_01017594_u0=1'h0;
wire		and_u1118_u0;
wire		or_u303_u0;
wire		and_u1119_u0;
wire		and_u1120_u0;
wire		not_u230_u0;
wire		and_u1121_u0;
wire		and_u1122_u0;
wire		not_u231_u0;
wire		and_u1123_u0;
wire		simplePinWrite_u156;
wire		and_u1124_u0;
wire		and_u1125_u0;
wire		and_u1126_u0;
wire		not_u232_u0;
wire		simplePinWrite_u157;
wire		and_u1127_u0;
reg		reg_00e62e4f_u0=1'h0;
wire		and_u1128_u0;
wire		and_u1129_u0;
reg		reg_00e62e4f_result_delayed_u0=1'h0;
reg		and_delayed_u60_u0=1'h0;
wire		or_u304_u0;
wire		and_u1130_u0;
wire		and_u1131_u0;
wire		or_u305_u0;
reg		and_delayed_u61_u0=1'h0;
wire		and_u1132_u0;
reg		and_delayed_u62_u0=1'h0;
wire		or_u306_u0;
wire		and_u1133_u0;
wire		scoreboard_01f48d52_resOr4;
wire		scoreboard_01f48d52_resOr2;
reg		scoreboard_01f48d52_reg5=1'h0;
reg		scoreboard_01f48d52_reg0=1'h0;
reg		scoreboard_01f48d52_reg8=1'h0;
reg		scoreboard_01f48d52_reg7=1'h0;
wire		scoreboard_01f48d52_resOr5;
wire		scoreboard_01f48d52_and;
wire		scoreboard_01f48d52_resOr1;
wire		scoreboard_01f48d52_resOr3;
wire		scoreboard_01f48d52_resOr8;
reg		scoreboard_01f48d52_reg3=1'h0;
reg		scoreboard_01f48d52_reg4=1'h0;
reg		scoreboard_01f48d52_reg1=1'h0;
reg		scoreboard_01f48d52_reg6=1'h0;
wire		bus_00081e89_;
wire		scoreboard_01f48d52_resOr6;
wire		scoreboard_01f48d52_resOr7;
wire		scoreboard_01f48d52_resOr0;
reg		scoreboard_01f48d52_reg2=1'h0;
wire		getValueRGB_go_merge;
wire		or_u307_u0;
wire		mux_u333;
wire		or_u308_u0;
wire		mux_u334_u0;
wire		mux_u335_u0;
wire		or_u309_u0;
wire		updateModel_go_merge;
wire		or_u310_u0;
wire		mux_u336_u0;
wire		doneArrayCount_go_merge;
wire		or_u311_u0;
wire		mux_u337_u0;
wire		getkArray_go_merge;
wire		mux_u338_u0;
wire		or_u312_u0;
wire		doneCountIm_go_merge;
wire		mux_u339_u0;
wire		or_u313_u0;
wire		mux_u340_u0;
wire		or_u314_u0;
wire		mux_u341_u0;
wire		or_u315_u0;
wire		doneCount_mModel_go_merge;
wire		or_u316_u0;
wire		mux_u342_u0;
wire		mux_u343_u0;
wire		or_u317_u0;
reg		syncEnable_u258=1'h0;
reg		block_GO_delayed_u32=1'h0;
reg		syncEnable_u259_u0=1'h0;
reg		syncEnable_u260_u0=1'h0;
reg		syncEnable_u261_u0=1'h0;
reg		syncEnable_u262_u0=1'h0;
reg		syncEnable_u263_u0=1'h0;
reg		syncEnable_u264_u0=1'h0;
reg		syncEnable_u265_u0=1'h0;
reg		syncEnable_u266_u0=1'h0;
reg		syncEnable_u267_u0=1'h0;
reg		syncEnable_u268_u0=1'h0;
reg		syncEnable_u269_u0=1'h0;
reg		syncEnable_u270_u0=1'h0;
reg		syncEnable_u271_u0=1'h0;
reg		syncEnable_u272_u0=1'h0;
reg		syncEnable_u273_u0=1'h0;
reg		syncEnable_u274_u0=1'h0;
reg		syncEnable_u275_u0=1'h0;
reg		syncEnable_u276_u0=1'h0;
reg		syncEnable_u277_u0=1'h0;
reg		loopControl_u23=1'h0;
wire		or_u318_u0;
wire		mux_u344_u0;
wire		or_u319_u0;
reg		reg_00a52757_u0=1'h0;
wire		or_u320_u0;
wire		mux_u345_u0;
wire		mux_u346_u0;
wire		or_u321_u0;
reg		reg_00a52757_result_delayed_u0=1'h0;
wire		or_u322_u0;
wire		mux_u347_u0;
wire		mux_u348_u0;
wire		or_u323_u0;
wire		or_u324_u0;
wire		mux_u349_u0;
wire		or_u325_u0;
wire		mux_u350_u0;
wire		or_u326_u0;
wire		mux_u351_u0;
wire		or_u327_u0;
wire		mux_u352_u0;
wire		or_u328_u0;
wire		mux_u353_u0;
wire		mux_u354_u0;
wire		or_u329_u0;
wire		mux_u355_u0;
wire		or_u330_u0;
assign and_u1002_u0=or_u318_u0&or_u318_u0;
assign and_u1003_u0=port_013ff323_&port_0077bfe8_;
assign and_u1004_u0=and_u1003_u0&port_0064c076_;
assign equals_a_signed=port_011b3267_;
assign equals_b_signed=32'h90;
assign equals=equals_a_signed==equals_b_signed;
assign equals_u11_a_signed=port_011b3267_;
assign equals_u11_b_signed=32'h15;
assign equals_u11=equals_u11_a_signed==equals_u11_b_signed;
assign and_u1005_u0=port_006ff98d_&port_01eff15b_;
assign and_u1006_u0=and_u1005_u0&port_003a680f_;
assign equals_u12_a_signed=port_01872ea9_;
assign equals_u12_b_signed=32'h1000;
assign equals_u12=equals_u12_a_signed==equals_u12_b_signed;
assign equals_u13_a_signed=port_011b3267_;
assign equals_u13_b_signed=32'h15;
assign equals_u13=equals_u13_a_signed==equals_u13_b_signed;
assign and_u1007_u0=block_GO_delayed_u32&not_u206_u0;
assign and_u1008_u0=block_GO_delayed_u32&syncEnable_u261_u0;
assign not_u206_u0=~syncEnable_u261_u0;
assign simplePinWrite=and_u1009_u0&{1{and_u1009_u0}};
assign and_u1009_u0=and_u1010_u0&and_u1010_u0;
assign and_u1010_u0=and_u1011_u0&and_u1011_u0;
assign and_u1011_u0=and_u1008_u0&block_GO_delayed_u32;
assign and_u1012_u0=block_GO_delayed_u32&syncEnable_u268_u0;
assign and_u1013_u0=block_GO_delayed_u32&not_u207_u0;
assign not_u207_u0=~syncEnable_u268_u0;
assign not_u208_u0=~syncEnable_u259_u0;
assign and_u1014_u0=and_u1024_u0&syncEnable_u259_u0;
assign and_u1015_u0=and_u1024_u0&not_u208_u0;
assign simplePinWrite_u140=and_u1016_u0&{1{and_u1016_u0}};
assign and_u1016_u0=and_u1022_u0&and_u1022_u0;
assign and_u1017_u0=and_u1023_u0&not_u209_u0;
assign and_u1018_u0=and_u1023_u0&syncEnable_u273_u0;
assign not_u209_u0=~syncEnable_u273_u0;
assign simplePinWrite_u141=and_u1019_u0&{1{and_u1019_u0}};
assign and_u1019_u0=and_u1020_u0&and_u1020_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012610de_u0<=1'h0;
else reg_012610de_u0<=and_u1021_u0;
end
assign and_u1020_u0=and_u1018_u0&and_u1023_u0;
assign or_u284_u0=and_delayed_result_delayed_u7|reg_012610de_u0;
assign and_u1021_u0=and_u1017_u0&and_u1023_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u45<=1'h0;
else and_delayed_u45<=and_u1020_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u7<=1'h0;
else and_delayed_result_delayed_u7<=and_delayed_u45;
end
assign and_u1022_u0=and_u1014_u0&and_u1024_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u46_u0<=1'h0;
else and_delayed_u46_u0<=and_u1022_u0;
end
assign or_u285_u0=or_u284_u0|and_delayed_u46_u0;
assign and_u1023_u0=and_u1015_u0&and_u1024_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00221d6b_u0<=1'h0;
else reg_00221d6b_u0<=and_u1025_u0;
end
assign and_u1024_u0=and_u1012_u0&block_GO_delayed_u32;
assign or_u286_u0=reg_00221d6b_u0|or_u285_u0;
assign and_u1025_u0=and_u1013_u0&block_GO_delayed_u32;
assign not_u210_u0=~syncEnable_u260_u0;
assign and_u1026_u0=block_GO_delayed_u32&not_u210_u0;
assign and_u1027_u0=block_GO_delayed_u32&syncEnable_u260_u0;
assign simplePinWrite_u142=and_u1028_u0&{1{and_u1028_u0}};
assign and_u1028_u0=and_u1029_u0&and_u1029_u0;
assign and_u1029_u0=and_u1031_u0&and_u1031_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00fcd3a8_u0<=1'h0;
else reg_00fcd3a8_u0<=and_u1030_u0;
end
assign and_u1030_u0=and_u1026_u0&block_GO_delayed_u32;
assign or_u287_u0=port_00fc16a6_|reg_00fcd3a8_u0;
assign and_u1031_u0=and_u1027_u0&block_GO_delayed_u32;
assign not_u211_u0=~syncEnable_u274_u0;
assign and_u1032_u0=block_GO_delayed_u32&syncEnable_u274_u0;
assign and_u1033_u0=block_GO_delayed_u32&not_u211_u0;
assign not_u212_u0=~syncEnable_u264_u0;
assign and_u1034_u0=and_u1045_u0&syncEnable_u264_u0;
assign and_u1035_u0=and_u1045_u0&not_u212_u0;
assign simplePinWrite_u143=and_u1036_u0&{1{and_u1036_u0}};
assign and_u1036_u0=and_u1043_u0&and_u1043_u0;
assign and_u1037_u0=and_u1041_u0&port_00a1bdb0_;
assign and_u1038_u0=and_u1041_u0&not_u213_u0;
assign not_u213_u0=~port_00a1bdb0_;
assign simplePinWrite_u144=and_u1040_u0&{1{and_u1040_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_010b0269_u0<=1'h0;
else reg_010b0269_u0<=and_u1040_u0;
end
assign and_u1039_u0=and_u1038_u0&and_u1041_u0;
assign or_u288_u0=and_delayed_u47_u0|reg_010b0269_result_delayed_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u47_u0<=1'h0;
else and_delayed_u47_u0<=and_u1039_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_010b0269_result_delayed_u0<=1'h0;
else reg_010b0269_result_delayed_u0<=reg_010b0269_u0;
end
assign and_u1040_u0=and_u1037_u0&and_u1041_u0;
assign and_u1041_u0=and_u1042_u0&and_u1042_u0;
assign or_u289_u0=reg_011b54e2_u0|or_u288_u0;
assign and_u1042_u0=and_u1035_u0&and_u1045_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_011b54e2_u0<=1'h0;
else reg_011b54e2_u0<=and_u1043_u0;
end
assign and_u1043_u0=and_u1034_u0&and_u1045_u0;
assign and_u1044_u0=and_u1033_u0&block_GO_delayed_u32;
assign or_u290_u0=and_delayed_u48_u0|or_u289_u0;
assign and_u1045_u0=and_u1032_u0&block_GO_delayed_u32;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u48_u0<=1'h0;
else and_delayed_u48_u0<=and_u1044_u0;
end
assign and_u1046_u0=block_GO_delayed_u32&not_u214_u0;
assign not_u214_u0=~syncEnable_u276_u0;
assign and_u1047_u0=block_GO_delayed_u32&syncEnable_u276_u0;
assign and_u1048_u0=and_u1058_u0&syncEnable_u266_u0;
assign and_u1049_u0=and_u1058_u0&not_u215_u0;
assign not_u215_u0=~syncEnable_u266_u0;
assign simplePinWrite_u145=and_u1050_u0&{1{and_u1050_u0}};
assign and_u1050_u0=and_u1056_u0&and_u1056_u0;
assign not_u216_u0=~port_009931c5_;
assign and_u1051_u0=and_u1055_u0&port_009931c5_;
assign and_u1052_u0=and_u1055_u0&not_u216_u0;
assign simplePinWrite_u146=and_u1054_u0&{1{and_u1054_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00862cc8_u0<=1'h0;
else reg_00862cc8_u0<=and_u1053_u0;
end
assign and_u1053_u0=and_u1052_u0&and_u1055_u0;
assign and_u1054_u0=and_u1051_u0&and_u1055_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u49_u0<=1'h0;
else and_delayed_u49_u0<=and_u1054_u0;
end
assign or_u291_u0=and_delayed_result_delayed_u8_u0|reg_00862cc8_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_result_delayed_u8_u0<=1'h0;
else and_delayed_result_delayed_u8_u0<=and_delayed_u49_u0;
end
assign and_u1055_u0=and_u1057_u0&and_u1057_u0;
assign and_u1056_u0=and_u1048_u0&and_u1058_u0;
assign or_u292_u0=or_u291_u0|and_delayed_u50_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u50_u0<=1'h0;
else and_delayed_u50_u0<=and_u1056_u0;
end
assign and_u1057_u0=and_u1049_u0&and_u1058_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_009036c8_u0<=1'h0;
else reg_009036c8_u0<=and_u1059_u0;
end
assign and_u1058_u0=and_u1047_u0&block_GO_delayed_u32;
assign and_u1059_u0=and_u1046_u0&block_GO_delayed_u32;
assign or_u293_u0=or_u292_u0|reg_009036c8_u0;
assign not_u217_u0=~syncEnable_u271_u0;
assign and_u1060_u0=block_GO_delayed_u32&syncEnable_u271_u0;
assign and_u1061_u0=block_GO_delayed_u32&not_u217_u0;
assign and_u1062_u0=and_u1073_u0&not_u218_u0;
assign not_u218_u0=~syncEnable_u258;
assign and_u1063_u0=and_u1073_u0&syncEnable_u258;
assign simplePinWrite_u147=and_u1064_u0&{1{and_u1064_u0}};
assign and_u1064_u0=and_u1070_u0&and_u1070_u0;
assign and_u1065_u0=and_u1071_u0&not_u219_u0;
assign not_u219_u0=~syncEnable_u272_u0;
assign and_u1066_u0=and_u1071_u0&syncEnable_u272_u0;
assign simplePinWrite_u148=and_u1067_u0&{1{and_u1067_u0}};
assign and_u1067_u0=and_u1068_u0&and_u1068_u0;
assign and_u1068_u0=and_u1066_u0&and_u1071_u0;
assign and_u1069_u0=and_u1065_u0&and_u1071_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_003c02b0_u0<=1'h0;
else reg_003c02b0_u0<=and_delayed_u52_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u51_u0<=1'h0;
else and_delayed_u51_u0<=and_u1069_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u52_u0<=1'h0;
else and_delayed_u52_u0<=and_u1068_u0;
end
assign or_u294_u0=and_delayed_u51_u0|reg_003c02b0_u0;
assign or_u295_u0=and_delayed_u53_u0|or_u294_u0;
assign and_u1070_u0=and_u1063_u0&and_u1073_u0;
assign and_u1071_u0=and_u1062_u0&and_u1073_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u53_u0<=1'h0;
else and_delayed_u53_u0<=and_u1070_u0;
end
assign or_u296_u0=reg_005035ec_u0|or_u295_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_005035ec_u0<=1'h0;
else reg_005035ec_u0<=and_u1072_u0;
end
assign and_u1072_u0=and_u1061_u0&block_GO_delayed_u32;
assign and_u1073_u0=and_u1060_u0&block_GO_delayed_u32;
assign and_u1074_u0=block_GO_delayed_u32&syncEnable_u269_u0;
assign and_u1075_u0=block_GO_delayed_u32&not_u220_u0;
assign not_u220_u0=~syncEnable_u269_u0;
assign simplePinWrite_u149=and_u1076_u0&{1{and_u1076_u0}};
assign and_u1076_u0=and_u1077_u0&and_u1077_u0;
assign and_u1077_u0=and_u1078_u0&and_u1078_u0;
assign and_u1078_u0=and_u1074_u0&block_GO_delayed_u32;
assign and_u1079_u0=and_u1075_u0&block_GO_delayed_u32;
assign or_u297_u0=port_00fc16a6_|and_delayed_u54_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u54_u0<=1'h0;
else and_delayed_u54_u0<=and_u1079_u0;
end
assign and_u1080_u0=block_GO_delayed_u32&syncEnable_u262_u0;
assign and_u1081_u0=block_GO_delayed_u32&not_u221_u0;
assign not_u221_u0=~syncEnable_u262_u0;
assign not_u222_u0=~syncEnable_u264_u0;
assign and_u1082_u0=and_u1093_u0&syncEnable_u264_u0;
assign and_u1083_u0=and_u1093_u0&not_u222_u0;
assign simplePinWrite_u150=and_u1084_u0&{1{and_u1084_u0}};
assign and_u1084_u0=and_u1090_u0&and_u1090_u0;
assign and_u1085_u0=and_u1089_u0&port_01c2a8b3_;
assign not_u223_u0=~port_01c2a8b3_;
assign and_u1086_u0=and_u1089_u0&not_u223_u0;
assign simplePinWrite_u151=and_u1088_u0&{1{and_u1088_u0}};
assign or_u298_u0=reg_01de61cc_u0|and_delayed_u55_u0;
assign and_u1087_u0=and_u1086_u0&and_u1089_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01de61cc_u0<=1'h0;
else reg_01de61cc_u0<=reg_000eb935_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_000eb935_u0<=1'h0;
else reg_000eb935_u0<=and_u1088_u0;
end
assign and_u1088_u0=and_u1085_u0&and_u1089_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u55_u0<=1'h0;
else and_delayed_u55_u0<=and_u1087_u0;
end
assign and_u1089_u0=and_u1091_u0&and_u1091_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0078deba_u0<=1'h0;
else reg_0078deba_u0<=and_u1090_u0;
end
assign and_u1090_u0=and_u1082_u0&and_u1093_u0;
assign or_u299_u0=or_u298_u0|reg_0078deba_u0;
assign and_u1091_u0=and_u1083_u0&and_u1093_u0;
assign and_u1092_u0=and_u1081_u0&block_GO_delayed_u32;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u56_u0<=1'h0;
else and_delayed_u56_u0<=and_u1092_u0;
end
assign and_u1093_u0=and_u1080_u0&block_GO_delayed_u32;
assign or_u300_u0=and_delayed_u56_u0|or_u299_u0;
assign and_u1094_u0=block_GO_delayed_u32&syncEnable_u270_u0;
assign and_u1095_u0=block_GO_delayed_u32&not_u224_u0;
assign not_u224_u0=~syncEnable_u270_u0;
assign not_u225_u0=~syncEnable_u267_u0;
assign and_u1096_u0=and_u1100_u0&not_u225_u0;
assign and_u1097_u0=and_u1100_u0&syncEnable_u267_u0;
assign simplePinWrite_u152=and_u1098_u0&{1{and_u1098_u0}};
assign and_u1098_u0=and_u1099_u0&and_u1099_u0;
assign and_u1099_u0=and_u1097_u0&and_u1100_u0;
assign and_u1100_u0=and_u1094_u0&block_GO_delayed_u32;
assign and_u1101_u0=block_GO_delayed_u32&not_u226_u0;
assign and_u1102_u0=block_GO_delayed_u32&syncEnable_u275_u0;
assign not_u226_u0=~syncEnable_u275_u0;
assign simplePinWrite_u153=and_u1103_u0&{1{and_u1103_u0}};
assign and_u1103_u0=and_u1104_u0&and_u1104_u0;
assign and_u1104_u0=and_u1105_u0&and_u1105_u0;
assign and_u1105_u0=and_u1102_u0&block_GO_delayed_u32;
assign and_u1106_u0=block_GO_delayed_u32&not_u227_u0;
assign and_u1107_u0=block_GO_delayed_u32&syncEnable_u265_u0;
assign not_u227_u0=~syncEnable_u265_u0;
assign and_u1108_u0=and_u1119_u0&not_u228_u0;
assign not_u228_u0=~syncEnable_u259_u0;
assign and_u1109_u0=and_u1119_u0&syncEnable_u259_u0;
assign simplePinWrite_u154=and_u1110_u0&{1{and_u1110_u0}};
assign and_u1110_u0=and_u1116_u0&and_u1116_u0;
assign and_u1111_u0=and_u1117_u0&not_u229_u0;
assign not_u229_u0=~syncEnable_u273_u0;
assign and_u1112_u0=and_u1117_u0&syncEnable_u273_u0;
assign simplePinWrite_u155=and_u1113_u0&{1{and_u1113_u0}};
assign and_u1113_u0=and_u1114_u0&and_u1114_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00646dce_u0<=1'h0;
else reg_00646dce_u0<=and_delayed_u57_u0;
end
assign and_u1114_u0=and_u1112_u0&and_u1117_u0;
assign and_u1115_u0=and_u1111_u0&and_u1117_u0;
assign or_u301_u0=reg_00646dce_u0|and_delayed_u58_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u57_u0<=1'h0;
else and_delayed_u57_u0<=and_u1114_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u58_u0<=1'h0;
else and_delayed_u58_u0<=and_u1115_u0;
end
assign and_u1116_u0=and_u1109_u0&and_u1119_u0;
assign and_u1117_u0=and_u1108_u0&and_u1119_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u59_u0<=1'h0;
else and_delayed_u59_u0<=and_u1116_u0;
end
assign or_u302_u0=and_delayed_u59_u0|or_u301_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01017594_u0<=1'h0;
else reg_01017594_u0<=and_u1118_u0;
end
assign and_u1118_u0=and_u1106_u0&block_GO_delayed_u32;
assign or_u303_u0=or_u302_u0|reg_01017594_u0;
assign and_u1119_u0=and_u1107_u0&block_GO_delayed_u32;
assign and_u1120_u0=block_GO_delayed_u32&not_u230_u0;
assign not_u230_u0=~syncEnable_u263_u0;
assign and_u1121_u0=block_GO_delayed_u32&syncEnable_u263_u0;
assign and_u1122_u0=and_u1133_u0&syncEnable_u258;
assign not_u231_u0=~syncEnable_u258;
assign and_u1123_u0=and_u1133_u0&not_u231_u0;
assign simplePinWrite_u156=and_u1124_u0&{1{and_u1124_u0}};
assign and_u1124_u0=and_u1131_u0&and_u1131_u0;
assign and_u1125_u0=and_u1130_u0&not_u232_u0;
assign and_u1126_u0=and_u1130_u0&syncEnable_u272_u0;
assign not_u232_u0=~syncEnable_u272_u0;
assign simplePinWrite_u157=and_u1127_u0&{1{and_u1127_u0}};
assign and_u1127_u0=and_u1128_u0&and_u1128_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e62e4f_u0<=1'h0;
else reg_00e62e4f_u0<=and_u1128_u0;
end
assign and_u1128_u0=and_u1126_u0&and_u1130_u0;
assign and_u1129_u0=and_u1125_u0&and_u1130_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e62e4f_result_delayed_u0<=1'h0;
else reg_00e62e4f_result_delayed_u0<=reg_00e62e4f_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u60_u0<=1'h0;
else and_delayed_u60_u0<=and_u1129_u0;
end
assign or_u304_u0=and_delayed_u60_u0|reg_00e62e4f_result_delayed_u0;
assign and_u1130_u0=and_u1123_u0&and_u1133_u0;
assign and_u1131_u0=and_u1122_u0&and_u1133_u0;
assign or_u305_u0=or_u304_u0|and_delayed_u61_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u61_u0<=1'h0;
else and_delayed_u61_u0<=and_u1131_u0;
end
assign and_u1132_u0=and_u1120_u0&block_GO_delayed_u32;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u62_u0<=1'h0;
else and_delayed_u62_u0<=and_u1132_u0;
end
assign or_u306_u0=and_delayed_u62_u0|or_u305_u0;
assign and_u1133_u0=and_u1121_u0&block_GO_delayed_u32;
assign scoreboard_01f48d52_resOr4=or_u303_u0|scoreboard_01f48d52_reg4;
assign scoreboard_01f48d52_resOr2=or_u290_u0|scoreboard_01f48d52_reg2;
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg5<=1'h0;
else if (or_u306_u0)
scoreboard_01f48d52_reg5<=1'h1;
else scoreboard_01f48d52_reg5<=scoreboard_01f48d52_reg5;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg0<=1'h0;
else if (or_u297_u0)
scoreboard_01f48d52_reg0<=1'h1;
else scoreboard_01f48d52_reg0<=scoreboard_01f48d52_reg0;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg8<=1'h0;
else if (or_u286_u0)
scoreboard_01f48d52_reg8<=1'h1;
else scoreboard_01f48d52_reg8<=scoreboard_01f48d52_reg8;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg7<=1'h0;
else if (or_u300_u0)
scoreboard_01f48d52_reg7<=1'h1;
else scoreboard_01f48d52_reg7<=scoreboard_01f48d52_reg7;
end
assign scoreboard_01f48d52_resOr5=or_u306_u0|scoreboard_01f48d52_reg5;
assign scoreboard_01f48d52_and=scoreboard_01f48d52_resOr0&scoreboard_01f48d52_resOr1&scoreboard_01f48d52_resOr2&scoreboard_01f48d52_resOr3&scoreboard_01f48d52_resOr4&scoreboard_01f48d52_resOr5&scoreboard_01f48d52_resOr6&scoreboard_01f48d52_resOr7&scoreboard_01f48d52_resOr8;
assign scoreboard_01f48d52_resOr1=or_u293_u0|scoreboard_01f48d52_reg1;
assign scoreboard_01f48d52_resOr3=or_u287_u0|scoreboard_01f48d52_reg3;
assign scoreboard_01f48d52_resOr8=or_u286_u0|scoreboard_01f48d52_reg8;
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg3<=1'h0;
else if (or_u287_u0)
scoreboard_01f48d52_reg3<=1'h1;
else scoreboard_01f48d52_reg3<=scoreboard_01f48d52_reg3;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg4<=1'h0;
else if (or_u303_u0)
scoreboard_01f48d52_reg4<=1'h1;
else scoreboard_01f48d52_reg4<=scoreboard_01f48d52_reg4;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg1<=1'h0;
else if (or_u293_u0)
scoreboard_01f48d52_reg1<=1'h1;
else scoreboard_01f48d52_reg1<=scoreboard_01f48d52_reg1;
end
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg6<=1'h0;
else if (or_u296_u0)
scoreboard_01f48d52_reg6<=1'h1;
else scoreboard_01f48d52_reg6<=scoreboard_01f48d52_reg6;
end
assign bus_00081e89_=scoreboard_01f48d52_and|RESET;
assign scoreboard_01f48d52_resOr6=or_u296_u0|scoreboard_01f48d52_reg6;
assign scoreboard_01f48d52_resOr7=or_u300_u0|scoreboard_01f48d52_reg7;
assign scoreboard_01f48d52_resOr0=or_u297_u0|scoreboard_01f48d52_reg0;
always @(posedge CLK)
begin
if (bus_00081e89_)
scoreboard_01f48d52_reg2<=1'h0;
else if (or_u290_u0)
scoreboard_01f48d52_reg2<=1'h1;
else scoreboard_01f48d52_reg2<=scoreboard_01f48d52_reg2;
end
assign getValueRGB_go_merge=simplePinWrite_u141|simplePinWrite_u155;
assign or_u307_u0=and_u1009_u0|and_u1016_u0;
assign mux_u333=(and_u1009_u0)?1'h1:1'h0;
assign or_u308_u0=and_u1084_u0|and_u1098_u0|and_u1103_u0;
assign mux_u334_u0=({1{and_u1084_u0}}&1'h1)|({1{and_u1098_u0}}&1'h1)|({1{and_u1103_u0}}&1'h0);
assign mux_u335_u0=(and_u1036_u0)?1'h1:1'h0;
assign or_u309_u0=and_u1036_u0|and_u1050_u0;
assign updateModel_go_merge=simplePinWrite_u142|simplePinWrite_u149;
assign or_u310_u0=and_u1110_u0|and_u1124_u0;
assign mux_u336_u0=(and_u1110_u0)?1'h1:1'h0;
assign doneArrayCount_go_merge=simplePinWrite_u147|simplePinWrite_u156;
assign or_u311_u0=and_u1064_u0|and_u1076_u0;
assign mux_u337_u0=(and_u1064_u0)?1'h1:1'h0;
assign getkArray_go_merge=simplePinWrite_u148|simplePinWrite_u157;
assign mux_u338_u0=(and_u1050_u0)?1'h1:1'h0;
assign or_u312_u0=and_u1050_u0|and_u1098_u0;
assign doneCountIm_go_merge=simplePinWrite_u140|simplePinWrite_u154;
assign mux_u339_u0=(and_u1103_u0)?1'h1:1'h0;
assign or_u313_u0=and_u1103_u0|and_u1110_u0;
assign mux_u340_u0=(and_u1028_u0)?1'h1:1'h0;
assign or_u314_u0=and_u1028_u0|and_u1036_u0;
assign mux_u341_u0=(and_u1028_u0)?1'h0:1'h1;
assign or_u315_u0=and_u1028_u0|and_u1124_u0;
assign doneCount_mModel_go_merge=simplePinWrite_u143|simplePinWrite_u150;
assign or_u316_u0=and_u1016_u0|and_u1064_u0;
assign mux_u342_u0=(and_u1016_u0)?1'h1:1'h0;
assign mux_u343_u0=(and_u1076_u0)?1'h1:1'h0;
assign or_u317_u0=and_u1076_u0|and_u1084_u0;
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u258<=equals_u11;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u32<=1'h0;
else block_GO_delayed_u32<=and_u1002_u0;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u259_u0<=equals;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u260_u0<=port_00eb3e0a_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u261_u0<=port_0085ce1f_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u262_u0<=port_009ae2c7_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u263_u0<=port_005224b2_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u264_u0<=equals_u12;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u265_u0<=port_004f68ad_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u266_u0<=equals_u13;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u267_u0<=and_u1006_u0;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u268_u0<=port_014dfbad_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u269_u0<=port_00106308_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u270_u0<=port_006bb200_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u271_u0<=port_013abe9f_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u272_u0<=port_00423f34_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u273_u0<=and_u1004_u0;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u274_u0<=port_017843f6_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u275_u0<=port_0117db18_;
end
always @(posedge CLK)
begin
if (and_u1002_u0)
syncEnable_u276_u0<=port_00d71d69_;
end
always @(posedge CLK)
begin
if (reg_00a52757_result_delayed_u0)
syncEnable_u277_u0<=RESET;
end
always @(posedge CLK or posedge syncEnable_u277_u0)
begin
if (syncEnable_u277_u0)
loopControl_u23<=1'h0;
else loopControl_u23<=scoreboard_01f48d52_and;
end
assign or_u318_u0=reg_00a52757_result_delayed_u0|loopControl_u23;
assign mux_u344_u0=(GO)?1'h0:mux_u337_u0;
assign or_u319_u0=GO|or_u311_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a52757_u0<=1'h0;
else reg_00a52757_u0<=GO;
end
assign or_u320_u0=GO|or_u309_u0;
assign mux_u345_u0=(GO)?1'h0:mux_u335_u0;
assign mux_u346_u0=(GO)?1'h0:mux_u338_u0;
assign or_u321_u0=GO|or_u312_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00a52757_result_delayed_u0<=1'h0;
else reg_00a52757_result_delayed_u0<=reg_00a52757_u0;
end
assign or_u322_u0=GO|or_u316_u0;
assign mux_u347_u0=(GO)?1'h0:mux_u342_u0;
assign mux_u348_u0=(GO)?1'h0:mux_u340_u0;
assign or_u323_u0=GO|or_u314_u0;
assign or_u324_u0=GO|or_u315_u0;
assign mux_u349_u0=(GO)?1'h0:mux_u341_u0;
assign or_u325_u0=GO|or_u308_u0;
assign mux_u350_u0=(GO)?1'h0:mux_u334_u0;
assign or_u326_u0=GO|or_u307_u0;
assign mux_u351_u0=(GO)?1'h0:mux_u333;
assign or_u327_u0=GO|and_u1009_u0;
assign mux_u352_u0=(GO)?1'h1:1'h0;
assign or_u328_u0=GO|or_u310_u0;
assign mux_u353_u0=(GO)?1'h0:mux_u336_u0;
assign mux_u354_u0=(GO)?1'h0:mux_u343_u0;
assign or_u329_u0=GO|or_u317_u0;
assign mux_u355_u0=(GO)?1'h0:mux_u339_u0;
assign or_u330_u0=GO|or_u313_u0;
assign RESULT=or_u327_u0;
assign RESULT_u634=mux_u352_u0;
assign RESULT_u635=or_u326_u0;
assign RESULT_u636=mux_u351_u0;
assign RESULT_u637=or_u324_u0;
assign RESULT_u638=mux_u349_u0;
assign RESULT_u639=or_u323_u0;
assign RESULT_u640=mux_u348_u0;
assign RESULT_u641=or_u320_u0;
assign RESULT_u642=mux_u345_u0;
assign RESULT_u643=or_u322_u0;
assign RESULT_u644=mux_u347_u0;
assign RESULT_u645=or_u319_u0;
assign RESULT_u646=mux_u344_u0;
assign RESULT_u647=or_u329_u0;
assign RESULT_u648=mux_u354_u0;
assign RESULT_u649=or_u321_u0;
assign RESULT_u650=mux_u346_u0;
assign RESULT_u651=or_u325_u0;
assign RESULT_u652=mux_u350_u0;
assign RESULT_u653=or_u330_u0;
assign RESULT_u654=mux_u355_u0;
assign RESULT_u655=or_u328_u0;
assign RESULT_u656=mux_u353_u0;
assign RESULT_u657=getkArray_go_merge;
assign RESULT_u658=doneCount_mModel_go_merge;
assign RESULT_u659=simplePinWrite;
assign RESULT_u660=doneCountIm_go_merge;
assign RESULT_u661=getValueRGB_go_merge;
assign RESULT_u662=doneArrayCount_go_merge;
assign RESULT_u663=simplePinWrite_u152;
assign RESULT_u664=simplePinWrite_u146;
assign RESULT_u665=simplePinWrite_u153;
assign RESULT_u666=simplePinWrite_u145;
assign RESULT_u667=updateModel_go_merge;
assign RESULT_u668=simplePinWrite_u151;
assign RESULT_u669=simplePinWrite_u144;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_004642a8_(bus_0001ca9d_, bus_019d3795_, bus_00d60edb_, bus_00601864_, bus_01c2af4d_, bus_00cc836e_, bus_01f0d5cb_, bus_0136fd3c_, bus_01379244_, bus_001d0f45_, bus_00750a51_, bus_00e15ac3_, bus_0141c80f_, bus_016d2a56_, bus_01cdb2b4_, bus_00776aba_, bus_012b8347_, bus_0163b523_, bus_01f84f26_);
input		bus_0001ca9d_;
input		bus_019d3795_;
input		bus_00d60edb_;
input	[7:0]	bus_00601864_;
input		bus_01c2af4d_;
input	[7:0]	bus_00cc836e_;
input	[31:0]	bus_01f0d5cb_;
input	[2:0]	bus_0136fd3c_;
input		bus_01379244_;
input	[31:0]	bus_001d0f45_;
input	[2:0]	bus_00750a51_;
output	[7:0]	bus_00e15ac3_;
output	[31:0]	bus_0141c80f_;
output		bus_016d2a56_;
output		bus_01cdb2b4_;
output	[2:0]	bus_00776aba_;
output		bus_012b8347_;
output	[7:0]	bus_0163b523_;
output		bus_01f84f26_;
reg		done_qual_u52_u0=1'h0;
wire		or_00938dd5_u0;
wire		not_01c2f517_u0;
wire	[7:0]	mux_00ec3672_u0;
wire		or_01e62516_u0;
wire		not_0039bf65_u0;
wire	[31:0]	mux_00bee061_u0;
wire		and_01740b92_u0;
reg		done_qual_u53_u0=1'h0;
wire		and_00a01c15_u0;
wire		or_01785016_u0;
always @(posedge bus_0001ca9d_)
begin
if (bus_019d3795_)
done_qual_u52_u0<=1'h0;
else done_qual_u52_u0<=bus_01c2af4d_;
end
assign or_00938dd5_u0=bus_01c2af4d_|done_qual_u52_u0;
assign not_01c2f517_u0=~bus_00d60edb_;
assign mux_00ec3672_u0=({8{bus_01c2af4d_}}&bus_00cc836e_);
assign or_01e62516_u0=bus_01c2af4d_|bus_01379244_;
assign not_0039bf65_u0=~bus_00d60edb_;
assign mux_00bee061_u0=(bus_01c2af4d_)?bus_01f0d5cb_:bus_001d0f45_;
assign and_01740b92_u0=or_01785016_u0&bus_00d60edb_;
always @(posedge bus_0001ca9d_)
begin
if (bus_019d3795_)
done_qual_u53_u0<=1'h0;
else done_qual_u53_u0<=bus_01379244_;
end
assign and_00a01c15_u0=or_00938dd5_u0&bus_00d60edb_;
assign or_01785016_u0=bus_01379244_|done_qual_u53_u0;
assign bus_00e15ac3_=mux_00ec3672_u0;
assign bus_0141c80f_=mux_00bee061_u0;
assign bus_016d2a56_=bus_01c2af4d_;
assign bus_01cdb2b4_=or_01e62516_u0;
assign bus_00776aba_=3'h1;
assign bus_012b8347_=and_00a01c15_u0;
assign bus_0163b523_=bus_00601864_;
assign bus_01f84f26_=and_01740b92_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0028dd7e_(endianswapper_0028dd7e_in, endianswapper_0028dd7e_out);
input	[31:0]	endianswapper_0028dd7e_in;
output	[31:0]	endianswapper_0028dd7e_out;
assign endianswapper_0028dd7e_out=endianswapper_0028dd7e_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01d86eff_(endianswapper_01d86eff_in, endianswapper_01d86eff_out);
input	[31:0]	endianswapper_01d86eff_in;
output	[31:0]	endianswapper_01d86eff_out;
assign endianswapper_01d86eff_out=endianswapper_01d86eff_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_y(bus_01b39c13_, bus_00cbdebd_, bus_011dcc30_, bus_010e3232_, bus_01eeab7b_, bus_004ad489_, bus_005121d5_, bus_003e8ee7_, bus_01fa608d_, bus_00c26f7f_, bus_014cc37d_, bus_01a2d704_, bus_0083d374_, bus_01fd7e94_, bus_014dbaef_);
input		bus_01b39c13_;
input		bus_00cbdebd_;
input		bus_011dcc30_;
input	[31:0]	bus_010e3232_;
input		bus_01eeab7b_;
input	[31:0]	bus_004ad489_;
input		bus_005121d5_;
input	[31:0]	bus_003e8ee7_;
input		bus_01fa608d_;
input	[31:0]	bus_00c26f7f_;
input		bus_014cc37d_;
input	[31:0]	bus_01a2d704_;
input		bus_0083d374_;
input	[31:0]	bus_01fd7e94_;
output	[31:0]	bus_014dbaef_;
wire	[31:0]	endianswapper_0028dd7e_out;
wire	[31:0]	mux_018d4beb_u0;
wire	[31:0]	endianswapper_01d86eff_out;
wire		or_01de28cd_u0;
reg	[31:0]	stateVar_count_y_u4=32'h0;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0028dd7e_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0028dd7e__1(.endianswapper_0028dd7e_in(mux_018d4beb_u0), 
  .endianswapper_0028dd7e_out(endianswapper_0028dd7e_out));
assign mux_018d4beb_u0=({32{bus_011dcc30_}}&bus_010e3232_)|({32{bus_01eeab7b_}}&32'h0)|({32{bus_005121d5_}}&bus_003e8ee7_)|({32{bus_01fa608d_}}&32'h0)|({32{bus_014cc37d_}}&bus_01a2d704_)|({32{bus_0083d374_}}&32'h0);
assign bus_014dbaef_=endianswapper_01d86eff_out;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01d86eff_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01d86eff__1(.endianswapper_01d86eff_in(stateVar_count_y_u4), 
  .endianswapper_01d86eff_out(endianswapper_01d86eff_out));
assign or_01de28cd_u0=bus_011dcc30_|bus_01eeab7b_|bus_005121d5_|bus_01fa608d_|bus_014cc37d_|bus_0083d374_;
always @(posedge bus_01b39c13_ or posedge bus_00cbdebd_)
begin
if (bus_00cbdebd_)
stateVar_count_y_u4<=32'h0;
else if (or_01de28cd_u0)
stateVar_count_y_u4<=endianswapper_0028dd7e_out;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
input		CLK;
input		EN;
input		WE;
input	[31:0]	ADDR;
input	[7:0]	DIN;
output	[7:0]	DOUT;
output		DONE;
wire		we_0;
wire	[7:0]	pre_dout_0;
wire		we_1;
wire	[7:0]	pre_dout_1;
reg	[7:0]	mux_out;
reg	[31:0]	ADDR_reg;
reg		wen_done;
reg		ren_done;
assign we_0=WE&(ADDR[31:14]==18'h0);
assign we_1=WE&(ADDR[31:14]==18'h1);
always @(posedge CLK)
begin
ADDR_reg<=ADDR;
end
always @(ADDR_reg or pre_dout_0 or pre_dout_1)
begin
case (ADDR_reg[31:14])18'd0:mux_out=pre_dout_0;
18'd1:mux_out=pre_dout_1;
default:mux_out=8'h0;
endcase end
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
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_90(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[0]), 
  .DO(pre_dout_0[0]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_91(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[1]), 
  .DO(pre_dout_0[1]));
//  Memory array element: COL: 0, ROW: 2
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_92(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[2]), 
  .DO(pre_dout_0[2]));
//  Memory array element: COL: 0, ROW: 3
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_93(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[3]), 
  .DO(pre_dout_0[3]));
//  Memory array element: COL: 0, ROW: 4
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_94(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[4]), 
  .DO(pre_dout_0[4]));
//  Memory array element: COL: 0, ROW: 5
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_95(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[5]), 
  .DO(pre_dout_0[5]));
//  Memory array element: COL: 0, ROW: 6
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_96(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[6]), 
  .DO(pre_dout_0[6]));
//  Memory array element: COL: 0, ROW: 7
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_97(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[7]), 
  .DO(pre_dout_0[7]));
//  Memory array element: COL: 1, ROW: 0
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_98(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[0]), 
  .DO(pre_dout_1[0]));
//  Memory array element: COL: 1, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_99(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[1]), 
  .DO(pre_dout_1[1]));
//  Memory array element: COL: 1, ROW: 2
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_100(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[2]), 
  .DO(pre_dout_1[2]));
//  Memory array element: COL: 1, ROW: 3
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_101(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[3]), 
  .DO(pre_dout_1[3]));
//  Memory array element: COL: 1, ROW: 4
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_102(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[4]), 
  .DO(pre_dout_1[4]));
//  Memory array element: COL: 1, ROW: 5
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_103(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[5]), 
  .DO(pre_dout_1[5]));
//  Memory array element: COL: 1, ROW: 6
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_104(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[6]), 
  .DO(pre_dout_1[6]));
//  Memory array element: COL: 1, ROW: 7
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  )RAMB16_S1_instance_105(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[7]), 
  .DO(pre_dout_1[7]));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_017e6bfa_(CLK_u23, bus_01f0bda8_, bus_0038e6f1_, bus_0089aa08_, bus_01aa3af3_, bus_009a2ef9_, bus_00c12ae9_, bus_01043094_, bus_01e84628_);
input		CLK_u23;
input		bus_01f0bda8_;
input	[31:0]	bus_0038e6f1_;
input	[2:0]	bus_0089aa08_;
input		bus_01aa3af3_;
input		bus_009a2ef9_;
input	[7:0]	bus_00c12ae9_;
output	[7:0]	bus_01043094_;
output		bus_01e84628_;
reg		logicalMem_11fc584_re_delay0_u0=1'h0;
wire		or_01d1eaa6_u0;
reg		logicalMem_11fc584_we_delay0_u0=1'h0;
wire	[7:0]	bus_01d0c624_;
wire		or_013c7ea4_u0;
always @(posedge CLK_u23 or posedge bus_01f0bda8_)
begin
if (bus_01f0bda8_)
logicalMem_11fc584_re_delay0_u0<=1'h0;
else logicalMem_11fc584_re_delay0_u0<=bus_01aa3af3_;
end
assign or_01d1eaa6_u0=bus_01aa3af3_|bus_009a2ef9_;
always @(posedge CLK_u23 or posedge bus_01f0bda8_)
begin
if (bus_01f0bda8_)
logicalMem_11fc584_we_delay0_u0<=1'h0;
else logicalMem_11fc584_we_delay0_u0<=bus_009a2ef9_;
end
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44_instance0(.CLK(CLK_u23), 
  .EN(or_01d1eaa6_u0), .WE(bus_009a2ef9_), .ADDR(bus_0038e6f1_), .DIN(bus_00c12ae9_), 
  .DOUT(bus_01d0c624_), .DONE());
assign or_013c7ea4_u0=logicalMem_11fc584_re_delay0_u0|logicalMem_11fc584_we_delay0_u0;
assign bus_01043094_=bus_01d0c624_;
assign bus_01e84628_=or_013c7ea4_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0129ceb5_(bus_01688cf5_, bus_00fe4b66_, bus_00972f33_, bus_01ad15c2_, bus_016b099c_, bus_01765e94_, bus_00667bed_, bus_0131f1c8_, bus_01d30872_, bus_01fdb161_, bus_0136b0e9_, bus_004a3e38_, bus_006f8f15_, bus_00929fb4_, bus_012d8749_, bus_016c695e_, bus_00e794cd_, bus_0043e7a5_, bus_01cfacb2_, bus_00888c9d_, bus_003ae01e_);
input		bus_01688cf5_;
input		bus_00fe4b66_;
input		bus_00972f33_;
input	[31:0]	bus_01ad15c2_;
input		bus_016b099c_;
input		bus_01765e94_;
input	[31:0]	bus_00667bed_;
input	[31:0]	bus_0131f1c8_;
input	[2:0]	bus_01d30872_;
input		bus_01fdb161_;
input	[31:0]	bus_0136b0e9_;
input	[2:0]	bus_004a3e38_;
output	[31:0]	bus_006f8f15_;
output	[31:0]	bus_00929fb4_;
output		bus_012d8749_;
output		bus_016c695e_;
output	[2:0]	bus_00e794cd_;
output	[31:0]	bus_0043e7a5_;
output		bus_01cfacb2_;
output	[31:0]	bus_00888c9d_;
output		bus_003ae01e_;
wire		or_01b857a5_u0;
wire		not_018bc504_u0;
reg		done_qual_u54_u0=1'h0;
wire		and_000b4035_u0;
wire		and_0044d11f_u0;
wire	[31:0]	mux_015bedf4_u0;
wire		or_01a7ec02_u0;
wire		or_01b17aff_u0;
reg		done_qual_u55_u0=1'h0;
wire	[31:0]	mux_00ad4095_u0;
wire		not_01642a70_u0;
wire		or_0042c4d8_u0;
assign or_01b857a5_u0=bus_01fdb161_|done_qual_u54_u0;
assign not_018bc504_u0=~bus_00972f33_;
always @(posedge bus_01688cf5_)
begin
if (bus_00fe4b66_)
done_qual_u54_u0<=1'h0;
else done_qual_u54_u0<=bus_01fdb161_;
end
assign and_000b4035_u0=or_01b17aff_u0&bus_00972f33_;
assign and_0044d11f_u0=or_01b857a5_u0&bus_00972f33_;
assign mux_015bedf4_u0=(or_01a7ec02_u0)?bus_0131f1c8_:bus_0136b0e9_;
assign or_01a7ec02_u0=bus_016b099c_|bus_01765e94_;
assign or_01b17aff_u0=or_01a7ec02_u0|done_qual_u55_u0;
always @(posedge bus_01688cf5_)
begin
if (bus_00fe4b66_)
done_qual_u55_u0<=1'h0;
else done_qual_u55_u0<=or_01a7ec02_u0;
end
assign mux_00ad4095_u0=({32{bus_01765e94_}}&32'h0);
assign bus_006f8f15_={mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0], mux_00ad4095_u0[0]};
assign bus_00929fb4_=mux_015bedf4_u0;
assign bus_012d8749_=bus_01765e94_;
assign bus_016c695e_=or_0042c4d8_u0;
assign bus_00e794cd_=3'h1;
assign bus_0043e7a5_=bus_01ad15c2_;
assign bus_01cfacb2_=and_000b4035_u0;
assign bus_00888c9d_=bus_01ad15c2_;
assign bus_003ae01e_=and_0044d11f_u0;
assign not_01642a70_u0=~bus_00972f33_;
assign or_0042c4d8_u0=or_01a7ec02_u0|bus_01fdb161_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_007c5369_(bus_01abb265_, bus_014d1521_, bus_0112c2f1_, bus_01b13586_, bus_006bc83c_, bus_01d483aa_, bus_014b14d1_, bus_002b849b_, bus_0105fb11_, bus_019b8fc0_, bus_019dfbaa_, bus_01312cc7_, bus_00e43103_, bus_0099d30d_, bus_005ce7d5_, bus_005945e8_, bus_010edc33_, bus_01a6530f_, bus_00f5747a_);
input		bus_01abb265_;
input		bus_014d1521_;
input		bus_0112c2f1_;
input	[7:0]	bus_01b13586_;
input		bus_006bc83c_;
input	[7:0]	bus_01d483aa_;
input	[31:0]	bus_014b14d1_;
input	[2:0]	bus_002b849b_;
input		bus_0105fb11_;
input	[31:0]	bus_019b8fc0_;
input	[2:0]	bus_019dfbaa_;
output	[7:0]	bus_01312cc7_;
output	[31:0]	bus_00e43103_;
output		bus_0099d30d_;
output		bus_005ce7d5_;
output	[2:0]	bus_005945e8_;
output		bus_010edc33_;
output	[7:0]	bus_01a6530f_;
output		bus_00f5747a_;
wire	[7:0]	mux_01929439_u0;
wire		and_0134cb86_u0;
wire		and_00522e6f_u0;
wire	[31:0]	mux_0015cc7a_u0;
wire		or_013013d0_u0;
reg		done_qual_u56_u0=1'h0;
wire		not_00856caf_u0;
wire		or_018c53ef_u0;
wire		not_004bf352_u0;
wire		or_014f67ce_u0;
reg		done_qual_u57_u0=1'h0;
assign mux_01929439_u0=({8{bus_006bc83c_}}&bus_01d483aa_);
assign and_0134cb86_u0=or_014f67ce_u0&bus_0112c2f1_;
assign and_00522e6f_u0=or_013013d0_u0&bus_0112c2f1_;
assign mux_0015cc7a_u0=(bus_006bc83c_)?bus_014b14d1_:bus_019b8fc0_;
assign or_013013d0_u0=bus_006bc83c_|done_qual_u57_u0;
assign bus_01312cc7_=mux_01929439_u0;
assign bus_00e43103_=mux_0015cc7a_u0;
assign bus_0099d30d_=bus_006bc83c_;
assign bus_005ce7d5_=or_018c53ef_u0;
assign bus_005945e8_=3'h1;
assign bus_010edc33_=and_00522e6f_u0;
assign bus_01a6530f_=bus_01b13586_;
assign bus_00f5747a_=and_0134cb86_u0;
always @(posedge bus_01abb265_)
begin
if (bus_014d1521_)
done_qual_u56_u0<=1'h0;
else done_qual_u56_u0<=bus_0105fb11_;
end
assign not_00856caf_u0=~bus_0112c2f1_;
assign or_018c53ef_u0=bus_006bc83c_|bus_0105fb11_;
assign not_004bf352_u0=~bus_0112c2f1_;
assign or_014f67ce_u0=bus_0105fb11_|done_qual_u56_u0;
always @(posedge bus_01abb265_)
begin
if (bus_014d1521_)
done_qual_u57_u0<=1'h0;
else done_qual_u57_u0<=bus_006bc83c_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_doneCount_bin(CLK, RESET, GO, RESULT, RESULT_u670, RESULT_u671, RESULT_u672, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u670;
output		RESULT_u671;
output	[31:0]	RESULT_u672;
output		DONE;
reg		reg_01fc6c8c_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01fc6c8c_u0<=1'h0;
else reg_01fc6c8c_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u670=32'h0;
assign RESULT_u671=GO;
assign RESULT_u672=32'h0;
assign DONE=reg_01fc6c8c_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00169eff_(CLK_u24, bus_00809c2b_, bus_00ea6255_, bus_015cce02_, bus_00c8b10c_, bus_016a3bdc_, bus_00c49f38_, bus_01df9fbf_, bus_00b137c6_);
input		CLK_u24;
input		bus_00809c2b_;
input	[31:0]	bus_00ea6255_;
input	[2:0]	bus_015cce02_;
input		bus_00c8b10c_;
input		bus_016a3bdc_;
input	[7:0]	bus_00c49f38_;
output	[7:0]	bus_01df9fbf_;
output		bus_00b137c6_;
reg		logicalMem_d978e0_we_delay0_u0=1'h0;
reg		logicalMem_d978e0_re_delay0_u0=1'h0;
wire	[7:0]	bus_0188e5a1_;
wire		or_01dfbb29_u0;
wire		or_0036c0e0_u0;
always @(posedge CLK_u24 or posedge bus_00809c2b_)
begin
if (bus_00809c2b_)
logicalMem_d978e0_we_delay0_u0<=1'h0;
else logicalMem_d978e0_we_delay0_u0<=bus_016a3bdc_;
end
always @(posedge CLK_u24 or posedge bus_00809c2b_)
begin
if (bus_00809c2b_)
logicalMem_d978e0_re_delay0_u0<=1'h0;
else logicalMem_d978e0_re_delay0_u0<=bus_00c8b10c_;
end
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44_instance1(.CLK(CLK_u24), 
  .EN(or_0036c0e0_u0), .WE(bus_016a3bdc_), .ADDR(bus_00ea6255_), .DIN(bus_00c49f38_), 
  .DOUT(bus_0188e5a1_), .DONE());
assign or_01dfbb29_u0=logicalMem_d978e0_re_delay0_u0|logicalMem_d978e0_we_delay0_u0;
assign or_0036c0e0_u0=bus_00c8b10c_|bus_016a3bdc_;
assign bus_01df9fbf_=bus_0188e5a1_;
assign bus_00b137c6_=or_01dfbb29_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_init(bus_01d08b7a_, bus_00752299_, bus_0089bf0f_, bus_01ad28e9_, bus_01e9c568_);
input		bus_01d08b7a_;
input		bus_00752299_;
input		bus_0089bf0f_;
input		bus_01ad28e9_;
output		bus_01e9c568_;
reg		stateVar_state_init_u1=1'h0;
always @(posedge bus_01d08b7a_ or posedge bus_00752299_)
begin
if (bus_00752299_)
stateVar_state_init_u1<=1'h0;
else if (bus_0089bf0f_)
stateVar_state_init_u1<=bus_01ad28e9_;
end
assign bus_01e9c568_=stateVar_state_init_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0164d133_(endianswapper_0164d133_in, endianswapper_0164d133_out);
input	[31:0]	endianswapper_0164d133_in;
output	[31:0]	endianswapper_0164d133_out;
assign endianswapper_0164d133_out=endianswapper_0164d133_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0154fbe6_(endianswapper_0154fbe6_in, endianswapper_0154fbe6_out);
input	[31:0]	endianswapper_0154fbe6_in;
output	[31:0]	endianswapper_0154fbe6_out;
assign endianswapper_0154fbe6_out=endianswapper_0154fbe6_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_x(bus_00c5a466_, bus_01ac386c_, bus_0032c0af_, bus_01107461_, bus_01c43cc1_, bus_001134ad_, bus_00ff65e6_);
input		bus_00c5a466_;
input		bus_01ac386c_;
input		bus_0032c0af_;
input	[31:0]	bus_01107461_;
input		bus_01c43cc1_;
input	[31:0]	bus_001134ad_;
output	[31:0]	bus_00ff65e6_;
wire	[31:0]	endianswapper_0164d133_out;
reg	[31:0]	stateVar_centre_x_u3=32'h0;
wire		or_01ae08a8_u0;
wire	[31:0]	endianswapper_0154fbe6_out;
wire	[31:0]	mux_01b68c11_u0;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0164d133_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0164d133__1(.endianswapper_0164d133_in(mux_01b68c11_u0), 
  .endianswapper_0164d133_out(endianswapper_0164d133_out));
always @(posedge bus_00c5a466_ or posedge bus_01ac386c_)
begin
if (bus_01ac386c_)
stateVar_centre_x_u3<=32'h0;
else if (or_01ae08a8_u0)
stateVar_centre_x_u3<=endianswapper_0164d133_out;
end
assign or_01ae08a8_u0=bus_0032c0af_|bus_01c43cc1_;
assign bus_00ff65e6_=endianswapper_0154fbe6_out;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0154fbe6_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0154fbe6__1(.endianswapper_0154fbe6_in(stateVar_centre_x_u3), 
  .endianswapper_0154fbe6_out(endianswapper_0154fbe6_out));
assign mux_01b68c11_u0=(bus_0032c0af_)?32'h9f:bus_001134ad_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00811816_(endianswapper_00811816_in, endianswapper_00811816_out);
input	[31:0]	endianswapper_00811816_in;
output	[31:0]	endianswapper_00811816_out;
assign endianswapper_00811816_out=endianswapper_00811816_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_015f623e_(endianswapper_015f623e_in, endianswapper_015f623e_out);
input	[31:0]	endianswapper_015f623e_in;
output	[31:0]	endianswapper_015f623e_out;
assign endianswapper_015f623e_out=endianswapper_015f623e_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_count(bus_00afc8d1_, bus_00a93491_, bus_013b0bd7_, bus_006a7195_, bus_01059746_, bus_00eb87b3_, bus_00e8bf11_, bus_01410845_, bus_0063014e_);
input		bus_00afc8d1_;
input		bus_00a93491_;
input		bus_013b0bd7_;
input	[31:0]	bus_006a7195_;
input		bus_01059746_;
input	[31:0]	bus_00eb87b3_;
input		bus_00e8bf11_;
input	[31:0]	bus_01410845_;
output	[31:0]	bus_0063014e_;
wire	[31:0]	mux_018ccea8_u0;
reg	[31:0]	stateVar_count_u4=32'h0;
wire	[31:0]	endianswapper_00811816_out;
wire	[31:0]	endianswapper_015f623e_out;
wire		or_01511801_u0;
assign bus_0063014e_=endianswapper_00811816_out;
assign mux_018ccea8_u0=({32{bus_013b0bd7_}}&bus_006a7195_)|({32{bus_01059746_}}&bus_00eb87b3_)|({32{bus_00e8bf11_}}&32'h0);
always @(posedge bus_00afc8d1_ or posedge bus_00a93491_)
begin
if (bus_00a93491_)
stateVar_count_u4<=32'h0;
else if (or_01511801_u0)
stateVar_count_u4<=endianswapper_015f623e_out;
end
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00811816_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00811816__1(.endianswapper_00811816_in(stateVar_count_u4), 
  .endianswapper_00811816_out(endianswapper_00811816_out));
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_015f623e_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_015f623e__1(.endianswapper_015f623e_in(mux_018ccea8_u0), 
  .endianswapper_015f623e_out(endianswapper_015f623e_out));
assign or_01511801_u0=bus_013b0bd7_|bus_01059746_|bus_00e8bf11_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_send_bin(CLK, RESET, GO, port_00f484c3_, port_00f63402_, port_009d0a6f_, port_001f3750_, RESULT, RESULT_u673, RESULT_u674, RESULT_u675, RESULT_u676, RESULT_u677, RESULT_u678, RESULT_u679, RESULT_u680, RESULT_u681, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00f484c3_;
input	[31:0]	port_00f63402_;
input		port_009d0a6f_;
input	[31:0]	port_001f3750_;
output		RESULT;
output	[31:0]	RESULT_u673;
output		RESULT_u674;
output	[31:0]	RESULT_u675;
output		RESULT_u676;
output	[31:0]	RESULT_u677;
output	[2:0]	RESULT_u678;
output	[15:0]	RESULT_u679;
output	[31:0]	RESULT_u680;
output		RESULT_u681;
output		DONE;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u66;
wire	[31:0]	add;
wire	[31:0]	add_u348;
reg		done_cache_u39=1'h0;
wire		or_u331_u0;
wire		and_u1134_u0;
wire	[31:0]	add_u349;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_a_signed;
wire		equals;
wire		not_u233_u0;
wire		and_u1135_u0;
wire		and_u1136_u0;
wire	[31:0]	add_u350;
wire		and_u1137_u0;
wire		and_u1138_u0;
wire	[31:0]	mux_u356;
wire	[31:0]	mux_u357_u0;
wire	[31:0]	simplePinWrite;
wire	[15:0]	simplePinWrite_u158;
wire		simplePinWrite_u159;
reg	[31:0]	syncEnable_u278=32'h0;
reg		reg_000125af_u0=1'h0;
reg		reg_01442abe_u0=1'h0;
assign subtract={port_00f484c3_[26:0], 5'b0}-{port_00f484c3_[29:0], 2'b0};
assign subtract_u66=subtract-port_00f484c3_;
assign add=subtract_u66+port_00f63402_;
assign add_u348=32'h0+add;
always @(posedge CLK or posedge reg_01442abe_u0 or posedge or_u331_u0)
begin
if (or_u331_u0)
done_cache_u39<=1'h0;
else if (reg_01442abe_u0)
done_cache_u39<=1'h1;
else done_cache_u39<=done_cache_u39;
end
assign or_u331_u0=and_u1134_u0|RESET;
assign and_u1134_u0=done_cache_u39&port_009d0a6f_;
assign add_u349=port_00f63402_+32'h1;
assign equals_a_signed=add_u349;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign not_u233_u0=~equals;
assign and_u1135_u0=GO&equals;
assign and_u1136_u0=GO&not_u233_u0;
assign add_u350=port_00f484c3_+32'h1;
assign and_u1137_u0=and_u1135_u0&GO;
assign and_u1138_u0=and_u1136_u0&GO;
assign mux_u356=(and_u1137_u0)?add_u350:port_00f484c3_;
assign mux_u357_u0=(and_u1137_u0)?32'h0:add_u349;
assign simplePinWrite=port_001f3750_;
assign simplePinWrite_u158=16'h1&{16{1'h1}};
assign simplePinWrite_u159=reg_000125af_u0&{1{reg_000125af_u0}};
always @(posedge CLK)
begin
if (GO)
syncEnable_u278<=add_u348;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_000125af_u0<=1'h0;
else reg_000125af_u0<=reg_01442abe_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01442abe_u0<=1'h0;
else reg_01442abe_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u673=mux_u356;
assign RESULT_u674=GO;
assign RESULT_u675=mux_u357_u0;
assign RESULT_u676=reg_01442abe_u0;
assign RESULT_u677=syncEnable_u278;
assign RESULT_u678=3'h1;
assign RESULT_u679=simplePinWrite_u158;
assign RESULT_u680=simplePinWrite;
assign RESULT_u681=simplePinWrite_u159;
assign DONE=reg_000125af_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_initialise(CLK, RESET, GO, RESULT, RESULT_u682, RESULT_u683, RESULT_u684, RESULT_u685, RESULT_u686, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u682;
output		RESULT_u683;
output		RESULT_u684;
output		RESULT_u685;
output	[31:0]	RESULT_u686;
output		DONE;
reg		reg_008871cb_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_008871cb_u0<=1'h0;
else reg_008871cb_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u682=32'h9f;
assign RESULT_u683=GO;
assign RESULT_u684=1'h0;
assign RESULT_u685=GO;
assign RESULT_u686=32'h4c;
assign DONE=reg_008871cb_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s3(bus_01b5159b_, bus_019d877a_, bus_00d13f1b_, bus_00396570_, bus_014b4f99_);
input		bus_01b5159b_;
input		bus_019d877a_;
input		bus_00d13f1b_;
input		bus_00396570_;
output		bus_014b4f99_;
reg		stateVar_state_s3_u6=1'h0;
always @(posedge bus_01b5159b_ or posedge bus_019d877a_)
begin
if (bus_019d877a_)
stateVar_state_s3_u6<=1'h0;
else if (bus_00d13f1b_)
stateVar_state_s3_u6<=bus_00396570_;
end
assign bus_014b4f99_=stateVar_state_s3_u6;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s9(bus_0149d8c6_, bus_0136f073_, bus_00f5d1e2_, bus_012c4a77_, bus_00b73f11_);
input		bus_0149d8c6_;
input		bus_0136f073_;
input		bus_00f5d1e2_;
input		bus_012c4a77_;
output		bus_00b73f11_;
reg		stateVar_state_s9_u1=1'h0;
always @(posedge bus_0149d8c6_ or posedge bus_0136f073_)
begin
if (bus_0136f073_)
stateVar_state_s9_u1<=1'h0;
else if (bus_00f5d1e2_)
stateVar_state_s9_u1<=bus_012c4a77_;
end
assign bus_00b73f11_=stateVar_state_s9_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_004a6cb7_(endianswapper_004a6cb7_in, endianswapper_004a6cb7_out);
input	[31:0]	endianswapper_004a6cb7_in;
output	[31:0]	endianswapper_004a6cb7_out;
assign endianswapper_004a6cb7_out=endianswapper_004a6cb7_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0195d0d6_(endianswapper_0195d0d6_in, endianswapper_0195d0d6_out);
input	[31:0]	endianswapper_0195d0d6_in;
output	[31:0]	endianswapper_0195d0d6_out;
assign endianswapper_0195d0d6_out=endianswapper_0195d0d6_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_binValue(bus_001cd8f2_, bus_01e720f5_, bus_01bd1544_, bus_00bb9a0a_, bus_001319e0_);
input		bus_001cd8f2_;
input		bus_01e720f5_;
input		bus_01bd1544_;
input	[31:0]	bus_00bb9a0a_;
output	[31:0]	bus_001319e0_;
wire	[31:0]	endianswapper_004a6cb7_out;
reg	[31:0]	stateVar_binValue_u1=32'h0;
wire	[31:0]	endianswapper_0195d0d6_out;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_004a6cb7_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_004a6cb7__1(.endianswapper_004a6cb7_in(stateVar_binValue_u1), 
  .endianswapper_004a6cb7_out(endianswapper_004a6cb7_out));
always @(posedge bus_001cd8f2_ or posedge bus_01e720f5_)
begin
if (bus_01e720f5_)
stateVar_binValue_u1<=32'h0;
else if (bus_01bd1544_)
stateVar_binValue_u1<=endianswapper_0195d0d6_out;
end
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0195d0d6_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0195d0d6__1(.endianswapper_0195d0d6_in(bus_00bb9a0a_), 
  .endianswapper_0195d0d6_out(endianswapper_0195d0d6_out));
assign bus_001319e0_=endianswapper_004a6cb7_out;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00b28bb3_(bus_018c66ee_, bus_00b9b4e0_, bus_01158031_, bus_0011befd_, bus_00a2cfa4_, bus_00ba28af_, bus_0045f35f_, bus_007008ed_, bus_0008f607_, bus_0111f902_, bus_00ac9a64_, bus_015c430e_, bus_013e718a_, bus_01d147d6_, bus_00ee55dc_, bus_005048a9_);
input		bus_018c66ee_;
input		bus_00b9b4e0_;
input		bus_01158031_;
input	[31:0]	bus_0011befd_;
input		bus_00a2cfa4_;
input		bus_00ba28af_;
input	[31:0]	bus_0045f35f_;
input	[31:0]	bus_007008ed_;
input	[2:0]	bus_0008f607_;
output	[31:0]	bus_0111f902_;
output	[31:0]	bus_00ac9a64_;
output		bus_015c430e_;
output		bus_013e718a_;
output	[2:0]	bus_01d147d6_;
output	[31:0]	bus_00ee55dc_;
output		bus_005048a9_;
wire		or_0075a16a_u0;
assign bus_0111f902_=bus_0045f35f_;
assign bus_00ac9a64_=bus_007008ed_;
assign bus_015c430e_=bus_00ba28af_;
assign bus_013e718a_=or_0075a16a_u0;
assign bus_01d147d6_=3'h1;
assign bus_00ee55dc_=bus_0011befd_;
assign bus_005048a9_=bus_01158031_;
assign or_0075a16a_u0=bus_00a2cfa4_|bus_00ba28af_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s8(bus_00290b81_, bus_00b24b77_, bus_0175442e_, bus_016eea5e_, bus_01a94b5f_);
input		bus_00290b81_;
input		bus_00b24b77_;
input		bus_0175442e_;
input		bus_016eea5e_;
output		bus_01a94b5f_;
reg		stateVar_state_s8_u1=1'h0;
assign bus_01a94b5f_=stateVar_state_s8_u1;
always @(posedge bus_00290b81_ or posedge bus_00b24b77_)
begin
if (bus_00b24b77_)
stateVar_state_s8_u1<=1'h0;
else if (bus_0175442e_)
stateVar_state_s8_u1<=bus_016eea5e_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s7(bus_014c648d_, bus_005d8ca0_, bus_00832e88_, bus_00d77615_, bus_01b4a830_);
input		bus_014c648d_;
input		bus_005d8ca0_;
input		bus_00832e88_;
input		bus_00d77615_;
output		bus_01b4a830_;
reg		stateVar_state_s7_u1=1'h0;
assign bus_01b4a830_=stateVar_state_s7_u1;
always @(posedge bus_014c648d_ or posedge bus_005d8ca0_)
begin
if (bus_005d8ca0_)
stateVar_state_s7_u1<=1'h0;
else if (bus_00832e88_)
stateVar_state_s7_u1<=bus_00d77615_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_45(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
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
  )RAMB16_S18_instance_106(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[15:0]), 
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
  )RAMB16_S18_instance_107(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI({2'b0, DIN[31:18]}), 
  .DO({extras_0, pre_dout_0[31:18]}), .DIP(2'b0), .DOP(parOut));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_01275630_(CLK_u25, bus_01e27912_, bus_009e2fd1_, bus_012ca5b1_, bus_006b7b99_, bus_0095f71c_, bus_007d21b0_, bus_007fbaa6_, bus_012eae2a_);
input		CLK_u25;
input		bus_01e27912_;
input	[31:0]	bus_009e2fd1_;
input	[2:0]	bus_012ca5b1_;
input		bus_006b7b99_;
input		bus_0095f71c_;
input	[31:0]	bus_007d21b0_;
output	[31:0]	bus_007fbaa6_;
output		bus_012eae2a_;
wire		or_01ea1a91_u0;
reg		logicalMem_1e44e34_re_delay0_u0=1'h0;
reg		logicalMem_1e44e34_we_delay0_u0=1'h0;
wire	[31:0]	bus_0070fada_;
wire		or_010d8b99_u0;
assign or_01ea1a91_u0=bus_006b7b99_|bus_0095f71c_;
always @(posedge CLK_u25 or posedge bus_01e27912_)
begin
if (bus_01e27912_)
logicalMem_1e44e34_re_delay0_u0<=1'h0;
else logicalMem_1e44e34_re_delay0_u0<=bus_006b7b99_;
end
always @(posedge CLK_u25 or posedge bus_01e27912_)
begin
if (bus_01e27912_)
logicalMem_1e44e34_we_delay0_u0<=1'h0;
else logicalMem_1e44e34_we_delay0_u0<=bus_0095f71c_;
end
assign bus_007fbaa6_=bus_0070fada_;
assign bus_012eae2a_=or_010d8b99_u0;
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_45 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_45_instance0(.CLK(CLK_u25), 
  .EN(or_01ea1a91_u0), .WE(bus_0095f71c_), .ADDR(bus_009e2fd1_), .DIN(bus_007d21b0_), 
  .DOUT(bus_0070fada_), .DONE());
assign or_010d8b99_u0=logicalMem_1e44e34_re_delay0_u0|logicalMem_1e44e34_we_delay0_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_forge_memory_4096x32_46(CLK, ENA, WEA, DINA, ENB, WEB, DINB, ADDRA, ADDRB, DOUTA, DOUTB, DONEA, DONEB);
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
output	[31:0]	DOUTB;
output		DONEA;
output		DONEB;
wire		wea_0;
wire		web_0;
wire	[31:0]	pre_douta_0;
wire	[31:0]	pre_doutb_0;
reg	[31:0]	mux_outa;
reg	[31:0]	mux_outb;
reg	[31:0]	ADDRA_reg;
reg	[31:0]	ADDRB_reg;
reg		web_done;
reg		rea_done;
reg		reb_done;
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
reb_done<=ENB;
end
assign DONEA=wea_done|rea_done;
assign DONEB=web_done|reb_done;
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_44(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[3:0]), .DOA(pre_douta_0[3:0]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[3:0]), .DOB(pre_doutb_0[3:0]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_45(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[7:4]), .DOA(pre_douta_0[7:4]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[7:4]), .DOB(pre_doutb_0[7:4]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_46(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[11:8]), .DOA(pre_douta_0[11:8]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[11:8]), .DOB(pre_doutb_0[11:8]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_47(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[15:12]), .DOA(pre_douta_0[15:12]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[15:12]), 
  .DOB(pre_doutb_0[15:12]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_48(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[19:16]), .DOA(pre_douta_0[19:16]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[19:16]), 
  .DOB(pre_doutb_0[19:16]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_49(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[23:20]), .DOA(pre_douta_0[23:20]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[23:20]), 
  .DOB(pre_doutb_0[23:20]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_50(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[27:24]), .DOA(pre_douta_0[27:24]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[27:24]), 
  .DOB(pre_doutb_0[27:24]));
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S4_S4_instance_51(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[31:28]), .DOA(pre_douta_0[31:28]), 
  .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[31:28]), 
  .DOB(pre_doutb_0[31:28]));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_0069da77_(CLK_u26, bus_01429da7_, bus_00d8258a_, bus_00826d0c_, bus_01d91422_, bus_003a2588_, bus_0045baa4_, bus_003ea82b_, bus_01893406_, bus_00456f1c_, bus_01cabd6c_, bus_000762b5_, bus_00b8f971_, bus_01e08800_, bus_0081b941_, bus_00e16980_);
input		CLK_u26;
input		bus_01429da7_;
input	[31:0]	bus_00d8258a_;
input	[2:0]	bus_00826d0c_;
input		bus_01d91422_;
input		bus_003a2588_;
input	[31:0]	bus_0045baa4_;
input	[31:0]	bus_003ea82b_;
input	[2:0]	bus_01893406_;
input		bus_00456f1c_;
input		bus_01cabd6c_;
input	[31:0]	bus_000762b5_;
output	[31:0]	bus_00b8f971_;
output		bus_01e08800_;
output	[31:0]	bus_0081b941_;
output		bus_00e16980_;
wire		or_00a81d19_u0;
wire	[31:0]	bus_00033922_;
wire	[31:0]	bus_000bb4ca_;
reg		logicalMem_17b162_we_delay0_u0=1'h0;
wire		or_015ba514_u0;
wire		or_007121a6_u0;
reg		logicalMem_17b162_we_delay0_u1_u0=1'h0;
reg		logicalMem_17b162_re_delay0_u0=1'h0;
wire		or_0068eee9_u0;
reg		logicalMem_17b162_re_delay0_u1_u0=1'h0;
assign or_00a81d19_u0=logicalMem_17b162_re_delay0_u0|logicalMem_17b162_we_delay0_u1_u0;
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_4096x32_46 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_4096x32_46_instance0(.CLK(CLK_u26), 
  .ENA(or_0068eee9_u0), .WEA(bus_003a2588_), .DINA(bus_0045baa4_), .ADDRA(bus_00d8258a_), 
  .DOUTA(bus_00033922_), .DONEA(), .ENB(or_007121a6_u0), .WEB(bus_01cabd6c_), .DINB(bus_000762b5_), 
  .ADDRB(bus_003ea82b_), .DOUTB(bus_000bb4ca_), .DONEB());
always @(posedge CLK_u26 or posedge bus_01429da7_)
begin
if (bus_01429da7_)
logicalMem_17b162_we_delay0_u0<=1'h0;
else logicalMem_17b162_we_delay0_u0<=bus_003a2588_;
end
assign or_015ba514_u0=logicalMem_17b162_re_delay0_u1_u0|logicalMem_17b162_we_delay0_u0;
assign or_007121a6_u0=bus_00456f1c_|bus_01cabd6c_;
always @(posedge CLK_u26 or posedge bus_01429da7_)
begin
if (bus_01429da7_)
logicalMem_17b162_we_delay0_u1_u0<=1'h0;
else logicalMem_17b162_we_delay0_u1_u0<=bus_01cabd6c_;
end
assign bus_00b8f971_=bus_00033922_;
assign bus_01e08800_=or_015ba514_u0;
assign bus_0081b941_=bus_000bb4ca_;
assign bus_00e16980_=or_00a81d19_u0;
always @(posedge CLK_u26 or posedge bus_01429da7_)
begin
if (bus_01429da7_)
logicalMem_17b162_re_delay0_u0<=1'h0;
else logicalMem_17b162_re_delay0_u0<=bus_00456f1c_;
end
assign or_0068eee9_u0=bus_01d91422_|bus_003a2588_;
always @(posedge CLK_u26 or posedge bus_01429da7_)
begin
if (bus_01429da7_)
logicalMem_17b162_re_delay0_u1_u0<=1'h0;
else logicalMem_17b162_re_delay0_u1_u0<=bus_01d91422_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_011e6929_(CLK_u27, bus_009809c3_, bus_01626424_, bus_01b16c68_, bus_01b109ad_, bus_00f1d55a_, bus_00fd1fda_, bus_01f25e8c_, bus_003646a5_);
input		CLK_u27;
input		bus_009809c3_;
input	[31:0]	bus_01626424_;
input	[2:0]	bus_01b16c68_;
input		bus_01b109ad_;
input		bus_00f1d55a_;
input	[7:0]	bus_00fd1fda_;
output	[7:0]	bus_01f25e8c_;
output		bus_003646a5_;
reg		logicalMem_1f9afd1_re_delay0_u0=1'h0;
wire	[7:0]	bus_001e1cc7_;
reg		logicalMem_1f9afd1_we_delay0_u0=1'h0;
wire		or_000d86e5_u0;
wire		or_002633cc_u0;
assign bus_01f25e8c_=bus_001e1cc7_;
assign bus_003646a5_=or_002633cc_u0;
always @(posedge CLK_u27 or posedge bus_009809c3_)
begin
if (bus_009809c3_)
logicalMem_1f9afd1_re_delay0_u0<=1'h0;
else logicalMem_1f9afd1_re_delay0_u0<=bus_01b109ad_;
end
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_25344x8_44_instance2(.CLK(CLK_u27), 
  .EN(or_000d86e5_u0), .WE(bus_00f1d55a_), .ADDR(bus_01626424_), .DIN(bus_00fd1fda_), 
  .DOUT(bus_001e1cc7_), .DONE());
always @(posedge CLK_u27 or posedge bus_009809c3_)
begin
if (bus_009809c3_)
logicalMem_1f9afd1_we_delay0_u0<=1'h0;
else logicalMem_1f9afd1_we_delay0_u0<=bus_00f1d55a_;
end
assign or_000d86e5_u0=bus_01b109ad_|bus_00f1d55a_;
assign or_002633cc_u0=logicalMem_1f9afd1_re_delay0_u0|logicalMem_1f9afd1_we_delay0_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_doneCountIm(CLK, RESET, GO, RESULT, RESULT_u687, RESULT_u688, RESULT_u689, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u687;
output		RESULT_u688;
output	[31:0]	RESULT_u689;
output		DONE;
reg		reg_004826dd_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_004826dd_u0<=1'h0;
else reg_004826dd_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u687=32'h0;
assign RESULT_u688=GO;
assign RESULT_u689=32'h0;
assign DONE=reg_004826dd_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s1(bus_01b450dc_, bus_0128d3c8_, bus_00550311_, bus_01ecbafb_, bus_0171974c_);
input		bus_01b450dc_;
input		bus_0128d3c8_;
input		bus_00550311_;
input		bus_01ecbafb_;
output		bus_0171974c_;
reg		stateVar_state_s1_u11=1'h0;
always @(posedge bus_01b450dc_ or posedge bus_0128d3c8_)
begin
if (bus_0128d3c8_)
stateVar_state_s1_u11<=1'h0;
else if (bus_00550311_)
stateVar_state_s1_u11<=bus_01ecbafb_;
end
assign bus_0171974c_=stateVar_state_s1_u11;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_47(CLK, ENA, WEA, DINA, ENB, WEB, DINB, ADDRA, ADDRB, DOUTA, DOUTB, DONEA, DONEB);
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
output	[31:0]	DOUTB;
output		DONEA;
output		DONEB;
wire		wea_0;
wire		web_0;
wire	[31:0]	pre_douta_0;
wire	[31:0]	pre_doutb_0;
wire	[3:0]	extrasa_0;
wire	[3:0]	extrasb_0;
reg	[31:0]	mux_outa;
reg	[31:0]	mux_outb;
reg	[31:0]	ADDRA_reg;
reg	[31:0]	ADDRB_reg;
reg		reb_done;
reg		rea_done;
reg		wea_done;
reg		web_done;
assign wea_0=WEA&(ADDRA[31:10]==22'h0);
assign web_0=WEB&(ADDRB[31:10]==22'h0);
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
reb_done<=ENB;
end
assign DONEA=wea_done|rea_done;
assign DONEB=web_done|reb_done;
assign DOUTA=mux_outa;
assign DOUTB=mux_outb;
// Memory array element: COL: 0, ROW: 0
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S18_S18#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S18_S18_instance_52(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[15:0]), .DOA(pre_douta_0[15:0]), 
  .DIPA(DINA[17:16]), .DOPA(pre_douta_0[17:16]), .CLKB(CLK), .WEB(web_0), .ENB(ENB), 
  .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[15:0]), .DOB(pre_doutb_0[15:0]), .DIPB(DINB[17:16]), 
  .DOPB(pre_doutb_0[17:16]));
// Memory array element: COL: 0, ROW: 1
//  Initialization of Dual Port Block ram now done through explicit
// parameter setting.
RAMB16_S18_S18#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000), 
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S18_S18_instance_53(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA({2'b0, DINA[31:18]}), .DOA({extrasa_0[1:0], pre_douta_0[31:18]}), 
  .DIPA(2'b0), .DOPA(), .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), 
  .DIB({2'b0, DINB[31:18]}), .DOB({extrasb_0[1:0], pre_doutb_0[31:18]}), .DIPB(2'b0), 
  .DOPB());
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_structuralmemory_00431d38_(CLK_u28, bus_007d6680_, bus_00280129_, bus_00526c10_, bus_0004175b_, bus_0060614a_, bus_006ae235_, bus_014e14ab_, bus_0075e941_, bus_01b753d9_, bus_0023412f_, bus_008698d1_, bus_00996ce9_, bus_012932ec_, bus_00e1cd76_, bus_009ade55_);
input		CLK_u28;
input		bus_007d6680_;
input	[31:0]	bus_00280129_;
input	[2:0]	bus_00526c10_;
input		bus_0004175b_;
input		bus_0060614a_;
input	[31:0]	bus_006ae235_;
input	[31:0]	bus_014e14ab_;
input	[2:0]	bus_0075e941_;
input		bus_01b753d9_;
input		bus_0023412f_;
input	[31:0]	bus_008698d1_;
output	[31:0]	bus_00996ce9_;
output		bus_012932ec_;
output	[31:0]	bus_00e1cd76_;
output		bus_009ade55_;
reg		logicalMem_41199_we_delay0_u0=1'h0;
wire	[31:0]	bus_003cb0ca_;
wire	[31:0]	bus_00dcba80_;
wire		or_015c69a3_u0;
wire		or_00ff301d_u0;
reg		logicalMem_41199_re_delay0_u0=1'h0;
wire		or_01495975_u0;
reg		logicalMem_41199_re_delay0_u1_u0=1'h0;
reg		logicalMem_41199_we_delay0_u1_u0=1'h0;
wire		or_017c580b_u0;
always @(posedge CLK_u28 or posedge bus_007d6680_)
begin
if (bus_007d6680_)
logicalMem_41199_we_delay0_u0<=1'h0;
else logicalMem_41199_we_delay0_u0<=bus_0023412f_;
end
Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_47 Mean_Shift_Main_main_loop_cal_update_model_forge_memory_567x32_47_instance0(.CLK(CLK_u28), 
  .ENA(or_017c580b_u0), .WEA(bus_0060614a_), .DINA(bus_006ae235_), .ADDRA(bus_00280129_), 
  .DOUTA(bus_003cb0ca_), .DONEA(), .ENB(or_01495975_u0), .WEB(bus_0023412f_), .DINB(bus_008698d1_), 
  .ADDRB(bus_014e14ab_), .DOUTB(bus_00dcba80_), .DONEB());
assign or_015c69a3_u0=logicalMem_41199_re_delay0_u0|logicalMem_41199_we_delay0_u0;
assign or_00ff301d_u0=logicalMem_41199_re_delay0_u1_u0|logicalMem_41199_we_delay0_u1_u0;
always @(posedge CLK_u28 or posedge bus_007d6680_)
begin
if (bus_007d6680_)
logicalMem_41199_re_delay0_u0<=1'h0;
else logicalMem_41199_re_delay0_u0<=bus_01b753d9_;
end
assign or_01495975_u0=bus_01b753d9_|bus_0023412f_;
always @(posedge CLK_u28 or posedge bus_007d6680_)
begin
if (bus_007d6680_)
logicalMem_41199_re_delay0_u1_u0<=1'h0;
else logicalMem_41199_re_delay0_u1_u0<=bus_0004175b_;
end
always @(posedge CLK_u28 or posedge bus_007d6680_)
begin
if (bus_007d6680_)
logicalMem_41199_we_delay0_u1_u0<=1'h0;
else logicalMem_41199_we_delay0_u1_u0<=bus_0060614a_;
end
assign bus_00996ce9_=bus_003cb0ca_;
assign bus_012932ec_=or_00ff301d_u0;
assign bus_00e1cd76_=bus_00dcba80_;
assign bus_009ade55_=or_015c69a3_u0;
assign or_017c580b_u0=bus_0004175b_|bus_0060614a_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_while_loop_status(bus_00484e7a_, bus_01183b1e_, bus_001c2c8a_, bus_004d3cbd_, bus_0058973c_, bus_01b50d1b_, bus_01a00f02_, bus_008b64a1_, bus_00b9fded_);
input		bus_00484e7a_;
input		bus_01183b1e_;
input		bus_001c2c8a_;
input		bus_004d3cbd_;
input		bus_0058973c_;
input		bus_01b50d1b_;
input		bus_01a00f02_;
input		bus_008b64a1_;
output		bus_00b9fded_;
wire		or_016e2e81_u0;
wire		mux_01a5548c_u0;
reg		stateVar_while_loop_status_u3=1'h0;
assign or_016e2e81_u0=bus_001c2c8a_|bus_0058973c_|bus_01a00f02_;
assign mux_01a5548c_u0=({1{bus_001c2c8a_}}&1'h0)|({1{bus_0058973c_}}&bus_01b50d1b_)|({1{bus_01a00f02_}}&bus_008b64a1_);
always @(posedge bus_00484e7a_ or posedge bus_01183b1e_)
begin
if (bus_01183b1e_)
stateVar_while_loop_status_u3<=1'h0;
else if (or_016e2e81_u0)
stateVar_while_loop_status_u3<=mux_01a5548c_u0;
end
assign bus_00b9fded_=stateVar_while_loop_status_u3;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_send_Qu(CLK, RESET, GO, port_00580fe6_, port_00046039_, port_01fd307b_, RESULT, RESULT_u690, RESULT_u691, RESULT_u692, RESULT_u693, RESULT_u694, RESULT_u695, RESULT_u696, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00580fe6_;
input		port_00046039_;
input	[31:0]	port_01fd307b_;
output		RESULT;
output	[31:0]	RESULT_u690;
output		RESULT_u691;
output	[31:0]	RESULT_u692;
output	[2:0]	RESULT_u693;
output	[31:0]	RESULT_u694;
output		RESULT_u695;
output	[15:0]	RESULT_u696;
output		DONE;
wire	[31:0]	add;
wire		or_u332_u0;
reg		done_cache_u40=1'h0;
wire		and_u1139_u0;
wire	[31:0]	add_u351;
wire	[31:0]	simplePinWrite;
wire		simplePinWrite_u160;
wire	[15:0]	simplePinWrite_u161;
reg		reg_011540ef_u0=1'h0;
reg	[31:0]	syncEnable_u279=32'h0;
reg		reg_00f20a85_u0=1'h0;
assign add=32'h0+port_00580fe6_;
assign or_u332_u0=and_u1139_u0|RESET;
always @(posedge CLK or posedge reg_00f20a85_u0 or posedge or_u332_u0)
begin
if (or_u332_u0)
done_cache_u40<=1'h0;
else if (reg_00f20a85_u0)
done_cache_u40<=1'h1;
else done_cache_u40<=done_cache_u40;
end
assign and_u1139_u0=done_cache_u40&port_00046039_;
assign add_u351=port_00580fe6_+32'h1;
assign simplePinWrite=port_01fd307b_;
assign simplePinWrite_u160=reg_011540ef_u0&{1{reg_011540ef_u0}};
assign simplePinWrite_u161=16'h1&{16{1'h1}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_011540ef_u0<=1'h0;
else reg_011540ef_u0<=reg_00f20a85_u0;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u279<=add;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00f20a85_u0<=1'h0;
else reg_00f20a85_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u690=add_u351;
assign RESULT_u691=reg_00f20a85_u0;
assign RESULT_u692=syncEnable_u279;
assign RESULT_u693=3'h1;
assign RESULT_u694=simplePinWrite;
assign RESULT_u695=simplePinWrite_u160;
assign RESULT_u696=simplePinWrite_u161;
assign DONE=reg_011540ef_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_send_Pu(CLK, RESET, GO, port_01e50b59_, port_013cf011_, port_003beb54_, RESULT, RESULT_u697, RESULT_u698, RESULT_u699, RESULT_u700, RESULT_u701, RESULT_u702, RESULT_u703, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01e50b59_;
input		port_013cf011_;
input	[31:0]	port_003beb54_;
output		RESULT;
output	[31:0]	RESULT_u697;
output		RESULT_u698;
output	[31:0]	RESULT_u699;
output	[2:0]	RESULT_u700;
output		RESULT_u701;
output	[31:0]	RESULT_u702;
output	[15:0]	RESULT_u703;
output		DONE;
wire	[31:0]	add;
wire		or_u333_u0;
reg		done_cache_u41=1'h0;
wire		and_u1140_u0;
wire	[31:0]	add_u352;
wire	[15:0]	simplePinWrite;
wire		simplePinWrite_u162;
wire	[31:0]	simplePinWrite_u163;
reg		reg_00ea2c67_u0=1'h0;
reg	[31:0]	syncEnable_u280=32'h0;
reg		reg_01553f8a_u0=1'h0;
assign add=32'h0+port_01e50b59_;
assign or_u333_u0=and_u1140_u0|RESET;
always @(posedge CLK or posedge reg_01553f8a_u0 or posedge or_u333_u0)
begin
if (or_u333_u0)
done_cache_u41<=1'h0;
else if (reg_01553f8a_u0)
done_cache_u41<=1'h1;
else done_cache_u41<=done_cache_u41;
end
assign and_u1140_u0=done_cache_u41&port_013cf011_;
assign add_u352=port_01e50b59_+32'h1;
assign simplePinWrite=16'h1&{16{1'h1}};
assign simplePinWrite_u162=reg_00ea2c67_u0&{1{reg_00ea2c67_u0}};
assign simplePinWrite_u163=port_003beb54_;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ea2c67_u0<=1'h0;
else reg_00ea2c67_u0<=reg_01553f8a_u0;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u280<=add;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01553f8a_u0<=1'h0;
else reg_01553f8a_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u697=add_u352;
assign RESULT_u698=reg_01553f8a_u0;
assign RESULT_u699=syncEnable_u280;
assign RESULT_u700=3'h1;
assign RESULT_u701=simplePinWrite_u162;
assign RESULT_u702=simplePinWrite_u163;
assign RESULT_u703=simplePinWrite;
assign DONE=reg_00ea2c67_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s6(bus_0057e531_, bus_00882040_, bus_01c304b0_, bus_01d9a513_, bus_00415c77_);
input		bus_0057e531_;
input		bus_00882040_;
input		bus_01c304b0_;
input		bus_01d9a513_;
output		bus_00415c77_;
reg		stateVar_state_s6_u1=1'h0;
always @(posedge bus_0057e531_ or posedge bus_00882040_)
begin
if (bus_00882040_)
stateVar_state_s6_u1<=1'h0;
else if (bus_01c304b0_)
stateVar_state_s6_u1<=bus_01d9a513_;
end
assign bus_00415c77_=stateVar_state_s6_u1;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_isLoopTrue(CLK, RESET, GO, port_00a3b668_, port_011b811a_, RESULT, RESULT_u704, RESULT_u705, RESULT_u706, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_00a3b668_;
input	[31:0]	port_011b811a_;
output		RESULT;
output		RESULT_u704;
output		RESULT_u705;
output	[31:0]	RESULT_u706;
output		DONE;
wire signed		equals_b_signed;
wire signed		equals_a_signed;
wire		equals;
wire		not_u234_u0;
wire		and_u1141_u0;
wire		and_u1142_u0;
wire		mux_u358;
wire		and_u1143_u0;
wire		and_u1144_u0;
wire	[31:0]	mux_u359_u0;
reg		reg_01683349_u0=1'h0;
assign equals_a_signed=port_00a3b668_;
assign equals_b_signed=1'h1;
assign equals=equals_a_signed==equals_b_signed;
assign not_u234_u0=~equals;
assign and_u1141_u0=GO&equals;
assign and_u1142_u0=GO&not_u234_u0;
assign mux_u358=(and_u1143_u0)?1'h0:port_00a3b668_;
assign and_u1143_u0=and_u1141_u0&GO;
assign and_u1144_u0=and_u1142_u0&GO;
assign mux_u359_u0=(and_u1143_u0)?32'h90:port_011b811a_;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01683349_u0<=1'h0;
else reg_01683349_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u704=mux_u358;
assign RESULT_u705=GO;
assign RESULT_u706=mux_u359_u0;
assign DONE=reg_01683349_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_globalreset_physical_0068846e_(bus_01ec44d6_, bus_009b5ffe_, bus_002e4a17_);
input		bus_01ec44d6_;
input		bus_009b5ffe_;
output		bus_002e4a17_;
wire		or_00bb460a_u0;
reg		sample_u13=1'h0;
reg		glitch_u13=1'h0;
wire		and_0183915f_u0;
reg		final_u13=1'h1;
wire		not_00b9f448_u0;
reg		cross_u13=1'h0;
assign or_00bb460a_u0=bus_009b5ffe_|final_u13;
always @(posedge bus_01ec44d6_)
begin
sample_u13<=1'h1;
end
assign bus_002e4a17_=or_00bb460a_u0;
always @(posedge bus_01ec44d6_)
begin
glitch_u13<=cross_u13;
end
assign and_0183915f_u0=cross_u13&glitch_u13;
always @(posedge bus_01ec44d6_)
begin
final_u13<=not_00b9f448_u0;
end
assign not_00b9f448_u0=~and_0183915f_u0;
always @(posedge bus_01ec44d6_)
begin
cross_u13<=sample_u13;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_getkArray(CLK, RESET, GO, port_01578ffe_, port_010e074b_, port_00bfb19f_, port_0002afab_, RESULT, RESULT_u707, RESULT_u708, RESULT_u709, RESULT_u710, RESULT_u711, RESULT_u712, RESULT_u713, RESULT_u714, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01578ffe_;
input	[31:0]	port_010e074b_;
input		port_00bfb19f_;
input	[31:0]	port_0002afab_;
output		RESULT;
output	[31:0]	RESULT_u707;
output		RESULT_u708;
output	[31:0]	RESULT_u709;
output		RESULT_u710;
output	[31:0]	RESULT_u711;
output	[31:0]	RESULT_u712;
output	[2:0]	RESULT_u713;
output		RESULT_u714;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u67;
wire	[31:0]	add;
wire	[31:0]	add_u353;
reg		reg_0077c940_u0=1'h0;
wire		or_u334_u0;
wire		and_u1145_u0;
wire	[31:0]	add_u354;
wire signed	[31:0]	equals_a_signed;
wire		equals;
wire signed	[31:0]	equals_b_signed;
wire		and_u1146_u0;
wire		and_u1147_u0;
wire		not_u235_u0;
wire	[31:0]	add_u355;
wire	[31:0]	mux_u360;
wire		and_u1148_u0;
wire		and_u1149_u0;
wire	[31:0]	mux_u361_u0;
reg	[31:0]	syncEnable_u281=32'h0;
reg	[31:0]	syncEnable_u282_u0=32'h0;
reg		reg_01d3c65d_u0=1'h0;
reg		reg_00907bfb_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign subtract={port_01578ffe_[26:0], 5'b0}-{port_01578ffe_[29:0], 2'b0};
assign subtract_u67=subtract-port_01578ffe_;
assign add=subtract_u67+port_010e074b_;
assign add_u353=32'h0+add;
always @(posedge CLK or posedge reg_00907bfb_u0 or posedge or_u334_u0)
begin
if (or_u334_u0)
reg_0077c940_u0<=1'h0;
else if (reg_00907bfb_u0)
reg_0077c940_u0<=1'h1;
else reg_0077c940_u0<=reg_0077c940_u0;
end
assign or_u334_u0=and_u1145_u0|RESET;
assign and_u1145_u0=reg_0077c940_u0&port_00bfb19f_;
assign add_u354=port_010e074b_+32'h1;
assign equals_a_signed=add_u354;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1146_u0=GO&not_u235_u0;
assign and_u1147_u0=GO&equals;
assign not_u235_u0=~equals;
assign add_u355=port_01578ffe_+32'h1;
assign mux_u360=(and_u1148_u0)?32'h0:add_u354;
assign and_u1148_u0=and_u1147_u0&GO;
assign and_u1149_u0=and_u1146_u0&GO;
assign mux_u361_u0=(and_u1148_u0)?add_u355:port_01578ffe_;
always @(posedge CLK)
begin
if (GO)
syncEnable_u281<=port_0002afab_;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u282_u0<=add_u353;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d3c65d_u0<=1'h0;
else reg_01d3c65d_u0<=reg_00907bfb_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00907bfb_u0<=1'h0;
else reg_00907bfb_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u707=mux_u361_u0;
assign RESULT_u708=GO;
assign RESULT_u709=mux_u360;
assign RESULT_u710=reg_00907bfb_u0;
assign RESULT_u711=syncEnable_u282_u0;
assign RESULT_u712=syncEnable_u281;
assign RESULT_u713=3'h1;
assign RESULT_u714=simplePinWrite;
assign DONE=reg_01d3c65d_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_0034b59d_(bus_00a2398c_, bus_0070356d_, bus_0019f4aa_, bus_01c61952_, bus_01165ff0_, bus_011d1970_, bus_019be2ab_, bus_005d490a_, bus_00093e17_, bus_00262527_, bus_015592ca_, bus_01e6df60_, bus_00f3f2d6_, bus_00ae8475_, bus_003f25f8_, bus_00a86ae4_, bus_019a346d_, bus_009529f3_, bus_01a9dc7f_, bus_0159583c_, bus_01f49581_, bus_00cb8421_, bus_00514c8c_, bus_00533f94_, bus_01cbf77c_, bus_01d5c310_);
input		bus_00a2398c_;
input		bus_0070356d_;
input		bus_0019f4aa_;
input	[31:0]	bus_01c61952_;
input		bus_01165ff0_;
input		bus_011d1970_;
input	[31:0]	bus_019be2ab_;
input	[31:0]	bus_005d490a_;
input	[2:0]	bus_00093e17_;
input		bus_00262527_;
input	[31:0]	bus_015592ca_;
input	[2:0]	bus_01e6df60_;
input		bus_00f3f2d6_;
input	[31:0]	bus_00ae8475_;
input	[2:0]	bus_003f25f8_;
output	[31:0]	bus_00a86ae4_;
output	[31:0]	bus_019a346d_;
output		bus_009529f3_;
output		bus_01a9dc7f_;
output	[2:0]	bus_0159583c_;
output	[31:0]	bus_01f49581_;
output		bus_00cb8421_;
output	[31:0]	bus_00514c8c_;
output		bus_00533f94_;
output	[31:0]	bus_01cbf77c_;
output		bus_01d5c310_;
wire	[31:0]	mux_01045913_u0;
wire		and_003fc0ac_u0;
wire		or_00141051_u0;
wire		or_010b559f_u0;
wire		or_018327cc_u0;
wire		and_018c8449_u0;
reg		done_qual_u58_u0=1'h0;
wire		not_01fe5fb4_u0;
wire		not_00733988_u0;
wire		or_00a98089_u0;
reg		done_qual_u59_u0=1'h0;
wire		or_0121eb1d_u0;
wire	[31:0]	mux_0092be83_u0;
wire		and_01dce552_u0;
wire		not_00fd198f_u0;
reg		done_qual_u60_u0=1'h0;
assign mux_01045913_u0=({32{or_018327cc_u0}}&bus_005d490a_)|({32{bus_00262527_}}&bus_015592ca_)|({32{bus_00f3f2d6_}}&bus_00ae8475_);
assign and_003fc0ac_u0=or_00a98089_u0&bus_0019f4aa_;
assign or_00141051_u0=bus_00f3f2d6_|done_qual_u60_u0;
assign or_010b559f_u0=bus_00262527_|done_qual_u59_u0;
assign bus_00a86ae4_=mux_0092be83_u0;
assign bus_019a346d_=mux_01045913_u0;
assign bus_009529f3_=bus_011d1970_;
assign bus_01a9dc7f_=or_0121eb1d_u0;
assign bus_0159583c_=3'h1;
assign bus_01f49581_=bus_01c61952_;
assign bus_00cb8421_=and_003fc0ac_u0;
assign bus_00514c8c_=bus_01c61952_;
assign bus_00533f94_=and_01dce552_u0;
assign bus_01cbf77c_=bus_01c61952_;
assign bus_01d5c310_=and_018c8449_u0;
assign or_018327cc_u0=bus_01165ff0_|bus_011d1970_;
assign and_018c8449_u0=or_00141051_u0&bus_0019f4aa_;
always @(posedge bus_00a2398c_)
begin
if (bus_0070356d_)
done_qual_u58_u0<=1'h0;
else done_qual_u58_u0<=or_018327cc_u0;
end
assign not_01fe5fb4_u0=~bus_0019f4aa_;
assign not_00733988_u0=~bus_0019f4aa_;
assign or_00a98089_u0=or_018327cc_u0|done_qual_u58_u0;
always @(posedge bus_00a2398c_)
begin
if (bus_0070356d_)
done_qual_u59_u0<=1'h0;
else done_qual_u59_u0<=bus_00262527_;
end
assign or_0121eb1d_u0=or_018327cc_u0|bus_00262527_|bus_00f3f2d6_;
assign mux_0092be83_u0=({32{bus_011d1970_}}&bus_019be2ab_);
assign and_01dce552_u0=or_010b559f_u0&bus_0019f4aa_;
assign not_00fd198f_u0=~bus_0019f4aa_;
always @(posedge bus_00a2398c_)
begin
if (bus_0070356d_)
done_qual_u60_u0<=1'h0;
else done_qual_u60_u0<=bus_00f3f2d6_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_doneCount_mModel(CLK, RESET, GO, RESULT, RESULT_u715, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u715;
output		DONE;
reg		reg_01051a78_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01051a78_u0<=1'h0;
else reg_01051a78_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u715=32'h0;
assign DONE=reg_01051a78_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00220790_(bus_01ce2883_, bus_01c5c0c5_, bus_005897a0_, bus_00ea5ea3_, bus_015e6b88_, bus_001e22f6_, bus_0050bcae_, bus_00d28c89_, bus_017c00e5_, bus_00c46370_, bus_00eba8d0_, bus_00eb5317_, bus_0105527f_, bus_01a14872_, bus_002ca1bd_, bus_01fce371_, bus_0108a701_, bus_001efbc6_, bus_0198205f_);
input		bus_01ce2883_;
input		bus_01c5c0c5_;
input		bus_005897a0_;
input	[7:0]	bus_00ea5ea3_;
input		bus_015e6b88_;
input	[7:0]	bus_001e22f6_;
input	[31:0]	bus_0050bcae_;
input	[2:0]	bus_00d28c89_;
input		bus_017c00e5_;
input	[31:0]	bus_00c46370_;
input	[2:0]	bus_00eba8d0_;
output	[7:0]	bus_00eb5317_;
output	[31:0]	bus_0105527f_;
output		bus_01a14872_;
output		bus_002ca1bd_;
output	[2:0]	bus_01fce371_;
output		bus_0108a701_;
output	[7:0]	bus_001efbc6_;
output		bus_0198205f_;
reg		done_qual_u61_u0=1'h0;
wire	[7:0]	mux_0196cc05_u0;
wire	[31:0]	mux_00ae7b1c_u0;
wire		or_014dd08b_u0;
wire		and_01747e43_u0;
wire		or_01c10e1b_u0;
wire		or_01df8a00_u0;
wire		not_0141610f_u0;
wire		not_002df11f_u0;
reg		done_qual_u62_u0=1'h0;
wire		and_00d2580b_u0;
always @(posedge bus_01ce2883_)
begin
if (bus_01c5c0c5_)
done_qual_u61_u0<=1'h0;
else done_qual_u61_u0<=bus_015e6b88_;
end
assign mux_0196cc05_u0=({8{bus_015e6b88_}}&bus_001e22f6_);
assign mux_00ae7b1c_u0=(bus_015e6b88_)?bus_0050bcae_:bus_00c46370_;
assign or_014dd08b_u0=bus_015e6b88_|bus_017c00e5_;
assign and_01747e43_u0=or_01c10e1b_u0&bus_005897a0_;
assign or_01c10e1b_u0=bus_017c00e5_|done_qual_u62_u0;
assign or_01df8a00_u0=bus_015e6b88_|done_qual_u61_u0;
assign not_0141610f_u0=~bus_005897a0_;
assign not_002df11f_u0=~bus_005897a0_;
always @(posedge bus_01ce2883_)
begin
if (bus_01c5c0c5_)
done_qual_u62_u0<=1'h0;
else done_qual_u62_u0<=bus_017c00e5_;
end
assign and_00d2580b_u0=or_01df8a00_u0&bus_005897a0_;
assign bus_00eb5317_=mux_0196cc05_u0;
assign bus_0105527f_=mux_00ae7b1c_u0;
assign bus_01a14872_=bus_015e6b88_;
assign bus_002ca1bd_=or_014dd08b_u0;
assign bus_01fce371_=3'h1;
assign bus_0108a701_=and_00d2580b_u0;
assign bus_001efbc6_=bus_00ea5ea3_;
assign bus_0198205f_=and_01747e43_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_010a8ccc_(endianswapper_010a8ccc_in, endianswapper_010a8ccc_out);
input	[31:0]	endianswapper_010a8ccc_in;
output	[31:0]	endianswapper_010a8ccc_out;
assign endianswapper_010a8ccc_out=endianswapper_010a8ccc_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01e7e161_(endianswapper_01e7e161_in, endianswapper_01e7e161_out);
input	[31:0]	endianswapper_01e7e161_in;
output	[31:0]	endianswapper_01e7e161_out;
assign endianswapper_01e7e161_out=endianswapper_01e7e161_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_count_x(bus_0138316d_, bus_00352b54_, bus_015ff5e5_, bus_007181a4_, bus_01d93c38_, bus_004e9aa6_, bus_0119ae94_, bus_00db4783_, bus_007599ff_, bus_00e03451_, bus_011d3853_, bus_0129abd3_, bus_01bde77f_, bus_01902b1b_, bus_00c9a0e5_, bus_01be47f7_, bus_009861cf_);
input		bus_0138316d_;
input		bus_00352b54_;
input		bus_015ff5e5_;
input	[31:0]	bus_007181a4_;
input		bus_01d93c38_;
input	[31:0]	bus_004e9aa6_;
input		bus_0119ae94_;
input	[31:0]	bus_00db4783_;
input		bus_007599ff_;
input	[31:0]	bus_00e03451_;
input		bus_011d3853_;
input	[31:0]	bus_0129abd3_;
input		bus_01bde77f_;
input	[31:0]	bus_01902b1b_;
input		bus_00c9a0e5_;
input	[31:0]	bus_01be47f7_;
output	[31:0]	bus_009861cf_;
wire	[31:0]	mux_01b2c39e_u0;
reg	[31:0]	stateVar_count_x_u4=32'h0;
wire		or_015e2c2e_u0;
wire	[31:0]	endianswapper_010a8ccc_out;
wire	[31:0]	endianswapper_01e7e161_out;
assign mux_01b2c39e_u0=({32{bus_015ff5e5_}}&bus_007181a4_)|({32{bus_01d93c38_}}&32'h0)|({32{bus_0119ae94_}}&bus_00db4783_)|({32{bus_007599ff_}}&32'h0)|({32{bus_011d3853_}}&bus_0129abd3_)|({32{bus_01bde77f_}}&bus_01902b1b_)|({32{bus_00c9a0e5_}}&32'h0);
assign bus_009861cf_=endianswapper_010a8ccc_out;
always @(posedge bus_0138316d_ or posedge bus_00352b54_)
begin
if (bus_00352b54_)
stateVar_count_x_u4<=32'h0;
else if (or_015e2c2e_u0)
stateVar_count_x_u4<=endianswapper_01e7e161_out;
end
assign or_015e2c2e_u0=bus_015ff5e5_|bus_01d93c38_|bus_0119ae94_|bus_007599ff_|bus_011d3853_|bus_01bde77f_|bus_00c9a0e5_;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_010a8ccc_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_010a8ccc__1(.endianswapper_010a8ccc_in(stateVar_count_x_u4), 
  .endianswapper_010a8ccc_out(endianswapper_010a8ccc_out));
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01e7e161_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_01e7e161__1(.endianswapper_01e7e161_in(mux_01b2c39e_u0), 
  .endianswapper_01e7e161_out(endianswapper_01e7e161_out));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00d0a834_(endianswapper_00d0a834_in, endianswapper_00d0a834_out);
input	[31:0]	endianswapper_00d0a834_in;
output	[31:0]	endianswapper_00d0a834_out;
assign endianswapper_00d0a834_out=endianswapper_00d0a834_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0159cef6_(endianswapper_0159cef6_in, endianswapper_0159cef6_out);
input	[31:0]	endianswapper_0159cef6_in;
output	[31:0]	endianswapper_0159cef6_out;
assign endianswapper_0159cef6_out=endianswapper_0159cef6_in;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_centre_y(bus_01600dc4_, bus_0127fc16_, bus_00fab1fe_, bus_00bb7ec2_, bus_012004fd_, bus_00cdebfa_, bus_014f6e4b_);
input		bus_01600dc4_;
input		bus_0127fc16_;
input		bus_00fab1fe_;
input	[31:0]	bus_00bb7ec2_;
input		bus_012004fd_;
input	[31:0]	bus_00cdebfa_;
output	[31:0]	bus_014f6e4b_;
reg	[31:0]	stateVar_centre_y_u3=32'h0;
wire	[31:0]	endianswapper_00d0a834_out;
wire		or_01a549ad_u0;
wire	[31:0]	mux_00d8824c_u0;
wire	[31:0]	endianswapper_0159cef6_out;
assign bus_014f6e4b_=endianswapper_00d0a834_out;
always @(posedge bus_01600dc4_ or posedge bus_0127fc16_)
begin
if (bus_0127fc16_)
stateVar_centre_y_u3<=32'h0;
else if (or_01a549ad_u0)
stateVar_centre_y_u3<=endianswapper_0159cef6_out;
end
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00d0a834_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_00d0a834__1(.endianswapper_00d0a834_in(stateVar_centre_y_u3), 
  .endianswapper_00d0a834_out(endianswapper_00d0a834_out));
assign or_01a549ad_u0=bus_00fab1fe_|bus_012004fd_;
assign mux_00d8824c_u0=(bus_00fab1fe_)?32'h4c:bus_00cdebfa_;
Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0159cef6_ Mean_Shift_Main_main_loop_cal_update_model_endianswapper_0159cef6__1(.endianswapper_0159cef6_in(mux_00d8824c_u0), 
  .endianswapper_0159cef6_out(endianswapper_0159cef6_out));
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_stateVar_state_s10(bus_00569985_, bus_01790cc9_, bus_00c0a245_, bus_0184ce5a_, bus_01c8cda9_);
input		bus_00569985_;
input		bus_01790cc9_;
input		bus_00c0a245_;
input		bus_0184ce5a_;
output		bus_01c8cda9_;
reg		stateVar_state_s10_u3=1'h0;
always @(posedge bus_00569985_ or posedge bus_01790cc9_)
begin
if (bus_01790cc9_)
stateVar_state_s10_u3<=1'h0;
else if (bus_00c0a245_)
stateVar_state_s10_u3<=bus_0184ce5a_;
end
assign bus_01c8cda9_=stateVar_state_s10_u3;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_simplememoryreferee_00274de2_(bus_00c7a572_, bus_013eec13_, bus_01ab7229_, bus_0012b8e0_, bus_01b72377_, bus_00d1fd30_, bus_0154d678_, bus_00bb29fc_, bus_01091ec1_, bus_0127a53f_, bus_01bbe4d4_, bus_01549baa_, bus_00acc438_, bus_0093d16c_, bus_00797d62_, bus_01c220d2_);
input		bus_00c7a572_;
input		bus_013eec13_;
input		bus_01ab7229_;
input	[31:0]	bus_0012b8e0_;
input		bus_01b72377_;
input		bus_00d1fd30_;
input	[31:0]	bus_0154d678_;
input	[31:0]	bus_00bb29fc_;
input	[2:0]	bus_01091ec1_;
output	[31:0]	bus_0127a53f_;
output	[31:0]	bus_01bbe4d4_;
output		bus_01549baa_;
output		bus_00acc438_;
output	[2:0]	bus_0093d16c_;
output	[31:0]	bus_00797d62_;
output		bus_01c220d2_;
wire		or_00cf1d9c_u0;
assign bus_0127a53f_=bus_0154d678_;
assign bus_01bbe4d4_=bus_00bb29fc_;
assign bus_01549baa_=bus_00d1fd30_;
assign bus_00acc438_=or_00cf1d9c_u0;
assign bus_0093d16c_=3'h1;
assign bus_00797d62_=bus_0012b8e0_;
assign bus_01c220d2_=bus_01ab7229_;
assign or_00cf1d9c_u0=bus_01b72377_|bus_00d1fd30_;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_doneArrayCount(CLK, RESET, GO, RESULT, RESULT_u716, RESULT_u717, RESULT_u718, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u716;
output		RESULT_u717;
output	[31:0]	RESULT_u718;
output		DONE;
reg		reg_007522b6_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007522b6_u0<=1'h0;
else reg_007522b6_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u716=32'h0;
assign RESULT_u717=GO;
assign RESULT_u718=32'h0;
assign DONE=reg_007522b6_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_getCentreXY_loop(CLK, RESET, GO, port_01c8c2c2_, port_01280da7_, port_00145342_, RESULT, RESULT_u719, RESULT_u720, RESULT_u721, RESULT_u722, RESULT_u723, RESULT_u724, RESULT_u725, RESULT_u726, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_01c8c2c2_;
input	[31:0]	port_01280da7_;
input	[31:0]	port_00145342_;
output		RESULT;
output	[31:0]	RESULT_u719;
output		RESULT_u720;
output		RESULT_u721;
output		RESULT_u722;
output	[31:0]	RESULT_u723;
output		RESULT_u724;
output		RESULT_u725;
output		RESULT_u726;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u164;
wire		simplePinWrite_u165;
reg		reg_01090daf_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u164=GO&{1{GO}};
assign simplePinWrite_u165=GO&{1{GO}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01090daf_u0<=1'h0;
else reg_01090daf_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u719=port_00145342_;
assign RESULT_u720=GO;
assign RESULT_u721=port_01c8c2c2_;
assign RESULT_u722=GO;
assign RESULT_u723=port_01280da7_;
assign RESULT_u724=simplePinWrite;
assign RESULT_u725=simplePinWrite_u164;
assign RESULT_u726=simplePinWrite_u165;
assign DONE=reg_01090daf_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_update_model_getValueRGB(CLK, RESET, GO, port_0046646f_, port_01fc293e_, port_0047ca90_, port_01997172_, port_003d6d7d_, port_018b7143_, port_001707e3_, port_0106867e_, RESULT, RESULT_u727, RESULT_u728, RESULT_u729, RESULT_u730, RESULT_u731, RESULT_u732, RESULT_u733, RESULT_u734, RESULT_u735, RESULT_u736, RESULT_u737, RESULT_u738, RESULT_u739, RESULT_u740, RESULT_u741, RESULT_u742, RESULT_u743, RESULT_u744, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0046646f_;
input	[31:0]	port_01fc293e_;
input		port_0047ca90_;
input		port_01997172_;
input		port_003d6d7d_;
input	[7:0]	port_018b7143_;
input	[7:0]	port_001707e3_;
input	[7:0]	port_0106867e_;
output		RESULT;
output	[31:0]	RESULT_u727;
output		RESULT_u728;
output	[31:0]	RESULT_u729;
output		RESULT_u730;
output	[31:0]	RESULT_u731;
output	[7:0]	RESULT_u732;
output	[2:0]	RESULT_u733;
output		RESULT_u734;
output	[31:0]	RESULT_u735;
output	[7:0]	RESULT_u736;
output	[2:0]	RESULT_u737;
output		RESULT_u738;
output	[31:0]	RESULT_u739;
output	[7:0]	RESULT_u740;
output	[2:0]	RESULT_u741;
output		RESULT_u742;
output		RESULT_u743;
output		RESULT_u744;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u166;
wire		simplePinWrite_u167;
wire	[31:0]	add;
wire	[31:0]	add_u356;
wire	[31:0]	add_u357;
wire	[31:0]	add_u358;
wire		or_u335_u0;
wire		and_u1150_u0;
reg		reg_011fbae9_u0=1'h0;
wire	[31:0]	add_u359;
wire	[31:0]	add_u360;
wire	[31:0]	add_u361;
wire	[31:0]	add_u362;
wire		and_u1151_u0;
wire		or_u336_u0;
reg		reg_00a178ae_u0=1'h0;
wire	[31:0]	add_u363;
wire	[31:0]	add_u364;
wire	[31:0]	add_u365;
wire	[31:0]	add_u366;
wire		and_u1152_u0;
wire		or_u337_u0;
reg		reg_007d0b0f_u0=1'h0;
wire	[31:0]	add_u367;
wire		equals;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_a_signed;
wire		and_u1153_u0;
wire		and_u1154_u0;
wire		not_u236_u0;
wire	[31:0]	add_u368;
wire	[31:0]	mux_u362;
wire	[31:0]	mux_u363_u0;
wire		and_u1155_u0;
wire		and_u1156_u0;
reg	[31:0]	syncEnable_u283=32'h0;
reg	[31:0]	syncEnable_u284_u0=32'h0;
reg	[7:0]	syncEnable_u285_u0=8'h0;
reg	[7:0]	syncEnable_u286_u0=8'h0;
reg	[31:0]	syncEnable_u287_u0=32'h0;
reg		reg_019ad8ee_u0=1'h0;
reg	[7:0]	syncEnable_u288_u0=8'h0;
reg		reg_01ae7c25_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u166=GO&{1{GO}};
assign simplePinWrite_u167=GO&{1{GO}};
assign add={port_0046646f_[24:0], 7'b0}+{port_0046646f_[26:0], 5'b0};
assign add_u356={add[31:5], 5'b0}+{port_0046646f_[27:0], 4'b0};
assign add_u357={add_u356[31:4], 4'b0}+port_01fc293e_;
assign add_u358=32'h0+add_u357;
assign or_u335_u0=and_u1150_u0|RESET;
assign and_u1150_u0=reg_011fbae9_u0&port_0047ca90_;
always @(posedge CLK or posedge reg_01ae7c25_u0 or posedge or_u335_u0)
begin
if (or_u335_u0)
reg_011fbae9_u0<=1'h0;
else if (reg_01ae7c25_u0)
reg_011fbae9_u0<=1'h1;
else reg_011fbae9_u0<=reg_011fbae9_u0;
end
assign add_u359={port_0046646f_[24:0], 7'b0}+{port_0046646f_[26:0], 5'b0};
assign add_u360={add_u359[31:5], 5'b0}+{port_0046646f_[27:0], 4'b0};
assign add_u361={add_u360[31:4], 4'b0}+port_01fc293e_;
assign add_u362=32'h0+add_u361;
assign and_u1151_u0=reg_00a178ae_u0&port_01997172_;
assign or_u336_u0=and_u1151_u0|RESET;
always @(posedge CLK or posedge reg_01ae7c25_u0 or posedge or_u336_u0)
begin
if (or_u336_u0)
reg_00a178ae_u0<=1'h0;
else if (reg_01ae7c25_u0)
reg_00a178ae_u0<=1'h1;
else reg_00a178ae_u0<=reg_00a178ae_u0;
end
assign add_u363={port_0046646f_[24:0], 7'b0}+{port_0046646f_[26:0], 5'b0};
assign add_u364={add_u363[31:5], 5'b0}+{port_0046646f_[27:0], 4'b0};
assign add_u365={add_u364[31:4], 4'b0}+port_01fc293e_;
assign add_u366=32'h0+add_u365;
assign and_u1152_u0=reg_007d0b0f_u0&port_003d6d7d_;
assign or_u337_u0=and_u1152_u0|RESET;
always @(posedge CLK or posedge reg_01ae7c25_u0 or posedge or_u337_u0)
begin
if (or_u337_u0)
reg_007d0b0f_u0<=1'h0;
else if (reg_01ae7c25_u0)
reg_007d0b0f_u0<=1'h1;
else reg_007d0b0f_u0<=reg_007d0b0f_u0;
end
assign add_u367=port_01fc293e_+32'h1;
assign equals_a_signed=add_u367;
assign equals_b_signed=32'hb0;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1153_u0=GO&equals;
assign and_u1154_u0=GO&not_u236_u0;
assign not_u236_u0=~equals;
assign add_u368=port_0046646f_+32'h1;
assign mux_u362=(and_u1155_u0)?add_u367:32'h0;
assign mux_u363_u0=(and_u1155_u0)?port_0046646f_:add_u368;
assign and_u1155_u0=and_u1154_u0&GO;
assign and_u1156_u0=and_u1153_u0&GO;
always @(posedge CLK)
begin
if (GO)
syncEnable_u283<=add_u362;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u284_u0<=add_u366;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u285_u0<=port_018b7143_;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u286_u0<=port_0106867e_;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u287_u0<=add_u358;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_019ad8ee_u0<=1'h0;
else reg_019ad8ee_u0<=reg_01ae7c25_u0;
end
always @(posedge CLK)
begin
if (GO)
syncEnable_u288_u0<=port_001707e3_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ae7c25_u0<=1'h0;
else reg_01ae7c25_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u727=mux_u363_u0;
assign RESULT_u728=GO;
assign RESULT_u729=mux_u362;
assign RESULT_u730=reg_01ae7c25_u0;
assign RESULT_u731=syncEnable_u287_u0;
assign RESULT_u732=syncEnable_u286_u0;
assign RESULT_u733=3'h1;
assign RESULT_u734=reg_01ae7c25_u0;
assign RESULT_u735=syncEnable_u283;
assign RESULT_u736=syncEnable_u285_u0;
assign RESULT_u737=3'h1;
assign RESULT_u738=reg_01ae7c25_u0;
assign RESULT_u739=syncEnable_u284_u0;
assign RESULT_u740=syncEnable_u288_u0;
assign RESULT_u741=3'h1;
assign RESULT_u742=simplePinWrite;
assign RESULT_u743=simplePinWrite_u166;
assign RESULT_u744=simplePinWrite_u167;
assign DONE=reg_019ad8ee_u0;
endmodule


