// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:28 +0100
// 

module Mean_Shift_Main_main_loop_cal_Final_Centre_XY(loop_stat_DATA, Y_in_ACK, CLK, X_in_SEND, Y_out_COUNT, Y_in_SEND, X_out_RDY, Y_out_ACK, X_out_DATA, X_in_COUNT, loop_stat_SEND, RESET, X_in_ACK, Y_out_RDY, X_out_ACK, loop_stat_ACK, Y_in_DATA, Y_out_SEND, Y_in_COUNT, X_out_COUNT, X_out_SEND, loop_stat_COUNT, X_in_DATA, Y_out_DATA);
wire		get_input_done;
input		loop_stat_DATA;
output		Y_in_ACK;
input		CLK;
wire		is_final_XY_go;
input		X_in_SEND;
output	[15:0]	Y_out_COUNT;
input		Y_in_SEND;
input		X_out_RDY;
wire		get_and_send_XY_go;
input		Y_out_ACK;
output	[15:0]	X_out_DATA;
wire		get_and_send_XY_done;
input	[15:0]	X_in_COUNT;
input		loop_stat_SEND;
input		RESET;
output		X_in_ACK;
input		Y_out_RDY;
input		X_out_ACK;
output		loop_stat_ACK;
input	[31:0]	Y_in_DATA;
output		Y_out_SEND;
input	[15:0]	Y_in_COUNT;
wire		is_final_XY_done;
wire		get_input_go;
output	[15:0]	X_out_COUNT;
output		X_out_SEND;
input	[15:0]	loop_stat_COUNT;
input	[31:0]	X_in_DATA;
output	[15:0]	Y_out_DATA;
wire		bus_01c2cd71_;
wire	[15:0]	bus_00332f45_;
wire		scheduler;
wire		scheduler_u214;
wire		scheduler_u209;
wire		scheduler_u212;
wire		Mean_Shift_Main_main_loop_cal_Final_Centre_XY_scheduler_instance_DONE;
wire		scheduler_u213;
wire		scheduler_u210;
wire		scheduler_u211;
wire		bus_01b2ce94_;
wire		is_final_XY_u1;
wire		is_final_XY;
wire		Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY_instance_DONE;
wire		bus_00267bb5_;
wire		get_input_u9;
wire		get_input;
wire	[15:0]	get_input_u12;
wire		get_input_u15;
wire	[15:0]	get_input_u8;
wire		Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input_instance_DONE;
wire		get_input_u11;
wire		get_input_u14;
wire		get_input_u10;
wire		get_input_u13;
wire		bus_015fc518_;
wire		bus_00b2e011_;
wire		bus_016a5111_;
wire		bus_01b90d34_;
wire	[15:0]	bus_01ede254_;
wire	[15:0]	get_and_send_XY_u9;
wire	[15:0]	get_and_send_XY;
wire		get_and_send_XY_u8;
wire	[15:0]	get_and_send_XY_u6;
wire		Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY_instance_DONE;
wire	[15:0]	get_and_send_XY_u5;
wire		get_and_send_XY_u7;
wire		bus_01af983d_;
assign get_input_done=bus_01af983d_;
assign Y_in_ACK=get_input_u13;
assign is_final_XY_go=scheduler_u213;
assign Y_out_COUNT=get_and_send_XY_u6;
assign get_and_send_XY_go=scheduler_u214;
assign X_out_DATA=get_and_send_XY;
assign get_and_send_XY_done=bus_01b2ce94_;
assign X_in_ACK=get_input_u15;
assign loop_stat_ACK=get_input_u14;
assign Y_out_SEND=get_and_send_XY_u8;
assign is_final_XY_done=bus_01b90d34_;
assign get_input_go=scheduler_u212;
assign X_out_COUNT=get_and_send_XY_u5;
assign X_out_SEND=get_and_send_XY_u7;
assign Y_out_DATA=get_and_send_XY_u9;
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s0_1(.bus_01bad676_(CLK), 
  .bus_0155e404_(bus_016a5111_), .bus_0030e687_(scheduler), .bus_0015d90f_(scheduler_u209), 
  .bus_01c2cd71_(bus_01c2cd71_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_y Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_y_1(.bus_002d38a3_(CLK), 
  .bus_00e18bca_(bus_016a5111_), .bus_0121ccad_(get_input_u11), .bus_00378b65_(get_input_u12), 
  .bus_00332f45_(bus_00332f45_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_scheduler Mean_Shift_Main_main_loop_cal_Final_Centre_XY_scheduler_instance(.CLK(CLK), 
  .RESET(bus_016a5111_), .GO(bus_00267bb5_), .port_0023834c_(bus_01c2cd71_), .port_01728ff3_(bus_00b2e011_), 
  .port_00b47b7a_(bus_015fc518_), .port_00210986_(get_and_send_XY_done), .port_01d15d79_(get_input_done), 
  .port_0180a768_(loop_stat_SEND), .port_01f6ff60_(X_in_SEND), .port_01c8bec7_(Y_in_SEND), 
  .port_01c9f6a0_(Y_out_RDY), .port_00409c5a_(X_out_RDY), .port_00fc9590_(is_final_XY_done), 
  .RESULT(scheduler), .RESULT_u918(scheduler_u209), .RESULT_u919(scheduler_u210), 
  .RESULT_u920(scheduler_u211), .RESULT_u921(scheduler_u212), .RESULT_u922(scheduler_u213), 
  .RESULT_u923(scheduler_u214), .DONE(Mean_Shift_Main_main_loop_cal_Final_Centre_XY_scheduler_instance_DONE));
assign bus_01b2ce94_=Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY_instance_DONE}};
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY_instance(.CLK(CLK), 
  .RESET(bus_016a5111_), .GO(is_final_XY_go), .RESULT(is_final_XY), .RESULT_u924(is_final_XY_u1), 
  .DONE(Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY_instance_DONE));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Kicker_18 Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Kicker_18_1(.CLK(CLK), 
  .RESET(bus_016a5111_), .bus_00267bb5_(bus_00267bb5_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input_instance(.CLK(CLK), 
  .RESET(bus_016a5111_), .GO(get_input_go), .port_0159df48_(loop_stat_DATA), .port_00fa1f0a_(Y_in_DATA), 
  .port_01172a48_(X_in_DATA), .RESULT(get_input), .RESULT_u925(get_input_u8), .RESULT_u926(get_input_u9), 
  .RESULT_u927(get_input_u10), .RESULT_u928(get_input_u11), .RESULT_u929(get_input_u12), 
  .RESULT_u930(get_input_u13), .RESULT_u931(get_input_u14), .RESULT_u932(get_input_u15), 
  .DONE(Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input_instance_DONE));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_while_loop_status Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_while_loop_status_1(.bus_00880a96_(CLK), 
  .bus_016f230d_(bus_016a5111_), .bus_0075dd87_(get_input_u9), .bus_00010bdc_(get_input_u10), 
  .bus_00ffa950_(is_final_XY), .bus_0133836b_(1'h1), .bus_015fc518_(bus_015fc518_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s1_1(.bus_0144255c_(CLK), 
  .bus_00f0cb0d_(bus_016a5111_), .bus_004174a7_(scheduler_u210), .bus_0094157a_(scheduler_u211), 
  .bus_00b2e011_(bus_00b2e011_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_globalreset_physical_00e8f4a6_ Mean_Shift_Main_main_loop_cal_Final_Centre_XY_globalreset_physical_00e8f4a6__1(.bus_01e27d6f_(CLK), 
  .bus_00341b54_(RESET), .bus_016a5111_(bus_016a5111_));
assign bus_01b90d34_=Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY_instance_DONE}};
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_x Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_x_1(.bus_011e1362_(CLK), 
  .bus_018aad75_(bus_016a5111_), .bus_01549f0b_(get_input), .bus_00e80d45_(get_input_u8), 
  .bus_01ede254_(bus_01ede254_));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY_instance(.CLK(CLK), 
  .GO(get_and_send_XY_go), .port_011e0d63_(bus_00332f45_), .port_003a4221_(bus_01ede254_), 
  .RESULT(get_and_send_XY), .RESULT_u933(get_and_send_XY_u5), .RESULT_u934(get_and_send_XY_u6), 
  .RESULT_u936(get_and_send_XY_u7), .RESULT_u935(get_and_send_XY_u8), .RESULT_u937(get_and_send_XY_u9), 
  .DONE(Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY_instance_DONE));
assign bus_01af983d_=Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input_instance_DONE}};
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s0(bus_01bad676_, bus_0155e404_, bus_0030e687_, bus_0015d90f_, bus_01c2cd71_);
input		bus_01bad676_;
input		bus_0155e404_;
input		bus_0030e687_;
input		bus_0015d90f_;
output		bus_01c2cd71_;
reg		stateVar_state_s0_u14=1'h0;
always @(posedge bus_01bad676_ or posedge bus_0155e404_)
begin
if (bus_0155e404_)
stateVar_state_s0_u14<=1'h0;
else if (bus_0030e687_)
stateVar_state_s0_u14<=bus_0015d90f_;
end
assign bus_01c2cd71_=stateVar_state_s0_u14;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_01b502a3_(endianswapper_01b502a3_in, endianswapper_01b502a3_out);
input	[15:0]	endianswapper_01b502a3_in;
output	[15:0]	endianswapper_01b502a3_out;
assign endianswapper_01b502a3_out=endianswapper_01b502a3_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_00ea6aae_(endianswapper_00ea6aae_in, endianswapper_00ea6aae_out);
input	[15:0]	endianswapper_00ea6aae_in;
output	[15:0]	endianswapper_00ea6aae_out;
assign endianswapper_00ea6aae_out=endianswapper_00ea6aae_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_y(bus_002d38a3_, bus_00e18bca_, bus_0121ccad_, bus_00378b65_, bus_00332f45_);
input		bus_002d38a3_;
input		bus_00e18bca_;
input		bus_0121ccad_;
input	[15:0]	bus_00378b65_;
output	[15:0]	bus_00332f45_;
wire	[15:0]	endianswapper_01b502a3_out;
wire	[15:0]	endianswapper_00ea6aae_out;
reg	[15:0]	stateVar_cnt_y_u1=16'h0;
assign bus_00332f45_=endianswapper_00ea6aae_out;
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_01b502a3_ Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_01b502a3__1(.endianswapper_01b502a3_in(bus_00378b65_), 
  .endianswapper_01b502a3_out(endianswapper_01b502a3_out));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_00ea6aae_ Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_00ea6aae__1(.endianswapper_00ea6aae_in(stateVar_cnt_y_u1), 
  .endianswapper_00ea6aae_out(endianswapper_00ea6aae_out));
always @(posedge bus_002d38a3_ or posedge bus_00e18bca_)
begin
if (bus_00e18bca_)
stateVar_cnt_y_u1<=16'h0;
else if (bus_0121ccad_)
stateVar_cnt_y_u1<=endianswapper_01b502a3_out;
end
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_scheduler(CLK, RESET, GO, port_0023834c_, port_01728ff3_, port_00b47b7a_, port_00210986_, port_01d15d79_, port_0180a768_, port_01f6ff60_, port_01c8bec7_, port_01c9f6a0_, port_00409c5a_, port_00fc9590_, RESULT, RESULT_u918, RESULT_u919, RESULT_u920, RESULT_u921, RESULT_u922, RESULT_u923, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_0023834c_;
input		port_01728ff3_;
input		port_00b47b7a_;
input		port_00210986_;
input		port_01d15d79_;
input		port_0180a768_;
input		port_01f6ff60_;
input		port_01c8bec7_;
input		port_01c9f6a0_;
input		port_00409c5a_;
input		port_00fc9590_;
output		RESULT;
output		RESULT_u918;
output		RESULT_u919;
output		RESULT_u920;
output		RESULT_u921;
output		RESULT_u922;
output		RESULT_u923;
output		DONE;
reg		reg_00d17b57_u0=1'h0;
wire		and_u1452_u0;
wire		and_u1453_u0;
wire		and_u1454_u0;
wire signed		equals_b_signed;
wire signed		equals_a_signed;
wire		equals;
wire		and_u1455_u0;
wire		and_u1456_u0;
wire		and_u1457_u0;
wire		not_u299_u0;
wire		and_u1458_u0;
wire		and_u1459_u0;
wire		not_u300_u0;
wire		simplePinWrite;
wire		and_u1460_u0;
wire		and_u1461_u0;
wire		not_u301_u0;
wire		and_u1462_u0;
wire		simplePinWrite_u201;
wire		and_u1463_u0;
wire		and_u1464_u0;
wire		and_u1465_u0;
wire		and_u1466_u0;
wire		and_u1467_u0;
wire		not_u302_u0;
wire		and_u1468_u0;
wire		and_u1469_u0;
wire		and_u1470_u0;
wire		not_u303_u0;
wire		and_u1471_u0;
wire		simplePinWrite_u202;
wire		and_u1472_u0;
wire		and_u1473_u0;
wire		and_u1474_u0;
wire		or_u411_u0;
wire		mux_u478;
wire		or_u412_u0;
wire		mux_u479_u0;
wire		or_u413_u0;
wire		mux_u480_u0;
wire		or_u414_u0;
reg		reg_01799e6c_u0=1'h0;
reg		reg_01b61574_u0=1'h0;
wire		mux_u481_u0;
wire		or_u415_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d17b57_u0<=1'h0;
else reg_00d17b57_u0<=and_u1452_u0;
end
assign and_u1452_u0=or_u413_u0&or_u413_u0;
assign and_u1453_u0=port_01f6ff60_&port_01c8bec7_;
assign and_u1454_u0=and_u1453_u0&port_0180a768_;
assign equals_a_signed=port_00b47b7a_;
assign equals_b_signed=1'h0;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1455_u0=port_00409c5a_&port_01c9f6a0_;
assign and_u1456_u0=and_u1452_u0&not_u299_u0;
assign and_u1457_u0=and_u1452_u0&port_0023834c_;
assign not_u299_u0=~port_0023834c_;
assign and_u1458_u0=and_u1467_u0&equals;
assign and_u1459_u0=and_u1467_u0&not_u300_u0;
assign not_u300_u0=~equals;
assign simplePinWrite=and_u1460_u0&{1{and_u1460_u0}};
assign and_u1460_u0=and_u1465_u0&and_u1465_u0;
assign and_u1461_u0=and_u1466_u0&not_u301_u0;
assign not_u301_u0=~and_u1454_u0;
assign and_u1462_u0=and_u1466_u0&and_u1454_u0;
assign simplePinWrite_u201=and_u1463_u0&{1{and_u1463_u0}};
assign and_u1463_u0=and_u1464_u0&and_u1464_u0;
assign and_u1464_u0=and_u1462_u0&and_u1466_u0;
assign and_u1465_u0=and_u1458_u0&and_u1467_u0;
assign and_u1466_u0=and_u1459_u0&and_u1467_u0;
assign and_u1467_u0=and_u1457_u0&and_u1452_u0;
assign not_u302_u0=~port_01728ff3_;
assign and_u1468_u0=and_u1452_u0&port_01728ff3_;
assign and_u1469_u0=and_u1452_u0&not_u302_u0;
assign and_u1470_u0=and_u1473_u0&and_u1455_u0;
assign not_u303_u0=~and_u1455_u0;
assign and_u1471_u0=and_u1473_u0&not_u303_u0;
assign simplePinWrite_u202=and_u1472_u0&{1{and_u1472_u0}};
assign and_u1472_u0=and_u1470_u0&and_u1473_u0;
assign and_u1473_u0=and_u1474_u0&and_u1474_u0;
assign and_u1474_u0=and_u1468_u0&and_u1452_u0;
assign or_u411_u0=and_u1460_u0|and_u1472_u0;
assign mux_u478=(and_u1460_u0)?1'h0:1'h1;
assign or_u412_u0=and_u1460_u0|and_u1472_u0;
assign mux_u479_u0=(and_u1460_u0)?1'h1:1'h0;
assign or_u413_u0=reg_01799e6c_u0|reg_00d17b57_u0;
assign mux_u480_u0=(GO)?1'h0:mux_u479_u0;
assign or_u414_u0=GO|or_u412_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01799e6c_u0<=1'h0;
else reg_01799e6c_u0<=reg_01b61574_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b61574_u0<=1'h0;
else reg_01b61574_u0<=GO;
end
assign mux_u481_u0=(GO)?1'h1:mux_u478;
assign or_u415_u0=GO|or_u411_u0;
assign RESULT=or_u415_u0;
assign RESULT_u918=mux_u481_u0;
assign RESULT_u919=or_u414_u0;
assign RESULT_u920=mux_u480_u0;
assign RESULT_u921=simplePinWrite_u201;
assign RESULT_u922=simplePinWrite;
assign RESULT_u923=simplePinWrite_u202;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_is_final_XY(CLK, RESET, GO, RESULT, RESULT_u924, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output		RESULT_u924;
output		DONE;
reg		reg_003cbb16_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_003cbb16_u0<=1'h0;
else reg_003cbb16_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u924=1'h1;
assign DONE=reg_003cbb16_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Kicker_18(CLK, RESET, bus_00267bb5_);
input		CLK;
input		RESET;
output		bus_00267bb5_;
reg		kicker_2=1'h0;
reg		kicker_res=1'h0;
wire		bus_0086e4a8_;
reg		kicker_1=1'h0;
wire		bus_01d1dc30_;
wire		bus_013e144f_;
wire		bus_01168c90_;
assign bus_00267bb5_=kicker_res;
always @(posedge CLK)
begin
kicker_2<=bus_0086e4a8_;
end
always @(posedge CLK)
begin
kicker_res<=bus_01168c90_;
end
assign bus_0086e4a8_=bus_013e144f_&kicker_1;
always @(posedge CLK)
begin
kicker_1<=bus_013e144f_;
end
assign bus_01d1dc30_=~kicker_2;
assign bus_013e144f_=~RESET;
assign bus_01168c90_=kicker_1&bus_013e144f_&bus_01d1dc30_;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_input(CLK, RESET, GO, port_0159df48_, port_00fa1f0a_, port_01172a48_, RESULT, RESULT_u925, RESULT_u926, RESULT_u927, RESULT_u928, RESULT_u929, RESULT_u930, RESULT_u931, RESULT_u932, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_0159df48_;
input	[31:0]	port_00fa1f0a_;
input	[31:0]	port_01172a48_;
output		RESULT;
output	[15:0]	RESULT_u925;
output		RESULT_u926;
output		RESULT_u927;
output		RESULT_u928;
output	[15:0]	RESULT_u929;
output		RESULT_u930;
output		RESULT_u931;
output		RESULT_u932;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u203;
wire		simplePinWrite_u204;
reg		reg_016a4d86_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u203=GO&{1{GO}};
assign simplePinWrite_u204=GO&{1{GO}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016a4d86_u0<=1'h0;
else reg_016a4d86_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u925=port_01172a48_[15:0];
assign RESULT_u926=GO;
assign RESULT_u927=port_0159df48_;
assign RESULT_u928=GO;
assign RESULT_u929=port_00fa1f0a_[15:0];
assign RESULT_u930=simplePinWrite_u203;
assign RESULT_u931=simplePinWrite_u204;
assign RESULT_u932=simplePinWrite;
assign DONE=reg_016a4d86_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_while_loop_status(bus_00880a96_, bus_016f230d_, bus_0075dd87_, bus_00010bdc_, bus_00ffa950_, bus_0133836b_, bus_015fc518_);
input		bus_00880a96_;
input		bus_016f230d_;
input		bus_0075dd87_;
input		bus_00010bdc_;
input		bus_00ffa950_;
input		bus_0133836b_;
output		bus_015fc518_;
reg		stateVar_while_loop_status_u5=1'h1;
wire		mux_0086d5f0_u0;
wire		or_0185f209_u0;
assign bus_015fc518_=stateVar_while_loop_status_u5;
always @(posedge bus_00880a96_ or posedge bus_016f230d_)
begin
if (bus_016f230d_)
stateVar_while_loop_status_u5<=1'h1;
else if (or_0185f209_u0)
stateVar_while_loop_status_u5<=mux_0086d5f0_u0;
end
assign mux_0086d5f0_u0=(bus_0075dd87_)?bus_00010bdc_:1'h1;
assign or_0185f209_u0=bus_0075dd87_|bus_00ffa950_;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_state_s1(bus_0144255c_, bus_00f0cb0d_, bus_004174a7_, bus_0094157a_, bus_00b2e011_);
input		bus_0144255c_;
input		bus_00f0cb0d_;
input		bus_004174a7_;
input		bus_0094157a_;
output		bus_00b2e011_;
reg		stateVar_state_s1_u16=1'h0;
always @(posedge bus_0144255c_ or posedge bus_00f0cb0d_)
begin
if (bus_00f0cb0d_)
stateVar_state_s1_u16<=1'h0;
else if (bus_004174a7_)
stateVar_state_s1_u16<=bus_0094157a_;
end
assign bus_00b2e011_=stateVar_state_s1_u16;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_globalreset_physical_00e8f4a6_(bus_01e27d6f_, bus_00341b54_, bus_016a5111_);
input		bus_01e27d6f_;
input		bus_00341b54_;
output		bus_016a5111_;
reg		glitch_u18=1'h0;
reg		final_u18=1'h1;
wire		and_01258e02_u0;
wire		not_0112bb9f_u0;
wire		or_00ee6366_u0;
reg		sample_u18=1'h0;
reg		cross_u18=1'h0;
always @(posedge bus_01e27d6f_)
begin
glitch_u18<=cross_u18;
end
always @(posedge bus_01e27d6f_)
begin
final_u18<=not_0112bb9f_u0;
end
assign and_01258e02_u0=cross_u18&glitch_u18;
assign not_0112bb9f_u0=~and_01258e02_u0;
assign or_00ee6366_u0=bus_00341b54_|final_u18;
always @(posedge bus_01e27d6f_)
begin
sample_u18<=1'h1;
end
always @(posedge bus_01e27d6f_)
begin
cross_u18<=sample_u18;
end
assign bus_016a5111_=or_00ee6366_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_007c158f_(endianswapper_007c158f_in, endianswapper_007c158f_out);
input	[15:0]	endianswapper_007c158f_in;
output	[15:0]	endianswapper_007c158f_out;
assign endianswapper_007c158f_out=endianswapper_007c158f_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_0130f428_(endianswapper_0130f428_in, endianswapper_0130f428_out);
input	[15:0]	endianswapper_0130f428_in;
output	[15:0]	endianswapper_0130f428_out;
assign endianswapper_0130f428_out=endianswapper_0130f428_in;
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_stateVar_cnt_x(bus_011e1362_, bus_018aad75_, bus_01549f0b_, bus_00e80d45_, bus_01ede254_);
input		bus_011e1362_;
input		bus_018aad75_;
input		bus_01549f0b_;
input	[15:0]	bus_00e80d45_;
output	[15:0]	bus_01ede254_;
wire	[15:0]	endianswapper_007c158f_out;
wire	[15:0]	endianswapper_0130f428_out;
reg	[15:0]	stateVar_cnt_x_u1=16'h0;
assign bus_01ede254_=endianswapper_007c158f_out;
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_007c158f_ Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_007c158f__1(.endianswapper_007c158f_in(stateVar_cnt_x_u1), 
  .endianswapper_007c158f_out(endianswapper_007c158f_out));
Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_0130f428_ Mean_Shift_Main_main_loop_cal_Final_Centre_XY_endianswapper_0130f428__1(.endianswapper_0130f428_in(bus_00e80d45_), 
  .endianswapper_0130f428_out(endianswapper_0130f428_out));
always @(posedge bus_011e1362_ or posedge bus_018aad75_)
begin
if (bus_018aad75_)
stateVar_cnt_x_u1<=16'h0;
else if (bus_01549f0b_)
stateVar_cnt_x_u1<=endianswapper_0130f428_out;
end
endmodule



module Mean_Shift_Main_main_loop_cal_Final_Centre_XY_get_and_send_XY(CLK, GO, port_011e0d63_, port_003a4221_, RESULT, RESULT_u933, RESULT_u934, RESULT_u935, RESULT_u936, RESULT_u937, DONE);
input		CLK;
input		GO;
input	[15:0]	port_011e0d63_;
input	[15:0]	port_003a4221_;
output	[15:0]	RESULT;
output	[15:0]	RESULT_u933;
output	[15:0]	RESULT_u934;
output		RESULT_u935;
output		RESULT_u936;
output	[15:0]	RESULT_u937;
output		DONE;
wire	[15:0]	simplePinWrite;
wire		simplePinWrite_u205;
wire	[15:0]	simplePinWrite_u206;
wire	[15:0]	simplePinWrite_u207;
wire		simplePinWrite_u208;
wire	[15:0]	simplePinWrite_u209;
assign simplePinWrite=16'h1&{16{1'h1}};
assign simplePinWrite_u205=GO&{1{GO}};
assign simplePinWrite_u206=port_003a4221_;
assign simplePinWrite_u207=16'h1&{16{1'h1}};
assign simplePinWrite_u208=GO&{1{GO}};
assign simplePinWrite_u209=port_011e0d63_;
assign RESULT=simplePinWrite_u206;
assign RESULT_u933=simplePinWrite;
assign RESULT_u934=simplePinWrite_u207;
assign RESULT_u935=simplePinWrite_u208;
assign RESULT_u936=simplePinWrite_u205;
assign RESULT_u937=simplePinWrite_u209;
assign DONE=GO;
endmodule


