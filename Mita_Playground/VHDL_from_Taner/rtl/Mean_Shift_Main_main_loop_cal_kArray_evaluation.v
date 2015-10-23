// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:55:49 +0100
// 

module Mean_Shift_Main_main_loop_cal_kArray_evaluation(kArrayO_COUNT, kArrayO_DATA, kArrayO_SEND, CLK, RESET, kArrayO_ACK, kArrayO_RDY);
output	[15:0]	kArrayO_COUNT;
wire		sendData_done;
output	[31:0]	kArrayO_DATA;
output		kArrayO_SEND;
input		CLK;
wire		kernelEvaluation_go;
input		RESET;
wire		sendData_go;
wire		kernelEvaluation_done;
input		kArrayO_ACK;
input		kArrayO_RDY;
wire		bus_00b3e3bd_;
wire	[31:0]	bus_011680e9_;
wire	[31:0]	bus_002fe286_;
wire		bus_01047762_;
wire	[31:0]	bus_01b83ee8_;
wire		bus_0142775d_;
wire		bus_0197d286_;
wire		scheduler_u133;
wire		scheduler_u131;
wire		scheduler_u129;
wire		scheduler;
wire		Mean_Shift_Main_main_loop_cal_kArray_evaluation_scheduler_instance_DONE;
wire		scheduler_u132;
wire		scheduler_u130;
wire	[31:0]	bus_01c8d000_;
wire	[31:0]	bus_01349b36_;
wire		bus_00fb2f13_;
wire		bus_015e6bf1_;
wire		bus_01e01cbe_;
wire		bus_00f0bf43_;
wire	[2:0]	bus_01ab3c60_;
wire	[31:0]	bus_0177e370_;
wire		bus_010eecea_;
wire	[31:0]	bus_0176c8ef_;
wire		sendData;
wire	[31:0]	sendData_u20;
wire		Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData_instance_DONE;
wire		sendData_u24;
wire	[31:0]	sendData_u22;
wire	[31:0]	sendData_u18;
wire	[31:0]	sendData_u26;
wire	[2:0]	sendData_u23;
wire		sendData_u21;
wire		sendData_u19;
wire	[15:0]	sendData_u25;
wire	[31:0]	bus_00892cdf_;
wire		bus_00f4d312_;
wire		bus_00a58c0a_;
wire	[31:0]	kernelEvaluation_u12;
wire	[31:0]	kernelEvaluation_u11;
wire		kernelEvaluation_u10;
wire	[31:0]	kernelEvaluation_u7;
wire	[2:0]	kernelEvaluation_u13;
wire	[31:0]	kernelEvaluation_u9;
wire		Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation_instance_DONE;
wire		kernelEvaluation_u8;
wire		kernelEvaluation;
assign kArrayO_COUNT=sendData_u25;
assign sendData_done=bus_00a58c0a_;
assign kArrayO_DATA=sendData_u26;
assign kArrayO_SEND=sendData_u24;
assign kernelEvaluation_go=scheduler_u132;
assign sendData_go=scheduler_u133;
assign kernelEvaluation_done=bus_00f4d312_;
Mean_Shift_Main_main_loop_cal_kArray_evaluation_structuralmemory_004eb15c_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_structuralmemory_004eb15c__1(.CLK_u22(CLK), 
  .bus_015dc318_(bus_010eecea_), .bus_01cad1ea_(bus_01c8d000_), .bus_008c23ad_(3'h1), 
  .bus_007cdb21_(bus_01e01cbe_), .bus_01ac3bab_(bus_00fb2f13_), .bus_004b58d0_(bus_0177e370_), 
  .bus_011680e9_(bus_011680e9_), .bus_00b3e3bd_(bus_00b3e3bd_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_xCount Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_xCount_1(.bus_00197553_(CLK), 
  .bus_0165d7b1_(bus_010eecea_), .bus_0076e886_(sendData_u19), .bus_008987ab_(sendData_u20), 
  .bus_002fe286_(bus_002fe286_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_Kicker_12 Mean_Shift_Main_main_loop_cal_kArray_evaluation_Kicker_12_1(.CLK(CLK), 
  .RESET(bus_010eecea_), .bus_01047762_(bus_01047762_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_sqrtValue Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_sqrtValue_1(.bus_002b328f_(CLK), 
  .bus_000487eb_(bus_010eecea_), .bus_019bc52b_(kernelEvaluation), .bus_0078854b_(kernelEvaluation_u7), 
  .bus_01b83ee8_(bus_01b83ee8_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s0 Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s0_1(.bus_011957aa_(CLK), 
  .bus_00ca93e8_(bus_010eecea_), .bus_015cd3cf_(scheduler), .bus_00546ebf_(scheduler_u129), 
  .bus_0142775d_(bus_0142775d_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s1 Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s1_1(.bus_009fc1a5_(CLK), 
  .bus_006259cf_(bus_010eecea_), .bus_00d06c77_(scheduler_u130), .bus_00a10856_(scheduler_u131), 
  .bus_0197d286_(bus_0197d286_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_scheduler Mean_Shift_Main_main_loop_cal_kArray_evaluation_scheduler_instance(.CLK(CLK), 
  .RESET(bus_010eecea_), .GO(bus_01047762_), .port_00eb8c38_(bus_0142775d_), .port_01a4ae96_(bus_0197d286_), 
  .port_00d87fb2_(sendData_done), .port_01b3350f_(kernelEvaluation_done), .port_00b326e2_(kArrayO_RDY), 
  .RESULT(scheduler), .RESULT_u572(scheduler_u129), .RESULT_u573(scheduler_u130), 
  .RESULT_u574(scheduler_u131), .RESULT_u575(scheduler_u132), .RESULT_u576(scheduler_u133), 
  .DONE(Mean_Shift_Main_main_loop_cal_kArray_evaluation_scheduler_instance_DONE));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_simplememoryreferee_0069500d_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_simplememoryreferee_0069500d__1(.bus_018138e4_(CLK), 
  .bus_00be1c2d_(bus_010eecea_), .bus_010838f8_(bus_00b3e3bd_), .bus_009e1126_(bus_011680e9_), 
  .bus_00bbf022_(kernelEvaluation_u10), .bus_012a392d_(kernelEvaluation_u12), 
  .bus_010d552a_(kernelEvaluation_u11), .bus_00763e3f_(3'h1), .bus_00183ca1_(sendData_u21), 
  .bus_010e1488_(sendData_u22), .bus_01a07cc1_(3'h1), .bus_0177e370_(bus_0177e370_), 
  .bus_01c8d000_(bus_01c8d000_), .bus_00fb2f13_(bus_00fb2f13_), .bus_01e01cbe_(bus_01e01cbe_), 
  .bus_01ab3c60_(bus_01ab3c60_), .bus_00f0bf43_(bus_00f0bf43_), .bus_01349b36_(bus_01349b36_), 
  .bus_015e6bf1_(bus_015e6bf1_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_globalreset_physical_009d637d_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_globalreset_physical_009d637d__1(.bus_004c40a3_(CLK), 
  .bus_0179ab19_(RESET), .bus_010eecea_(bus_010eecea_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_kernelValue Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_kernelValue_1(.bus_01d59b5b_(CLK), 
  .bus_00ca86c4_(bus_010eecea_), .bus_01155322_(kernelEvaluation_u8), .bus_011a1dc1_(kernelEvaluation_u9), 
  .bus_0176c8ef_(bus_0176c8ef_));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData_instance(.CLK(CLK), 
  .RESET(bus_010eecea_), .GO(sendData_go), .port_00e6acde_(bus_00892cdf_), .port_01c6b746_(bus_002fe286_), 
  .port_00eb7620_(bus_015e6bf1_), .port_009c5c93_(bus_01349b36_), .RESULT(sendData), 
  .RESULT_u577(sendData_u18), .RESULT_u578(sendData_u19), .RESULT_u579(sendData_u20), 
  .RESULT_u580(sendData_u21), .RESULT_u581(sendData_u22), .RESULT_u582(sendData_u23), 
  .RESULT_u583(sendData_u24), .RESULT_u584(sendData_u25), .RESULT_u585(sendData_u26), 
  .DONE(Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData_instance_DONE));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_yCount Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_yCount_1(.bus_012ebf4a_(CLK), 
  .bus_001094e7_(bus_010eecea_), .bus_01737e53_(sendData), .bus_01571ba8_(sendData_u18), 
  .bus_00892cdf_(bus_00892cdf_));
assign bus_00f4d312_=Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation_instance_DONE}};
assign bus_00a58c0a_=Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData_instance_DONE&{1{Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData_instance_DONE}};
Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation_instance(.CLK(CLK), 
  .RESET(bus_010eecea_), .GO(kernelEvaluation_go), .port_00107b9f_(bus_01b83ee8_), 
  .port_019f2adf_(bus_0176c8ef_), .port_00c8f2ba_(bus_00f0bf43_), .RESULT(kernelEvaluation), 
  .RESULT_u586(kernelEvaluation_u7), .RESULT_u587(kernelEvaluation_u8), .RESULT_u588(kernelEvaluation_u9), 
  .RESULT_u589(kernelEvaluation_u10), .RESULT_u590(kernelEvaluation_u11), .RESULT_u591(kernelEvaluation_u12), 
  .RESULT_u592(kernelEvaluation_u13), .DONE(Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation_instance_DONE));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_forge_memory_567x32_37(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
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
  )RAMB16_S18_instance_88(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[15:0]), 
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
  )RAMB16_S18_instance_89(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI({2'b0, DIN[31:18]}), 
  .DO({extras_0, pre_dout_0[31:18]}), .DIP(2'b0), .DOP(parOut));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_structuralmemory_004eb15c_(CLK_u22, bus_015dc318_, bus_01cad1ea_, bus_008c23ad_, bus_007cdb21_, bus_01ac3bab_, bus_004b58d0_, bus_011680e9_, bus_00b3e3bd_);
input		CLK_u22;
input		bus_015dc318_;
input	[31:0]	bus_01cad1ea_;
input	[2:0]	bus_008c23ad_;
input		bus_007cdb21_;
input		bus_01ac3bab_;
input	[31:0]	bus_004b58d0_;
output	[31:0]	bus_011680e9_;
output		bus_00b3e3bd_;
wire		or_00e2a560_u0;
wire		or_002b02f8_u0;
reg		logicalMem_1945508_we_delay0_u0=1'h0;
wire	[31:0]	bus_00626c6e_;
reg		logicalMem_1945508_re_delay0_u0=1'h0;
assign or_00e2a560_u0=logicalMem_1945508_re_delay0_u0|logicalMem_1945508_we_delay0_u0;
assign or_002b02f8_u0=bus_007cdb21_|bus_01ac3bab_;
always @(posedge CLK_u22 or posedge bus_015dc318_)
begin
if (bus_015dc318_)
logicalMem_1945508_we_delay0_u0<=1'h0;
else logicalMem_1945508_we_delay0_u0<=bus_01ac3bab_;
end
assign bus_011680e9_=bus_00626c6e_;
assign bus_00b3e3bd_=or_00e2a560_u0;
Mean_Shift_Main_main_loop_cal_kArray_evaluation_forge_memory_567x32_37 Mean_Shift_Main_main_loop_cal_kArray_evaluation_forge_memory_567x32_37_instance0(.CLK(CLK_u22), 
  .EN(or_002b02f8_u0), .WE(bus_01ac3bab_), .ADDR(bus_01cad1ea_), .DIN(bus_004b58d0_), 
  .DOUT(bus_00626c6e_), .DONE());
always @(posedge CLK_u22 or posedge bus_015dc318_)
begin
if (bus_015dc318_)
logicalMem_1945508_re_delay0_u0<=1'h0;
else logicalMem_1945508_re_delay0_u0<=bus_007cdb21_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00676f5a_(endianswapper_00676f5a_in, endianswapper_00676f5a_out);
input	[31:0]	endianswapper_00676f5a_in;
output	[31:0]	endianswapper_00676f5a_out;
assign endianswapper_00676f5a_out=endianswapper_00676f5a_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00014991_(endianswapper_00014991_in, endianswapper_00014991_out);
input	[31:0]	endianswapper_00014991_in;
output	[31:0]	endianswapper_00014991_out;
assign endianswapper_00014991_out=endianswapper_00014991_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_xCount(bus_00197553_, bus_0165d7b1_, bus_0076e886_, bus_008987ab_, bus_002fe286_);
input		bus_00197553_;
input		bus_0165d7b1_;
input		bus_0076e886_;
input	[31:0]	bus_008987ab_;
output	[31:0]	bus_002fe286_;
reg	[31:0]	stateVar_xCount_u2=32'h0;
wire	[31:0]	endianswapper_00676f5a_out;
wire	[31:0]	endianswapper_00014991_out;
always @(posedge bus_00197553_ or posedge bus_0165d7b1_)
begin
if (bus_0165d7b1_)
stateVar_xCount_u2<=32'h0;
else if (bus_0076e886_)
stateVar_xCount_u2<=endianswapper_00014991_out;
end
assign bus_002fe286_=endianswapper_00676f5a_out;
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00676f5a_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00676f5a__1(.endianswapper_00676f5a_in(stateVar_xCount_u2), 
  .endianswapper_00676f5a_out(endianswapper_00676f5a_out));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00014991_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_00014991__1(.endianswapper_00014991_in(bus_008987ab_), 
  .endianswapper_00014991_out(endianswapper_00014991_out));
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_Kicker_12(CLK, RESET, bus_01047762_);
input		CLK;
input		RESET;
output		bus_01047762_;
reg		kicker_2=1'h0;
wire		bus_01506130_;
reg		kicker_res=1'h0;
wire		bus_01e79d73_;
reg		kicker_1=1'h0;
wire		bus_00a57644_;
wire		bus_011883db_;
always @(posedge CLK)
begin
kicker_2<=bus_00a57644_;
end
assign bus_01506130_=~RESET;
always @(posedge CLK)
begin
kicker_res<=bus_01e79d73_;
end
assign bus_01e79d73_=kicker_1&bus_01506130_&bus_011883db_;
always @(posedge CLK)
begin
kicker_1<=bus_01506130_;
end
assign bus_01047762_=kicker_res;
assign bus_00a57644_=bus_01506130_&kicker_1;
assign bus_011883db_=~kicker_2;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_006d7975_(endianswapper_006d7975_in, endianswapper_006d7975_out);
input	[31:0]	endianswapper_006d7975_in;
output	[31:0]	endianswapper_006d7975_out;
assign endianswapper_006d7975_out=endianswapper_006d7975_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0182d569_(endianswapper_0182d569_in, endianswapper_0182d569_out);
input	[31:0]	endianswapper_0182d569_in;
output	[31:0]	endianswapper_0182d569_out;
assign endianswapper_0182d569_out=endianswapper_0182d569_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_sqrtValue(bus_002b328f_, bus_000487eb_, bus_019bc52b_, bus_0078854b_, bus_01b83ee8_);
input		bus_002b328f_;
input		bus_000487eb_;
input		bus_019bc52b_;
input	[31:0]	bus_0078854b_;
output	[31:0]	bus_01b83ee8_;
wire	[31:0]	endianswapper_006d7975_out;
reg	[31:0]	stateVar_sqrtValue_u3=32'h0;
wire	[31:0]	endianswapper_0182d569_out;
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_006d7975_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_006d7975__1(.endianswapper_006d7975_in(stateVar_sqrtValue_u3), 
  .endianswapper_006d7975_out(endianswapper_006d7975_out));
always @(posedge bus_002b328f_ or posedge bus_000487eb_)
begin
if (bus_000487eb_)
stateVar_sqrtValue_u3<=32'h0;
else if (bus_019bc52b_)
stateVar_sqrtValue_u3<=endianswapper_0182d569_out;
end
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0182d569_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0182d569__1(.endianswapper_0182d569_in(bus_0078854b_), 
  .endianswapper_0182d569_out(endianswapper_0182d569_out));
assign bus_01b83ee8_=endianswapper_006d7975_out;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s0(bus_011957aa_, bus_00ca93e8_, bus_015cd3cf_, bus_00546ebf_, bus_0142775d_);
input		bus_011957aa_;
input		bus_00ca93e8_;
input		bus_015cd3cf_;
input		bus_00546ebf_;
output		bus_0142775d_;
reg		stateVar_state_s0_u9=1'h0;
always @(posedge bus_011957aa_ or posedge bus_00ca93e8_)
begin
if (bus_00ca93e8_)
stateVar_state_s0_u9<=1'h0;
else if (bus_015cd3cf_)
stateVar_state_s0_u9<=bus_00546ebf_;
end
assign bus_0142775d_=stateVar_state_s0_u9;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_state_s1(bus_009fc1a5_, bus_006259cf_, bus_00d06c77_, bus_00a10856_, bus_0197d286_);
input		bus_009fc1a5_;
input		bus_006259cf_;
input		bus_00d06c77_;
input		bus_00a10856_;
output		bus_0197d286_;
reg		stateVar_state_s1_u10=1'h0;
assign bus_0197d286_=stateVar_state_s1_u10;
always @(posedge bus_009fc1a5_ or posedge bus_006259cf_)
begin
if (bus_006259cf_)
stateVar_state_s1_u10<=1'h0;
else if (bus_00d06c77_)
stateVar_state_s1_u10<=bus_00a10856_;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_scheduler(CLK, RESET, GO, port_00eb8c38_, port_01a4ae96_, port_00d87fb2_, port_01b3350f_, port_00b326e2_, RESULT, RESULT_u572, RESULT_u573, RESULT_u574, RESULT_u575, RESULT_u576, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_00eb8c38_;
input		port_01a4ae96_;
input		port_00d87fb2_;
input		port_01b3350f_;
input		port_00b326e2_;
output		RESULT;
output		RESULT_u572;
output		RESULT_u573;
output		RESULT_u574;
output		RESULT_u575;
output		RESULT_u576;
output		DONE;
wire		and_u874_u0;
wire		and_u875_u0;
wire		not_u180_u0;
wire		and_u876_u0;
wire		simplePinWrite;
wire		and_u877_u0;
wire		and_u878_u0;
reg		reg_0179d93d_u0=1'h0;
wire		and_u879_u0;
wire		or_u246_u0;
wire		and_u880_u0;
wire		and_u881_u0;
wire		not_u181_u0;
wire		and_u882_u0;
wire		not_u182_u0;
wire		and_u883_u0;
wire		and_u884_u0;
wire		simplePinWrite_u137;
reg		reg_00ef006f_u0=1'h0;
wire		and_u885_u0;
wire		and_u886_u0;
wire		or_u247_u0;
reg		and_delayed_u40=1'h0;
reg		reg_00ef006f_result_delayed_u0=1'h0;
wire		and_u887_u0;
wire		or_u248_u0;
wire		and_u888_u0;
reg		and_delayed_u41_u0=1'h0;
wire		and_u889_u0;
wire		bus_001e2df9_;
reg		scoreboard_01f16a27_reg0=1'h0;
wire		scoreboard_01f16a27_resOr1;
reg		scoreboard_01f16a27_reg1=1'h0;
wire		scoreboard_01f16a27_resOr0;
wire		scoreboard_01f16a27_and;
reg		syncEnable_u203=1'h0;
reg		block_GO_delayed_u24=1'h0;
reg		syncEnable_u204_u0=1'h0;
wire		or_u249_u0;
wire		or_u250_u0;
wire		mux_u267;
wire		mux_u268_u0;
wire		or_u251_u0;
reg		reg_012f5528_u0=1'h0;
reg		reg_01c5fbaf_u0=1'h0;
assign and_u874_u0=or_u249_u0&or_u249_u0;
assign and_u875_u0=block_GO_delayed_u24&syncEnable_u204_u0;
assign not_u180_u0=~syncEnable_u204_u0;
assign and_u876_u0=block_GO_delayed_u24&not_u180_u0;
assign simplePinWrite=and_u877_u0&{1{and_u877_u0}};
assign and_u877_u0=and_u878_u0&and_u878_u0;
assign and_u878_u0=and_u880_u0&and_u880_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0179d93d_u0<=1'h0;
else reg_0179d93d_u0<=and_u879_u0;
end
assign and_u879_u0=and_u876_u0&block_GO_delayed_u24;
assign or_u246_u0=reg_0179d93d_u0|port_01b3350f_;
assign and_u880_u0=and_u875_u0&block_GO_delayed_u24;
assign and_u881_u0=block_GO_delayed_u24&not_u181_u0;
assign not_u181_u0=~syncEnable_u203;
assign and_u882_u0=block_GO_delayed_u24&syncEnable_u203;
assign not_u182_u0=~port_00b326e2_;
assign and_u883_u0=and_u887_u0&not_u182_u0;
assign and_u884_u0=and_u887_u0&port_00b326e2_;
assign simplePinWrite_u137=and_u885_u0&{1{and_u885_u0}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ef006f_u0<=1'h0;
else reg_00ef006f_u0<=and_u885_u0;
end
assign and_u885_u0=and_u884_u0&and_u887_u0;
assign and_u886_u0=and_u883_u0&and_u887_u0;
assign or_u247_u0=and_delayed_u40|reg_00ef006f_result_delayed_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u40<=1'h0;
else and_delayed_u40<=and_u886_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00ef006f_result_delayed_u0<=1'h0;
else reg_00ef006f_result_delayed_u0<=reg_00ef006f_u0;
end
assign and_u887_u0=and_u889_u0&and_u889_u0;
assign or_u248_u0=and_delayed_u41_u0|or_u247_u0;
assign and_u888_u0=and_u881_u0&block_GO_delayed_u24;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u41_u0<=1'h0;
else and_delayed_u41_u0<=and_u888_u0;
end
assign and_u889_u0=and_u882_u0&block_GO_delayed_u24;
assign bus_001e2df9_=scoreboard_01f16a27_and|RESET;
always @(posedge CLK)
begin
if (bus_001e2df9_)
scoreboard_01f16a27_reg0<=1'h0;
else if (or_u248_u0)
scoreboard_01f16a27_reg0<=1'h1;
else scoreboard_01f16a27_reg0<=scoreboard_01f16a27_reg0;
end
assign scoreboard_01f16a27_resOr1=or_u246_u0|scoreboard_01f16a27_reg1;
always @(posedge CLK)
begin
if (bus_001e2df9_)
scoreboard_01f16a27_reg1<=1'h0;
else if (or_u246_u0)
scoreboard_01f16a27_reg1<=1'h1;
else scoreboard_01f16a27_reg1<=scoreboard_01f16a27_reg1;
end
assign scoreboard_01f16a27_resOr0=or_u248_u0|scoreboard_01f16a27_reg0;
assign scoreboard_01f16a27_and=scoreboard_01f16a27_resOr0&scoreboard_01f16a27_resOr1;
always @(posedge CLK)
begin
if (and_u874_u0)
syncEnable_u203<=port_01a4ae96_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u24<=1'h0;
else block_GO_delayed_u24<=and_u874_u0;
end
always @(posedge CLK)
begin
if (and_u874_u0)
syncEnable_u204_u0<=port_00eb8c38_;
end
assign or_u249_u0=reg_012f5528_u0|scoreboard_01f16a27_and;
assign or_u250_u0=GO|and_u877_u0;
assign mux_u267=(GO)?1'h0:1'h1;
assign mux_u268_u0=(GO)?1'h1:1'h0;
assign or_u251_u0=GO|and_u877_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_012f5528_u0<=1'h0;
else reg_012f5528_u0<=reg_01c5fbaf_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01c5fbaf_u0<=1'h0;
else reg_01c5fbaf_u0<=GO;
end
assign RESULT=or_u251_u0;
assign RESULT_u572=mux_u268_u0;
assign RESULT_u573=or_u250_u0;
assign RESULT_u574=mux_u267;
assign RESULT_u575=simplePinWrite;
assign RESULT_u576=simplePinWrite_u137;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_simplememoryreferee_0069500d_(bus_018138e4_, bus_00be1c2d_, bus_010838f8_, bus_009e1126_, bus_00bbf022_, bus_012a392d_, bus_010d552a_, bus_00763e3f_, bus_00183ca1_, bus_010e1488_, bus_01a07cc1_, bus_0177e370_, bus_01c8d000_, bus_00fb2f13_, bus_01e01cbe_, bus_01ab3c60_, bus_00f0bf43_, bus_01349b36_, bus_015e6bf1_);
input		bus_018138e4_;
input		bus_00be1c2d_;
input		bus_010838f8_;
input	[31:0]	bus_009e1126_;
input		bus_00bbf022_;
input	[31:0]	bus_012a392d_;
input	[31:0]	bus_010d552a_;
input	[2:0]	bus_00763e3f_;
input		bus_00183ca1_;
input	[31:0]	bus_010e1488_;
input	[2:0]	bus_01a07cc1_;
output	[31:0]	bus_0177e370_;
output	[31:0]	bus_01c8d000_;
output		bus_00fb2f13_;
output		bus_01e01cbe_;
output	[2:0]	bus_01ab3c60_;
output		bus_00f0bf43_;
output	[31:0]	bus_01349b36_;
output		bus_015e6bf1_;
wire		or_00ecaf1a_u0;
wire	[31:0]	mux_00241469_u0;
reg		done_qual_u48=1'h0;
wire		and_00b38a2a_u0;
wire		and_01695968_u0;
reg		done_qual_u49_u0=1'h0;
wire		not_019bc0ee_u0;
wire	[31:0]	mux_0053c3d4_u0;
wire		or_016a1335_u0;
wire		or_019b1a4d_u0;
wire		not_014a3773_u0;
assign or_00ecaf1a_u0=bus_00183ca1_|done_qual_u48;
assign bus_0177e370_=mux_00241469_u0;
assign bus_01c8d000_=mux_0053c3d4_u0;
assign bus_00fb2f13_=bus_00bbf022_;
assign bus_01e01cbe_=or_019b1a4d_u0;
assign bus_01ab3c60_=3'h1;
assign bus_00f0bf43_=and_01695968_u0;
assign bus_01349b36_=bus_009e1126_;
assign bus_015e6bf1_=and_00b38a2a_u0;
assign mux_00241469_u0=({32{bus_00bbf022_}}&bus_012a392d_);
always @(posedge bus_018138e4_)
begin
if (bus_00be1c2d_)
done_qual_u48<=1'h0;
else done_qual_u48<=bus_00183ca1_;
end
assign and_00b38a2a_u0=or_00ecaf1a_u0&bus_010838f8_;
assign and_01695968_u0=or_016a1335_u0&bus_010838f8_;
always @(posedge bus_018138e4_)
begin
if (bus_00be1c2d_)
done_qual_u49_u0<=1'h0;
else done_qual_u49_u0<=bus_00bbf022_;
end
assign not_019bc0ee_u0=~bus_010838f8_;
assign mux_0053c3d4_u0=(bus_00bbf022_)?bus_010d552a_:bus_010e1488_;
assign or_016a1335_u0=bus_00bbf022_|done_qual_u49_u0;
assign or_019b1a4d_u0=bus_00bbf022_|bus_00183ca1_;
assign not_014a3773_u0=~bus_010838f8_;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_globalreset_physical_009d637d_(bus_004c40a3_, bus_0179ab19_, bus_010eecea_);
input		bus_004c40a3_;
input		bus_0179ab19_;
output		bus_010eecea_;
wire		not_00193e04_u0;
reg		final_u12=1'h1;
reg		glitch_u12=1'h0;
reg		cross_u12=1'h0;
wire		and_0004e0bc_u0;
reg		sample_u12=1'h0;
wire		or_00d00673_u0;
assign not_00193e04_u0=~and_0004e0bc_u0;
always @(posedge bus_004c40a3_)
begin
final_u12<=not_00193e04_u0;
end
always @(posedge bus_004c40a3_)
begin
glitch_u12<=cross_u12;
end
always @(posedge bus_004c40a3_)
begin
cross_u12<=sample_u12;
end
assign and_0004e0bc_u0=cross_u12&glitch_u12;
always @(posedge bus_004c40a3_)
begin
sample_u12<=1'h1;
end
assign or_00d00673_u0=bus_0179ab19_|final_u12;
assign bus_010eecea_=or_00d00673_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_014d6f3c_(endianswapper_014d6f3c_in, endianswapper_014d6f3c_out);
input	[31:0]	endianswapper_014d6f3c_in;
output	[31:0]	endianswapper_014d6f3c_out;
assign endianswapper_014d6f3c_out=endianswapper_014d6f3c_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0142495a_(endianswapper_0142495a_in, endianswapper_0142495a_out);
input	[31:0]	endianswapper_0142495a_in;
output	[31:0]	endianswapper_0142495a_out;
assign endianswapper_0142495a_out=endianswapper_0142495a_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_kernelValue(bus_01d59b5b_, bus_00ca86c4_, bus_01155322_, bus_011a1dc1_, bus_0176c8ef_);
input		bus_01d59b5b_;
input		bus_00ca86c4_;
input		bus_01155322_;
input	[31:0]	bus_011a1dc1_;
output	[31:0]	bus_0176c8ef_;
wire	[31:0]	endianswapper_014d6f3c_out;
wire	[31:0]	endianswapper_0142495a_out;
reg	[31:0]	stateVar_kernelValue_u1=32'h0;
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_014d6f3c_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_014d6f3c__1(.endianswapper_014d6f3c_in(stateVar_kernelValue_u1), 
  .endianswapper_014d6f3c_out(endianswapper_014d6f3c_out));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0142495a_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_0142495a__1(.endianswapper_0142495a_in(bus_011a1dc1_), 
  .endianswapper_0142495a_out(endianswapper_0142495a_out));
assign bus_0176c8ef_=endianswapper_014d6f3c_out;
always @(posedge bus_01d59b5b_ or posedge bus_00ca86c4_)
begin
if (bus_00ca86c4_)
stateVar_kernelValue_u1<=32'h0;
else if (bus_01155322_)
stateVar_kernelValue_u1<=endianswapper_0142495a_out;
end
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_sendData(CLK, RESET, GO, port_00e6acde_, port_01c6b746_, port_00eb7620_, port_009c5c93_, RESULT, RESULT_u577, RESULT_u578, RESULT_u579, RESULT_u580, RESULT_u581, RESULT_u582, RESULT_u583, RESULT_u584, RESULT_u585, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00e6acde_;
input	[31:0]	port_01c6b746_;
input		port_00eb7620_;
input	[31:0]	port_009c5c93_;
output		RESULT;
output	[31:0]	RESULT_u577;
output		RESULT_u578;
output	[31:0]	RESULT_u579;
output		RESULT_u580;
output	[31:0]	RESULT_u581;
output	[2:0]	RESULT_u582;
output		RESULT_u583;
output	[15:0]	RESULT_u584;
output	[31:0]	RESULT_u585;
output		DONE;
wire	[31:0]	subtract;
wire	[31:0]	subtract_u51;
wire	[31:0]	add;
wire	[31:0]	add_u280;
wire		or_u252_u0;
wire		and_u890_u0;
reg		done_cache_u29=1'h0;
wire	[31:0]	add_u281;
wire signed	[31:0]	equals_a_signed;
wire signed	[31:0]	equals_b_signed;
wire		equals;
wire		and_u891_u0;
wire		and_u892_u0;
wire		not_u183_u0;
wire	[31:0]	add_u282;
wire		and_u893_u0;
wire		and_u894_u0;
wire	[31:0]	mux_u269;
wire	[31:0]	mux_u270_u0;
wire signed	[31:0]	equals_u10_a_signed;
wire		equals_u10;
wire signed	[31:0]	equals_u10_b_signed;
wire		and_u895_u0;
wire		not_u184_u0;
wire		and_u896_u0;
wire		and_u897_u0;
wire	[31:0]	mux_u271_u0;
wire	[31:0]	mux_u272_u0;
wire		and_u898_u0;
wire	[31:0]	simplePinWrite;
wire	[15:0]	simplePinWrite_u138;
wire		simplePinWrite_u139;
reg	[31:0]	syncEnable_u205=32'h0;
reg		reg_01b7bc4b_u0=1'h0;
reg		reg_00e4a362_u0=1'h0;
assign subtract={port_01c6b746_[26:0], 5'b0}-{port_01c6b746_[29:0], 2'b0};
assign subtract_u51=subtract-port_01c6b746_;
assign add=subtract_u51+port_00e6acde_;
assign add_u280=32'h0+add;
assign or_u252_u0=and_u890_u0|RESET;
assign and_u890_u0=done_cache_u29&port_00eb7620_;
always @(posedge CLK or posedge reg_00e4a362_u0 or posedge or_u252_u0)
begin
if (or_u252_u0)
done_cache_u29<=1'h0;
else if (reg_00e4a362_u0)
done_cache_u29<=1'h1;
else done_cache_u29<=done_cache_u29;
end
assign add_u281=port_00e6acde_+32'h1;
assign equals_a_signed=add_u281;
assign equals_b_signed=32'h1b;
assign equals=equals_a_signed==equals_b_signed;
assign and_u891_u0=GO&equals;
assign and_u892_u0=GO&not_u183_u0;
assign not_u183_u0=~equals;
assign add_u282=port_01c6b746_+32'h1;
assign and_u893_u0=and_u892_u0&GO;
assign and_u894_u0=and_u891_u0&GO;
assign mux_u269=(and_u894_u0)?add_u282:port_01c6b746_;
assign mux_u270_u0=(and_u894_u0)?32'h0:add_u281;
assign equals_u10_a_signed=mux_u269;
assign equals_u10_b_signed=32'h15;
assign equals_u10=equals_u10_a_signed==equals_u10_b_signed;
assign and_u895_u0=GO&equals_u10;
assign not_u184_u0=~equals_u10;
assign and_u896_u0=GO&not_u184_u0;
assign and_u897_u0=and_u896_u0&GO;
assign mux_u271_u0=(and_u898_u0)?32'h0:mux_u270_u0;
assign mux_u272_u0=(and_u898_u0)?32'h0:mux_u269;
assign and_u898_u0=and_u895_u0&GO;
assign simplePinWrite=port_009c5c93_;
assign simplePinWrite_u138=16'h1&{16{1'h1}};
assign simplePinWrite_u139=reg_01b7bc4b_u0&{1{reg_01b7bc4b_u0}};
always @(posedge CLK)
begin
if (GO)
syncEnable_u205<=add_u280;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01b7bc4b_u0<=1'h0;
else reg_01b7bc4b_u0<=reg_00e4a362_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00e4a362_u0<=1'h0;
else reg_00e4a362_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u577=mux_u271_u0;
assign RESULT_u578=GO;
assign RESULT_u579=mux_u272_u0;
assign RESULT_u580=reg_00e4a362_u0;
assign RESULT_u581=syncEnable_u205;
assign RESULT_u582=3'h1;
assign RESULT_u583=simplePinWrite_u139;
assign RESULT_u584=simplePinWrite_u138;
assign RESULT_u585=simplePinWrite;
assign DONE=reg_01b7bc4b_u0;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01bf5cec_(endianswapper_01bf5cec_in, endianswapper_01bf5cec_out);
input	[31:0]	endianswapper_01bf5cec_in;
output	[31:0]	endianswapper_01bf5cec_out;
assign endianswapper_01bf5cec_out=endianswapper_01bf5cec_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01acfc81_(endianswapper_01acfc81_in, endianswapper_01acfc81_out);
input	[31:0]	endianswapper_01acfc81_in;
output	[31:0]	endianswapper_01acfc81_out;
assign endianswapper_01acfc81_out=endianswapper_01acfc81_in;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_stateVar_yCount(bus_012ebf4a_, bus_001094e7_, bus_01737e53_, bus_01571ba8_, bus_00892cdf_);
input		bus_012ebf4a_;
input		bus_001094e7_;
input		bus_01737e53_;
input	[31:0]	bus_01571ba8_;
output	[31:0]	bus_00892cdf_;
reg	[31:0]	stateVar_yCount_u2=32'h0;
wire	[31:0]	endianswapper_01bf5cec_out;
wire	[31:0]	endianswapper_01acfc81_out;
always @(posedge bus_012ebf4a_ or posedge bus_001094e7_)
begin
if (bus_001094e7_)
stateVar_yCount_u2<=32'h0;
else if (bus_01737e53_)
stateVar_yCount_u2<=endianswapper_01acfc81_out;
end
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01bf5cec_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01bf5cec__1(.endianswapper_01bf5cec_in(stateVar_yCount_u2), 
  .endianswapper_01bf5cec_out(endianswapper_01bf5cec_out));
Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01acfc81_ Mean_Shift_Main_main_loop_cal_kArray_evaluation_endianswapper_01acfc81__1(.endianswapper_01acfc81_in(bus_01571ba8_), 
  .endianswapper_01acfc81_out(endianswapper_01acfc81_out));
assign bus_00892cdf_=endianswapper_01bf5cec_out;
endmodule



module Mean_Shift_Main_main_loop_cal_kArray_evaluation_kernelEvaluation(CLK, RESET, GO, port_00107b9f_, port_019f2adf_, port_00c8f2ba_, RESULT, RESULT_u586, RESULT_u587, RESULT_u588, RESULT_u589, RESULT_u590, RESULT_u591, RESULT_u592, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00107b9f_;
input	[31:0]	port_019f2adf_;
input		port_00c8f2ba_;
output		RESULT;
output	[31:0]	RESULT_u586;
output		RESULT_u587;
output	[31:0]	RESULT_u588;
output		RESULT_u589;
output	[31:0]	RESULT_u590;
output	[31:0]	RESULT_u591;
output	[2:0]	RESULT_u592;
output		DONE;
wire		and_u899_u0;
wire		and_u900_u0;
wire		lessThanEqualTo;
wire signed	[31:0]	lessThanEqualTo_b_signed;
wire signed	[31:0]	lessThanEqualTo_a_signed;
wire		and_u901_u0;
wire		and_u902_u0;
wire		not_u185_u0;
wire		and_u903_u0;
wire signed	[31:0]	lessThanEqualTo_u15_b_signed;
wire		lessThanEqualTo_u15;
wire signed	[31:0]	lessThanEqualTo_u15_a_signed;
wire		and_u904_u0;
wire		and_u905_u0;
wire		not_u186_u0;
wire		and_u906_u0;
wire	[62:0]	add;
wire	[62:0]	add_u283;
wire signed	[62:0]	multiply_a_signed;
wire signed	[62:0]	multiply_b_signed;
wire	[62:0]	multiply;
wire	[62:0]	add_u284;
wire	[62:0]	add_u285;
wire signed	[62:0]	multiply_u11_a_signed;
wire signed	[62:0]	multiply_u11_b_signed;
wire	[62:0]	multiply_u11;
wire signed	[31:0]	multiply_u12_a_signed;
wire signed	[31:0]	multiply_u12_b_signed;
wire	[31:0]	multiply_u12;
wire signed	[31:0]	multiply_u13_a_signed;
wire signed	[31:0]	multiply_u13_b_signed;
wire	[31:0]	multiply_u13;
wire	[31:0]	add_u286;
wire		and_u907_u0;
wire		and_u908_u0;
wire		and_u909_u0;
wire signed	[63:0]	multiply_u14_a_signed;
wire signed	[63:0]	multiply_u14_b_signed;
wire	[63:0]	multiply_u14;
wire		equals;
wire signed	[63:0]	equals_b_signed;
wire signed	[63:0]	equals_a_signed;
wire		and_u910_u0;
wire		and_u911_u0;
wire		not_u187_u0;
wire	[31:0]	mux_u273;
wire	[31:0]	mux_u274_u0;
wire		and_u912_u0;
wire	[31:0]	mux_u275_u0;
wire		and_u913_u0;
wire	[31:0]	add_u287;
wire signed	[31:0]	lessThanEqualTo_u16_a_signed;
wire		lessThanEqualTo_u16;
wire signed	[31:0]	lessThanEqualTo_u16_b_signed;
wire		and_u914_u0;
wire		and_u915_u0;
wire		not_u188_u0;
wire		or_u253_u0;
reg	[31:0]	fbReg_inlined_inlined_pSq4_5_5_u1=32'h0;
wire	[31:0]	mux_u276_u0;
reg	[31:0]	fbReg_inlined_inlined_N4_5_5_u1=32'h0;
wire		and_u916_u0;
wire	[31:0]	mux_u277_u0;
reg	[31:0]	fbReg_inlined_inlined_j5_6_6_u1=32'h0;
reg	[31:0]	latch_00f7271a_reg=32'h0;
wire	[31:0]	latch_00f7271a_out;
reg		loopControl_u19=1'h0;
wire		and_u917_u0;
wire	[31:0]	mux_u278_u0;
wire		greaterThan;
wire signed	[31:0]	greaterThan_b_signed;
wire signed	[31:0]	greaterThan_a_signed;
wire		and_u918_u0;
wire		and_u919_u0;
wire		not_u189_u0;
wire	[31:0]	mux_u279_u0;
wire		and_u920_u0;
wire		and_u921_u0;
wire	[31:0]	subtract;
reg	[31:0]	latch_01d1b269_reg=32'h0;
wire	[31:0]	latch_01d1b269_out;
wire		and_u922_u0;
wire signed	[31:0]	greaterThan_u9_a_signed;
wire signed	[31:0]	greaterThan_u9_b_signed;
wire		greaterThan_u9;
wire		not_u190_u0;
wire		and_u923_u0;
wire		and_u924_u0;
wire		or_u254_u0;
wire	[31:0]	mux_u280_u0;
reg	[31:0]	fbReg_inlined_inlined_i0_1_1_u1=32'h0;
wire		latch_0165887b_out;
reg		latch_0165887b_reg=1'h0;
reg		loopControl_u20_u0=1'h0;
wire	[31:0]	mux_u281_u0;
reg	[31:0]	fbReg_inlined_inlined_N0_1_1_u1=32'h0;
wire	[31:0]	mux_u282_u0;
reg	[31:0]	fbReg_inlined_inlined_pSq0_1_1_u1=32'h0;
wire signed	[31:0]	greaterThan_u10_a_signed;
wire signed	[31:0]	greaterThan_u10_b_signed;
wire		greaterThan_u10;
wire		and_u925_u0;
wire		and_u926_u0;
wire		not_u191_u0;
wire	[31:0]	subtract_u52;
wire		and_u927_u0;
wire		and_u928_u0;
wire		or_u255_u0;
wire	[31:0]	mux_u283_u0;
wire	[31:0]	add_u288;
wire	[31:0]	subtract_u53;
wire	[31:0]	subtract_u54;
wire	[31:0]	add_u289;
wire	[31:0]	add_u290;
wire	[31:0]	add_u291;
reg		reg_008d1584_u0=1'h0;
wire		or_u256_u0;
wire		and_u929_u0;
wire	[31:0]	add_u292;
reg	[31:0]	syncEnable_u206=32'h0;
reg		reg_01381939_u0=1'h0;
reg		reg_01045e07_u0=1'h0;
reg	[31:0]	syncEnable_u207_u0=32'h0;
reg		block_GO_delayed_u25=1'h0;
reg		reg_01381939_result_delayed_u0=1'h0;
reg		reg_007d6d5c_u0=1'h0;
reg	[31:0]	syncEnable_u208_u0=32'h0;
reg	[31:0]	syncEnable_u209_u0=32'h0;
reg		reg_007d6d5c_result_delayed_u0=1'h0;
wire	[31:0]	latch_018dbd9e_out;
reg	[31:0]	latch_018dbd9e_reg=32'h0;
wire	[31:0]	mux_u284_u0;
wire	[31:0]	mux_u285_u0;
wire		or_u257_u0;
wire	[31:0]	add_u293;
reg	[31:0]	syncEnable_u210_u0=32'h0;
reg	[31:0]	syncEnable_u211_u0=32'h0;
reg	[31:0]	syncEnable_u212_u0=32'h0;
reg		block_GO_delayed_u26_u0=1'h0;
wire	[31:0]	mux_u286_u0;
wire	[31:0]	mux_u287_u0;
wire		or_u258_u0;
reg		reg_01ee7308_u0=1'h0;
assign and_u899_u0=and_u901_u0&or_u258_u0;
assign and_u900_u0=and_u902_u0&or_u258_u0;
assign lessThanEqualTo_a_signed=mux_u287_u0;
assign lessThanEqualTo_b_signed=32'ha;
assign lessThanEqualTo=lessThanEqualTo_a_signed<=lessThanEqualTo_b_signed;
assign and_u901_u0=or_u258_u0&not_u185_u0;
assign and_u902_u0=or_u258_u0&lessThanEqualTo;
assign not_u185_u0=~lessThanEqualTo;
assign and_u903_u0=and_u905_u0&or_u257_u0;
assign lessThanEqualTo_u15_a_signed=mux_u284_u0;
assign lessThanEqualTo_u15_b_signed=32'hd;
assign lessThanEqualTo_u15=lessThanEqualTo_u15_a_signed<=lessThanEqualTo_u15_b_signed;
assign and_u904_u0=or_u257_u0&not_u186_u0;
assign and_u905_u0=or_u257_u0&lessThanEqualTo_u15;
assign not_u186_u0=~lessThanEqualTo_u15;
assign and_u906_u0=and_u904_u0&or_u257_u0;
assign add={latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out, 6'b0}+{latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out, 5'b0};
assign add_u283={add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38], add[38:5], 5'b0}+{latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out[31], latch_018dbd9e_out, 2'b0};
assign multiply_a_signed=63'hccccccd;
assign multiply_b_signed={add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39], add_u283[39:2], 2'b0};
assign multiply=multiply_a_signed*multiply_b_signed;
assign add_u284={mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0, 6'b0}+{mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0, 5'b0};
assign add_u285={add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38], add_u284[38:5], 5'b0}+{mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0[31], mux_u284_u0, 2'b0};
assign multiply_u11_a_signed=63'h9d89d8a;
assign multiply_u11_b_signed={add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39], add_u285[39:2], 2'b0};
assign multiply_u11=multiply_u11_a_signed*multiply_u11_b_signed;
assign multiply_u12_a_signed=multiply[62:31];
assign multiply_u12_b_signed=multiply[62:31];
assign multiply_u12=multiply_u12_a_signed*multiply_u12_b_signed;
assign multiply_u13_a_signed=multiply_u11[62:31];
assign multiply_u13_b_signed=multiply_u11[62:31];
assign multiply_u13=multiply_u13_a_signed*multiply_u13_b_signed;
assign add_u286=multiply_u12+multiply_u13;
assign and_u907_u0=and_u924_u0&or_u254_u0;
assign and_u908_u0=and_u914_u0&or_u253_u0;
assign and_u909_u0=and_u915_u0&or_u253_u0;
assign multiply_u14_a_signed={mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0};
assign multiply_u14_b_signed={mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0[31], mux_u276_u0};
assign multiply_u14=multiply_u14_a_signed*multiply_u14_b_signed;
assign equals_a_signed=multiply_u14;
assign equals_b_signed={latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out[31], latch_00f7271a_out};
assign equals=equals_a_signed==equals_b_signed;
assign and_u910_u0=and_u908_u0&not_u187_u0;
assign and_u911_u0=and_u908_u0&equals;
assign not_u187_u0=~equals;
assign mux_u273=(and_u913_u0)?latch_00f7271a_out:mux_u277_u0;
assign mux_u274_u0=(and_u913_u0)?latch_00f7271a_out:mux_u276_u0;
assign and_u912_u0=and_u910_u0&and_u908_u0;
assign mux_u275_u0=(and_u913_u0)?mux_u276_u0:mux_u278_u0;
assign and_u913_u0=and_u911_u0&and_u908_u0;
assign add_u287=mux_u274_u0+32'h1;
assign lessThanEqualTo_u16_a_signed=mux_u276_u0;
assign lessThanEqualTo_u16_b_signed=latch_00f7271a_out;
assign lessThanEqualTo_u16=lessThanEqualTo_u16_a_signed<=lessThanEqualTo_u16_b_signed;
assign and_u914_u0=or_u253_u0&lessThanEqualTo_u16;
assign and_u915_u0=or_u253_u0&not_u188_u0;
assign not_u188_u0=~lessThanEqualTo_u16;
assign or_u253_u0=loopControl_u19|and_u922_u0;
always @(posedge CLK)
begin
if (and_u916_u0)
fbReg_inlined_inlined_pSq4_5_5_u1<=mux_u273;
end
assign mux_u276_u0=(loopControl_u19)?fbReg_inlined_inlined_j5_6_6_u1:32'h0;
always @(posedge CLK)
begin
if (and_u916_u0)
fbReg_inlined_inlined_N4_5_5_u1<=mux_u275_u0;
end
assign and_u916_u0=and_u908_u0&or_u253_u0;
assign mux_u277_u0=(loopControl_u19)?fbReg_inlined_inlined_pSq4_5_5_u1:mux_u281_u0;
always @(posedge CLK)
begin
if (and_u916_u0)
fbReg_inlined_inlined_j5_6_6_u1<=add_u287;
end
always @(posedge CLK)
begin
if (and_u922_u0)
latch_00f7271a_reg<=mux_u282_u0;
end
assign latch_00f7271a_out=(and_u922_u0)?mux_u282_u0:latch_00f7271a_reg;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u19<=1'h0;
else loopControl_u19<=and_u908_u0;
end
assign and_u917_u0=and_u909_u0&or_u253_u0;
assign mux_u278_u0=(loopControl_u19)?fbReg_inlined_inlined_N4_5_5_u1:mux_u280_u0;
assign greaterThan_a_signed=mux_u277_u0;
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign and_u918_u0=and_u917_u0&not_u189_u0;
assign and_u919_u0=and_u917_u0&greaterThan;
assign not_u189_u0=~greaterThan;
assign mux_u279_u0=(and_u921_u0)?32'h1:latch_01d1b269_out;
assign and_u920_u0=and_u918_u0&and_u917_u0;
assign and_u921_u0=and_u919_u0&and_u917_u0;
assign subtract=mux_u279_u0-32'h1;
always @(posedge CLK)
begin
if (and_u922_u0)
latch_01d1b269_reg<=mux_u282_u0;
end
assign latch_01d1b269_out=(and_u922_u0)?mux_u282_u0:latch_01d1b269_reg;
assign and_u922_u0=and_u923_u0&or_u254_u0;
assign greaterThan_u9_a_signed=mux_u282_u0;
assign greaterThan_u9_b_signed=32'h0;
assign greaterThan_u9=greaterThan_u9_a_signed>greaterThan_u9_b_signed;
assign not_u190_u0=~greaterThan_u9;
assign and_u923_u0=or_u254_u0&greaterThan_u9;
assign and_u924_u0=or_u254_u0&not_u190_u0;
assign or_u254_u0=loopControl_u20_u0|block_GO_delayed_u25;
assign mux_u280_u0=(loopControl_u20_u0)?fbReg_inlined_inlined_N0_1_1_u1:32'h0;
always @(posedge CLK)
begin
if (and_u917_u0)
fbReg_inlined_inlined_i0_1_1_u1<=subtract;
end
assign latch_0165887b_out=(block_GO_delayed_u25)?RESET:latch_0165887b_reg;
always @(posedge CLK)
begin
if (block_GO_delayed_u25)
latch_0165887b_reg<=RESET;
end
always @(posedge CLK or posedge latch_0165887b_out)
begin
if (latch_0165887b_out)
loopControl_u20_u0<=1'h0;
else loopControl_u20_u0<=and_u917_u0;
end
assign mux_u281_u0=(loopControl_u20_u0)?fbReg_inlined_inlined_pSq0_1_1_u1:32'h0;
always @(posedge CLK)
begin
if (and_u917_u0)
fbReg_inlined_inlined_N0_1_1_u1<=mux_u278_u0;
end
assign mux_u282_u0=(loopControl_u20_u0)?fbReg_inlined_inlined_i0_1_1_u1:syncEnable_u206;
always @(posedge CLK)
begin
if (and_u917_u0)
fbReg_inlined_inlined_pSq0_1_1_u1<=mux_u277_u0;
end
assign greaterThan_u10_a_signed=port_00107b9f_;
assign greaterThan_u10_b_signed=32'h64;
assign greaterThan_u10=greaterThan_u10_a_signed>greaterThan_u10_b_signed;
assign and_u925_u0=reg_007d6d5c_result_delayed_u0&not_u191_u0;
assign and_u926_u0=reg_007d6d5c_result_delayed_u0&greaterThan_u10;
assign not_u191_u0=~greaterThan_u10;
assign subtract_u52=32'h2710-syncEnable_u206;
assign and_u927_u0=and_u926_u0&reg_007d6d5c_result_delayed_u0;
assign and_u928_u0=and_u925_u0&reg_007d6d5c_result_delayed_u0;
assign or_u255_u0=and_u927_u0|and_u928_u0;
assign mux_u283_u0=(and_u927_u0)?32'h0:subtract_u52;
assign add_u288=latch_018dbd9e_out+32'ha;
assign subtract_u53={add_u288[26:0], 5'b0}-{add_u288[29:0], 2'b0};
assign subtract_u54=subtract_u53-add_u288;
assign add_u289=mux_u284_u0+32'hd;
assign add_u290=subtract_u54+add_u289;
assign add_u291=32'h0+add_u290;
always @(posedge CLK or posedge reg_01381939_result_delayed_u0 or posedge or_u256_u0)
begin
if (or_u256_u0)
reg_008d1584_u0<=1'h0;
else if (reg_01381939_result_delayed_u0)
reg_008d1584_u0<=1'h1;
else reg_008d1584_u0<=reg_008d1584_u0;
end
assign or_u256_u0=and_u929_u0|RESET;
assign and_u929_u0=reg_008d1584_u0&port_00c8f2ba_;
assign add_u292=mux_u284_u0+32'h1;
always @(posedge CLK)
begin
if (and_u903_u0)
syncEnable_u206<=add_u286;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01381939_u0<=1'h0;
else reg_01381939_u0<=reg_007d6d5c_result_delayed_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01045e07_u0<=1'h0;
else reg_01045e07_u0<=reg_01381939_result_delayed_u0;
end
always @(posedge CLK)
begin
if (reg_01381939_result_delayed_u0)
syncEnable_u207_u0<=port_019f2adf_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u25<=1'h0;
else block_GO_delayed_u25<=and_u903_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01381939_result_delayed_u0<=1'h0;
else reg_01381939_result_delayed_u0<=reg_01381939_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007d6d5c_u0<=1'h0;
else reg_007d6d5c_u0<=and_u907_u0;
end
always @(posedge CLK)
begin
if (and_u903_u0)
syncEnable_u208_u0<=add_u292;
end
always @(posedge CLK)
begin
if (and_u903_u0)
syncEnable_u209_u0<=add_u291;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007d6d5c_result_delayed_u0<=1'h0;
else reg_007d6d5c_result_delayed_u0<=reg_007d6d5c_u0;
end
assign latch_018dbd9e_out=(block_GO_delayed_u26_u0)?syncEnable_u212_u0:latch_018dbd9e_reg;
always @(posedge CLK)
begin
if (block_GO_delayed_u26_u0)
latch_018dbd9e_reg<=syncEnable_u212_u0;
end
assign mux_u284_u0=(block_GO_delayed_u26_u0)?32'hfffffff3:syncEnable_u208_u0;
assign mux_u285_u0=(block_GO_delayed_u26_u0)?syncEnable_u210_u0:syncEnable_u207_u0;
assign or_u257_u0=block_GO_delayed_u26_u0|reg_01045e07_u0;
assign add_u293=mux_u287_u0+32'h1;
always @(posedge CLK)
begin
if (and_u900_u0)
syncEnable_u210_u0<=mux_u286_u0;
end
always @(posedge CLK)
begin
if (and_u900_u0)
syncEnable_u211_u0<=add_u293;
end
always @(posedge CLK)
begin
if (and_u900_u0)
syncEnable_u212_u0<=mux_u287_u0;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u26_u0<=1'h0;
else block_GO_delayed_u26_u0<=and_u900_u0;
end
assign mux_u286_u0=(and_u906_u0)?mux_u285_u0:32'h0;
assign mux_u287_u0=(and_u906_u0)?syncEnable_u211_u0:32'hfffffff6;
assign or_u258_u0=and_u906_u0|reg_01ee7308_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ee7308_u0<=1'h0;
else reg_01ee7308_u0<=GO;
end
assign RESULT=and_u907_u0;
assign RESULT_u586=mux_u280_u0;
assign RESULT_u587=or_u255_u0;
assign RESULT_u588=mux_u283_u0;
assign RESULT_u589=reg_01381939_result_delayed_u0;
assign RESULT_u590=syncEnable_u209_u0;
assign RESULT_u591=port_019f2adf_;
assign RESULT_u592=3'h1;
assign DONE=and_u899_u0;
endmodule


