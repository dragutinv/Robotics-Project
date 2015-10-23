// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:27 +0100
// 

module Mean_Shift_Main_main_loop_cal_Centre_XY(centre_x_out_COUNT, centre_x_out_SEND, centre_y_out_ACK, dy_i_DATA, centre_y_out_COUNT, loop_status_DATA, loop_status_RDY, centre_x_out_RDY, loop_status_ACK, dy_i_SEND, centre_y_out_SEND, centre_y_out_RDY, dy_i_COUNT, centre_x_out_ACK, loop_status_SEND, CLK, dy_i_ACK, dx_i_DATA, loop_status_COUNT, centre_y_out_DATA, dx_i_COUNT, dx_i_SEND, centre_x_out_DATA, dx_i_ACK, RESET);
output	[15:0]	centre_x_out_COUNT;
output		centre_x_out_SEND;
input		centre_y_out_ACK;
wire		initialise_go;
input	[31:0]	dy_i_DATA;
wire		get_dx_dy_go;
output	[15:0]	centre_y_out_COUNT;
wire		send_done;
wire		get_dx_dy_done;
output		loop_status_DATA;
input		loop_status_RDY;
input		centre_x_out_RDY;
input		loop_status_ACK;
input		dy_i_SEND;
output		centre_y_out_SEND;
input		centre_y_out_RDY;
input	[15:0]	dy_i_COUNT;
input		centre_x_out_ACK;
output		loop_status_SEND;
input		CLK;
output		dy_i_ACK;
wire		send_go;
input	[31:0]	dx_i_DATA;
output	[15:0]	loop_status_COUNT;
output	[31:0]	centre_y_out_DATA;
input	[15:0]	dx_i_COUNT;
wire		updateCentreXY_done;
wire		updateCentreXY_go;
input		dx_i_SEND;
output	[31:0]	centre_x_out_DATA;
wire		initialise_done;
output		dx_i_ACK;
input		RESET;
wire		scheduler_u198;
wire		scheduler_u200;
wire		scheduler_u203;
wire		scheduler;
wire		scheduler_u205;
wire		scheduler_u201;
wire		scheduler_u204;
wire		scheduler_u206;
wire		scheduler_u208;
wire		scheduler_u202;
wire		Mean_Shift_Main_main_loop_cal_Centre_XY_scheduler_instance_DONE;
wire		scheduler_u199;
wire		scheduler_u207;
wire	[31:0]	bus_014eaf0b_;
wire		bus_007a13ef_;
wire		get_dx_dy_u9;
wire	[31:0]	get_dx_dy_u5;
wire		get_dx_dy_u8;
wire		get_dx_dy;
wire		Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy_instance_DONE;
wire		get_dx_dy_u6;
wire	[31:0]	get_dx_dy_u7;
wire		bus_00836165_;
wire	[31:0]	bus_01e1cb9e_;
wire		bus_01ecea08_;
wire		bus_00b6f2f0_;
wire		bus_00bd3a89_;
wire		send_u77;
wire	[31:0]	send_u78;
wire	[31:0]	send_u76;
wire		send_u80;
wire		send_u74;
wire		Mean_Shift_Main_main_loop_cal_Centre_XY_send_instance_DONE;
wire	[15:0]	send_u75;
wire	[15:0]	send_u73;
wire		send_u79;
wire	[15:0]	send;
wire		updateCentreXY_u12;
wire	[31:0]	updateCentreXY_u9;
wire	[31:0]	updateCentreXY_u11;
wire		updateCentreXY_u10;
wire	[31:0]	updateCentreXY_u7;
wire		updateCentreXY;
wire		Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY_instance_DONE;
wire		updateCentreXY_u13;
wire		updateCentreXY_u8;
wire		bus_00a11981_;
wire	[31:0]	initialise_u17;
wire		initialise;
wire		Mean_Shift_Main_main_loop_cal_Centre_XY_initialise_instance_DONE;
wire	[31:0]	initialise_u15;
wire		initialise_u16;
wire	[31:0]	initialise_u19;
wire		initialise_u18;
wire		bus_0175ae60_;
wire	[31:0]	bus_016f1eaa_;
wire		bus_006c2826_;
wire	[31:0]	bus_00b55d4e_;
wire	[31:0]	bus_0049cdb6_;
wire		bus_009a0a8a_;
wire		bus_0060d7dc_;
wire		bus_00644c32_;
assign centre_x_out_COUNT=send;
assign centre_x_out_SEND=send_u77;
assign initialise_go=scheduler_u205;
assign get_dx_dy_go=scheduler_u206;
assign centre_y_out_COUNT=send_u73;
assign send_done=bus_00836165_;
assign get_dx_dy_done=bus_009a0a8a_;
assign loop_status_DATA=send_u79;
assign centre_y_out_SEND=send_u74;
assign loop_status_SEND=send_u80;
assign dy_i_ACK=get_dx_dy_u9;
assign send_go=scheduler_u208;
assign loop_status_COUNT=send_u75;
assign centre_y_out_DATA=send_u76;
assign updateCentreXY_done=bus_01ecea08_;
assign updateCentreXY_go=scheduler_u207;
assign centre_x_out_DATA=send_u78;
assign initialise_done=bus_00644c32_;
assign dx_i_ACK=get_dx_dy_u8;
Mean_Shift_Main_main_loop_cal_Centre_XY_scheduler Mean_Shift_Main_main_loop_cal_Centre_XY_scheduler_instance(.CLK(CLK), 
  .RESET(bus_007a13ef_), .GO(bus_00a11981_), .port_01d47682_(bus_00b6f2f0_), .port_00d3b889_(bus_00bd3a89_), 
  .port_00f3bd7f_(bus_0175ae60_), .port_007deb7a_(bus_0060d7dc_), .port_015383f0_(send_done), 
  .port_010c7e3e_(centre_y_out_RDY), .port_01b188cd_(get_dx_dy_done), .port_0165b813_(loop_status_RDY), 
  .port_00d1e81b_(initialise_done), .port_01873f19_(dx_i_SEND), .port_014a5937_(centre_x_out_RDY), 
  .port_00232495_(updateCentreXY_done), .port_0077b67f_(dy_i_SEND), .RESULT(scheduler), 
  .RESULT_u882(scheduler_u198), .RESULT_u883(scheduler_u199), .RESULT_u884(scheduler_u200), 
  .RESULT_u885(scheduler_u201), .RESULT_u886(scheduler_u202), .RESULT_u887(scheduler_u203), 
  .RESULT_u888(scheduler_u204), .RESULT_u889(scheduler_u205), .RESULT_u890(scheduler_u206), 
  .RESULT_u891(scheduler_u207), .RESULT_u892(scheduler_u208), .DONE(Mean_Shift_Main_main_loop_cal_Centre_XY_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_y Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_y_1(.bus_00c32d0b_(CLK), 
  .bus_01c2410e_(bus_007a13ef_), .bus_01db937d_(initialise_u18), .bus_00117acd_(32'h4c), 
  .bus_00b3f046_(updateCentreXY), .bus_001f95fc_(updateCentreXY_u7), .bus_014eaf0b_(bus_014eaf0b_));
Mean_Shift_Main_main_loop_cal_Centre_XY_globalreset_physical_01438587_ Mean_Shift_Main_main_loop_cal_Centre_XY_globalreset_physical_01438587__1(.bus_0096e2ec_(CLK), 
  .bus_01f3bcb8_(RESET), .bus_007a13ef_(bus_007a13ef_));
Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy_instance(.CLK(CLK), 
  .RESET(bus_007a13ef_), .GO(get_dx_dy_go), .port_0034623d_(dx_i_DATA), .port_00454144_(dy_i_DATA), 
  .RESULT(get_dx_dy), .RESULT_u893(get_dx_dy_u5), .RESULT_u894(get_dx_dy_u6), .RESULT_u895(get_dx_dy_u7), 
  .RESULT_u896(get_dx_dy_u8), .RESULT_u897(get_dx_dy_u9), .DONE(Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy_instance_DONE));
assign bus_00836165_=Mean_Shift_Main_main_loop_cal_Centre_XY_send_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Centre_XY_send_instance_DONE}};
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dy Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dy_1(.bus_01791513_(CLK), 
  .bus_0056cea5_(bus_007a13ef_), .bus_012402a7_(get_dx_dy_u6), .bus_00c63c9d_(get_dx_dy_u7), 
  .bus_01e1cb9e_(bus_01e1cb9e_));
assign bus_01ecea08_=Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY_instance_DONE}};
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s0_1(.bus_018df2cc_(CLK), 
  .bus_003f4150_(bus_007a13ef_), .bus_012559f9_(scheduler), .bus_00a257e4_(scheduler_u198), 
  .bus_00b6f2f0_(bus_00b6f2f0_));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s1_1(.bus_00761f0f_(CLK), 
  .bus_00f137fa_(bus_007a13ef_), .bus_00fad870_(scheduler_u199), .bus_01ba2b16_(scheduler_u200), 
  .bus_00bd3a89_(bus_00bd3a89_));
Mean_Shift_Main_main_loop_cal_Centre_XY_send Mean_Shift_Main_main_loop_cal_Centre_XY_send_instance(.CLK(CLK), 
  .GO(send_go), .port_002ad57e_(bus_014eaf0b_), .port_004e82ea_(bus_006c2826_), 
  .port_001d682f_(bus_016f1eaa_), .RESULT(send), .RESULT_u898(send_u73), .RESULT_u900(send_u74), 
  .RESULT_u899(send_u75), .RESULT_u901(send_u76), .RESULT_u902(send_u77), .RESULT_u903(send_u78), 
  .RESULT_u905(send_u79), .RESULT_u904(send_u80), .DONE(Mean_Shift_Main_main_loop_cal_Centre_XY_send_instance_DONE));
Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY_instance(.CLK(CLK), 
  .RESET(bus_007a13ef_), .GO(updateCentreXY_go), .port_0076b206_(bus_01e1cb9e_), 
  .port_00262a0e_(bus_014eaf0b_), .port_00f0b715_(bus_0049cdb6_), .port_019c4cce_(bus_016f1eaa_), 
  .port_01774594_(bus_00b55d4e_), .RESULT(updateCentreXY), .RESULT_u906(updateCentreXY_u7), 
  .RESULT_u907(updateCentreXY_u8), .RESULT_u908(updateCentreXY_u9), .RESULT_u909(updateCentreXY_u10), 
  .RESULT_u910(updateCentreXY_u11), .RESULT_u911(updateCentreXY_u12), .RESULT_u912(updateCentreXY_u13), 
  .DONE(Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY_instance_DONE));
Mean_Shift_Main_main_loop_cal_Centre_XY_Kicker_17 Mean_Shift_Main_main_loop_cal_Centre_XY_Kicker_17_1(.CLK(CLK), 
  .RESET(bus_007a13ef_), .bus_00a11981_(bus_00a11981_));
Mean_Shift_Main_main_loop_cal_Centre_XY_initialise Mean_Shift_Main_main_loop_cal_Centre_XY_initialise_instance(.CLK(CLK), 
  .RESET(bus_007a13ef_), .GO(initialise_go), .RESULT(initialise), .RESULT_u913(initialise_u15), 
  .RESULT_u914(initialise_u16), .RESULT_u915(initialise_u17), .RESULT_u916(initialise_u18), 
  .RESULT_u917(initialise_u19), .DONE(Mean_Shift_Main_main_loop_cal_Centre_XY_initialise_instance_DONE));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s2 Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s2_1(.bus_00246584_(CLK), 
  .bus_0184eb58_(bus_007a13ef_), .bus_008762ca_(scheduler_u201), .bus_01574220_(scheduler_u202), 
  .bus_0175ae60_(bus_0175ae60_));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_x Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_x_1(.bus_00e7ef93_(CLK), 
  .bus_0121c043_(bus_007a13ef_), .bus_01398aa2_(initialise), .bus_00f37f5d_(32'h9f), 
  .bus_01caa173_(updateCentreXY_u10), .bus_00633bef_(updateCentreXY_u11), .bus_016f1eaa_(bus_016f1eaa_));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_while_loop_status Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_while_loop_status_1(.bus_01a57a67_(CLK), 
  .bus_01070c51_(bus_007a13ef_), .bus_0100ff9f_(updateCentreXY_u12), .bus_00d7e194_(updateCentreXY_u13), 
  .bus_006c2826_(bus_006c2826_));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dx Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dx_1(.bus_00e7e42c_(CLK), 
  .bus_00350d5f_(bus_007a13ef_), .bus_001826c9_(get_dx_dy), .bus_014b1491_(get_dx_dy_u5), 
  .bus_00b55d4e_(bus_00b55d4e_));
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_loopcount Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_loopcount_1(.bus_007e6bb2_(CLK), 
  .bus_01d09e74_(bus_007a13ef_), .bus_019af17f_(initialise_u16), .bus_0144e922_(32'h0), 
  .bus_00db3277_(updateCentreXY_u8), .bus_00375525_(updateCentreXY_u9), .bus_0049cdb6_(bus_0049cdb6_));
assign bus_009a0a8a_=Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy_instance_DONE}};
Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s3 Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s3_1(.bus_00396bf5_(CLK), 
  .bus_01dec9f2_(bus_007a13ef_), .bus_00736f5f_(scheduler_u203), .bus_00e6d8e5_(scheduler_u204), 
  .bus_0060d7dc_(bus_0060d7dc_));
assign bus_00644c32_=Mean_Shift_Main_main_loop_cal_Centre_XY_initialise_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Centre_XY_initialise_instance_DONE}};
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_scheduler(CLK, RESET, GO, port_01d47682_, port_00d3b889_, port_00f3bd7f_, port_007deb7a_, port_015383f0_, port_010c7e3e_, port_01b188cd_, port_0165b813_, port_01873f19_, port_00d1e81b_, port_014a5937_, port_00232495_, port_0077b67f_, RESULT, RESULT_u882, RESULT_u883, RESULT_u884, RESULT_u885, RESULT_u886, RESULT_u887, RESULT_u888, RESULT_u889, RESULT_u890, RESULT_u891, RESULT_u892, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_01d47682_;
input		port_00d3b889_;
input		port_00f3bd7f_;
input		port_007deb7a_;
input		port_015383f0_;
input		port_010c7e3e_;
input		port_01b188cd_;
input		port_0165b813_;
input		port_01873f19_;
input		port_00d1e81b_;
input		port_014a5937_;
input		port_00232495_;
input		port_0077b67f_;
output		RESULT;
output		RESULT_u882;
output		RESULT_u883;
output		RESULT_u884;
output		RESULT_u885;
output		RESULT_u886;
output		RESULT_u887;
output		RESULT_u888;
output		RESULT_u889;
output		RESULT_u890;
output		RESULT_u891;
output		RESULT_u892;
output		DONE;
wire		and_u1419_u0;
wire		and_u1420_u0;
wire		and_u1421_u0;
wire		and_u1422_u0;
wire		and_u1423_u0;
wire		not_u292_u0;
wire		and_u1424_u0;
wire		simplePinWrite;
wire		and_u1425_u0;
wire		and_u1426_u0;
wire		and_u1427_u0;
wire		not_u293_u0;
wire		and_u1428_u0;
wire		and_u1429_u0;
wire		not_u294_u0;
wire		and_u1430_u0;
wire		and_u1431_u0;
wire		simplePinWrite_u189;
wire		and_u1432_u0;
wire		and_u1433_u0;
wire		and_u1434_u0;
wire		and_u1435_u0;
wire		not_u295_u0;
wire		and_u1436_u0;
wire		simplePinWrite_u190;
wire		and_u1437_u0;
wire		and_u1438_u0;
wire		and_u1439_u0;
wire		and_u1440_u0;
wire		not_u296_u0;
wire		and_u1441_u0;
wire		not_u297_u0;
wire		and_u1442_u0;
wire		and_u1443_u0;
wire		simplePinWrite_u191;
wire		and_u1444_u0;
wire		and_u1445_u0;
wire		and_u1446_u0;
wire		or_u402_u0;
wire		mux_u470;
wire		or_u403_u0;
wire		mux_u471_u0;
wire		or_u404_u0;
wire		mux_u472_u0;
reg		and_delayed_u69=1'h0;
wire		or_u405_u0;
wire		mux_u473_u0;
wire		or_u406_u0;
wire		mux_u474_u0;
wire		or_u407_u0;
wire		or_u408_u0;
wire		mux_u475_u0;
reg		reg_01b7f998_u0=1'h0;
reg		reg_01b7f998_result_delayed_u0=1'h0;
wire		mux_u476_u0;
wire		or_u409_u0;
assign and_u1419_u0=or_u405_u0&or_u405_u0;
assign and_u1420_u0=port_01873f19_&port_0077b67f_;
assign and_u1421_u0=port_014a5937_&port_010c7e3e_;
assign and_u1422_u0=and_u1421_u0&port_0165b813_;
assign and_u1423_u0=and_u1419_u0&not_u292_u0;
assign not_u292_u0=~port_01d47682_;
assign and_u1424_u0=and_u1419_u0&port_01d47682_;
assign simplePinWrite=and_u1425_u0&{1{and_u1425_u0}};
assign and_u1425_u0=and_u1426_u0&and_u1426_u0;
assign and_u1426_u0=and_u1427_u0&and_u1427_u0;
assign and_u1427_u0=and_u1424_u0&and_u1419_u0;
assign not_u293_u0=~port_00d3b889_;
assign and_u1428_u0=and_u1419_u0&port_00d3b889_;
assign and_u1429_u0=and_u1419_u0&not_u293_u0;
assign not_u294_u0=~and_u1420_u0;
assign and_u1430_u0=and_u1434_u0&not_u294_u0;
assign and_u1431_u0=and_u1434_u0&and_u1420_u0;
assign simplePinWrite_u189=and_u1432_u0&{1{and_u1432_u0}};
assign and_u1432_u0=and_u1433_u0&and_u1433_u0;
assign and_u1433_u0=and_u1431_u0&and_u1434_u0;
assign and_u1434_u0=and_u1428_u0&and_u1419_u0;
assign and_u1435_u0=and_u1419_u0&not_u295_u0;
assign not_u295_u0=~port_00f3bd7f_;
assign and_u1436_u0=and_u1419_u0&port_00f3bd7f_;
assign simplePinWrite_u190=and_u1437_u0&{1{and_u1437_u0}};
assign and_u1437_u0=and_u1438_u0&and_u1438_u0;
assign and_u1438_u0=and_u1439_u0&and_u1439_u0;
assign and_u1439_u0=and_u1436_u0&and_u1419_u0;
assign and_u1440_u0=and_u1419_u0&not_u296_u0;
assign not_u296_u0=~port_007deb7a_;
assign and_u1441_u0=and_u1419_u0&port_007deb7a_;
assign not_u297_u0=~and_u1422_u0;
assign and_u1442_u0=and_u1445_u0&not_u297_u0;
assign and_u1443_u0=and_u1445_u0&and_u1422_u0;
assign simplePinWrite_u191=and_u1444_u0&{1{and_u1444_u0}};
assign and_u1444_u0=and_u1443_u0&and_u1445_u0;
assign and_u1445_u0=and_u1446_u0&and_u1446_u0;
assign and_u1446_u0=and_u1441_u0&and_u1419_u0;
assign or_u402_u0=and_u1425_u0|and_u1432_u0|and_u1444_u0;
assign mux_u470=({1{and_u1425_u0}}&1'h1)|({1{and_u1432_u0}}&1'h0)|({1{and_u1444_u0}}&1'h1);
assign or_u403_u0=and_u1437_u0|and_u1444_u0;
assign mux_u471_u0=(and_u1437_u0)?1'h1:1'h0;
assign or_u404_u0=and_u1432_u0|and_u1437_u0;
assign mux_u472_u0=(and_u1432_u0)?1'h1:1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u69<=1'h0;
else and_delayed_u69<=and_u1419_u0;
end
assign or_u405_u0=and_delayed_u69|reg_01b7f998_result_delayed_u0;
assign mux_u473_u0=(GO)?1'h0:mux_u470;
assign or_u406_u0=GO|or_u402_u0;
assign mux_u474_u0=(GO)?1'h1:1'h0;
assign or_u407_u0=GO|and_u1425_u0;
assign or_u408_u0=GO|or_u403_u0;
assign mux_u475_u0=(GO)?1'h0:mux_u471_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b7f998_u0<=1'h0;
else reg_01b7f998_u0<=GO;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b7f998_result_delayed_u0<=1'h0;
else reg_01b7f998_result_delayed_u0<=reg_01b7f998_u0;
end
assign mux_u476_u0=(GO)?1'h0:mux_u472_u0;
assign or_u409_u0=GO|or_u404_u0;
assign RESULT=or_u407_u0;
assign RESULT_u882=mux_u474_u0;
assign RESULT_u883=or_u406_u0;
assign RESULT_u884=mux_u473_u0;
assign RESULT_u885=or_u409_u0;
assign RESULT_u886=mux_u476_u0;
assign RESULT_u887=or_u408_u0;
assign RESULT_u888=mux_u475_u0;
assign RESULT_u889=simplePinWrite;
assign RESULT_u890=simplePinWrite_u189;
assign RESULT_u891=simplePinWrite_u190;
assign RESULT_u892=simplePinWrite_u191;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01d533f9_(endianswapper_01d533f9_in, endianswapper_01d533f9_out);
input	[31:0]	endianswapper_01d533f9_in;
output	[31:0]	endianswapper_01d533f9_out;
assign endianswapper_01d533f9_out=endianswapper_01d533f9_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01683269_(endianswapper_01683269_in, endianswapper_01683269_out);
input	[31:0]	endianswapper_01683269_in;
output	[31:0]	endianswapper_01683269_out;
assign endianswapper_01683269_out=endianswapper_01683269_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_y(bus_00c32d0b_, bus_01c2410e_, bus_01db937d_, bus_00117acd_, bus_00b3f046_, bus_001f95fc_, bus_014eaf0b_);
input		bus_00c32d0b_;
input		bus_01c2410e_;
input		bus_01db937d_;
input	[31:0]	bus_00117acd_;
input		bus_00b3f046_;
input	[31:0]	bus_001f95fc_;
output	[31:0]	bus_014eaf0b_;
wire	[31:0]	endianswapper_01d533f9_out;
wire	[31:0]	mux_00d15a24_u0;
reg	[31:0]	stateVar_centre_y_u4=32'h0;
wire		or_008ad585_u0;
wire	[31:0]	endianswapper_01683269_out;
assign bus_014eaf0b_=endianswapper_01683269_out;
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01d533f9_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01d533f9__1(.endianswapper_01d533f9_in(mux_00d15a24_u0), 
  .endianswapper_01d533f9_out(endianswapper_01d533f9_out));
assign mux_00d15a24_u0=(bus_01db937d_)?32'h4c:bus_001f95fc_;
always @(posedge bus_00c32d0b_ or posedge bus_01c2410e_)
begin
if (bus_01c2410e_)
stateVar_centre_y_u4<=32'h0;
else if (or_008ad585_u0)
stateVar_centre_y_u4<=endianswapper_01d533f9_out;
end
assign or_008ad585_u0=bus_01db937d_|bus_00b3f046_;
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01683269_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01683269__1(.endianswapper_01683269_in(stateVar_centre_y_u4), 
  .endianswapper_01683269_out(endianswapper_01683269_out));
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_globalreset_physical_01438587_(bus_0096e2ec_, bus_01f3bcb8_, bus_007a13ef_);
input		bus_0096e2ec_;
input		bus_01f3bcb8_;
output		bus_007a13ef_;
wire		and_01601c46_u0;
reg		cross_u17=1'h0;
reg		final_u17=1'h1;
reg		glitch_u17=1'h0;
reg		sample_u17=1'h0;
wire		or_00eaf1c1_u0;
wire		not_01a23ade_u0;
assign and_01601c46_u0=cross_u17&glitch_u17;
assign bus_007a13ef_=or_00eaf1c1_u0;
always @(posedge bus_0096e2ec_)
begin
cross_u17<=sample_u17;
end
always @(posedge bus_0096e2ec_)
begin
final_u17<=not_01a23ade_u0;
end
always @(posedge bus_0096e2ec_)
begin
glitch_u17<=cross_u17;
end
always @(posedge bus_0096e2ec_)
begin
sample_u17<=1'h1;
end
assign or_00eaf1c1_u0=bus_01f3bcb8_|final_u17;
assign not_01a23ade_u0=~and_01601c46_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_get_dx_dy(CLK, RESET, GO, port_0034623d_, port_00454144_, RESULT, RESULT_u893, RESULT_u894, RESULT_u895, RESULT_u896, RESULT_u897, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0034623d_;
input	[31:0]	port_00454144_;
output		RESULT;
output	[31:0]	RESULT_u893;
output		RESULT_u894;
output	[31:0]	RESULT_u895;
output		RESULT_u896;
output		RESULT_u897;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u192;
reg		reg_00c7624d_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u192=GO&{1{GO}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00c7624d_u0<=1'h0;
else reg_00c7624d_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u893=port_0034623d_;
assign RESULT_u894=GO;
assign RESULT_u895=port_00454144_;
assign RESULT_u896=simplePinWrite;
assign RESULT_u897=simplePinWrite_u192;
assign DONE=reg_00c7624d_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01e3d241_(endianswapper_01e3d241_in, endianswapper_01e3d241_out);
input	[31:0]	endianswapper_01e3d241_in;
output	[31:0]	endianswapper_01e3d241_out;
assign endianswapper_01e3d241_out=endianswapper_01e3d241_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_017dc8db_(endianswapper_017dc8db_in, endianswapper_017dc8db_out);
input	[31:0]	endianswapper_017dc8db_in;
output	[31:0]	endianswapper_017dc8db_out;
assign endianswapper_017dc8db_out=endianswapper_017dc8db_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dy(bus_01791513_, bus_0056cea5_, bus_012402a7_, bus_00c63c9d_, bus_01e1cb9e_);
input		bus_01791513_;
input		bus_0056cea5_;
input		bus_012402a7_;
input	[31:0]	bus_00c63c9d_;
output	[31:0]	bus_01e1cb9e_;
reg	[31:0]	stateVar_dy_u1=32'h0;
wire	[31:0]	endianswapper_01e3d241_out;
wire	[31:0]	endianswapper_017dc8db_out;
assign bus_01e1cb9e_=endianswapper_017dc8db_out;
always @(posedge bus_01791513_ or posedge bus_0056cea5_)
begin
if (bus_0056cea5_)
stateVar_dy_u1<=32'h0;
else if (bus_012402a7_)
stateVar_dy_u1<=endianswapper_01e3d241_out;
end
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01e3d241_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01e3d241__1(.endianswapper_01e3d241_in(bus_00c63c9d_), 
  .endianswapper_01e3d241_out(endianswapper_01e3d241_out));
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_017dc8db_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_017dc8db__1(.endianswapper_017dc8db_in(stateVar_dy_u1), 
  .endianswapper_017dc8db_out(endianswapper_017dc8db_out));
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s0(bus_018df2cc_, bus_003f4150_, bus_012559f9_, bus_00a257e4_, bus_00b6f2f0_);
input		bus_018df2cc_;
input		bus_003f4150_;
input		bus_012559f9_;
input		bus_00a257e4_;
output		bus_00b6f2f0_;
reg		stateVar_state_s0_u13=1'h0;
always @(posedge bus_018df2cc_ or posedge bus_003f4150_)
begin
if (bus_003f4150_)
stateVar_state_s0_u13<=1'h0;
else if (bus_012559f9_)
stateVar_state_s0_u13<=bus_00a257e4_;
end
assign bus_00b6f2f0_=stateVar_state_s0_u13;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s1(bus_00761f0f_, bus_00f137fa_, bus_00fad870_, bus_01ba2b16_, bus_00bd3a89_);
input		bus_00761f0f_;
input		bus_00f137fa_;
input		bus_00fad870_;
input		bus_01ba2b16_;
output		bus_00bd3a89_;
reg		stateVar_state_s1_u15=1'h0;
always @(posedge bus_00761f0f_ or posedge bus_00f137fa_)
begin
if (bus_00f137fa_)
stateVar_state_s1_u15<=1'h0;
else if (bus_00fad870_)
stateVar_state_s1_u15<=bus_01ba2b16_;
end
assign bus_00bd3a89_=stateVar_state_s1_u15;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_send(CLK, GO, port_002ad57e_, port_004e82ea_, port_001d682f_, RESULT, RESULT_u898, RESULT_u899, RESULT_u900, RESULT_u901, RESULT_u902, RESULT_u903, RESULT_u904, RESULT_u905, DONE);
input		CLK;
input		GO;
input	[31:0]	port_002ad57e_;
input		port_004e82ea_;
input	[31:0]	port_001d682f_;
output	[15:0]	RESULT;
output	[15:0]	RESULT_u898;
output	[15:0]	RESULT_u899;
output		RESULT_u900;
output	[31:0]	RESULT_u901;
output		RESULT_u902;
output	[31:0]	RESULT_u903;
output		RESULT_u904;
output		RESULT_u905;
output		DONE;
wire	[15:0]	simplePinWrite;
wire		simplePinWrite_u193;
wire	[31:0]	simplePinWrite_u194;
wire	[31:0]	simplePinWrite_u195;
wire	[15:0]	simplePinWrite_u196;
wire		simplePinWrite_u197;
wire	[15:0]	simplePinWrite_u198;
wire		simplePinWrite_u199;
wire		simplePinWrite_u200;
assign simplePinWrite=16'h1&{16{1'h1}};
assign simplePinWrite_u193=GO&{1{GO}};
assign simplePinWrite_u194=port_001d682f_;
assign simplePinWrite_u195=port_002ad57e_;
assign simplePinWrite_u196=16'h1&{16{1'h1}};
assign simplePinWrite_u197=GO&{1{GO}};
assign simplePinWrite_u198=16'h1&{16{1'h1}};
assign simplePinWrite_u199=GO&{1{GO}};
assign simplePinWrite_u200=port_004e82ea_;
assign RESULT=simplePinWrite;
assign RESULT_u898=simplePinWrite_u196;
assign RESULT_u899=simplePinWrite_u198;
assign RESULT_u900=simplePinWrite_u197;
assign RESULT_u901=simplePinWrite_u195;
assign RESULT_u902=simplePinWrite_u193;
assign RESULT_u903=simplePinWrite_u194;
assign RESULT_u904=simplePinWrite_u199;
assign RESULT_u905=simplePinWrite_u200;
assign DONE=GO;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_updateCentreXY(CLK, RESET, GO, port_0076b206_, port_00262a0e_, port_00f0b715_, port_019c4cce_, port_01774594_, RESULT, RESULT_u906, RESULT_u907, RESULT_u908, RESULT_u909, RESULT_u910, RESULT_u911, RESULT_u912, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0076b206_;
input	[31:0]	port_00262a0e_;
input	[31:0]	port_00f0b715_;
input	[31:0]	port_019c4cce_;
input	[31:0]	port_01774594_;
output		RESULT;
output	[31:0]	RESULT_u906;
output		RESULT_u907;
output	[31:0]	RESULT_u908;
output		RESULT_u909;
output	[31:0]	RESULT_u910;
output		RESULT_u911;
output		RESULT_u912;
output		DONE;
wire	[31:0]	add;
wire	[31:0]	add_u432;
wire	[31:0]	add_u433;
wire		equals;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_u18_b_signed;
wire		equals_u18;
wire signed	[31:0]	equals_u18_a_signed;
wire		and_u1447_u0;
wire signed	[31:0]	greaterThan_b_signed;
wire signed	[31:0]	greaterThan_a_signed;
wire		greaterThan;
wire		or_u410_u0;
wire		and_u1448_u0;
wire		not_u298_u0;
wire		and_u1449_u0;
wire		and_u1450_u0;
wire		and_u1451_u0;
wire		mux_u477;
reg		reg_01eb09f1_u0=1'h0;
assign add=port_019c4cce_+port_01774594_;
assign add_u432=port_00262a0e_+port_0076b206_;
assign add_u433=port_00f0b715_+32'h1;
assign equals_a_signed=port_01774594_;
assign equals_b_signed=32'h0;
assign equals=equals_a_signed==equals_b_signed;
assign equals_u18_a_signed=port_0076b206_;
assign equals_u18_b_signed=32'h0;
assign equals_u18=equals_u18_a_signed==equals_u18_b_signed;
assign and_u1447_u0=equals&equals_u18;
assign greaterThan_a_signed=add_u433;
assign greaterThan_b_signed=32'h14;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign or_u410_u0=and_u1447_u0|greaterThan;
assign and_u1448_u0=GO&or_u410_u0;
assign not_u298_u0=~or_u410_u0;
assign and_u1449_u0=GO&not_u298_u0;
assign and_u1450_u0=and_u1449_u0&GO;
assign and_u1451_u0=and_u1448_u0&GO;
assign mux_u477=(and_u1451_u0)?1'h0:1'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01eb09f1_u0<=1'h0;
else reg_01eb09f1_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u906=add_u432;
assign RESULT_u907=GO;
assign RESULT_u908=add_u433;
assign RESULT_u909=GO;
assign RESULT_u910=add;
assign RESULT_u911=GO;
assign RESULT_u912=mux_u477;
assign DONE=reg_01eb09f1_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_Kicker_17(CLK, RESET, bus_00a11981_);
input		CLK;
input		RESET;
output		bus_00a11981_;
wire		bus_01d985c3_;
wire		bus_0121cf45_;
reg		kicker_res=1'h0;
reg		kicker_2=1'h0;
wire		bus_015e9ac6_;
wire		bus_003a7017_;
reg		kicker_1=1'h0;
assign bus_01d985c3_=~RESET;
assign bus_0121cf45_=bus_01d985c3_&kicker_1;
always @(posedge CLK)
begin
kicker_res<=bus_003a7017_;
end
always @(posedge CLK)
begin
kicker_2<=bus_0121cf45_;
end
assign bus_015e9ac6_=~kicker_2;
assign bus_00a11981_=kicker_res;
assign bus_003a7017_=kicker_1&bus_01d985c3_&bus_015e9ac6_;
always @(posedge CLK)
begin
kicker_1<=bus_01d985c3_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_initialise(CLK, RESET, GO, RESULT, RESULT_u913, RESULT_u914, RESULT_u915, RESULT_u916, RESULT_u917, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u913;
output		RESULT_u914;
output	[31:0]	RESULT_u915;
output		RESULT_u916;
output	[31:0]	RESULT_u917;
output		DONE;
reg		reg_003a4ab0_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_003a4ab0_u0<=1'h0;
else reg_003a4ab0_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u913=32'h9f;
assign RESULT_u914=GO;
assign RESULT_u915=32'h0;
assign RESULT_u916=GO;
assign RESULT_u917=32'h4c;
assign DONE=reg_003a4ab0_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s2(bus_00246584_, bus_0184eb58_, bus_008762ca_, bus_01574220_, bus_0175ae60_);
input		bus_00246584_;
input		bus_0184eb58_;
input		bus_008762ca_;
input		bus_01574220_;
output		bus_0175ae60_;
reg		stateVar_state_s2_u8=1'h0;
always @(posedge bus_00246584_ or posedge bus_0184eb58_)
begin
if (bus_0184eb58_)
stateVar_state_s2_u8<=1'h0;
else if (bus_008762ca_)
stateVar_state_s2_u8<=bus_01574220_;
end
assign bus_0175ae60_=stateVar_state_s2_u8;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ddaee3_(endianswapper_01ddaee3_in, endianswapper_01ddaee3_out);
input	[31:0]	endianswapper_01ddaee3_in;
output	[31:0]	endianswapper_01ddaee3_out;
assign endianswapper_01ddaee3_out=endianswapper_01ddaee3_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ef64b4_(endianswapper_01ef64b4_in, endianswapper_01ef64b4_out);
input	[31:0]	endianswapper_01ef64b4_in;
output	[31:0]	endianswapper_01ef64b4_out;
assign endianswapper_01ef64b4_out=endianswapper_01ef64b4_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_centre_x(bus_00e7ef93_, bus_0121c043_, bus_01398aa2_, bus_00f37f5d_, bus_01caa173_, bus_00633bef_, bus_016f1eaa_);
input		bus_00e7ef93_;
input		bus_0121c043_;
input		bus_01398aa2_;
input	[31:0]	bus_00f37f5d_;
input		bus_01caa173_;
input	[31:0]	bus_00633bef_;
output	[31:0]	bus_016f1eaa_;
wire	[31:0]	endianswapper_01ddaee3_out;
wire	[31:0]	mux_00f65103_u0;
wire		or_0006f056_u0;
reg	[31:0]	stateVar_centre_x_u4=32'h0;
wire	[31:0]	endianswapper_01ef64b4_out;
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ddaee3_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ddaee3__1(.endianswapper_01ddaee3_in(stateVar_centre_x_u4), 
  .endianswapper_01ddaee3_out(endianswapper_01ddaee3_out));
assign bus_016f1eaa_=endianswapper_01ddaee3_out;
assign mux_00f65103_u0=(bus_01398aa2_)?32'h9f:bus_00633bef_;
assign or_0006f056_u0=bus_01398aa2_|bus_01caa173_;
always @(posedge bus_00e7ef93_ or posedge bus_0121c043_)
begin
if (bus_0121c043_)
stateVar_centre_x_u4<=32'h0;
else if (or_0006f056_u0)
stateVar_centre_x_u4<=endianswapper_01ef64b4_out;
end
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ef64b4_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ef64b4__1(.endianswapper_01ef64b4_in(mux_00f65103_u0), 
  .endianswapper_01ef64b4_out(endianswapper_01ef64b4_out));
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_while_loop_status(bus_01a57a67_, bus_01070c51_, bus_0100ff9f_, bus_00d7e194_, bus_006c2826_);
input		bus_01a57a67_;
input		bus_01070c51_;
input		bus_0100ff9f_;
input		bus_00d7e194_;
output		bus_006c2826_;
reg		stateVar_while_loop_status_u4=1'h0;
always @(posedge bus_01a57a67_ or posedge bus_01070c51_)
begin
if (bus_01070c51_)
stateVar_while_loop_status_u4<=1'h0;
else if (bus_0100ff9f_)
stateVar_while_loop_status_u4<=bus_00d7e194_;
end
assign bus_006c2826_=stateVar_while_loop_status_u4;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01462cd4_(endianswapper_01462cd4_in, endianswapper_01462cd4_out);
input	[31:0]	endianswapper_01462cd4_in;
output	[31:0]	endianswapper_01462cd4_out;
assign endianswapper_01462cd4_out=endianswapper_01462cd4_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ffc848_(endianswapper_01ffc848_in, endianswapper_01ffc848_out);
input	[31:0]	endianswapper_01ffc848_in;
output	[31:0]	endianswapper_01ffc848_out;
assign endianswapper_01ffc848_out=endianswapper_01ffc848_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_dx(bus_00e7e42c_, bus_00350d5f_, bus_001826c9_, bus_014b1491_, bus_00b55d4e_);
input		bus_00e7e42c_;
input		bus_00350d5f_;
input		bus_001826c9_;
input	[31:0]	bus_014b1491_;
output	[31:0]	bus_00b55d4e_;
wire	[31:0]	endianswapper_01462cd4_out;
wire	[31:0]	endianswapper_01ffc848_out;
reg	[31:0]	stateVar_dx_u1=32'h0;
assign bus_00b55d4e_=endianswapper_01ffc848_out;
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01462cd4_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01462cd4__1(.endianswapper_01462cd4_in(bus_014b1491_), 
  .endianswapper_01462cd4_out(endianswapper_01462cd4_out));
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ffc848_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01ffc848__1(.endianswapper_01ffc848_in(stateVar_dx_u1), 
  .endianswapper_01ffc848_out(endianswapper_01ffc848_out));
always @(posedge bus_00e7e42c_ or posedge bus_00350d5f_)
begin
if (bus_00350d5f_)
stateVar_dx_u1<=32'h0;
else if (bus_001826c9_)
stateVar_dx_u1<=endianswapper_01462cd4_out;
end
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_0020e8c2_(endianswapper_0020e8c2_in, endianswapper_0020e8c2_out);
input	[31:0]	endianswapper_0020e8c2_in;
output	[31:0]	endianswapper_0020e8c2_out;
assign endianswapper_0020e8c2_out=endianswapper_0020e8c2_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01bbbd84_(endianswapper_01bbbd84_in, endianswapper_01bbbd84_out);
input	[31:0]	endianswapper_01bbbd84_in;
output	[31:0]	endianswapper_01bbbd84_out;
assign endianswapper_01bbbd84_out=endianswapper_01bbbd84_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_loopcount(bus_007e6bb2_, bus_01d09e74_, bus_019af17f_, bus_0144e922_, bus_00db3277_, bus_00375525_, bus_0049cdb6_);
input		bus_007e6bb2_;
input		bus_01d09e74_;
input		bus_019af17f_;
input	[31:0]	bus_0144e922_;
input		bus_00db3277_;
input	[31:0]	bus_00375525_;
output	[31:0]	bus_0049cdb6_;
wire	[31:0]	mux_0070bb9c_u0;
reg	[31:0]	stateVar_loopcount_u1=32'h0;
wire	[31:0]	endianswapper_0020e8c2_out;
wire	[31:0]	endianswapper_01bbbd84_out;
wire		or_0040e78f_u0;
assign mux_0070bb9c_u0=(bus_019af17f_)?32'h0:bus_00375525_;
assign bus_0049cdb6_=endianswapper_0020e8c2_out;
always @(posedge bus_007e6bb2_ or posedge bus_01d09e74_)
begin
if (bus_01d09e74_)
stateVar_loopcount_u1<=32'h0;
else if (or_0040e78f_u0)
stateVar_loopcount_u1<=endianswapper_01bbbd84_out;
end
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_0020e8c2_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_0020e8c2__1(.endianswapper_0020e8c2_in(stateVar_loopcount_u1), 
  .endianswapper_0020e8c2_out(endianswapper_0020e8c2_out));
Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01bbbd84_ Mean_Shift_Main_main_loop_cal_Centre_XY_endianswapper_01bbbd84__1(.endianswapper_01bbbd84_in(mux_0070bb9c_u0), 
  .endianswapper_01bbbd84_out(endianswapper_01bbbd84_out));
assign or_0040e78f_u0=bus_019af17f_|bus_00db3277_;
endmodule



module Mean_Shift_Main_main_loop_cal_Centre_XY_stateVar_state_s3(bus_00396bf5_, bus_01dec9f2_, bus_00736f5f_, bus_00e6d8e5_, bus_0060d7dc_);
input		bus_00396bf5_;
input		bus_01dec9f2_;
input		bus_00736f5f_;
input		bus_00e6d8e5_;
output		bus_0060d7dc_;
reg		stateVar_state_s3_u8=1'h0;
assign bus_0060d7dc_=stateVar_state_s3_u8;
always @(posedge bus_00396bf5_ or posedge bus_01dec9f2_)
begin
if (bus_01dec9f2_)
stateVar_state_s3_u8<=1'h0;
else if (bus_00736f5f_)
stateVar_state_s3_u8<=bus_00e6d8e5_;
end
endmodule


