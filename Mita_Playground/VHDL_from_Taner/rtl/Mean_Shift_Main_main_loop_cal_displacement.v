// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:21 +0100
// 

module Mean_Shift_Main_main_loop_cal_displacement(dx_DATA, dy_ACK, dx_COUNT, kDerArray_SEND, kDerArray_ACK, weights_ACK, dx_SEND, dy_SEND, CLK, RESET, kDerArray_COUNT, kDerArray_DATA, weights_COUNT, weights_DATA, dy_COUNT, dx_ACK, dx_RDY, dy_RDY, dy_DATA, weights_SEND);
wire		compute_displacement_go;
output	[31:0]	dx_DATA;
wire		doneArrayCount_go;
wire		doneArrayCount_done;
input		dy_ACK;
output	[15:0]	dx_COUNT;
input		kDerArray_SEND;
output		kDerArray_ACK;
output		weights_ACK;
output		dx_SEND;
output		dy_SEND;
input		CLK;
input		RESET;
input	[15:0]	kDerArray_COUNT;
wire		getWeightsArray_go;
input	[31:0]	kDerArray_DATA;
input	[15:0]	weights_COUNT;
input	[31:0]	weights_DATA;
output	[15:0]	dy_COUNT;
input		dx_ACK;
input		dx_RDY;
wire		compute_displacement_done;
input		dy_RDY;
wire		getWeightsArray_done;
output	[31:0]	dy_DATA;
input		weights_SEND;
wire		bus_01a7226e_;
wire	[31:0]	bus_0111f998_;
wire		bus_00490b45_;
wire	[31:0]	bus_0128d719_;
wire	[31:0]	bus_0044e87e_;
wire		bus_018cafaf_;
wire		bus_01faa8ee_;
wire		bus_00985533_;
wire	[31:0]	bus_0138041b_;
wire	[2:0]	bus_019dc434_;
wire	[15:0]	compute_displacement_u21;
wire	[31:0]	compute_displacement_u11;
wire		compute_displacement_u17;
wire		Mean_Shift_Main_main_loop_cal_displacement_compute_displacement_instance_DONE;
wire		compute_displacement_u19;
wire	[15:0]	compute_displacement_u20;
wire	[31:0]	compute_displacement_u14;
wire	[31:0]	compute_displacement_u16;
wire	[2:0]	compute_displacement_u15;
wire		compute_displacement;
wire	[31:0]	compute_displacement_u18;
wire	[2:0]	compute_displacement_u12;
wire		compute_displacement_u13;
wire	[31:0]	bus_00ee622a_;
wire		bus_018aa67c_;
wire		bus_005034c9_;
wire	[31:0]	getWeightsArray_u21;
wire	[31:0]	getWeightsArray_u22;
wire	[2:0]	getWeightsArray_u23;
wire		getWeightsArray_u25;
wire	[31:0]	getWeightsArray_u18;
wire		getWeightsArray_u16;
wire		getWeightsArray_u24;
wire	[31:0]	getWeightsArray_u13;
wire	[31:0]	getWeightsArray_u17;
wire		getWeightsArray;
wire	[2:0]	getWeightsArray_u19;
wire		Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray_instance_DONE;
wire		getWeightsArray_u20;
wire		getWeightsArray_u14;
wire	[31:0]	getWeightsArray_u15;
wire		bus_00891bc0_;
wire		Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount_instance_DONE;
wire		doneArrayCount_u10;
wire		doneArrayCount;
wire	[31:0]	doneArrayCount_u11;
wire	[31:0]	doneArrayCount_u9;
wire	[31:0]	bus_00e80687_;
wire		bus_00a18e09_;
wire		bus_018edd82_;
wire		bus_00a86d01_;
wire		bus_01d51df8_;
wire		scheduler_u192;
wire		scheduler_u188;
wire		scheduler;
wire		scheduler_u191;
wire		scheduler_u190;
wire		scheduler_u187;
wire		scheduler_u189;
wire		Mean_Shift_Main_main_loop_cal_displacement_scheduler_instance_DONE;
wire	[2:0]	bus_008a5a84_;
wire		bus_00b81f0c_;
wire	[31:0]	bus_00a1f085_;
wire	[31:0]	bus_01595075_;
wire		bus_01029285_;
wire		bus_0098cfe9_;
wire		bus_01f72b34_;
wire	[31:0]	bus_01e3b933_;
wire		bus_00da5e0c_;
wire	[31:0]	bus_019dda96_;
assign compute_displacement_go=scheduler_u190;
assign dx_DATA=compute_displacement_u16;
assign doneArrayCount_go=scheduler_u192;
assign doneArrayCount_done=bus_00a86d01_;
assign dx_COUNT=compute_displacement_u21;
assign kDerArray_ACK=getWeightsArray_u24;
assign weights_ACK=getWeightsArray_u25;
assign dx_SEND=compute_displacement_u17;
assign dy_SEND=compute_displacement_u19;
assign getWeightsArray_go=scheduler_u191;
assign dy_COUNT=compute_displacement_u20;
assign compute_displacement_done=bus_00a18e09_;
assign getWeightsArray_done=bus_018edd82_;
assign dy_DATA=compute_displacement_u18;
Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_003cfee4_ Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_003cfee4__1(.CLK_u34(CLK), 
  .bus_00b7fe7a_(bus_005034c9_), .bus_01ec7db9_(bus_0138041b_), .bus_01c080b8_(3'h1), 
  .bus_00be988f_(bus_01faa8ee_), .bus_00e3fd04_(bus_00490b45_), .bus_00188c5c_(bus_0044e87e_), 
  .bus_0111f998_(bus_0111f998_), .bus_01a7226e_(bus_01a7226e_));
Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_01366608_ Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_01366608__1(.bus_0177b3f6_(CLK), 
  .bus_01c7e783_(bus_005034c9_), .bus_00d14635_(bus_01a7226e_), .bus_0010e181_(bus_0111f998_), 
  .bus_01712bcd_(getWeightsArray_u16), .bus_01116d83_(getWeightsArray_u18), .bus_012dad3e_(getWeightsArray_u17), 
  .bus_018c2808_(3'h1), .bus_016ec488_(compute_displacement_u13), .bus_01218ee2_(compute_displacement_u14), 
  .bus_00585658_(3'h1), .bus_0044e87e_(bus_0044e87e_), .bus_0138041b_(bus_0138041b_), 
  .bus_00490b45_(bus_00490b45_), .bus_01faa8ee_(bus_01faa8ee_), .bus_019dc434_(bus_019dc434_), 
  .bus_00985533_(bus_00985533_), .bus_0128d719_(bus_0128d719_), .bus_018cafaf_(bus_018cafaf_));
Mean_Shift_Main_main_loop_cal_displacement_compute_displacement Mean_Shift_Main_main_loop_cal_displacement_compute_displacement_instance(.CLK(CLK), 
  .RESET(bus_005034c9_), .GO(compute_displacement_go), .port_00320d06_(bus_0098cfe9_), 
  .port_01009fac_(bus_01595075_), .port_002aa51e_(bus_018cafaf_), .port_0070b083_(bus_0128d719_), 
  .RESULT(compute_displacement), .RESULT_u826(compute_displacement_u11), .RESULT_u827(compute_displacement_u12), 
  .RESULT_u828(compute_displacement_u13), .RESULT_u829(compute_displacement_u14), 
  .RESULT_u830(compute_displacement_u15), .RESULT_u831(compute_displacement_u16), 
  .RESULT_u834(compute_displacement_u17), .RESULT_u833(compute_displacement_u18), 
  .RESULT_u832(compute_displacement_u19), .RESULT_u835(compute_displacement_u20), 
  .RESULT_u836(compute_displacement_u21), .DONE(Mean_Shift_Main_main_loop_cal_displacement_compute_displacement_instance_DONE));
Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_00c7e6c9_ Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_00c7e6c9__1(.CLK_u35(CLK), 
  .bus_018bdda7_(bus_005034c9_), .bus_006e58cd_(bus_01e3b933_), .bus_01433037_(3'h1), 
  .bus_00af1680_(bus_00b81f0c_), .bus_0160448a_(bus_01029285_), .bus_016e60a3_(bus_00a1f085_), 
  .bus_00ee622a_(bus_00ee622a_), .bus_018aa67c_(bus_018aa67c_));
Mean_Shift_Main_main_loop_cal_displacement_globalreset_physical_00336005_ Mean_Shift_Main_main_loop_cal_displacement_globalreset_physical_00336005__1(.bus_01deb793_(CLK), 
  .bus_0161aae0_(RESET), .bus_005034c9_(bus_005034c9_));
Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray_instance(.CLK(CLK), 
  .RESET(bus_005034c9_), .GO(getWeightsArray_go), .port_0086072b_(bus_00e80687_), 
  .port_007eb8cb_(bus_019dda96_), .port_00f0d227_(bus_00985533_), .port_01dd740d_(bus_01f72b34_), 
  .port_0164e82a_(kDerArray_DATA), .port_00ad10ab_(weights_DATA), .RESULT(getWeightsArray), 
  .RESULT_u837(getWeightsArray_u13), .RESULT_u838(getWeightsArray_u14), .RESULT_u839(getWeightsArray_u15), 
  .RESULT_u844(getWeightsArray_u16), .RESULT_u845(getWeightsArray_u17), .RESULT_u846(getWeightsArray_u18), 
  .RESULT_u847(getWeightsArray_u19), .RESULT_u840(getWeightsArray_u20), .RESULT_u841(getWeightsArray_u21), 
  .RESULT_u842(getWeightsArray_u22), .RESULT_u843(getWeightsArray_u23), .RESULT_u848(getWeightsArray_u24), 
  .RESULT_u849(getWeightsArray_u25), .DONE(Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray_instance_DONE));
Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s1_1(.bus_012dadd0_(CLK), 
  .bus_01ee4efd_(bus_005034c9_), .bus_01e1857d_(scheduler_u188), .bus_00a7a68e_(scheduler_u189), 
  .bus_00891bc0_(bus_00891bc0_));
Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount_instance(.CLK(CLK), 
  .RESET(bus_005034c9_), .GO(doneArrayCount_go), .RESULT(doneArrayCount), .RESULT_u850(doneArrayCount_u9), 
  .RESULT_u851(doneArrayCount_u10), .RESULT_u852(doneArrayCount_u11), .DONE(Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount_instance_DONE));
Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_x Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_x_1(.bus_0129676a_(CLK), 
  .bus_0144a15e_(bus_005034c9_), .bus_006f6753_(getWeightsArray), .bus_00fcacec_(getWeightsArray_u13), 
  .bus_015983cf_(doneArrayCount_u10), .bus_01d1efc7_(32'h0), .bus_00e80687_(bus_00e80687_));
assign bus_00a18e09_=Mean_Shift_Main_main_loop_cal_displacement_compute_displacement_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_displacement_compute_displacement_instance_DONE}};
assign bus_018edd82_=Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray_instance_DONE}};
assign bus_00a86d01_=Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount_instance_DONE}};
Mean_Shift_Main_main_loop_cal_displacement_Kicker_15 Mean_Shift_Main_main_loop_cal_displacement_Kicker_15_1(.CLK(CLK), 
  .RESET(bus_005034c9_), .bus_01d51df8_(bus_01d51df8_));
Mean_Shift_Main_main_loop_cal_displacement_scheduler Mean_Shift_Main_main_loop_cal_displacement_scheduler_instance(.CLK(CLK), 
  .RESET(bus_005034c9_), .GO(bus_01d51df8_), .port_00063697_(bus_00da5e0c_), .port_002079a9_(bus_00891bc0_), 
  .port_00245da1_(bus_00e80687_), .port_0073f1b3_(kDerArray_SEND), .port_0099f146_(compute_displacement_done), 
  .port_018bf87e_(dy_RDY), .port_01c2cf6d_(getWeightsArray_done), .port_0104ade0_(doneArrayCount_done), 
  .port_00438f64_(weights_SEND), .port_01d24f81_(dx_RDY), .RESULT(scheduler), .RESULT_u853(scheduler_u187), 
  .RESULT_u854(scheduler_u188), .RESULT_u855(scheduler_u189), .RESULT_u856(scheduler_u190), 
  .RESULT_u857(scheduler_u191), .RESULT_u858(scheduler_u192), .DONE(Mean_Shift_Main_main_loop_cal_displacement_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_008be01f_ Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_008be01f__1(.bus_011d83dc_(CLK), 
  .bus_00bc1046_(bus_005034c9_), .bus_0103a396_(bus_018aa67c_), .bus_006ea72e_(bus_00ee622a_), 
  .bus_005ed302_(getWeightsArray_u20), .bus_0194cfb9_(getWeightsArray_u22), .bus_01a42fdb_(getWeightsArray_u21), 
  .bus_01d9b4f4_(3'h1), .bus_00173409_(compute_displacement), .bus_01ea01dd_(compute_displacement_u11), 
  .bus_01dda571_(3'h1), .bus_00a1f085_(bus_00a1f085_), .bus_01e3b933_(bus_01e3b933_), 
  .bus_01029285_(bus_01029285_), .bus_00b81f0c_(bus_00b81f0c_), .bus_008a5a84_(bus_008a5a84_), 
  .bus_01f72b34_(bus_01f72b34_), .bus_01595075_(bus_01595075_), .bus_0098cfe9_(bus_0098cfe9_));
Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s0_1(.bus_00bb48d8_(CLK), 
  .bus_01ab9bdb_(bus_005034c9_), .bus_00d67338_(scheduler), .bus_00e89009_(scheduler_u187), 
  .bus_00da5e0c_(bus_00da5e0c_));
Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_y Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_y_1(.bus_00bef147_(CLK), 
  .bus_01d29df0_(bus_005034c9_), .bus_00d141c6_(getWeightsArray_u14), .bus_01924b07_(getWeightsArray_u15), 
  .bus_01e11ca3_(doneArrayCount), .bus_006246e8_(32'h0), .bus_019dda96_(bus_019dda96_));
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_forge_memory_567x32_59(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
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
reg		wen_done;
reg		ren_done;
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
  )RAMB16_S18_instance_118(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[15:0]), 
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
  )RAMB16_S18_instance_119(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI({2'b0, DIN[31:18]}), 
  .DO({extras_0, pre_dout_0[31:18]}), .DIP(2'b0), .DOP(parOut));
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_003cfee4_(CLK_u34, bus_00b7fe7a_, bus_01ec7db9_, bus_01c080b8_, bus_00be988f_, bus_00e3fd04_, bus_00188c5c_, bus_0111f998_, bus_01a7226e_);
input		CLK_u34;
input		bus_00b7fe7a_;
input	[31:0]	bus_01ec7db9_;
input	[2:0]	bus_01c080b8_;
input		bus_00be988f_;
input		bus_00e3fd04_;
input	[31:0]	bus_00188c5c_;
output	[31:0]	bus_0111f998_;
output		bus_01a7226e_;
wire	[31:0]	bus_01ceac22_;
reg		logicalMem_180f6_we_delay0_u0=1'h0;
wire		or_00806b59_u0;
wire		or_012a3bda_u0;
reg		logicalMem_180f6_re_delay0_u0=1'h0;
Mean_Shift_Main_main_loop_cal_displacement_forge_memory_567x32_59 Mean_Shift_Main_main_loop_cal_displacement_forge_memory_567x32_59_instance0(.CLK(CLK_u34), 
  .EN(or_00806b59_u0), .WE(bus_00e3fd04_), .ADDR(bus_01ec7db9_), .DIN(bus_00188c5c_), 
  .DOUT(bus_01ceac22_), .DONE());
always @(posedge CLK_u34 or posedge bus_00b7fe7a_)
begin
if (bus_00b7fe7a_)
logicalMem_180f6_we_delay0_u0<=1'h0;
else logicalMem_180f6_we_delay0_u0<=bus_00e3fd04_;
end
assign or_00806b59_u0=bus_00be988f_|bus_00e3fd04_;
assign bus_0111f998_=bus_01ceac22_;
assign bus_01a7226e_=or_012a3bda_u0;
assign or_012a3bda_u0=logicalMem_180f6_re_delay0_u0|logicalMem_180f6_we_delay0_u0;
always @(posedge CLK_u34 or posedge bus_00b7fe7a_)
begin
if (bus_00b7fe7a_)
logicalMem_180f6_re_delay0_u0<=1'h0;
else logicalMem_180f6_re_delay0_u0<=bus_00be988f_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_01366608_(bus_0177b3f6_, bus_01c7e783_, bus_00d14635_, bus_0010e181_, bus_01712bcd_, bus_01116d83_, bus_012dad3e_, bus_018c2808_, bus_016ec488_, bus_01218ee2_, bus_00585658_, bus_0044e87e_, bus_0138041b_, bus_00490b45_, bus_01faa8ee_, bus_019dc434_, bus_00985533_, bus_0128d719_, bus_018cafaf_);
input		bus_0177b3f6_;
input		bus_01c7e783_;
input		bus_00d14635_;
input	[31:0]	bus_0010e181_;
input		bus_01712bcd_;
input	[31:0]	bus_01116d83_;
input	[31:0]	bus_012dad3e_;
input	[2:0]	bus_018c2808_;
input		bus_016ec488_;
input	[31:0]	bus_01218ee2_;
input	[2:0]	bus_00585658_;
output	[31:0]	bus_0044e87e_;
output	[31:0]	bus_0138041b_;
output		bus_00490b45_;
output		bus_01faa8ee_;
output	[2:0]	bus_019dc434_;
output		bus_00985533_;
output	[31:0]	bus_0128d719_;
output		bus_018cafaf_;
wire	[31:0]	mux_001a8aea_u0;
wire		or_00c41271_u0;
wire		not_00dc19c0_u0;
reg		done_qual_u71=1'h0;
wire		or_00afc089_u0;
wire		not_0100d553_u0;
wire		and_01586975_u0;
reg		done_qual_u72_u0=1'h0;
wire		and_01e9bcf5_u0;
wire		or_01d871fc_u0;
wire	[31:0]	mux_0110fe2c_u0;
assign mux_001a8aea_u0=({32{bus_01712bcd_}}&bus_01116d83_);
assign or_00c41271_u0=bus_01712bcd_|done_qual_u72_u0;
assign not_00dc19c0_u0=~bus_00d14635_;
always @(posedge bus_0177b3f6_)
begin
if (bus_01c7e783_)
done_qual_u71<=1'h0;
else done_qual_u71<=bus_016ec488_;
end
assign bus_0044e87e_=mux_001a8aea_u0;
assign bus_0138041b_=mux_0110fe2c_u0;
assign bus_00490b45_=bus_01712bcd_;
assign bus_01faa8ee_=or_01d871fc_u0;
assign bus_019dc434_=3'h1;
assign bus_00985533_=and_01e9bcf5_u0;
assign bus_0128d719_=bus_0010e181_;
assign bus_018cafaf_=and_01586975_u0;
assign or_00afc089_u0=bus_016ec488_|done_qual_u71;
assign not_0100d553_u0=~bus_00d14635_;
assign and_01586975_u0=or_00afc089_u0&bus_00d14635_;
always @(posedge bus_0177b3f6_)
begin
if (bus_01c7e783_)
done_qual_u72_u0<=1'h0;
else done_qual_u72_u0<=bus_01712bcd_;
end
assign and_01e9bcf5_u0=or_00c41271_u0&bus_00d14635_;
assign or_01d871fc_u0=bus_01712bcd_|bus_016ec488_;
assign mux_0110fe2c_u0=(bus_01712bcd_)?bus_012dad3e_:bus_01218ee2_;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_compute_displacement(CLK, RESET, GO, port_00320d06_, port_01009fac_, port_002aa51e_, port_0070b083_, RESULT, RESULT_u826, RESULT_u827, RESULT_u828, RESULT_u829, RESULT_u830, RESULT_u831, RESULT_u832, RESULT_u833, RESULT_u834, RESULT_u835, RESULT_u836, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_00320d06_;
input	[31:0]	port_01009fac_;
input		port_002aa51e_;
input	[31:0]	port_0070b083_;
output		RESULT;
output	[31:0]	RESULT_u826;
output	[2:0]	RESULT_u827;
output		RESULT_u828;
output	[31:0]	RESULT_u829;
output	[2:0]	RESULT_u830;
output	[31:0]	RESULT_u831;
output		RESULT_u832;
output	[31:0]	RESULT_u833;
output		RESULT_u834;
output	[15:0]	RESULT_u835;
output	[15:0]	RESULT_u836;
output		DONE;
reg		reg_00436296_u0=1'h0;
reg		reg_013e8e52_u0=1'h0;
reg		reg_01275c17_u0=1'h0;
reg		reg_00352784_u0=1'h0;
wire		and_u1286_u0;
reg		reg_01a26b18_u0=1'h0;
wire signed	[31:0]	lessThanEqualTo_b_signed;
wire		lessThanEqualTo;
wire signed	[31:0]	lessThanEqualTo_a_signed;
wire		and_u1287_u0;
wire		and_u1288_u0;
wire		not_u264_u0;
wire		and_u1289_u0;
wire	[31:0]	add;
wire	[31:0]	add_u391;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u76;
wire	[31:0]	add_u392;
wire	[31:0]	add_u393;
wire	[31:0]	add_u394;
wire	[31:0]	add_u395;
wire		and_u1290_u0;
reg		done_cache_u48=1'h0;
wire		or_u372_u0;
wire	[31:0]	add_u396;
wire	[31:0]	add_u397;
wire	[31:0]	subtract_u77;
wire	[31:0]	subtract_u78;
wire	[31:0]	add_u398;
wire	[31:0]	add_u399;
wire	[31:0]	add_u400;
wire	[31:0]	add_u401;
reg		done_cache_u49_u0=1'h0;
wire		or_u373_u0;
wire		and_u1291_u0;
wire signed	[31:0]	multiply_a_signed;
wire signed	[31:0]	multiply_b_signed;
wire	[31:0]	multiply;
wire	[31:0]	add_u402;
wire signed	[31:0]	multiply_u15_a_signed;
wire signed	[31:0]	multiply_u15_b_signed;
wire	[31:0]	multiply_u15;
wire	[31:0]	add_u403;
wire signed	[31:0]	multiply_u16_a_signed;
wire signed	[31:0]	multiply_u16_b_signed;
wire	[31:0]	multiply_u16;
wire	[31:0]	add_u404;
wire	[31:0]	add_u405;
reg	[31:0]	syncEnable_u314=32'h0;
reg	[31:0]	syncEnable_u315_u0=32'h0;
reg	[31:0]	syncEnable_u316_u0=32'h0;
reg	[31:0]	syncEnable_u317_u0=32'h0;
reg	[31:0]	syncEnable_u318_u0=32'h0;
reg	[31:0]	syncEnable_u319_u0=32'h0;
wire	[31:0]	mux_u404;
wire	[31:0]	mux_u405_u0;
wire	[31:0]	mux_u406_u0;
wire	[31:0]	mux_u407_u0;
wire		or_u374_u0;
wire	[31:0]	mux_u408_u0;
wire	[31:0]	mux_u409_u0;
wire	[31:0]	mux_u410_u0;
reg	[31:0]	latch_0056b4e4_reg=32'h0;
wire	[31:0]	latch_0056b4e4_out;
wire	[31:0]	add_u406;
reg	[31:0]	syncEnable_u320_u0=32'h0;
reg	[31:0]	syncEnable_u321_u0=32'h0;
reg	[31:0]	syncEnable_u322_u0=32'h0;
reg		block_GO_delayed_u38=1'h0;
reg	[31:0]	syncEnable_u323_u0=32'h0;
reg	[31:0]	syncEnable_u324_u0=32'h0;
reg	[31:0]	syncEnable_u325_u0=32'h0;
reg	[31:0]	syncEnable_u326_u0=32'h0;
reg	[31:0]	syncEnable_u327_u0=32'h0;
reg		reg_007eb571_u0=1'h0;
reg		reg_00568312_u0=1'h0;
reg		reg_015eeaa5_u0=1'h0;
wire		and_u1292_u0;
wire signed	[31:0]	lessThanEqualTo_u26_b_signed;
wire		lessThanEqualTo_u26;
wire signed	[31:0]	lessThanEqualTo_u26_a_signed;
wire		and_u1293_u0;
wire		not_u265_u0;
wire		and_u1294_u0;
wire		and_u1295_u0;
reg		reg_0071cec8_u0=1'h0;
reg		reg_00fb4560_u0=1'h0;
reg		reg_01dcac85_u0=1'h0;
reg		reg_013f3e89_u0=1'h0;
reg		reg_013e8e52_result_delayed_u0=1'h0;
reg		reg_01ecf190_u0=1'h0;
reg		reg_00707c6c_u0=1'h0;
reg		reg_00bdc1cf_u0=1'h0;
reg		reg_007eb571_result_delayed_u0=1'h0;
reg		reg_007eb571_result_delayed_result_delayed_u0=1'h0;
reg		reg_007eb571_result_delayed_result_delayed_result_delayed_u0=1'h0;
reg		reg_00bdc1cf_result_delayed_u0=1'h0;
reg		reg_01f64379_u0=1'h0;
reg		reg_00352784_result_delayed_u0=1'h0;
reg		reg_00436296_result_delayed_u0=1'h0;
reg		reg_00568312_result_delayed_u0=1'h0;
reg		reg_01f64379_result_delayed_u0=1'h0;
reg		reg_015eeaa5_result_delayed_u0=1'h0;
reg		reg_00bdc1cf_result_delayed_result_delayed_u0=1'h0;
reg		and_delayed_u66=1'h0;
wire	[31:0]	mux_u411_u0;
wire	[31:0]	mux_u412_u0;
wire	[31:0]	mux_u413_u0;
wire	[31:0]	mux_u414_u0;
wire		or_u375_u0;
wire	[31:0]	mux_u415_u0;
wire	[31:0]	mux_u416_u0;
wire	[31:0]	mux_u417_u0;
wire signed	[31:0]	lessThan_b_signed;
wire signed	[31:0]	lessThan_a_signed;
wire		lessThan;
wire		not_u266_u0;
wire		and_u1296_u0;
wire		and_u1297_u0;
wire	[31:0]	minus;
wire		and_u1298_u0;
wire	[31:0]	mux_u418_u0;
wire		and_u1299_u0;
wire	[31:0]	mux_u419_u0;
wire signed	[31:0]	lessThan_u17_b_signed;
wire		lessThan_u17;
wire signed	[31:0]	lessThan_u17_a_signed;
wire		and_u1300_u0;
wire		not_u267_u0;
wire		and_u1301_u0;
wire	[31:0]	minus_u25;
wire	[31:0]	xor_u6;
wire		and_u1302_u0;
wire		and_u1303_u0;
wire	[31:0]	mux_u420_u0;
wire	[31:0]	mux_u421_u0;
wire	[31:0]	or_u376;
wire	[4:0]	subtract_u79;
wire	[31:0]	leftShift_stage_2;
wire	[31:0]	leftShift;
wire	[31:0]	leftShift_stage_4;
wire	[31:0]	leftShift_stage_1;
wire	[31:0]	leftShift_stage_3;
wire	[31:0]	subtract_u80;
wire	[31:0]	add_u407;
wire		and_u1304_u0;
wire signed	[31:0]	lessThan_u18_a_signed;
wire signed	[31:0]	lessThan_u18_b_signed;
wire		lessThan_u18;
wire		not_u268_u0;
wire		and_u1305_u0;
wire		and_u1306_u0;
wire		and_u1307_u0;
wire		and_u1308_u0;
wire		and_u1309_u0;
wire	[31:0]	mux_u422_u0;
reg	[31:0]	fbReg_inlined_i0_1_1_u6=32'h0;
reg	[31:0]	fbReg_inlined_remainder0_1_1_u5=32'h0;
reg	[31:0]	fbReg_inlined_result0_1_1_u5=32'h0;
wire	[31:0]	mux_u423_u0;
reg	[31:0]	fbReg_inlined_mask0_1_1_u5=32'h0;
reg		loopControl_u28=1'h0;
wire		or_u377_u0;
wire	[31:0]	mux_u424_u0;
reg	[31:0]	latch_00f87271_reg=32'h0;
wire	[31:0]	latch_00f87271_out;
wire	[31:0]	mux_u425_u0;
wire signed	[31:0]	notEquals_b_signed;
wire		notEquals;
wire signed	[31:0]	notEquals_a_signed;
wire		and_u1310_u0;
wire		and_u1311_u0;
wire		not_u269_u0;
wire	[31:0]	minus_u26;
wire	[31:0]	mux_u426_u0;
wire		and_u1312_u0;
wire		and_u1313_u0;
wire		lessThan_u19;
wire signed	[31:0]	lessThan_u19_a_signed;
wire signed	[31:0]	lessThan_u19_b_signed;
wire		and_u1314_u0;
wire		not_u270_u0;
wire		and_u1315_u0;
wire	[31:0]	minus_u27;
wire		and_u1316_u0;
wire		and_u1317_u0;
wire	[31:0]	mux_u427_u0;
wire	[31:0]	mux_u428_u0;
wire signed	[31:0]	lessThan_u20_b_signed;
wire signed	[31:0]	lessThan_u20_a_signed;
wire		lessThan_u20;
wire		not_u271_u0;
wire		and_u1318_u0;
wire		and_u1319_u0;
wire	[31:0]	minus_u28;
wire	[31:0]	xor_u7;
wire		and_u1320_u0;
wire		and_u1321_u0;
wire	[31:0]	mux_u429_u0;
wire	[31:0]	mux_u430_u0;
wire	[31:0]	or_u378;
wire	[4:0]	subtract_u81;
wire	[31:0]	leftShift_u1_stage_1;
wire	[31:0]	leftShift_u1_stage_4;
wire	[31:0]	leftShift_u1_stage_3;
wire	[31:0]	leftShift_u1;
wire	[31:0]	leftShift_u1_stage_2;
wire	[31:0]	subtract_u82;
wire	[31:0]	add_u408;
wire		lessThan_u21;
wire signed	[31:0]	lessThan_u21_b_signed;
wire signed	[31:0]	lessThan_u21_a_signed;
wire		and_u1322_u0;
wire		and_u1323_u0;
wire		not_u272_u0;
wire		and_u1324_u0;
wire		and_u1325_u0;
wire	[31:0]	mux_u431_u0;
reg	[31:0]	fbReg_inlined_mask4_1_1_u1=32'h0;
wire		and_u1326_u0;
reg	[31:0]	fbReg_inlined_remainder5_1_1_u1=32'h0;
wire		and_u1327_u0;
reg	[31:0]	latch_007619e2_reg=32'h0;
wire	[31:0]	latch_007619e2_out;
wire	[31:0]	mux_u432_u0;
reg		loopControl_u29_u0=1'h0;
wire		or_u379_u0;
wire	[31:0]	mux_u433_u0;
wire	[31:0]	mux_u434_u0;
reg	[31:0]	fbReg_inlined_result7_1_1_u1=32'h0;
reg	[31:0]	fbReg_inlined_i4_1_1_u3=32'h0;
wire		notEquals_u1;
wire signed	[31:0]	notEquals_u1_b_signed;
wire signed	[31:0]	notEquals_u1_a_signed;
wire		and_u1328_u0;
wire		not_u273_u0;
wire		and_u1329_u0;
wire	[31:0]	minus_u29;
wire		and_u1330_u0;
wire	[31:0]	mux_u435_u0;
wire		and_u1331_u0;
wire		simplePinWrite;
wire	[15:0]	simplePinWrite_u178;
wire	[31:0]	simplePinWrite_u179;
wire		simplePinWrite_u180;
wire	[31:0]	simplePinWrite_u181;
wire	[15:0]	simplePinWrite_u182;
wire		latch_006842c9_out;
reg		latch_006842c9_reg=1'h0;
reg		reg_01300858_u0=1'h0;
wire		latch_0017eb6b_out;
reg		latch_0017eb6b_reg=1'h0;
wire		bus_00262243_;
wire		scoreboard_002c6360_resOr0;
reg		scoreboard_002c6360_reg1=1'h0;
wire		scoreboard_002c6360_and;
wire		scoreboard_002c6360_resOr1;
reg		scoreboard_002c6360_reg0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00436296_u0<=1'h0;
else reg_00436296_u0<=reg_00fb4560_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_013e8e52_u0<=1'h0;
else reg_013e8e52_u0<=reg_013f3e89_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01275c17_u0<=1'h0;
else reg_01275c17_u0<=reg_015eeaa5_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00352784_u0<=1'h0;
else reg_00352784_u0<=reg_01ecf190_u0;
end
assign and_u1286_u0=and_u1287_u0&or_u374_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01a26b18_u0<=1'h0;
else reg_01a26b18_u0<=and_u1289_u0;
end
assign lessThanEqualTo_a_signed=mux_u410_u0;
assign lessThanEqualTo_b_signed=32'hc;
assign lessThanEqualTo=lessThanEqualTo_a_signed<=lessThanEqualTo_b_signed;
assign and_u1287_u0=or_u374_u0&not_u264_u0;
assign and_u1288_u0=or_u374_u0&lessThanEqualTo;
assign not_u264_u0=~lessThanEqualTo;
assign and_u1289_u0=and_u1288_u0&or_u374_u0;
assign add=latch_0056b4e4_out+32'ha;
assign add_u391=add+32'h1;
assign subtract={add_u391[26:0], 5'b0}-{add_u391[29:0], 2'b0};
assign subtract_u76=subtract-add_u391;
assign add_u392=mux_u410_u0+32'hd;
assign add_u393=add_u392+32'h1;
assign add_u394=subtract_u76+add_u393;
assign add_u395=32'h0+add_u394;
assign and_u1290_u0=done_cache_u48&port_002aa51e_;
always @(posedge CLK or posedge and_u1289_u0 or posedge or_u372_u0)
begin
if (or_u372_u0)
done_cache_u48<=1'h0;
else if (and_u1289_u0)
done_cache_u48<=1'h1;
else done_cache_u48<=done_cache_u48;
end
assign or_u372_u0=and_u1290_u0|RESET;
assign add_u396=latch_0056b4e4_out+32'ha;
assign add_u397=add_u396+32'h1;
assign subtract_u77={add_u397[26:0], 5'b0}-{add_u397[29:0], 2'b0};
assign subtract_u78=subtract_u77-add_u397;
assign add_u398=mux_u410_u0+32'hd;
assign add_u399=add_u398+32'h1;
assign add_u400=subtract_u78+add_u399;
assign add_u401=32'h0+add_u400;
always @(posedge CLK or posedge and_u1289_u0 or posedge or_u373_u0)
begin
if (or_u373_u0)
done_cache_u49_u0<=1'h0;
else if (and_u1289_u0)
done_cache_u49_u0<=1'h1;
else done_cache_u49_u0<=done_cache_u49_u0;
end
assign or_u373_u0=and_u1291_u0|RESET;
assign and_u1291_u0=done_cache_u49_u0&port_00320d06_;
assign multiply_a_signed=port_0070b083_;
assign multiply_b_signed=port_01009fac_;
assign multiply=multiply_a_signed*multiply_b_signed;
assign add_u402=syncEnable_u317_u0+multiply;
assign multiply_u15_a_signed=syncEnable_u314;
assign multiply_u15_b_signed=multiply;
assign multiply_u15=multiply_u15_a_signed*multiply_u15_b_signed;
assign add_u403=syncEnable_u316_u0+multiply_u15;
assign multiply_u16_a_signed=syncEnable_u319_u0;
assign multiply_u16_b_signed=multiply;
assign multiply_u16=multiply_u16_a_signed*multiply_u16_b_signed;
assign add_u404=syncEnable_u318_u0+multiply_u16;
assign add_u405=mux_u410_u0+32'h1;
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u314<=latch_0056b4e4_out;
end
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u315_u0<=add_u405;
end
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u316_u0<=mux_u409_u0;
end
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u317_u0<=mux_u404;
end
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u318_u0<=mux_u405_u0;
end
always @(posedge CLK)
begin
if (and_u1289_u0)
syncEnable_u319_u0<=mux_u410_u0;
end
assign mux_u404=(reg_01a26b18_u0)?add_u402:syncEnable_u321_u0;
assign mux_u405_u0=(reg_01a26b18_u0)?add_u404:syncEnable_u324_u0;
assign mux_u406_u0=(reg_01a26b18_u0)?port_0070b083_:syncEnable_u320_u0;
assign mux_u407_u0=(reg_01a26b18_u0)?port_01009fac_:syncEnable_u327_u0;
assign or_u374_u0=reg_01a26b18_u0|block_GO_delayed_u38;
assign mux_u408_u0=(reg_01a26b18_u0)?multiply:syncEnable_u325_u0;
assign mux_u409_u0=(reg_01a26b18_u0)?add_u403:syncEnable_u326_u0;
assign mux_u410_u0=(reg_01a26b18_u0)?syncEnable_u315_u0:32'hfffffff3;
always @(posedge CLK)
begin
if (block_GO_delayed_u38)
latch_0056b4e4_reg<=syncEnable_u323_u0;
end
assign latch_0056b4e4_out=(block_GO_delayed_u38)?syncEnable_u323_u0:latch_0056b4e4_reg;
assign add_u406=mux_u414_u0+32'h1;
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u320_u0<=mux_u415_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u321_u0<=mux_u416_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u322_u0<=add_u406;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u38<=1'h0;
else block_GO_delayed_u38<=and_u1295_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u323_u0<=mux_u414_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u324_u0<=mux_u412_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u325_u0<=mux_u417_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u326_u0<=mux_u411_u0;
end
always @(posedge CLK)
begin
if (and_u1295_u0)
syncEnable_u327_u0<=mux_u413_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007eb571_u0<=1'h0;
else reg_007eb571_u0<=reg_0071cec8_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00568312_u0<=1'h0;
else reg_00568312_u0<=reg_007eb571_result_delayed_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_015eeaa5_u0<=1'h0;
else reg_015eeaa5_u0<=reg_00352784_result_delayed_u0;
end
assign and_u1292_u0=and_u1294_u0&or_u375_u0;
assign lessThanEqualTo_u26_a_signed=mux_u414_u0;
assign lessThanEqualTo_u26_b_signed=32'h9;
assign lessThanEqualTo_u26=lessThanEqualTo_u26_a_signed<=lessThanEqualTo_u26_b_signed;
assign and_u1293_u0=or_u375_u0&lessThanEqualTo_u26;
assign not_u265_u0=~lessThanEqualTo_u26;
assign and_u1294_u0=or_u375_u0&not_u265_u0;
assign and_u1295_u0=and_u1293_u0&or_u375_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0071cec8_u0<=1'h0;
else reg_0071cec8_u0<=reg_013e8e52_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00fb4560_u0<=1'h0;
else reg_00fb4560_u0<=reg_01dcac85_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01dcac85_u0<=1'h0;
else reg_01dcac85_u0<=reg_00707c6c_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_013f3e89_u0<=1'h0;
else reg_013f3e89_u0<=reg_01f64379_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_013e8e52_result_delayed_u0<=1'h0;
else reg_013e8e52_result_delayed_u0<=reg_013e8e52_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ecf190_u0<=1'h0;
else reg_01ecf190_u0<=reg_00bdc1cf_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00707c6c_u0<=1'h0;
else reg_00707c6c_u0<=and_delayed_u66;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bdc1cf_u0<=1'h0;
else reg_00bdc1cf_u0<=reg_00568312_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007eb571_result_delayed_u0<=1'h0;
else reg_007eb571_result_delayed_u0<=reg_007eb571_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007eb571_result_delayed_result_delayed_u0<=1'h0;
else reg_007eb571_result_delayed_result_delayed_u0<=reg_007eb571_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007eb571_result_delayed_result_delayed_result_delayed_u0<=1'h0;
else reg_007eb571_result_delayed_result_delayed_result_delayed_u0<=reg_007eb571_result_delayed_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bdc1cf_result_delayed_u0<=1'h0;
else reg_00bdc1cf_result_delayed_u0<=reg_00bdc1cf_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01f64379_u0<=1'h0;
else reg_01f64379_u0<=reg_00436296_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00352784_result_delayed_u0<=1'h0;
else reg_00352784_result_delayed_u0<=reg_00352784_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00436296_result_delayed_u0<=1'h0;
else reg_00436296_result_delayed_u0<=reg_00436296_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00568312_result_delayed_u0<=1'h0;
else reg_00568312_result_delayed_u0<=reg_00568312_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01f64379_result_delayed_u0<=1'h0;
else reg_01f64379_result_delayed_u0<=reg_01f64379_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_015eeaa5_result_delayed_u0<=1'h0;
else reg_015eeaa5_result_delayed_u0<=reg_015eeaa5_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00bdc1cf_result_delayed_result_delayed_u0<=1'h0;
else reg_00bdc1cf_result_delayed_result_delayed_u0<=reg_00bdc1cf_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u66<=1'h0;
else and_delayed_u66<=and_u1295_u0;
end
assign mux_u411_u0=(reg_01300858_u0)?32'h0:mux_u409_u0;
assign mux_u412_u0=(reg_01300858_u0)?32'h0:mux_u405_u0;
assign mux_u413_u0=(reg_01300858_u0)?32'h0:mux_u407_u0;
assign mux_u414_u0=(reg_01300858_u0)?32'hfffffff6:syncEnable_u322_u0;
assign or_u375_u0=reg_01300858_u0|reg_01275c17_u0;
assign mux_u415_u0=(reg_01300858_u0)?32'h0:mux_u406_u0;
assign mux_u416_u0=(reg_01300858_u0)?32'h0:mux_u404;
assign mux_u417_u0=(reg_01300858_u0)?32'h0:mux_u408_u0;
assign lessThan_a_signed=mux_u411_u0;
assign lessThan_b_signed=32'h0;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign not_u266_u0=~lessThan;
assign and_u1296_u0=and_u1292_u0&not_u266_u0;
assign and_u1297_u0=and_u1292_u0&lessThan;
assign minus=~mux_u411_u0+32'h1;
assign and_u1298_u0=and_u1297_u0&and_u1292_u0;
assign mux_u418_u0=(and_u1298_u0)?minus:mux_u411_u0;
assign and_u1299_u0=and_u1296_u0&and_u1292_u0;
assign mux_u419_u0=(and_u1298_u0)?32'h1:32'h0;
assign lessThan_u17_a_signed=mux_u416_u0;
assign lessThan_u17_b_signed=32'h0;
assign lessThan_u17=lessThan_u17_a_signed<lessThan_u17_b_signed;
assign and_u1300_u0=and_u1292_u0&not_u267_u0;
assign not_u267_u0=~lessThan_u17;
assign and_u1301_u0=and_u1292_u0&lessThan_u17;
assign minus_u25=~mux_u416_u0+32'h1;
assign xor_u6=mux_u419_u0[0]^1'h1;
assign and_u1302_u0=and_u1301_u0&and_u1292_u0;
assign and_u1303_u0=and_u1300_u0&and_u1292_u0;
assign mux_u420_u0=(and_u1302_u0)?{31'b0, xor_u6[0]}:{31'b0, mux_u419_u0[0]};
assign mux_u421_u0=(and_u1302_u0)?minus_u25:mux_u416_u0;
assign or_u376=mux_u424_u0|mux_u422_u0;
assign subtract_u79=5'h1f-mux_u423_u0[4:0];
assign leftShift_stage_1=(subtract_u79[4])?{latch_00f87271_out[15:0], 16'h0}:latch_00f87271_out;
assign leftShift_stage_2=(subtract_u79[3])?{leftShift_stage_1[23:0], 8'h0}:leftShift_stage_1;
assign leftShift_stage_3=(subtract_u79[2])?{leftShift_stage_2[27:0], 4'h0}:leftShift_stage_2;
assign leftShift_stage_4=(subtract_u79[1])?{leftShift_stage_3[29:0], 2'h0}:leftShift_stage_3;
assign leftShift=(subtract_u79[0])?{leftShift_stage_4[30:0], 1'h0}:leftShift_stage_4;
assign subtract_u80=mux_u425_u0-leftShift;
assign add_u407=mux_u423_u0+32'h1;
assign and_u1304_u0=and_u1305_u0&or_u377_u0;
assign lessThan_u18_a_signed=mux_u423_u0;
assign lessThan_u18_b_signed=32'h20;
assign lessThan_u18=lessThan_u18_a_signed<lessThan_u18_b_signed;
assign not_u268_u0=~lessThan_u18;
assign and_u1305_u0=or_u377_u0&lessThan_u18;
assign and_u1306_u0=or_u377_u0&not_u268_u0;
assign and_u1307_u0=and_u1306_u0&or_u377_u0;
assign and_u1308_u0=and_u1307_u0&or_u377_u0;
assign and_u1309_u0=and_u1304_u0&or_u377_u0;
assign mux_u422_u0=(and_u1292_u0)?32'h80000000:{1'b0, fbReg_inlined_mask0_1_1_u5[30:0]};
always @(posedge CLK)
begin
if (and_u1309_u0)
fbReg_inlined_i0_1_1_u6<=add_u407;
end
always @(posedge CLK)
begin
if (and_u1309_u0)
fbReg_inlined_remainder0_1_1_u5<=subtract_u80;
end
always @(posedge CLK)
begin
if (and_u1309_u0)
fbReg_inlined_result0_1_1_u5<=or_u376;
end
assign mux_u423_u0=(and_u1292_u0)?32'h0:fbReg_inlined_i0_1_1_u6;
always @(posedge CLK)
begin
if (and_u1309_u0)
fbReg_inlined_mask0_1_1_u5<={1'b0, mux_u422_u0[31:1]};
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u28<=1'h0;
else loopControl_u28<=and_u1304_u0;
end
assign or_u377_u0=and_u1292_u0|loopControl_u28;
assign mux_u424_u0=(and_u1292_u0)?32'h0:fbReg_inlined_result0_1_1_u5;
always @(posedge CLK)
begin
if (and_u1292_u0)
latch_00f87271_reg<=mux_u421_u0;
end
assign latch_00f87271_out=(and_u1292_u0)?mux_u421_u0:latch_00f87271_reg;
assign mux_u425_u0=(and_u1292_u0)?mux_u418_u0:fbReg_inlined_remainder0_1_1_u5;
assign notEquals_a_signed={31'b0, mux_u420_u0[0]};
assign notEquals_b_signed=32'h0;
assign notEquals=notEquals_a_signed!=notEquals_b_signed;
assign and_u1310_u0=and_u1308_u0&not_u269_u0;
assign and_u1311_u0=and_u1308_u0&latch_0017eb6b_out;
assign not_u269_u0=~latch_0017eb6b_out;
assign minus_u26=~mux_u424_u0+32'h1;
assign mux_u426_u0=(and_u1313_u0)?minus_u26:mux_u424_u0;
assign and_u1312_u0=and_u1310_u0&and_u1308_u0;
assign and_u1313_u0=and_u1311_u0&and_u1308_u0;
assign lessThan_u19_a_signed=mux_u412_u0;
assign lessThan_u19_b_signed=32'h0;
assign lessThan_u19=lessThan_u19_a_signed<lessThan_u19_b_signed;
assign and_u1314_u0=and_u1292_u0&lessThan_u19;
assign not_u270_u0=~lessThan_u19;
assign and_u1315_u0=and_u1292_u0&not_u270_u0;
assign minus_u27=~mux_u412_u0+32'h1;
assign and_u1316_u0=and_u1314_u0&and_u1292_u0;
assign and_u1317_u0=and_u1315_u0&and_u1292_u0;
assign mux_u427_u0=(and_u1317_u0)?mux_u412_u0:minus_u27;
assign mux_u428_u0=(and_u1317_u0)?32'h0:32'h1;
assign lessThan_u20_a_signed=mux_u416_u0;
assign lessThan_u20_b_signed=32'h0;
assign lessThan_u20=lessThan_u20_a_signed<lessThan_u20_b_signed;
assign not_u271_u0=~lessThan_u20;
assign and_u1318_u0=and_u1292_u0&lessThan_u20;
assign and_u1319_u0=and_u1292_u0&not_u271_u0;
assign minus_u28=~mux_u416_u0+32'h1;
assign xor_u7=mux_u428_u0[0]^1'h1;
assign and_u1320_u0=and_u1319_u0&and_u1292_u0;
assign and_u1321_u0=and_u1318_u0&and_u1292_u0;
assign mux_u429_u0=(and_u1321_u0)?minus_u28:mux_u416_u0;
assign mux_u430_u0=(and_u1321_u0)?{31'b0, xor_u7[0]}:{31'b0, mux_u428_u0[0]};
assign or_u378=mux_u434_u0|mux_u432_u0;
assign subtract_u81=5'h1f-mux_u433_u0[4:0];
assign leftShift_u1_stage_1=(subtract_u81[4])?{latch_007619e2_out[15:0], 16'h0}:latch_007619e2_out;
assign leftShift_u1_stage_2=(subtract_u81[3])?{leftShift_u1_stage_1[23:0], 8'h0}:leftShift_u1_stage_1;
assign leftShift_u1_stage_3=(subtract_u81[2])?{leftShift_u1_stage_2[27:0], 4'h0}:leftShift_u1_stage_2;
assign leftShift_u1_stage_4=(subtract_u81[1])?{leftShift_u1_stage_3[29:0], 2'h0}:leftShift_u1_stage_3;
assign leftShift_u1=(subtract_u81[0])?{leftShift_u1_stage_4[30:0], 1'h0}:leftShift_u1_stage_4;
assign subtract_u82=mux_u431_u0-leftShift_u1;
assign add_u408=mux_u433_u0+32'h1;
assign lessThan_u21_a_signed=mux_u433_u0;
assign lessThan_u21_b_signed=32'h20;
assign lessThan_u21=lessThan_u21_a_signed<lessThan_u21_b_signed;
assign and_u1322_u0=or_u379_u0&not_u272_u0;
assign and_u1323_u0=or_u379_u0&lessThan_u21;
assign not_u272_u0=~lessThan_u21;
assign and_u1324_u0=and_u1323_u0&or_u379_u0;
assign and_u1325_u0=and_u1322_u0&or_u379_u0;
assign mux_u431_u0=(loopControl_u29_u0)?fbReg_inlined_remainder5_1_1_u1:mux_u427_u0;
always @(posedge CLK)
begin
if (and_u1327_u0)
fbReg_inlined_mask4_1_1_u1<={1'b0, mux_u432_u0[31:1]};
end
assign and_u1326_u0=and_u1325_u0&or_u379_u0;
always @(posedge CLK)
begin
if (and_u1327_u0)
fbReg_inlined_remainder5_1_1_u1<=subtract_u82;
end
assign and_u1327_u0=and_u1324_u0&or_u379_u0;
always @(posedge CLK)
begin
if (and_u1292_u0)
latch_007619e2_reg<=mux_u429_u0;
end
assign latch_007619e2_out=(and_u1292_u0)?mux_u429_u0:latch_007619e2_reg;
assign mux_u432_u0=(loopControl_u29_u0)?{1'b0, fbReg_inlined_mask4_1_1_u1[30:0]}:32'h80000000;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u29_u0<=1'h0;
else loopControl_u29_u0<=and_u1324_u0;
end
assign or_u379_u0=loopControl_u29_u0|and_u1292_u0;
assign mux_u433_u0=(loopControl_u29_u0)?fbReg_inlined_i4_1_1_u3:32'h0;
assign mux_u434_u0=(loopControl_u29_u0)?fbReg_inlined_result7_1_1_u1:32'h0;
always @(posedge CLK)
begin
if (and_u1327_u0)
fbReg_inlined_result7_1_1_u1<=or_u378;
end
always @(posedge CLK)
begin
if (and_u1327_u0)
fbReg_inlined_i4_1_1_u3<=add_u408;
end
assign notEquals_u1_a_signed={31'b0, mux_u430_u0[0]};
assign notEquals_u1_b_signed=32'h0;
assign notEquals_u1=notEquals_u1_a_signed!=notEquals_u1_b_signed;
assign and_u1328_u0=and_u1326_u0&not_u273_u0;
assign not_u273_u0=~latch_006842c9_out;
assign and_u1329_u0=and_u1326_u0&latch_006842c9_out;
assign minus_u29=~mux_u434_u0+32'h1;
assign and_u1330_u0=and_u1329_u0&and_u1326_u0;
assign mux_u435_u0=(and_u1330_u0)?minus_u29:mux_u434_u0;
assign and_u1331_u0=and_u1328_u0&and_u1326_u0;
assign simplePinWrite=and_u1308_u0&{1{and_u1308_u0}};
assign simplePinWrite_u178=16'h1&{16{1'h1}};
assign simplePinWrite_u179=mux_u426_u0;
assign simplePinWrite_u180=and_u1326_u0&{1{and_u1326_u0}};
assign simplePinWrite_u181=mux_u435_u0;
assign simplePinWrite_u182=16'h1&{16{1'h1}};
assign latch_006842c9_out=(and_u1292_u0)?notEquals_u1:latch_006842c9_reg;
always @(posedge CLK)
begin
if (and_u1292_u0)
latch_006842c9_reg<=notEquals_u1;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01300858_u0<=1'h0;
else reg_01300858_u0<=GO;
end
assign latch_0017eb6b_out=(and_u1292_u0)?notEquals:latch_0017eb6b_reg;
always @(posedge CLK)
begin
if (and_u1292_u0)
latch_0017eb6b_reg<=notEquals;
end
assign bus_00262243_=scoreboard_002c6360_and|RESET;
assign scoreboard_002c6360_resOr0=and_u1326_u0|scoreboard_002c6360_reg0;
always @(posedge CLK)
begin
if (bus_00262243_)
scoreboard_002c6360_reg1<=1'h0;
else if (and_u1308_u0)
scoreboard_002c6360_reg1<=1'h1;
else scoreboard_002c6360_reg1<=scoreboard_002c6360_reg1;
end
assign scoreboard_002c6360_and=scoreboard_002c6360_resOr0&scoreboard_002c6360_resOr1;
assign scoreboard_002c6360_resOr1=and_u1308_u0|scoreboard_002c6360_reg1;
always @(posedge CLK)
begin
if (bus_00262243_)
scoreboard_002c6360_reg0<=1'h0;
else if (and_u1326_u0)
scoreboard_002c6360_reg0<=1'h1;
else scoreboard_002c6360_reg0<=scoreboard_002c6360_reg0;
end
assign RESULT=and_u1289_u0;
assign RESULT_u826=add_u401;
assign RESULT_u827=3'h1;
assign RESULT_u828=and_u1289_u0;
assign RESULT_u829=add_u395;
assign RESULT_u830=3'h1;
assign RESULT_u831=simplePinWrite_u179;
assign RESULT_u832=simplePinWrite_u180;
assign RESULT_u833=simplePinWrite_u181;
assign RESULT_u834=simplePinWrite;
assign RESULT_u835=simplePinWrite_u182;
assign RESULT_u836=simplePinWrite_u178;
assign DONE=scoreboard_002c6360_and;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_structuralmemory_00c7e6c9_(CLK_u35, bus_018bdda7_, bus_006e58cd_, bus_01433037_, bus_00af1680_, bus_0160448a_, bus_016e60a3_, bus_00ee622a_, bus_018aa67c_);
input		CLK_u35;
input		bus_018bdda7_;
input	[31:0]	bus_006e58cd_;
input	[2:0]	bus_01433037_;
input		bus_00af1680_;
input		bus_0160448a_;
input	[31:0]	bus_016e60a3_;
output	[31:0]	bus_00ee622a_;
output		bus_018aa67c_;
reg		logicalMem_72ed73_re_delay0_u0=1'h0;
wire		or_0144ba4a_u0;
wire	[31:0]	bus_00ee304e_;
reg		logicalMem_72ed73_we_delay0_u0=1'h0;
wire		or_00f3d113_u0;
always @(posedge CLK_u35 or posedge bus_018bdda7_)
begin
if (bus_018bdda7_)
logicalMem_72ed73_re_delay0_u0<=1'h0;
else logicalMem_72ed73_re_delay0_u0<=bus_00af1680_;
end
assign or_0144ba4a_u0=bus_00af1680_|bus_0160448a_;
Mean_Shift_Main_main_loop_cal_displacement_forge_memory_567x32_59 Mean_Shift_Main_main_loop_cal_displacement_forge_memory_567x32_59_instance1(.CLK(CLK_u35), 
  .EN(or_0144ba4a_u0), .WE(bus_0160448a_), .ADDR(bus_006e58cd_), .DIN(bus_016e60a3_), 
  .DOUT(bus_00ee304e_), .DONE());
always @(posedge CLK_u35 or posedge bus_018bdda7_)
begin
if (bus_018bdda7_)
logicalMem_72ed73_we_delay0_u0<=1'h0;
else logicalMem_72ed73_we_delay0_u0<=bus_0160448a_;
end
assign bus_00ee622a_=bus_00ee304e_;
assign bus_018aa67c_=or_00f3d113_u0;
assign or_00f3d113_u0=logicalMem_72ed73_re_delay0_u0|logicalMem_72ed73_we_delay0_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_globalreset_physical_00336005_(bus_01deb793_, bus_0161aae0_, bus_005034c9_);
input		bus_01deb793_;
input		bus_0161aae0_;
output		bus_005034c9_;
reg		sample_u15=1'h0;
wire		not_0175c52f_u0;
reg		cross_u15=1'h0;
reg		final_u15=1'h1;
wire		and_01984694_u0;
reg		glitch_u15=1'h0;
wire		or_011982e4_u0;
always @(posedge bus_01deb793_)
begin
sample_u15<=1'h1;
end
assign not_0175c52f_u0=~and_01984694_u0;
always @(posedge bus_01deb793_)
begin
cross_u15<=sample_u15;
end
always @(posedge bus_01deb793_)
begin
final_u15<=not_0175c52f_u0;
end
assign and_01984694_u0=cross_u15&glitch_u15;
assign bus_005034c9_=or_011982e4_u0;
always @(posedge bus_01deb793_)
begin
glitch_u15<=cross_u15;
end
assign or_011982e4_u0=bus_0161aae0_|final_u15;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_getWeightsArray(CLK, RESET, GO, port_0086072b_, port_007eb8cb_, port_01dd740d_, port_00f0d227_, port_0164e82a_, port_00ad10ab_, RESULT, RESULT_u837, RESULT_u838, RESULT_u839, RESULT_u840, RESULT_u841, RESULT_u842, RESULT_u843, RESULT_u844, RESULT_u845, RESULT_u846, RESULT_u847, RESULT_u848, RESULT_u849, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0086072b_;
input	[31:0]	port_007eb8cb_;
input		port_01dd740d_;
input		port_00f0d227_;
input	[31:0]	port_0164e82a_;
input	[31:0]	port_00ad10ab_;
output		RESULT;
output	[31:0]	RESULT_u837;
output		RESULT_u838;
output	[31:0]	RESULT_u839;
output		RESULT_u840;
output	[31:0]	RESULT_u841;
output	[31:0]	RESULT_u842;
output	[2:0]	RESULT_u843;
output		RESULT_u844;
output	[31:0]	RESULT_u845;
output	[31:0]	RESULT_u846;
output	[2:0]	RESULT_u847;
output		RESULT_u848;
output		RESULT_u849;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u183;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u83;
wire	[31:0]	add;
wire	[31:0]	add_u409;
wire		and_u1332_u0;
wire		or_u380_u0;
reg		reg_002d5e84_u0=1'h0;
wire	[31:0]	subtract_u84;
wire	[31:0]	subtract_u85;
wire	[31:0]	add_u410;
wire	[31:0]	add_u411;
wire		or_u381_u0;
reg		reg_01cc4495_u0=1'h0;
wire		and_u1333_u0;
wire	[31:0]	add_u412;
wire		equals;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_b_signed;
wire		and_u1334_u0;
wire		not_u274_u0;
wire		and_u1335_u0;
wire	[31:0]	add_u413;
wire	[31:0]	mux_u436;
wire		and_u1336_u0;
wire	[31:0]	mux_u437_u0;
wire		and_u1337_u0;
reg		reg_00cb1094_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u183=GO&{1{GO}};
assign subtract={port_0086072b_[26:0], 5'b0}-{port_0086072b_[29:0], 2'b0};
assign subtract_u83=subtract-port_0086072b_;
assign add=subtract_u83+port_007eb8cb_;
assign add_u409=32'h0+add;
assign and_u1332_u0=reg_002d5e84_u0&port_00f0d227_;
assign or_u380_u0=and_u1332_u0|RESET;
always @(posedge CLK or posedge GO or posedge or_u380_u0)
begin
if (or_u380_u0)
reg_002d5e84_u0<=1'h0;
else if (GO)
reg_002d5e84_u0<=1'h1;
else reg_002d5e84_u0<=reg_002d5e84_u0;
end
assign subtract_u84={port_0086072b_[26:0], 5'b0}-{port_0086072b_[29:0], 2'b0};
assign subtract_u85=subtract_u84-port_0086072b_;
assign add_u410=subtract_u85+port_007eb8cb_;
assign add_u411=32'h0+add_u410;
assign or_u381_u0=and_u1333_u0|RESET;
always @(posedge CLK or posedge GO or posedge or_u381_u0)
begin
if (or_u381_u0)
reg_01cc4495_u0<=1'h0;
else if (GO)
reg_01cc4495_u0<=1'h1;
else reg_01cc4495_u0<=reg_01cc4495_u0;
end
assign and_u1333_u0=reg_01cc4495_u0&port_01dd740d_;
assign add_u412=port_007eb8cb_+32'h1;
assign equals_a_signed=add_u412;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1334_u0=GO&equals;
assign not_u274_u0=~equals;
assign and_u1335_u0=GO&not_u274_u0;
assign add_u413=port_0086072b_+32'h1;
assign mux_u436=(and_u1336_u0)?32'h0:add_u412;
assign and_u1336_u0=and_u1334_u0&GO;
assign mux_u437_u0=(and_u1336_u0)?add_u413:port_0086072b_;
assign and_u1337_u0=and_u1335_u0&GO;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00cb1094_u0<=1'h0;
else reg_00cb1094_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u837=mux_u437_u0;
assign RESULT_u838=GO;
assign RESULT_u839=mux_u436;
assign RESULT_u840=GO;
assign RESULT_u841=add_u411;
assign RESULT_u842=port_0164e82a_;
assign RESULT_u843=3'h1;
assign RESULT_u844=GO;
assign RESULT_u845=add_u409;
assign RESULT_u846=port_00ad10ab_;
assign RESULT_u847=3'h1;
assign RESULT_u848=simplePinWrite_u183;
assign RESULT_u849=simplePinWrite;
assign DONE=reg_00cb1094_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s1(bus_012dadd0_, bus_01ee4efd_, bus_01e1857d_, bus_00a7a68e_, bus_00891bc0_);
input		bus_012dadd0_;
input		bus_01ee4efd_;
input		bus_01e1857d_;
input		bus_00a7a68e_;
output		bus_00891bc0_;
reg		stateVar_state_s1_u13=1'h0;
assign bus_00891bc0_=stateVar_state_s1_u13;
always @(posedge bus_012dadd0_ or posedge bus_01ee4efd_)
begin
if (bus_01ee4efd_)
stateVar_state_s1_u13<=1'h0;
else if (bus_01e1857d_)
stateVar_state_s1_u13<=bus_00a7a68e_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_doneArrayCount(CLK, RESET, GO, RESULT, RESULT_u850, RESULT_u851, RESULT_u852, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u850;
output		RESULT_u851;
output	[31:0]	RESULT_u852;
output		DONE;
reg		reg_01d64c5b_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01d64c5b_u0<=1'h0;
else reg_01d64c5b_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u850=32'h0;
assign RESULT_u851=GO;
assign RESULT_u852=32'h0;
assign DONE=reg_01d64c5b_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00d0c7d9_(endianswapper_00d0c7d9_in, endianswapper_00d0c7d9_out);
input	[31:0]	endianswapper_00d0c7d9_in;
output	[31:0]	endianswapper_00d0c7d9_out;
assign endianswapper_00d0c7d9_out=endianswapper_00d0c7d9_in;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00c9388f_(endianswapper_00c9388f_in, endianswapper_00c9388f_out);
input	[31:0]	endianswapper_00c9388f_in;
output	[31:0]	endianswapper_00c9388f_out;
assign endianswapper_00c9388f_out=endianswapper_00c9388f_in;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_x(bus_0129676a_, bus_0144a15e_, bus_006f6753_, bus_00fcacec_, bus_015983cf_, bus_01d1efc7_, bus_00e80687_);
input		bus_0129676a_;
input		bus_0144a15e_;
input		bus_006f6753_;
input	[31:0]	bus_00fcacec_;
input		bus_015983cf_;
input	[31:0]	bus_01d1efc7_;
output	[31:0]	bus_00e80687_;
wire	[31:0]	endianswapper_00d0c7d9_out;
wire		or_0143e76c_u0;
reg	[31:0]	stateVar_count_x_u6=32'h0;
wire	[31:0]	endianswapper_00c9388f_out;
wire	[31:0]	mux_014dbe5f_u0;
Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00d0c7d9_ Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00d0c7d9__1(.endianswapper_00d0c7d9_in(stateVar_count_x_u6), 
  .endianswapper_00d0c7d9_out(endianswapper_00d0c7d9_out));
assign or_0143e76c_u0=bus_006f6753_|bus_015983cf_;
always @(posedge bus_0129676a_ or posedge bus_0144a15e_)
begin
if (bus_0144a15e_)
stateVar_count_x_u6<=32'h0;
else if (or_0143e76c_u0)
stateVar_count_x_u6<=endianswapper_00c9388f_out;
end
Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00c9388f_ Mean_Shift_Main_main_loop_cal_displacement_endianswapper_00c9388f__1(.endianswapper_00c9388f_in(mux_014dbe5f_u0), 
  .endianswapper_00c9388f_out(endianswapper_00c9388f_out));
assign mux_014dbe5f_u0=(bus_006f6753_)?bus_00fcacec_:32'h0;
assign bus_00e80687_=endianswapper_00d0c7d9_out;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_Kicker_15(CLK, RESET, bus_01d51df8_);
input		CLK;
input		RESET;
output		bus_01d51df8_;
wire		bus_01a7211f_;
wire		bus_00a8f7be_;
wire		bus_001663bd_;
wire		bus_01ee2188_;
reg		kicker_res=1'h0;
reg		kicker_1=1'h0;
reg		kicker_2=1'h0;
assign bus_01a7211f_=~kicker_2;
assign bus_00a8f7be_=~RESET;
assign bus_001663bd_=bus_00a8f7be_&kicker_1;
assign bus_01d51df8_=kicker_res;
assign bus_01ee2188_=kicker_1&bus_00a8f7be_&bus_01a7211f_;
always @(posedge CLK)
begin
kicker_res<=bus_01ee2188_;
end
always @(posedge CLK)
begin
kicker_1<=bus_00a8f7be_;
end
always @(posedge CLK)
begin
kicker_2<=bus_001663bd_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_scheduler(CLK, RESET, GO, port_00063697_, port_002079a9_, port_00245da1_, port_0073f1b3_, port_0099f146_, port_018bf87e_, port_0104ade0_, port_01c2cf6d_, port_00438f64_, port_01d24f81_, RESULT, RESULT_u853, RESULT_u854, RESULT_u855, RESULT_u856, RESULT_u857, RESULT_u858, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_00063697_;
input		port_002079a9_;
input	[31:0]	port_00245da1_;
input		port_0073f1b3_;
input		port_0099f146_;
input		port_018bf87e_;
input		port_0104ade0_;
input		port_01c2cf6d_;
input		port_00438f64_;
input		port_01d24f81_;
output		RESULT;
output		RESULT_u853;
output		RESULT_u854;
output		RESULT_u855;
output		RESULT_u856;
output		RESULT_u857;
output		RESULT_u858;
output		DONE;
wire		and_u1338_u0;
wire		and_u1339_u0;
wire		equals;
wire signed	[31:0]	equals_b_signed;
wire signed	[31:0]	equals_a_signed;
wire		and_u1340_u0;
wire		and_u1341_u0;
wire		and_u1342_u0;
wire		not_u275_u0;
wire		and_u1343_u0;
wire		not_u276_u0;
wire		and_u1344_u0;
wire		simplePinWrite;
wire		and_u1345_u0;
wire		and_u1346_u0;
wire		and_u1347_u0;
wire		not_u277_u0;
wire		simplePinWrite_u184;
wire		and_u1348_u0;
wire		and_u1349_u0;
wire		and_u1350_u0;
wire		and_u1351_u0;
wire		and_u1352_u0;
wire		and_u1353_u0;
wire		and_u1354_u0;
wire		not_u278_u0;
wire		not_u279_u0;
wire		and_u1355_u0;
wire		and_u1356_u0;
wire		simplePinWrite_u185;
reg		reg_00f75bc9_u0=1'h0;
wire		or_u382_u0;
wire		and_u1357_u0;
wire		and_u1358_u0;
wire		and_u1359_u0;
wire		and_u1360_u0;
wire		or_u383_u0;
wire		and_u1361_u0;
reg		and_delayed_u67=1'h0;
wire		or_u384_u0;
wire		mux_u438;
wire		mux_u439_u0;
wire		or_u385_u0;
reg		syncEnable_u328=1'h0;
reg		syncEnable_u329_u0=1'h0;
reg		syncEnable_u330_u0=1'h0;
reg		block_GO_delayed_u39=1'h0;
reg		syncEnable_u331_u0=1'h0;
wire		or_u386_u0;
reg		syncEnable_u332_u0=1'h0;
reg		loopControl_u30=1'h0;
wire		mux_u440_u0;
wire		or_u387_u0;
reg		reg_0095c8c9_u0=1'h0;
reg		reg_0095c8c9_result_delayed_u0=1'h0;
wire		or_u388_u0;
wire		mux_u441_u0;
assign and_u1338_u0=or_u386_u0&or_u386_u0;
assign and_u1339_u0=port_00438f64_&port_0073f1b3_;
assign equals_a_signed=port_00245da1_;
assign equals_b_signed=32'h15;
assign equals=equals_a_signed==equals_b_signed;
assign and_u1340_u0=port_01d24f81_&port_018bf87e_;
assign and_u1341_u0=block_GO_delayed_u39&not_u275_u0;
assign and_u1342_u0=block_GO_delayed_u39&syncEnable_u330_u0;
assign not_u275_u0=~syncEnable_u330_u0;
assign and_u1343_u0=and_u1352_u0&not_u276_u0;
assign not_u276_u0=~syncEnable_u329_u0;
assign and_u1344_u0=and_u1352_u0&syncEnable_u329_u0;
assign simplePinWrite=and_u1345_u0&{1{and_u1345_u0}};
assign and_u1345_u0=and_u1350_u0&and_u1350_u0;
assign and_u1346_u0=and_u1351_u0&syncEnable_u331_u0;
assign and_u1347_u0=and_u1351_u0&not_u277_u0;
assign not_u277_u0=~syncEnable_u331_u0;
assign simplePinWrite_u184=and_u1348_u0&{1{and_u1348_u0}};
assign and_u1348_u0=and_u1349_u0&and_u1349_u0;
assign and_u1349_u0=and_u1346_u0&and_u1351_u0;
assign and_u1350_u0=and_u1344_u0&and_u1352_u0;
assign and_u1351_u0=and_u1343_u0&and_u1352_u0;
assign and_u1352_u0=and_u1342_u0&block_GO_delayed_u39;
assign and_u1353_u0=block_GO_delayed_u39&syncEnable_u328;
assign and_u1354_u0=block_GO_delayed_u39&not_u278_u0;
assign not_u278_u0=~syncEnable_u328;
assign not_u279_u0=~and_u1340_u0;
assign and_u1355_u0=and_u1359_u0&and_u1340_u0;
assign and_u1356_u0=and_u1359_u0&not_u279_u0;
assign simplePinWrite_u185=and_u1357_u0&{1{and_u1357_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00f75bc9_u0<=1'h0;
else reg_00f75bc9_u0<=and_u1358_u0;
end
assign or_u382_u0=port_0099f146_|reg_00f75bc9_u0;
assign and_u1357_u0=and_u1355_u0&and_u1359_u0;
assign and_u1358_u0=and_u1356_u0&and_u1359_u0;
assign and_u1359_u0=and_u1361_u0&and_u1361_u0;
assign and_u1360_u0=and_u1354_u0&block_GO_delayed_u39;
assign or_u383_u0=or_u382_u0|and_delayed_u67;
assign and_u1361_u0=and_u1353_u0&block_GO_delayed_u39;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u67<=1'h0;
else and_delayed_u67<=and_u1360_u0;
end
assign or_u384_u0=and_u1345_u0|and_u1357_u0;
assign mux_u438=(and_u1345_u0)?1'h1:1'h0;
assign mux_u439_u0=(and_u1345_u0)?1'h0:1'h1;
assign or_u385_u0=and_u1345_u0|and_u1357_u0;
always @(posedge CLK)
begin
if (and_u1338_u0)
syncEnable_u328<=port_002079a9_;
end
always @(posedge CLK)
begin
if (and_u1338_u0)
syncEnable_u329_u0<=equals;
end
always @(posedge CLK)
begin
if (and_u1338_u0)
syncEnable_u330_u0<=port_00063697_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u39<=1'h0;
else block_GO_delayed_u39<=and_u1338_u0;
end
always @(posedge CLK)
begin
if (and_u1338_u0)
syncEnable_u331_u0<=and_u1339_u0;
end
assign or_u386_u0=reg_0095c8c9_result_delayed_u0|loopControl_u30;
always @(posedge CLK)
begin
if (reg_0095c8c9_result_delayed_u0)
syncEnable_u332_u0<=RESET;
end
always @(posedge CLK or posedge syncEnable_u332_u0)
begin
if (syncEnable_u332_u0)
loopControl_u30<=1'h0;
else loopControl_u30<=or_u383_u0;
end
assign mux_u440_u0=(GO)?1'h0:mux_u438;
assign or_u387_u0=GO|or_u384_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0095c8c9_u0<=1'h0;
else reg_0095c8c9_u0<=GO;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0095c8c9_result_delayed_u0<=1'h0;
else reg_0095c8c9_result_delayed_u0<=reg_0095c8c9_u0;
end
assign or_u388_u0=GO|or_u385_u0;
assign mux_u441_u0=(GO)?1'h1:mux_u439_u0;
assign RESULT=or_u388_u0;
assign RESULT_u853=mux_u441_u0;
assign RESULT_u854=or_u387_u0;
assign RESULT_u855=mux_u440_u0;
assign RESULT_u856=simplePinWrite_u185;
assign RESULT_u857=simplePinWrite_u184;
assign RESULT_u858=simplePinWrite;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_simplememoryreferee_008be01f_(bus_011d83dc_, bus_00bc1046_, bus_0103a396_, bus_006ea72e_, bus_005ed302_, bus_0194cfb9_, bus_01a42fdb_, bus_01d9b4f4_, bus_00173409_, bus_01ea01dd_, bus_01dda571_, bus_00a1f085_, bus_01e3b933_, bus_01029285_, bus_00b81f0c_, bus_008a5a84_, bus_01f72b34_, bus_01595075_, bus_0098cfe9_);
input		bus_011d83dc_;
input		bus_00bc1046_;
input		bus_0103a396_;
input	[31:0]	bus_006ea72e_;
input		bus_005ed302_;
input	[31:0]	bus_0194cfb9_;
input	[31:0]	bus_01a42fdb_;
input	[2:0]	bus_01d9b4f4_;
input		bus_00173409_;
input	[31:0]	bus_01ea01dd_;
input	[2:0]	bus_01dda571_;
output	[31:0]	bus_00a1f085_;
output	[31:0]	bus_01e3b933_;
output		bus_01029285_;
output		bus_00b81f0c_;
output	[2:0]	bus_008a5a84_;
output		bus_01f72b34_;
output	[31:0]	bus_01595075_;
output		bus_0098cfe9_;
wire		or_014fa969_u0;
wire		not_00117da3_u0;
reg		done_qual_u73_u0=1'h0;
wire		and_00e0c620_u0;
wire		not_002368ff_u0;
wire		or_0088df40_u0;
wire		or_0083a76e_u0;
reg		done_qual_u74_u0=1'h0;
wire	[31:0]	mux_01c2d3e8_u0;
wire	[31:0]	mux_003d4e0d_u0;
wire		and_008d286c_u0;
assign or_014fa969_u0=bus_005ed302_|done_qual_u73_u0;
assign not_00117da3_u0=~bus_0103a396_;
always @(posedge bus_011d83dc_)
begin
if (bus_00bc1046_)
done_qual_u73_u0<=1'h0;
else done_qual_u73_u0<=bus_005ed302_;
end
assign and_00e0c620_u0=or_0083a76e_u0&bus_0103a396_;
assign not_002368ff_u0=~bus_0103a396_;
assign or_0088df40_u0=bus_005ed302_|bus_00173409_;
assign or_0083a76e_u0=bus_00173409_|done_qual_u74_u0;
always @(posedge bus_011d83dc_)
begin
if (bus_00bc1046_)
done_qual_u74_u0<=1'h0;
else done_qual_u74_u0<=bus_00173409_;
end
assign mux_01c2d3e8_u0=({32{bus_005ed302_}}&bus_0194cfb9_);
assign bus_00a1f085_=mux_01c2d3e8_u0;
assign bus_01e3b933_=mux_003d4e0d_u0;
assign bus_01029285_=bus_005ed302_;
assign bus_00b81f0c_=or_0088df40_u0;
assign bus_008a5a84_=3'h1;
assign bus_01f72b34_=and_008d286c_u0;
assign bus_01595075_=bus_006ea72e_;
assign bus_0098cfe9_=and_00e0c620_u0;
assign mux_003d4e0d_u0=(bus_005ed302_)?bus_01a42fdb_:bus_01ea01dd_;
assign and_008d286c_u0=or_014fa969_u0&bus_0103a396_;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_stateVar_state_s0(bus_00bb48d8_, bus_01ab9bdb_, bus_00d67338_, bus_00e89009_, bus_00da5e0c_);
input		bus_00bb48d8_;
input		bus_01ab9bdb_;
input		bus_00d67338_;
input		bus_00e89009_;
output		bus_00da5e0c_;
reg		stateVar_state_s0_u11=1'h0;
always @(posedge bus_00bb48d8_ or posedge bus_01ab9bdb_)
begin
if (bus_01ab9bdb_)
stateVar_state_s0_u11<=1'h0;
else if (bus_00d67338_)
stateVar_state_s0_u11<=bus_00e89009_;
end
assign bus_00da5e0c_=stateVar_state_s0_u11;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_endianswapper_019c008a_(endianswapper_019c008a_in, endianswapper_019c008a_out);
input	[31:0]	endianswapper_019c008a_in;
output	[31:0]	endianswapper_019c008a_out;
assign endianswapper_019c008a_out=endianswapper_019c008a_in;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_endianswapper_01850063_(endianswapper_01850063_in, endianswapper_01850063_out);
input	[31:0]	endianswapper_01850063_in;
output	[31:0]	endianswapper_01850063_out;
assign endianswapper_01850063_out=endianswapper_01850063_in;
endmodule



module Mean_Shift_Main_main_loop_cal_displacement_stateVar_count_y(bus_00bef147_, bus_01d29df0_, bus_00d141c6_, bus_01924b07_, bus_01e11ca3_, bus_006246e8_, bus_019dda96_);
input		bus_00bef147_;
input		bus_01d29df0_;
input		bus_00d141c6_;
input	[31:0]	bus_01924b07_;
input		bus_01e11ca3_;
input	[31:0]	bus_006246e8_;
output	[31:0]	bus_019dda96_;
wire	[31:0]	endianswapper_019c008a_out;
wire	[31:0]	endianswapper_01850063_out;
wire		or_01d823fc_u0;
wire	[31:0]	mux_007ecf1f_u0;
reg	[31:0]	stateVar_count_y_u6=32'h0;
Mean_Shift_Main_main_loop_cal_displacement_endianswapper_019c008a_ Mean_Shift_Main_main_loop_cal_displacement_endianswapper_019c008a__1(.endianswapper_019c008a_in(stateVar_count_y_u6), 
  .endianswapper_019c008a_out(endianswapper_019c008a_out));
Mean_Shift_Main_main_loop_cal_displacement_endianswapper_01850063_ Mean_Shift_Main_main_loop_cal_displacement_endianswapper_01850063__1(.endianswapper_01850063_in(mux_007ecf1f_u0), 
  .endianswapper_01850063_out(endianswapper_01850063_out));
assign or_01d823fc_u0=bus_00d141c6_|bus_01e11ca3_;
assign bus_019dda96_=endianswapper_019c008a_out;
assign mux_007ecf1f_u0=(bus_00d141c6_)?bus_01924b07_:32'h0;
always @(posedge bus_00bef147_ or posedge bus_01d29df0_)
begin
if (bus_01d29df0_)
stateVar_count_y_u6<=32'h0;
else if (or_01d823fc_u0)
stateVar_count_y_u6<=endianswapper_01850063_out;
end
endmodule


