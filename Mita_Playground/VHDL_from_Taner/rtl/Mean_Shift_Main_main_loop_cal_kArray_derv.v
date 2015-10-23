// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:26 +0100
// 

module Mean_Shift_Main_main_loop_cal_kArray_derv(CLK, kDervO_COUNT, kDervO_SEND, RESET, kDervO_RDY, kDervO_ACK, kDervO_DATA);
wire		sendData_done;
input		CLK;
output	[15:0]	kDervO_COUNT;
output		kDervO_SEND;
input		RESET;
input		kDervO_RDY;
wire		kernelDerivation_done;
wire		sendData_go;
input		kDervO_ACK;
wire		kernelDerivation_go;
output	[31:0]	kDervO_DATA;
wire	[31:0]	bus_01dbce75_;
wire		scheduler_u197;
wire		Mean_Shift_Main_main_loop_cal_kArray_derv_scheduler_instance_DONE;
wire		scheduler_u194;
wire		scheduler_u193;
wire		scheduler_u196;
wire		scheduler_u195;
wire		scheduler;
wire		bus_00db7617_;
wire	[31:0]	bus_01184a3a_;
wire	[31:0]	bus_0170f329_;
wire		bus_01414bce_;
wire		bus_019761ad_;
wire	[2:0]	bus_00fe6dbd_;
wire		bus_00379c2b_;
wire		bus_017718ab_;
wire	[31:0]	bus_007d2c49_;
wire		bus_01a580d5_;
wire	[31:0]	bus_016cf43d_;
wire	[2:0]	bus_00a9a578_;
wire	[31:0]	bus_013e6720_;
wire		bus_019e3c4d_;
wire		bus_00fdbee1_;
wire		bus_00957694_;
wire	[31:0]	bus_00d20158_;
wire		bus_00ba9828_;
wire		bus_00f2fd0f_;
wire	[31:0]	bus_012a0feb_;
wire		bus_00b1cd40_;
wire		bus_0095bf4a_;
wire		bus_0183d6cd_;
wire	[31:0]	bus_0060466e_;
wire	[31:0]	sendData_u27;
wire		sendData_u30;
wire		Mean_Shift_Main_main_loop_cal_kArray_derv_sendData_instance_DONE;
wire	[2:0]	sendData_u32;
wire	[31:0]	sendData_u29;
wire	[31:0]	sendData_u34;
wire		sendData_u33;
wire	[15:0]	sendData_u35;
wire		sendData_u28;
wire	[31:0]	sendData_u31;
wire		sendData;
wire		kernelDerivation_u10;
wire		Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation_instance_DONE;
wire	[31:0]	kernelDerivation_u9;
wire	[31:0]	kernelDerivation_u15;
wire	[31:0]	kernelDerivation_u12;
wire	[31:0]	kernelDerivation_u16;
wire		kernelDerivation_u14;
wire	[31:0]	kernelDerivation_u11;
wire	[2:0]	kernelDerivation_u17;
wire	[2:0]	kernelDerivation_u13;
wire		kernelDerivation;
wire		bus_0179fcc9_;
assign sendData_done=bus_00f2fd0f_;
assign kDervO_COUNT=sendData_u35;
assign kDervO_SEND=sendData_u33;
assign kernelDerivation_done=bus_00b1cd40_;
assign sendData_go=scheduler_u196;
assign kernelDerivation_go=scheduler_u197;
assign kDervO_DATA=sendData_u34;
Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_xCount Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_xCount_1(.bus_011d6890_(CLK), 
  .bus_01bbe12e_(bus_00379c2b_), .bus_0140a841_(sendData_u28), .bus_008a4a14_(sendData_u29), 
  .bus_01dbce75_(bus_01dbce75_));
Mean_Shift_Main_main_loop_cal_kArray_derv_scheduler Mean_Shift_Main_main_loop_cal_kArray_derv_scheduler_instance(.CLK(CLK), 
  .RESET(bus_00379c2b_), .GO(bus_0183d6cd_), .port_0120af86_(bus_0095bf4a_), .port_0084a6db_(bus_0179fcc9_), 
  .port_00d9d80e_(kDervO_RDY), .port_01a1100b_(sendData_done), .port_0131bfba_(kernelDerivation_done), 
  .RESULT(scheduler), .RESULT_u859(scheduler_u193), .RESULT_u860(scheduler_u194), 
  .RESULT_u861(scheduler_u195), .RESULT_u862(scheduler_u196), .RESULT_u863(scheduler_u197), 
  .DONE(Mean_Shift_Main_main_loop_cal_kArray_derv_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_012dd56e_ Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_012dd56e__1(.bus_0107bcb3_(CLK), 
  .bus_00f5cbe6_(bus_00379c2b_), .bus_0182fd7c_(bus_01a580d5_), .bus_00f75ae6_(32'h0), 
  .bus_00c9dcb5_(kernelDerivation_u10), .bus_008cb6b3_(32'h1), .bus_0090a85b_(kernelDerivation_u11), 
  .bus_01e3a6cb_(3'h1), .bus_0170f329_(bus_0170f329_), .bus_01184a3a_(bus_01184a3a_), 
  .bus_01414bce_(bus_01414bce_), .bus_019761ad_(bus_019761ad_), .bus_00fe6dbd_(bus_00fe6dbd_), 
  .bus_00db7617_(bus_00db7617_));
Mean_Shift_Main_main_loop_cal_kArray_derv_globalreset_physical_0076eab3_ Mean_Shift_Main_main_loop_cal_kArray_derv_globalreset_physical_0076eab3__1(.bus_015e5fca_(CLK), 
  .bus_00450f30_(RESET), .bus_00379c2b_(bus_00379c2b_));
Mean_Shift_Main_main_loop_cal_kArray_derv_structuralmemory_01dfd5d1_ Mean_Shift_Main_main_loop_cal_kArray_derv_structuralmemory_01dfd5d1__1(.CLK_u36(CLK), 
  .bus_00c9e553_(bus_00379c2b_), .bus_00ed6bb9_(bus_00d20158_), .bus_00c9885a_(3'h1), 
  .bus_006c5db9_(bus_00ba9828_), .bus_01ed2ef2_(bus_019e3c4d_), .bus_0178181d_(bus_016cf43d_), 
  .bus_014eacc8_(bus_01184a3a_), .bus_00d4236e_(3'h1), .bus_00374b81_(bus_01414bce_), 
  .bus_00f8ca3d_(32'h1), .bus_007d2c49_(bus_007d2c49_), .bus_017718ab_(bus_017718ab_), 
  .bus_01a580d5_(bus_01a580d5_));
Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_0053b1f8_ Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_0053b1f8__1(.bus_0122a24b_(CLK), 
  .bus_00cd0427_(bus_00379c2b_), .bus_01c9aa4d_(bus_017718ab_), .bus_01fb2d92_(bus_007d2c49_), 
  .bus_004d8d0f_(kernelDerivation_u14), .bus_00044c34_(32'h0), .bus_00ac814c_(kernelDerivation_u15), 
  .bus_0091c6d7_(3'h1), .bus_0033b72a_(sendData_u30), .bus_01a5f502_(sendData_u31), 
  .bus_00feef03_(3'h1), .bus_016cf43d_(bus_016cf43d_), .bus_00d20158_(bus_00d20158_), 
  .bus_019e3c4d_(bus_019e3c4d_), .bus_00ba9828_(bus_00ba9828_), .bus_00a9a578_(bus_00a9a578_), 
  .bus_00957694_(bus_00957694_), .bus_013e6720_(bus_013e6720_), .bus_00fdbee1_(bus_00fdbee1_));
assign bus_00f2fd0f_=Mean_Shift_Main_main_loop_cal_kArray_derv_sendData_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_kArray_derv_sendData_instance_DONE}};
Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_sqrtValue Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_sqrtValue_1(.bus_000e3c14_(CLK), 
  .bus_008a829f_(bus_00379c2b_), .bus_0171507c_(kernelDerivation), .bus_01f6ffa4_(kernelDerivation_u9), 
  .bus_012a0feb_(bus_012a0feb_));
assign bus_00b1cd40_=Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation_instance_DONE}};
Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s0_1(.bus_00de1071_(CLK), 
  .bus_010989ef_(bus_00379c2b_), .bus_000cbfcb_(scheduler), .bus_0093bd63_(scheduler_u193), 
  .bus_0095bf4a_(bus_0095bf4a_));
Mean_Shift_Main_main_loop_cal_kArray_derv_Kicker_16 Mean_Shift_Main_main_loop_cal_kArray_derv_Kicker_16_1(.CLK(CLK), 
  .RESET(bus_00379c2b_), .bus_0183d6cd_(bus_0183d6cd_));
Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_yCount Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_yCount_1(.bus_005ca392_(CLK), 
  .bus_01f6f8b1_(bus_00379c2b_), .bus_001d5eb5_(sendData), .bus_0151d984_(sendData_u27), 
  .bus_0060466e_(bus_0060466e_));
Mean_Shift_Main_main_loop_cal_kArray_derv_sendData Mean_Shift_Main_main_loop_cal_kArray_derv_sendData_instance(.CLK(CLK), 
  .RESET(bus_00379c2b_), .GO(sendData_go), .port_01530ed6_(bus_0060466e_), .port_00fdc871_(bus_01dbce75_), 
  .port_006c521f_(bus_00fdbee1_), .port_003aa4a1_(bus_013e6720_), .RESULT(sendData), 
  .RESULT_u864(sendData_u27), .RESULT_u865(sendData_u28), .RESULT_u866(sendData_u29), 
  .RESULT_u867(sendData_u30), .RESULT_u868(sendData_u31), .RESULT_u869(sendData_u32), 
  .RESULT_u870(sendData_u33), .RESULT_u871(sendData_u34), .RESULT_u872(sendData_u35), 
  .DONE(Mean_Shift_Main_main_loop_cal_kArray_derv_sendData_instance_DONE));
Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation_instance(.CLK(CLK), 
  .RESET(bus_00379c2b_), .GO(kernelDerivation_go), .port_00c980d4_(bus_012a0feb_), 
  .port_00371c90_(bus_00db7617_), .port_0194c8b9_(bus_00957694_), .RESULT(kernelDerivation), 
  .RESULT_u873(kernelDerivation_u9), .RESULT_u878(kernelDerivation_u10), .RESULT_u879(kernelDerivation_u11), 
  .RESULT_u880(kernelDerivation_u12), .RESULT_u881(kernelDerivation_u13), .RESULT_u874(kernelDerivation_u14), 
  .RESULT_u875(kernelDerivation_u15), .RESULT_u876(kernelDerivation_u16), .RESULT_u877(kernelDerivation_u17), 
  .DONE(Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation_instance_DONE));
Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s1_1(.bus_001af005_(CLK), 
  .bus_00840a94_(bus_00379c2b_), .bus_01cccb3e_(scheduler_u194), .bus_007ae003_(scheduler_u195), 
  .bus_0179fcc9_(bus_0179fcc9_));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00639965_(endianswapper_00639965_in, endianswapper_00639965_out);
input	[31:0]	endianswapper_00639965_in;
output	[31:0]	endianswapper_00639965_out;
assign endianswapper_00639965_out=endianswapper_00639965_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_0044c139_(endianswapper_0044c139_in, endianswapper_0044c139_out);
input	[31:0]	endianswapper_0044c139_in;
output	[31:0]	endianswapper_0044c139_out;
assign endianswapper_0044c139_out=endianswapper_0044c139_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_xCount(bus_011d6890_, bus_01bbe12e_, bus_0140a841_, bus_008a4a14_, bus_01dbce75_);
input		bus_011d6890_;
input		bus_01bbe12e_;
input		bus_0140a841_;
input	[31:0]	bus_008a4a14_;
output	[31:0]	bus_01dbce75_;
wire	[31:0]	endianswapper_00639965_out;
reg	[31:0]	stateVar_xCount_u3=32'h0;
wire	[31:0]	endianswapper_0044c139_out;
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00639965_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00639965__1(.endianswapper_00639965_in(stateVar_xCount_u3), 
  .endianswapper_00639965_out(endianswapper_00639965_out));
assign bus_01dbce75_=endianswapper_00639965_out;
always @(posedge bus_011d6890_ or posedge bus_01bbe12e_)
begin
if (bus_01bbe12e_)
stateVar_xCount_u3<=32'h0;
else if (bus_0140a841_)
stateVar_xCount_u3<=endianswapper_0044c139_out;
end
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_0044c139_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_0044c139__1(.endianswapper_0044c139_in(bus_008a4a14_), 
  .endianswapper_0044c139_out(endianswapper_0044c139_out));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_scheduler(CLK, RESET, GO, port_0120af86_, port_0084a6db_, port_00d9d80e_, port_01a1100b_, port_0131bfba_, RESULT, RESULT_u859, RESULT_u860, RESULT_u861, RESULT_u862, RESULT_u863, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_0120af86_;
input		port_0084a6db_;
input		port_00d9d80e_;
input		port_01a1100b_;
input		port_0131bfba_;
output		RESULT;
output		RESULT_u859;
output		RESULT_u860;
output		RESULT_u861;
output		RESULT_u862;
output		RESULT_u863;
output		DONE;
wire		not_u280_u0;
wire		and_u1362_u0;
wire		and_u1363_u0;
wire		simplePinWrite;
wire		and_u1364_u0;
wire		and_u1365_u0;
wire		and_u1366_u0;
wire		and_u1367_u0;
reg		and_delayed_u68=1'h0;
wire		or_u389_u0;
wire		not_u281_u0;
wire		and_u1368_u0;
wire		and_u1369_u0;
wire		not_u282_u0;
wire		and_u1370_u0;
wire		and_u1371_u0;
wire		simplePinWrite_u186;
reg		reg_0108401c_u0=1'h0;
wire		and_u1372_u0;
reg		reg_0114a7ba_u0=1'h0;
reg		reg_0114a7ba_result_delayed_u0=1'h0;
wire		or_u390_u0;
wire		and_u1373_u0;
wire		and_u1374_u0;
wire		and_u1375_u0;
reg		reg_00019297_u0=1'h0;
wire		or_u391_u0;
wire		and_u1376_u0;
wire		scoreboard_00643e34_resOr0;
wire		bus_00b82db2_;
wire		scoreboard_00643e34_and;
reg		scoreboard_00643e34_reg1=1'h0;
reg		scoreboard_00643e34_reg0=1'h0;
wire		scoreboard_00643e34_resOr1;
reg		syncEnable_u333=1'h0;
reg		block_GO_delayed_u40=1'h0;
reg		syncEnable_u334_u0=1'h0;
wire		and_u1377_u0;
wire		or_u392_u0;
reg		reg_00d69009_u0=1'h0;
wire		or_u393_u0;
wire		mux_u442;
reg		reg_00d69009_result_delayed_u0=1'h0;
wire		mux_u443_u0;
wire		or_u394_u0;
assign not_u280_u0=~syncEnable_u334_u0;
assign and_u1362_u0=block_GO_delayed_u40&not_u280_u0;
assign and_u1363_u0=block_GO_delayed_u40&syncEnable_u334_u0;
assign simplePinWrite=and_u1364_u0&{1{and_u1364_u0}};
assign and_u1364_u0=and_u1365_u0&and_u1365_u0;
assign and_u1365_u0=and_u1366_u0&and_u1366_u0;
assign and_u1366_u0=and_u1363_u0&block_GO_delayed_u40;
assign and_u1367_u0=and_u1362_u0&block_GO_delayed_u40;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u68<=1'h0;
else and_delayed_u68<=and_u1367_u0;
end
assign or_u389_u0=port_0131bfba_|and_delayed_u68;
assign not_u281_u0=~syncEnable_u333;
assign and_u1368_u0=block_GO_delayed_u40&syncEnable_u333;
assign and_u1369_u0=block_GO_delayed_u40&not_u281_u0;
assign not_u282_u0=~port_00d9d80e_;
assign and_u1370_u0=and_u1374_u0&not_u282_u0;
assign and_u1371_u0=and_u1374_u0&port_00d9d80e_;
assign simplePinWrite_u186=and_u1373_u0&{1{and_u1373_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0108401c_u0<=1'h0;
else reg_0108401c_u0<=and_u1372_u0;
end
assign and_u1372_u0=and_u1370_u0&and_u1374_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0114a7ba_u0<=1'h0;
else reg_0114a7ba_u0<=and_u1373_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0114a7ba_result_delayed_u0<=1'h0;
else reg_0114a7ba_result_delayed_u0<=reg_0114a7ba_u0;
end
assign or_u390_u0=reg_0114a7ba_result_delayed_u0|reg_0108401c_u0;
assign and_u1373_u0=and_u1371_u0&and_u1374_u0;
assign and_u1374_u0=and_u1375_u0&and_u1375_u0;
assign and_u1375_u0=and_u1368_u0&block_GO_delayed_u40;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00019297_u0<=1'h0;
else reg_00019297_u0<=and_u1376_u0;
end
assign or_u391_u0=reg_00019297_u0|or_u390_u0;
assign and_u1376_u0=and_u1369_u0&block_GO_delayed_u40;
assign scoreboard_00643e34_resOr0=or_u391_u0|scoreboard_00643e34_reg0;
assign bus_00b82db2_=scoreboard_00643e34_and|RESET;
assign scoreboard_00643e34_and=scoreboard_00643e34_resOr0&scoreboard_00643e34_resOr1;
always @(posedge CLK)
begin
if (bus_00b82db2_)
scoreboard_00643e34_reg1<=1'h0;
else if (or_u389_u0)
scoreboard_00643e34_reg1<=1'h1;
else scoreboard_00643e34_reg1<=scoreboard_00643e34_reg1;
end
always @(posedge CLK)
begin
if (bus_00b82db2_)
scoreboard_00643e34_reg0<=1'h0;
else if (or_u391_u0)
scoreboard_00643e34_reg0<=1'h1;
else scoreboard_00643e34_reg0<=scoreboard_00643e34_reg0;
end
assign scoreboard_00643e34_resOr1=or_u389_u0|scoreboard_00643e34_reg1;
always @(posedge CLK)
begin
if (and_u1377_u0)
syncEnable_u333<=port_0084a6db_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u40<=1'h0;
else block_GO_delayed_u40<=and_u1377_u0;
end
always @(posedge CLK)
begin
if (and_u1377_u0)
syncEnable_u334_u0<=port_0120af86_;
end
assign and_u1377_u0=or_u392_u0&or_u392_u0;
assign or_u392_u0=reg_00d69009_result_delayed_u0|scoreboard_00643e34_and;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d69009_u0<=1'h0;
else reg_00d69009_u0<=GO;
end
assign or_u393_u0=GO|and_u1364_u0;
assign mux_u442=(GO)?1'h0:1'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00d69009_result_delayed_u0<=1'h0;
else reg_00d69009_result_delayed_u0<=reg_00d69009_u0;
end
assign mux_u443_u0=(GO)?1'h1:1'h0;
assign or_u394_u0=GO|and_u1364_u0;
assign RESULT=or_u394_u0;
assign RESULT_u859=mux_u443_u0;
assign RESULT_u860=or_u393_u0;
assign RESULT_u861=mux_u442;
assign RESULT_u862=simplePinWrite_u186;
assign RESULT_u863=simplePinWrite;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_012dd56e_(bus_0107bcb3_, bus_00f5cbe6_, bus_0182fd7c_, bus_00f75ae6_, bus_00c9dcb5_, bus_008cb6b3_, bus_0090a85b_, bus_01e3a6cb_, bus_0170f329_, bus_01184a3a_, bus_01414bce_, bus_019761ad_, bus_00fe6dbd_, bus_00db7617_);
input		bus_0107bcb3_;
input		bus_00f5cbe6_;
input		bus_0182fd7c_;
input	[31:0]	bus_00f75ae6_;
input		bus_00c9dcb5_;
input	[31:0]	bus_008cb6b3_;
input	[31:0]	bus_0090a85b_;
input	[2:0]	bus_01e3a6cb_;
output	[31:0]	bus_0170f329_;
output	[31:0]	bus_01184a3a_;
output		bus_01414bce_;
output		bus_019761ad_;
output	[2:0]	bus_00fe6dbd_;
output		bus_00db7617_;
assign bus_0170f329_=32'h1;
assign bus_01184a3a_=bus_0090a85b_;
assign bus_01414bce_=bus_00c9dcb5_;
assign bus_019761ad_=bus_00c9dcb5_;
assign bus_00fe6dbd_=3'h1;
assign bus_00db7617_=bus_0182fd7c_;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_globalreset_physical_0076eab3_(bus_015e5fca_, bus_00450f30_, bus_00379c2b_);
input		bus_015e5fca_;
input		bus_00450f30_;
output		bus_00379c2b_;
wire		or_01e84dcb_u0;
wire		and_01b1f72c_u0;
reg		glitch_u16=1'h0;
reg		cross_u16=1'h0;
wire		not_01e9f3be_u0;
reg		sample_u16=1'h0;
reg		final_u16=1'h1;
assign or_01e84dcb_u0=bus_00450f30_|final_u16;
assign and_01b1f72c_u0=cross_u16&glitch_u16;
always @(posedge bus_015e5fca_)
begin
glitch_u16<=cross_u16;
end
always @(posedge bus_015e5fca_)
begin
cross_u16<=sample_u16;
end
assign not_01e9f3be_u0=~and_01b1f72c_u0;
always @(posedge bus_015e5fca_)
begin
sample_u16<=1'h1;
end
always @(posedge bus_015e5fca_)
begin
final_u16<=not_01e9f3be_u0;
end
assign bus_00379c2b_=or_01e84dcb_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_forge_memory_567x32_61(CLK, ENA, WEA, DINA, ENB, WEB, DINB, ADDRA, ADDRB, DOUTA, DONEA, DONEB);
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
wire	[3:0]	extrasa_0;
reg	[31:0]	mux_outa;
reg	[31:0]	ADDRA_reg;
reg	[31:0]	ADDRB_reg;
reg	[31:0]	mux_outb;
wire	[31:0]	pre_doutb_0;
reg		wea_done;
reg		rea_done;
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
end
assign DONEA=wea_done|rea_done;
assign DONEB=web_done;
assign DOUTA=mux_outa;
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S18_S18_instance_70(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA(DINA[15:0]), .DOA(pre_douta_0[15:0]), 
  .DIPA(DINA[17:16]), .DOPA(pre_douta_0[17:16]), .CLKB(CLK), .WEB(web_0), .ENB(ENB), 
  .SSRB(1'b0), .ADDRB(ADDRB), .DIB(DINB[15:0]), .DOB(), .DIPB(DINB[17:16]), .DOPB());
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
  .WRITE_MODE_A("READ_FIRST"), .WRITE_MODE_B("READ_FIRST"))RAMB16_S18_S18_instance_71(.CLKA(CLK), 
  .WEA(wea_0), .ENA(ENA), .SSRA(1'b0), .ADDRA(ADDRA), .DIA({2'b0, DINA[31:18]}), .DOA({extrasa_0[1:0], pre_douta_0[31:18]}), 
  .DIPA(2'b0), .DOPA(), .CLKB(CLK), .WEB(web_0), .ENB(ENB), .SSRB(1'b0), .ADDRB(ADDRB), 
  .DIB({2'b0, DINB[31:18]}), .DOB(), .DIPB(2'b0), .DOPB());
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_structuralmemory_01dfd5d1_(CLK_u36, bus_00c9e553_, bus_00ed6bb9_, bus_00c9885a_, bus_006c5db9_, bus_01ed2ef2_, bus_0178181d_, bus_014eacc8_, bus_00d4236e_, bus_00374b81_, bus_00f8ca3d_, bus_007d2c49_, bus_017718ab_, bus_01a580d5_);
input		CLK_u36;
input		bus_00c9e553_;
input	[31:0]	bus_00ed6bb9_;
input	[2:0]	bus_00c9885a_;
input		bus_006c5db9_;
input		bus_01ed2ef2_;
input	[31:0]	bus_0178181d_;
input	[31:0]	bus_014eacc8_;
input	[2:0]	bus_00d4236e_;
input		bus_00374b81_;
input	[31:0]	bus_00f8ca3d_;
output	[31:0]	bus_007d2c49_;
output		bus_017718ab_;
output		bus_01a580d5_;
reg		logicalMem_1582f3e_we_delay0_u0=1'h0;
reg		logicalMem_1582f3e_we_delay0_u1_u0=1'h0;
reg		logicalMem_1582f3e_re_delay0_u0=1'h0;
wire		or_0056a3be_u0;
wire		or_00c6d4aa_u0;
wire	[31:0]	bus_00197097_;
always @(posedge CLK_u36 or posedge bus_00c9e553_)
begin
if (bus_00c9e553_)
logicalMem_1582f3e_we_delay0_u0<=1'h0;
else logicalMem_1582f3e_we_delay0_u0<=bus_01ed2ef2_;
end
assign bus_007d2c49_=bus_00197097_;
assign bus_017718ab_=or_00c6d4aa_u0;
assign bus_01a580d5_=logicalMem_1582f3e_we_delay0_u1_u0;
always @(posedge CLK_u36 or posedge bus_00c9e553_)
begin
if (bus_00c9e553_)
logicalMem_1582f3e_we_delay0_u1_u0<=1'h0;
else logicalMem_1582f3e_we_delay0_u1_u0<=bus_00374b81_;
end
always @(posedge CLK_u36 or posedge bus_00c9e553_)
begin
if (bus_00c9e553_)
logicalMem_1582f3e_re_delay0_u0<=1'h0;
else logicalMem_1582f3e_re_delay0_u0<=bus_006c5db9_;
end
assign or_0056a3be_u0=bus_006c5db9_|bus_01ed2ef2_;
assign or_00c6d4aa_u0=logicalMem_1582f3e_re_delay0_u0|logicalMem_1582f3e_we_delay0_u0;
Mean_Shift_Main_main_loop_cal_kArray_derv_forge_memory_567x32_61 Mean_Shift_Main_main_loop_cal_kArray_derv_forge_memory_567x32_61_instance0(.CLK(CLK_u36), 
  .ENA(or_0056a3be_u0), .WEA(bus_01ed2ef2_), .DINA(bus_0178181d_), .ADDRA(bus_00ed6bb9_), 
  .DOUTA(bus_00197097_), .DONEA(), .ENB(bus_00374b81_), .WEB(bus_00374b81_), .DINB(32'h1), 
  .ADDRB(bus_014eacc8_), .DONEB());
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_simplememoryreferee_0053b1f8_(bus_0122a24b_, bus_00cd0427_, bus_01c9aa4d_, bus_01fb2d92_, bus_004d8d0f_, bus_00044c34_, bus_00ac814c_, bus_0091c6d7_, bus_0033b72a_, bus_01a5f502_, bus_00feef03_, bus_016cf43d_, bus_00d20158_, bus_019e3c4d_, bus_00ba9828_, bus_00a9a578_, bus_00957694_, bus_013e6720_, bus_00fdbee1_);
input		bus_0122a24b_;
input		bus_00cd0427_;
input		bus_01c9aa4d_;
input	[31:0]	bus_01fb2d92_;
input		bus_004d8d0f_;
input	[31:0]	bus_00044c34_;
input	[31:0]	bus_00ac814c_;
input	[2:0]	bus_0091c6d7_;
input		bus_0033b72a_;
input	[31:0]	bus_01a5f502_;
input	[2:0]	bus_00feef03_;
output	[31:0]	bus_016cf43d_;
output	[31:0]	bus_00d20158_;
output		bus_019e3c4d_;
output		bus_00ba9828_;
output	[2:0]	bus_00a9a578_;
output		bus_00957694_;
output	[31:0]	bus_013e6720_;
output		bus_00fdbee1_;
wire		not_00c74207_u0;
wire		not_01ff108e_u0;
wire	[31:0]	mux_00c229d5_u0;
wire		or_006957d5_u0;
wire		and_00266d3e_u0;
wire	[31:0]	mux_0173d176_u0;
wire		or_01337e93_u0;
wire		or_008fab55_u0;
wire		and_009a536e_u0;
reg		done_qual_u75=1'h0;
reg		done_qual_u76_u0=1'h0;
assign not_00c74207_u0=~bus_01c9aa4d_;
assign not_01ff108e_u0=~bus_01c9aa4d_;
assign mux_00c229d5_u0=({32{bus_004d8d0f_}}&32'h0);
assign or_006957d5_u0=bus_004d8d0f_|done_qual_u75;
assign and_00266d3e_u0=or_008fab55_u0&bus_01c9aa4d_;
assign mux_0173d176_u0=(bus_004d8d0f_)?bus_00ac814c_:bus_01a5f502_;
assign bus_016cf43d_={mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0], mux_00c229d5_u0[0]};
assign bus_00d20158_=mux_0173d176_u0;
assign bus_019e3c4d_=bus_004d8d0f_;
assign bus_00ba9828_=or_01337e93_u0;
assign bus_00a9a578_=3'h1;
assign bus_00957694_=and_009a536e_u0;
assign bus_013e6720_=bus_01fb2d92_;
assign bus_00fdbee1_=and_00266d3e_u0;
assign or_01337e93_u0=bus_004d8d0f_|bus_0033b72a_;
assign or_008fab55_u0=bus_0033b72a_|done_qual_u76_u0;
assign and_009a536e_u0=or_006957d5_u0&bus_01c9aa4d_;
always @(posedge bus_0122a24b_)
begin
if (bus_00cd0427_)
done_qual_u75<=1'h0;
else done_qual_u75<=bus_004d8d0f_;
end
always @(posedge bus_0122a24b_)
begin
if (bus_00cd0427_)
done_qual_u76_u0<=1'h0;
else done_qual_u76_u0<=bus_0033b72a_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00a26d5b_(endianswapper_00a26d5b_in, endianswapper_00a26d5b_out);
input	[31:0]	endianswapper_00a26d5b_in;
output	[31:0]	endianswapper_00a26d5b_out;
assign endianswapper_00a26d5b_out=endianswapper_00a26d5b_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_007a494e_(endianswapper_007a494e_in, endianswapper_007a494e_out);
input	[31:0]	endianswapper_007a494e_in;
output	[31:0]	endianswapper_007a494e_out;
assign endianswapper_007a494e_out=endianswapper_007a494e_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_sqrtValue(bus_000e3c14_, bus_008a829f_, bus_0171507c_, bus_01f6ffa4_, bus_012a0feb_);
input		bus_000e3c14_;
input		bus_008a829f_;
input		bus_0171507c_;
input	[31:0]	bus_01f6ffa4_;
output	[31:0]	bus_012a0feb_;
reg	[31:0]	stateVar_sqrtValue_u5=32'h0;
wire	[31:0]	endianswapper_00a26d5b_out;
wire	[31:0]	endianswapper_007a494e_out;
assign bus_012a0feb_=endianswapper_00a26d5b_out;
always @(posedge bus_000e3c14_ or posedge bus_008a829f_)
begin
if (bus_008a829f_)
stateVar_sqrtValue_u5<=32'h0;
else if (bus_0171507c_)
stateVar_sqrtValue_u5<=endianswapper_007a494e_out;
end
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00a26d5b_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00a26d5b__1(.endianswapper_00a26d5b_in(stateVar_sqrtValue_u5), 
  .endianswapper_00a26d5b_out(endianswapper_00a26d5b_out));
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_007a494e_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_007a494e__1(.endianswapper_007a494e_in(bus_01f6ffa4_), 
  .endianswapper_007a494e_out(endianswapper_007a494e_out));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s0(bus_00de1071_, bus_010989ef_, bus_000cbfcb_, bus_0093bd63_, bus_0095bf4a_);
input		bus_00de1071_;
input		bus_010989ef_;
input		bus_000cbfcb_;
input		bus_0093bd63_;
output		bus_0095bf4a_;
reg		stateVar_state_s0_u12=1'h0;
assign bus_0095bf4a_=stateVar_state_s0_u12;
always @(posedge bus_00de1071_ or posedge bus_010989ef_)
begin
if (bus_010989ef_)
stateVar_state_s0_u12<=1'h0;
else if (bus_000cbfcb_)
stateVar_state_s0_u12<=bus_0093bd63_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_Kicker_16(CLK, RESET, bus_0183d6cd_);
input		CLK;
input		RESET;
output		bus_0183d6cd_;
reg		kicker_res=1'h0;
wire		bus_01591fc1_;
wire		bus_009eb1d0_;
reg		kicker_1=1'h0;
wire		bus_01cb848f_;
wire		bus_0044d13b_;
reg		kicker_2=1'h0;
always @(posedge CLK)
begin
kicker_res<=bus_01591fc1_;
end
assign bus_01591fc1_=kicker_1&bus_0044d13b_&bus_009eb1d0_;
assign bus_0183d6cd_=kicker_res;
assign bus_009eb1d0_=~kicker_2;
always @(posedge CLK)
begin
kicker_1<=bus_0044d13b_;
end
assign bus_01cb848f_=bus_0044d13b_&kicker_1;
assign bus_0044d13b_=~RESET;
always @(posedge CLK)
begin
kicker_2<=bus_01cb848f_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_01d4741f_(endianswapper_01d4741f_in, endianswapper_01d4741f_out);
input	[31:0]	endianswapper_01d4741f_in;
output	[31:0]	endianswapper_01d4741f_out;
assign endianswapper_01d4741f_out=endianswapper_01d4741f_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00bf5c76_(endianswapper_00bf5c76_in, endianswapper_00bf5c76_out);
input	[31:0]	endianswapper_00bf5c76_in;
output	[31:0]	endianswapper_00bf5c76_out;
assign endianswapper_00bf5c76_out=endianswapper_00bf5c76_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_yCount(bus_005ca392_, bus_01f6f8b1_, bus_001d5eb5_, bus_0151d984_, bus_0060466e_);
input		bus_005ca392_;
input		bus_01f6f8b1_;
input		bus_001d5eb5_;
input	[31:0]	bus_0151d984_;
output	[31:0]	bus_0060466e_;
wire	[31:0]	endianswapper_01d4741f_out;
reg	[31:0]	stateVar_yCount_u3=32'h0;
wire	[31:0]	endianswapper_00bf5c76_out;
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_01d4741f_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_01d4741f__1(.endianswapper_01d4741f_in(bus_0151d984_), 
  .endianswapper_01d4741f_out(endianswapper_01d4741f_out));
always @(posedge bus_005ca392_ or posedge bus_01f6f8b1_)
begin
if (bus_01f6f8b1_)
stateVar_yCount_u3<=32'h0;
else if (bus_001d5eb5_)
stateVar_yCount_u3<=endianswapper_01d4741f_out;
end
assign bus_0060466e_=endianswapper_00bf5c76_out;
Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00bf5c76_ Mean_Shift_Main_main_loop_cal_kArray_derv_endianswapper_00bf5c76__1(.endianswapper_00bf5c76_in(stateVar_yCount_u3), 
  .endianswapper_00bf5c76_out(endianswapper_00bf5c76_out));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_sendData(CLK, RESET, GO, port_01530ed6_, port_00fdc871_, port_006c521f_, port_003aa4a1_, RESULT, RESULT_u864, RESULT_u865, RESULT_u866, RESULT_u867, RESULT_u868, RESULT_u869, RESULT_u870, RESULT_u871, RESULT_u872, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01530ed6_;
input	[31:0]	port_00fdc871_;
input		port_006c521f_;
input	[31:0]	port_003aa4a1_;
output		RESULT;
output	[31:0]	RESULT_u864;
output		RESULT_u865;
output	[31:0]	RESULT_u866;
output		RESULT_u867;
output	[31:0]	RESULT_u868;
output	[2:0]	RESULT_u869;
output		RESULT_u870;
output	[31:0]	RESULT_u871;
output	[15:0]	RESULT_u872;
output		DONE;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u86;
wire	[31:0]	add;
wire	[31:0]	add_u414;
wire		and_u1378_u0;
wire		or_u395_u0;
reg		done_cache_u50=1'h0;
wire	[31:0]	add_u415;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_b_signed;
wire		equals;
wire		and_u1379_u0;
wire		and_u1380_u0;
wire		not_u283_u0;
wire	[31:0]	add_u416;
wire	[31:0]	mux_u444;
wire	[31:0]	mux_u445_u0;
wire		and_u1381_u0;
wire		and_u1382_u0;
wire signed	[31:0]	equals_u17_a_signed;
wire		equals_u17;
wire signed	[31:0]	equals_u17_b_signed;
wire		and_u1383_u0;
wire		and_u1384_u0;
wire		not_u284_u0;
wire		and_u1385_u0;
wire	[31:0]	mux_u446_u0;
wire		and_u1386_u0;
wire	[31:0]	mux_u447_u0;
wire		simplePinWrite;
wire	[31:0]	simplePinWrite_u187;
wire	[15:0]	simplePinWrite_u188;
reg	[31:0]	syncEnable_u335=32'h0;
reg		reg_00f13317_u0=1'h0;
reg		reg_01e3ef2c_u0=1'h0;
assign subtract={port_00fdc871_[26:0], 5'b0}-{port_00fdc871_[29:0], 2'b0};
assign subtract_u86=subtract-port_00fdc871_;
assign add=subtract_u86+port_01530ed6_;
assign add_u414=32'h0+add;
assign and_u1378_u0=done_cache_u50&port_006c521f_;
assign or_u395_u0=and_u1378_u0|RESET;
always @(posedge CLK or posedge reg_01e3ef2c_u0 or posedge or_u395_u0)
begin
if (or_u395_u0)
done_cache_u50<=1'h0;
else if (reg_01e3ef2c_u0)
done_cache_u50<=1'h1;
else done_cache_u50<=done_cache_u50;
end
assign add_u415=port_01530ed6_+32'h1;
assign equals_a_signed=add_u415;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1379_u0=GO&not_u283_u0;
assign and_u1380_u0=GO&equals;
assign not_u283_u0=~equals;
assign add_u416=port_00fdc871_+32'h1;
assign mux_u444=(and_u1382_u0)?add_u415:32'h0;
assign mux_u445_u0=(and_u1382_u0)?port_00fdc871_:add_u416;
assign and_u1381_u0=and_u1380_u0&GO;
assign and_u1382_u0=and_u1379_u0&GO;
assign equals_u17_a_signed=mux_u445_u0;
assign equals_u17_b_signed=32'h15;
assign equals_u17=equals_u17_a_signed==equals_u17_b_signed;
assign and_u1383_u0=GO&not_u284_u0;
assign and_u1384_u0=GO&equals_u17;
assign not_u284_u0=~equals_u17;
assign and_u1385_u0=and_u1383_u0&GO;
assign mux_u446_u0=(and_u1386_u0)?32'h0:mux_u445_u0;
assign and_u1386_u0=and_u1384_u0&GO;
assign mux_u447_u0=(and_u1386_u0)?32'h0:mux_u444;
assign simplePinWrite=reg_00f13317_u0&{1{reg_00f13317_u0}};
assign simplePinWrite_u187=port_003aa4a1_;
assign simplePinWrite_u188=16'h1&{16{1'h1}};
always @(posedge CLK)
begin
if (GO)
syncEnable_u335<=add_u414;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00f13317_u0<=1'h0;
else reg_00f13317_u0<=reg_01e3ef2c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e3ef2c_u0<=1'h0;
else reg_01e3ef2c_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u864=mux_u447_u0;
assign RESULT_u865=GO;
assign RESULT_u866=mux_u446_u0;
assign RESULT_u867=reg_01e3ef2c_u0;
assign RESULT_u868=syncEnable_u335;
assign RESULT_u869=3'h1;
assign RESULT_u870=simplePinWrite;
assign RESULT_u871=simplePinWrite_u187;
assign RESULT_u872=simplePinWrite_u188;
assign DONE=reg_00f13317_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_kernelDerivation(CLK, RESET, GO, port_00c980d4_, port_0194c8b9_, port_00371c90_, RESULT, RESULT_u873, RESULT_u874, RESULT_u875, RESULT_u876, RESULT_u877, RESULT_u878, RESULT_u879, RESULT_u880, RESULT_u881, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00c980d4_;
input		port_0194c8b9_;
input		port_00371c90_;
output		RESULT;
output	[31:0]	RESULT_u873;
output		RESULT_u874;
output	[31:0]	RESULT_u875;
output	[31:0]	RESULT_u876;
output	[2:0]	RESULT_u877;
output		RESULT_u878;
output	[31:0]	RESULT_u879;
output	[31:0]	RESULT_u880;
output	[2:0]	RESULT_u881;
output		DONE;
wire		lessThanEqualTo;
wire signed	[31:0]	lessThanEqualTo_b_signed;
wire signed	[31:0]	lessThanEqualTo_a_signed;
wire		not_u285_u0;
wire		and_u1387_u0;
wire		and_u1388_u0;
wire		and_u1389_u0;
wire		and_u1390_u0;
wire	[62:0]	add;
wire	[62:0]	add_u417;
wire signed	[62:0]	multiply_a_signed;
wire signed	[62:0]	multiply_b_signed;
wire	[62:0]	multiply;
wire	[62:0]	add_u418;
wire	[62:0]	add_u419;
wire signed	[62:0]	multiply_u17_a_signed;
wire signed	[62:0]	multiply_u17_b_signed;
wire	[62:0]	multiply_u17;
wire signed	[31:0]	multiply_u18_a_signed;
wire signed	[31:0]	multiply_u18_b_signed;
wire	[31:0]	multiply_u18;
wire signed	[31:0]	multiply_u19_a_signed;
wire signed	[31:0]	multiply_u19_b_signed;
wire	[31:0]	multiply_u19;
wire	[31:0]	add_u420;
wire		and_u1391_u0;
wire		and_u1392_u0;
wire signed	[31:0]	lessThanEqualTo_u27_b_signed;
wire		lessThanEqualTo_u27;
wire signed	[31:0]	lessThanEqualTo_u27_a_signed;
wire		and_u1393_u0;
wire		not_u286_u0;
wire		and_u1394_u0;
wire signed	[63:0]	multiply_u20_a_signed;
wire signed	[63:0]	multiply_u20_b_signed;
wire	[63:0]	multiply_u20;
wire		equals;
wire signed	[63:0]	equals_b_signed;
wire signed	[63:0]	equals_a_signed;
wire		and_u1395_u0;
wire		not_u287_u0;
wire		and_u1396_u0;
wire		and_u1397_u0;
wire	[31:0]	mux_u448;
wire	[31:0]	mux_u449_u0;
wire	[31:0]	mux_u450_u0;
wire		and_u1398_u0;
wire	[31:0]	add_u421;
wire		and_u1399_u0;
wire	[31:0]	latch_016dd04f_out;
reg	[31:0]	latch_016dd04f_reg=32'h0;
reg	[31:0]	fbReg_inlined_j5_6_6_u3=32'h0;
wire		and_u1400_u0;
wire	[31:0]	mux_u451_u0;
wire		or_u396_u0;
reg	[31:0]	fbReg_inlined_pSq4_5_5_u3=32'h0;
wire	[31:0]	mux_u452_u0;
wire		and_u1401_u0;
wire	[31:0]	mux_u453_u0;
reg	[31:0]	fbReg_inlined_N4_5_5_u3=32'h0;
reg		loopControl_u31=1'h0;
wire signed	[31:0]	greaterThan_a_signed;
wire		greaterThan;
wire signed	[31:0]	greaterThan_b_signed;
wire		and_u1402_u0;
wire		and_u1403_u0;
wire		not_u288_u0;
wire		and_u1404_u0;
wire	[31:0]	mux_u454_u0;
wire		and_u1405_u0;
wire	[31:0]	subtract;
wire	[31:0]	latch_01c61960_out;
reg	[31:0]	latch_01c61960_reg=32'h0;
wire signed	[31:0]	greaterThan_u12_a_signed;
wire		greaterThan_u12;
wire signed	[31:0]	greaterThan_u12_b_signed;
wire		and_u1406_u0;
wire		not_u289_u0;
wire		and_u1407_u0;
wire		and_u1408_u0;
reg		latch_0086e215_reg=1'h0;
wire		latch_0086e215_out;
reg	[31:0]	fbReg_inlined_N0_1_1_u3=32'h0;
reg	[31:0]	fbReg_inlined_i0_1_1_u7=32'h0;
reg	[31:0]	fbReg_inlined_pSq0_1_1_u3=32'h0;
wire		or_u397_u0;
wire	[31:0]	mux_u455_u0;
wire	[31:0]	mux_u456_u0;
wire	[31:0]	mux_u457_u0;
reg		loopControl_u32_u0=1'h0;
wire		greaterThan_u13;
wire signed	[31:0]	greaterThan_u13_b_signed;
wire signed	[31:0]	greaterThan_u13_a_signed;
wire		not_u290_u0;
wire		and_u1409_u0;
wire		and_u1410_u0;
wire	[31:0]	add_u422;
wire	[31:0]	subtract_u87;
wire	[31:0]	subtract_u88;
wire	[31:0]	add_u423;
wire	[31:0]	add_u424;
wire	[31:0]	add_u425;
wire		or_u398_u0;
wire		and_u1411_u0;
reg		reg_00090cc1_u0=1'h0;
wire	[31:0]	add_u426;
wire	[31:0]	subtract_u89;
wire	[31:0]	subtract_u90;
wire	[31:0]	add_u427;
wire	[31:0]	add_u428;
wire	[31:0]	add_u429;
wire		and_u1412_u0;
wire		or_u399_u0;
reg		reg_014b1c99_u0=1'h0;
wire		and_u1413_u0;
wire		and_u1414_u0;
wire	[31:0]	add_u430;
reg	[31:0]	syncEnable_u336=32'h0;
reg		reg_01d0a204_u0=1'h0;
reg	[31:0]	syncEnable_u337_u0=32'h0;
reg	[31:0]	syncEnable_u338_u0=32'h0;
reg		reg_016488c6_u0=1'h0;
reg		block_GO_delayed_u41=1'h0;
reg	[31:0]	syncEnable_u339_u0=32'h0;
reg	[31:0]	syncEnable_u340_u0=32'h0;
reg	[31:0]	syncEnable_u341_u0=32'h0;
reg		reg_01d0a204_result_delayed_u0=1'h0;
reg	[31:0]	syncEnable_u342_u0=32'h0;
wire	[31:0]	mux_u458_u0;
wire	[31:0]	mux_u459_u0;
wire	[31:0]	mux_u460_u0;
wire	[31:0]	mux_u461_u0;
wire	[31:0]	mux_u462_u0;
wire		or_u400_u0;
wire	[31:0]	mux_u463_u0;
wire	[31:0]	latch_01faef26_out;
reg	[31:0]	latch_01faef26_reg=32'h0;
wire	[31:0]	add_u431;
reg	[31:0]	syncEnable_u343_u0=32'h0;
reg	[31:0]	syncEnable_u344_u0=32'h0;
reg	[31:0]	syncEnable_u345_u0=32'h0;
reg	[31:0]	syncEnable_u346_u0=32'h0;
reg	[31:0]	syncEnable_u347_u0=32'h0;
reg	[31:0]	syncEnable_u348_u0=32'h0;
reg		block_GO_delayed_u42_u0=1'h0;
reg	[31:0]	syncEnable_u349_u0=32'h0;
wire		and_u1415_u0;
wire		lessThanEqualTo_u28;
wire signed	[31:0]	lessThanEqualTo_u28_b_signed;
wire signed	[31:0]	lessThanEqualTo_u28_a_signed;
wire		and_u1416_u0;
wire		and_u1417_u0;
wire		not_u291_u0;
wire		and_u1418_u0;
wire	[31:0]	mux_u464_u0;
wire	[31:0]	mux_u465_u0;
wire	[31:0]	mux_u466_u0;
wire	[31:0]	mux_u467_u0;
wire	[31:0]	mux_u468_u0;
wire	[31:0]	mux_u469_u0;
wire		or_u401_u0;
reg		reg_014f52a3_u0=1'h0;
assign lessThanEqualTo_a_signed=mux_u462_u0;
assign lessThanEqualTo_b_signed=32'hd;
assign lessThanEqualTo=lessThanEqualTo_a_signed<=lessThanEqualTo_b_signed;
assign not_u285_u0=~lessThanEqualTo;
assign and_u1387_u0=or_u400_u0&not_u285_u0;
assign and_u1388_u0=or_u400_u0&lessThanEqualTo;
assign and_u1389_u0=and_u1388_u0&or_u400_u0;
assign and_u1390_u0=and_u1387_u0&or_u400_u0;
assign add={latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out, 6'b0}+{latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out, 5'b0};
assign add_u417={add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38:5], 5'b0}+{latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out[31], latch_01faef26_out, 2'b0};
assign multiply_a_signed=63'hccccccd;
assign multiply_b_signed={add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39], add_u417[39:2], 2'b0};
assign multiply=multiply_a_signed*multiply_b_signed;
assign add_u418={mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0, 6'b0}+{mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0, 5'b0};
assign add_u419={add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38], add_u418[38:5], 5'b0}+{mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0[31], mux_u462_u0, 2'b0};
assign multiply_u17_a_signed=63'h9d89d8a;
assign multiply_u17_b_signed={add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39], add_u419[39:2], 2'b0};
assign multiply_u17=multiply_u17_a_signed*multiply_u17_b_signed;
assign multiply_u18_a_signed=multiply[62:31];
assign multiply_u18_b_signed=multiply[62:31];
assign multiply_u18=multiply_u18_a_signed*multiply_u18_b_signed;
assign multiply_u19_a_signed=multiply_u17[62:31];
assign multiply_u19_b_signed=multiply_u17[62:31];
assign multiply_u19=multiply_u19_a_signed*multiply_u19_b_signed;
assign add_u420=multiply_u18+multiply_u19;
assign and_u1391_u0=and_u1406_u0&or_u397_u0;
assign and_u1392_u0=and_u1393_u0&or_u396_u0;
assign lessThanEqualTo_u27_a_signed=mux_u451_u0;
assign lessThanEqualTo_u27_b_signed=latch_016dd04f_out;
assign lessThanEqualTo_u27=lessThanEqualTo_u27_a_signed<=lessThanEqualTo_u27_b_signed;
assign and_u1393_u0=or_u396_u0&not_u286_u0;
assign not_u286_u0=~lessThanEqualTo_u27;
assign and_u1394_u0=or_u396_u0&lessThanEqualTo_u27;
assign multiply_u20_a_signed={mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0};
assign multiply_u20_b_signed={mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0[31], mux_u451_u0};
assign multiply_u20=multiply_u20_a_signed*multiply_u20_b_signed;
assign equals_a_signed=multiply_u20;
assign equals_b_signed={latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out[31], latch_016dd04f_out};
assign equals=equals_a_signed==equals_b_signed;
assign and_u1395_u0=and_u1399_u0&not_u287_u0;
assign not_u287_u0=~equals;
assign and_u1396_u0=and_u1399_u0&equals;
assign and_u1397_u0=and_u1395_u0&and_u1399_u0;
assign mux_u448=(and_u1398_u0)?latch_016dd04f_out:mux_u451_u0;
assign mux_u449_u0=(and_u1398_u0)?mux_u451_u0:mux_u453_u0;
assign mux_u450_u0=(and_u1398_u0)?latch_016dd04f_out:mux_u452_u0;
assign and_u1398_u0=and_u1396_u0&and_u1399_u0;
assign add_u421=mux_u448+32'h1;
assign and_u1399_u0=and_u1394_u0&or_u396_u0;
assign latch_016dd04f_out=(and_u1408_u0)?mux_u457_u0:latch_016dd04f_reg;
always @(posedge CLK)
begin
if (and_u1408_u0)
latch_016dd04f_reg<=mux_u457_u0;
end
always @(posedge CLK)
begin
if (and_u1401_u0)
fbReg_inlined_j5_6_6_u3<=add_u421;
end
assign and_u1400_u0=and_u1392_u0&or_u396_u0;
assign mux_u451_u0=(and_u1408_u0)?32'h0:fbReg_inlined_j5_6_6_u3;
assign or_u396_u0=and_u1408_u0|loopControl_u31;
always @(posedge CLK)
begin
if (and_u1401_u0)
fbReg_inlined_pSq4_5_5_u3<=mux_u450_u0;
end
assign mux_u452_u0=(and_u1408_u0)?mux_u455_u0:fbReg_inlined_pSq4_5_5_u3;
assign and_u1401_u0=and_u1399_u0&or_u396_u0;
assign mux_u453_u0=(and_u1408_u0)?mux_u456_u0:fbReg_inlined_N4_5_5_u3;
always @(posedge CLK)
begin
if (and_u1401_u0)
fbReg_inlined_N4_5_5_u3<=mux_u449_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u31<=1'h0;
else loopControl_u31<=and_u1399_u0;
end
assign greaterThan_a_signed=mux_u452_u0;
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign and_u1402_u0=and_u1400_u0&not_u288_u0;
assign and_u1403_u0=and_u1400_u0&greaterThan;
assign not_u288_u0=~greaterThan;
assign and_u1404_u0=and_u1402_u0&and_u1400_u0;
assign mux_u454_u0=(and_u1405_u0)?32'h1:latch_01c61960_out;
assign and_u1405_u0=and_u1403_u0&and_u1400_u0;
assign subtract=mux_u454_u0-32'h1;
assign latch_01c61960_out=(and_u1408_u0)?mux_u457_u0:latch_01c61960_reg;
always @(posedge CLK)
begin
if (and_u1408_u0)
latch_01c61960_reg<=mux_u457_u0;
end
assign greaterThan_u12_a_signed=mux_u457_u0;
assign greaterThan_u12_b_signed=32'h0;
assign greaterThan_u12=greaterThan_u12_a_signed>greaterThan_u12_b_signed;
assign and_u1406_u0=or_u397_u0&not_u289_u0;
assign not_u289_u0=~greaterThan_u12;
assign and_u1407_u0=or_u397_u0&greaterThan_u12;
assign and_u1408_u0=and_u1407_u0&or_u397_u0;
always @(posedge CLK)
begin
if (block_GO_delayed_u41)
latch_0086e215_reg<=RESET;
end
assign latch_0086e215_out=(block_GO_delayed_u41)?RESET:latch_0086e215_reg;
always @(posedge CLK)
begin
if (and_u1400_u0)
fbReg_inlined_N0_1_1_u3<=mux_u453_u0;
end
always @(posedge CLK)
begin
if (and_u1400_u0)
fbReg_inlined_i0_1_1_u7<=subtract;
end
always @(posedge CLK)
begin
if (and_u1400_u0)
fbReg_inlined_pSq0_1_1_u3<=mux_u452_u0;
end
assign or_u397_u0=block_GO_delayed_u41|loopControl_u32_u0;
assign mux_u455_u0=(block_GO_delayed_u41)?32'h0:fbReg_inlined_pSq0_1_1_u3;
assign mux_u456_u0=(block_GO_delayed_u41)?32'h0:fbReg_inlined_N0_1_1_u3;
assign mux_u457_u0=(block_GO_delayed_u41)?syncEnable_u340_u0:fbReg_inlined_i0_1_1_u7;
always @(posedge CLK or posedge latch_0086e215_out)
begin
if (latch_0086e215_out)
loopControl_u32_u0<=1'h0;
else loopControl_u32_u0<=and_u1400_u0;
end
assign greaterThan_u13_a_signed=port_00c980d4_;
assign greaterThan_u13_b_signed=32'h64;
assign greaterThan_u13=greaterThan_u13_a_signed>greaterThan_u13_b_signed;
assign not_u290_u0=~greaterThan_u13;
assign and_u1409_u0=reg_01d0a204_result_delayed_u0&greaterThan_u13;
assign and_u1410_u0=reg_01d0a204_result_delayed_u0&not_u290_u0;
assign add_u422=syncEnable_u337_u0+32'ha;
assign subtract_u87={add_u422[26:0], 5'b0}-{add_u422[29:0], 2'b0};
assign subtract_u88=subtract_u87-add_u422;
assign add_u423=syncEnable_u338_u0+32'hd;
assign add_u424=subtract_u88+add_u423;
assign add_u425=32'h0+add_u424;
assign or_u398_u0=and_u1411_u0|RESET;
assign and_u1411_u0=reg_00090cc1_u0&port_0194c8b9_;
always @(posedge CLK or posedge and_u1413_u0 or posedge or_u398_u0)
begin
if (or_u398_u0)
reg_00090cc1_u0<=1'h0;
else if (and_u1413_u0)
reg_00090cc1_u0<=1'h1;
else reg_00090cc1_u0<=reg_00090cc1_u0;
end
assign add_u426=syncEnable_u337_u0+32'ha;
assign subtract_u89={add_u426[26:0], 5'b0}-{add_u426[29:0], 2'b0};
assign subtract_u90=subtract_u89-add_u426;
assign add_u427=syncEnable_u338_u0+32'hd;
assign add_u428=subtract_u90+add_u427;
assign add_u429=32'h0+add_u428;
assign and_u1412_u0=reg_014b1c99_u0&port_00371c90_;
assign or_u399_u0=and_u1412_u0|RESET;
always @(posedge CLK or posedge and_u1414_u0 or posedge or_u399_u0)
begin
if (or_u399_u0)
reg_014b1c99_u0<=1'h0;
else if (and_u1414_u0)
reg_014b1c99_u0<=1'h1;
else reg_014b1c99_u0<=reg_014b1c99_u0;
end
assign and_u1413_u0=and_u1409_u0&reg_01d0a204_result_delayed_u0;
assign and_u1414_u0=and_u1410_u0&reg_01d0a204_result_delayed_u0;
assign add_u430=mux_u462_u0+32'h1;
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u336<=add_u430;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d0a204_u0<=1'h0;
else reg_01d0a204_u0<=and_u1391_u0;
end
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u337_u0<=latch_01faef26_out;
end
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u338_u0<=mux_u462_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_016488c6_u0<=1'h0;
else reg_016488c6_u0<=reg_01d0a204_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u41<=1'h0;
else block_GO_delayed_u41<=and_u1389_u0;
end
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u339_u0<=multiply_u17[62:31];
end
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u340_u0<=add_u420;
end
always @(posedge CLK)
begin
if (and_u1389_u0)
syncEnable_u341_u0<=multiply[62:31];
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d0a204_result_delayed_u0<=1'h0;
else reg_01d0a204_result_delayed_u0<=reg_01d0a204_u0;
end
always @(posedge CLK)
begin
if (reg_01d0a204_result_delayed_u0)
syncEnable_u342_u0<=port_00c980d4_;
end
assign mux_u458_u0=(reg_016488c6_u0)?syncEnable_u340_u0:syncEnable_u344_u0;
assign mux_u459_u0=(reg_016488c6_u0)?syncEnable_u342_u0:syncEnable_u347_u0;
assign mux_u460_u0=(reg_016488c6_u0)?syncEnable_u342_u0:syncEnable_u348_u0;
assign mux_u461_u0=(reg_016488c6_u0)?syncEnable_u341_u0:syncEnable_u349_u0;
assign mux_u462_u0=(reg_016488c6_u0)?syncEnable_u336:32'hfffffff3;
assign or_u400_u0=reg_016488c6_u0|block_GO_delayed_u42_u0;
assign mux_u463_u0=(reg_016488c6_u0)?syncEnable_u339_u0:syncEnable_u346_u0;
assign latch_01faef26_out=(block_GO_delayed_u42_u0)?syncEnable_u345_u0:latch_01faef26_reg;
always @(posedge CLK)
begin
if (block_GO_delayed_u42_u0)
latch_01faef26_reg<=syncEnable_u345_u0;
end
assign add_u431=mux_u467_u0+32'h1;
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u343_u0<=add_u431;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u344_u0<=mux_u466_u0;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u345_u0<=mux_u467_u0;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u346_u0<=mux_u469_u0;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u347_u0<=mux_u468_u0;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u348_u0<=mux_u464_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u42_u0<=1'h0;
else block_GO_delayed_u42_u0<=and_u1415_u0;
end
always @(posedge CLK)
begin
if (and_u1415_u0)
syncEnable_u349_u0<=mux_u465_u0;
end
assign and_u1415_u0=and_u1416_u0&or_u401_u0;
assign lessThanEqualTo_u28_a_signed=mux_u467_u0;
assign lessThanEqualTo_u28_b_signed=32'ha;
assign lessThanEqualTo_u28=lessThanEqualTo_u28_a_signed<=lessThanEqualTo_u28_b_signed;
assign and_u1416_u0=or_u401_u0&lessThanEqualTo_u28;
assign and_u1417_u0=or_u401_u0&not_u291_u0;
assign not_u291_u0=~lessThanEqualTo_u28;
assign and_u1418_u0=and_u1417_u0&or_u401_u0;
assign mux_u464_u0=(reg_014f52a3_u0)?32'h0:mux_u460_u0;
assign mux_u465_u0=(reg_014f52a3_u0)?32'h0:mux_u461_u0;
assign mux_u466_u0=(reg_014f52a3_u0)?32'h0:mux_u458_u0;
assign mux_u467_u0=(reg_014f52a3_u0)?32'hfffffff6:syncEnable_u343_u0;
assign mux_u468_u0=(reg_014f52a3_u0)?32'h0:mux_u459_u0;
assign mux_u469_u0=(reg_014f52a3_u0)?32'h0:mux_u463_u0;
assign or_u401_u0=reg_014f52a3_u0|and_u1390_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_014f52a3_u0<=1'h0;
else reg_014f52a3_u0<=GO;
end
assign RESULT=and_u1391_u0;
assign RESULT_u873=mux_u456_u0;
assign RESULT_u874=and_u1413_u0;
assign RESULT_u875=add_u425;
assign RESULT_u876=32'h0;
assign RESULT_u877=3'h1;
assign RESULT_u878=and_u1414_u0;
assign RESULT_u879=add_u429;
assign RESULT_u880=32'h1;
assign RESULT_u881=3'h1;
assign DONE=and_u1418_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_derv_stateVar_state_s1(bus_001af005_, bus_00840a94_, bus_01cccb3e_, bus_007ae003_, bus_0179fcc9_);
input		bus_001af005_;
input		bus_00840a94_;
input		bus_01cccb3e_;
input		bus_007ae003_;
output		bus_0179fcc9_;
reg		stateVar_state_s1_u14=1'h0;
always @(posedge bus_001af005_ or posedge bus_00840a94_)
begin
if (bus_00840a94_)
stateVar_state_s1_u14<=1'h0;
else if (bus_01cccb3e_)
stateVar_state_s1_u14<=bus_007ae003_;
end
assign bus_0179fcc9_=stateVar_state_s1_u14;
endmodule


