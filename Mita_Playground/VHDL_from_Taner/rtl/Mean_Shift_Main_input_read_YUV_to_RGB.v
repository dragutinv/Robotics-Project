// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:34 +0100
// 

module Mean_Shift_Main_input_read_YUV_to_RGB(U_ACK, Y_ACK, V_DATA, B_SEND, RESET, B_COUNT, U_SEND, Y_SEND, G_RDY, R_COUNT, B_RDY, Y_COUNT, U_DATA, G_SEND, U_COUNT, G_COUNT, B_DATA, R_SEND, V_COUNT, R_DATA, CLK, V_ACK, R_ACK, R_RDY, G_ACK, B_ACK, V_SEND, Y_DATA, G_DATA);
output		U_ACK;
wire		untagged_0_done;
output		Y_ACK;
input	[7:0]	V_DATA;
output		B_SEND;
input		RESET;
wire		untagged_0_go;
output	[15:0]	B_COUNT;
input		U_SEND;
input		Y_SEND;
input		G_RDY;
output	[15:0]	R_COUNT;
input		B_RDY;
input	[15:0]	Y_COUNT;
input	[7:0]	U_DATA;
output		G_SEND;
input	[15:0]	U_COUNT;
output	[15:0]	G_COUNT;
output	[7:0]	B_DATA;
output		R_SEND;
input	[15:0]	V_COUNT;
output	[7:0]	R_DATA;
input		CLK;
output		V_ACK;
input		R_ACK;
input		R_RDY;
input		G_ACK;
input		B_ACK;
input		V_SEND;
input	[7:0]	Y_DATA;
output	[7:0]	G_DATA;
wire		bus_01360a4b_;
wire	[7:0]	untagged_0_u32;
wire		untagged_0_u27;
wire	[15:0]	untagged_0_u25;
wire		untagged_0_u23;
wire	[7:0]	untagged_0_u28;
wire		untagged_0_u30;
wire		untagged_0;
wire		untagged_0_u24;
wire	[7:0]	untagged_0_u29;
wire	[15:0]	untagged_0_u26;
wire	[15:0]	untagged_0_u31;
wire		Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0_instance_DONE;
wire		untagged_0_u22;
wire		bus_004dfb2f_;
wire		bus_012a2730_;
wire		scheduler;
wire		Mean_Shift_Main_input_read_YUV_to_RGB_scheduler_instance_DONE;
assign U_ACK=untagged_0;
assign untagged_0_done=bus_01360a4b_;
assign Y_ACK=untagged_0_u23;
assign B_SEND=untagged_0_u27;
assign untagged_0_go=scheduler;
assign B_COUNT=untagged_0_u31;
assign R_COUNT=untagged_0_u25;
assign G_SEND=untagged_0_u24;
assign G_COUNT=untagged_0_u26;
assign B_DATA=untagged_0_u29;
assign R_SEND=untagged_0_u30;
assign R_DATA=untagged_0_u32;
assign V_ACK=untagged_0_u22;
assign G_DATA=untagged_0_u28;
assign bus_01360a4b_=Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0_instance_DONE&{1{Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0_instance_DONE}};
Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0 Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0_instance(.CLK(CLK), 
  .GO(untagged_0_go), .port_00315258_(U_DATA), .port_0017a8a7_(V_DATA), .port_010a8734_(Y_DATA), 
  .RESULT(untagged_0), .RESULT_u994(untagged_0_u22), .RESULT_u996(untagged_0_u23), 
  .RESULT_u995(untagged_0_u24), .RESULT_u997(untagged_0_u25), .RESULT_u999(untagged_0_u26), 
  .RESULT_u998(untagged_0_u27), .RESULT_u1001(untagged_0_u28), .RESULT_u1000(untagged_0_u29), 
  .RESULT_u1003(untagged_0_u30), .RESULT_u1002(untagged_0_u31), .RESULT_u1004(untagged_0_u32), 
  .DONE(Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0_instance_DONE));
Mean_Shift_Main_input_read_YUV_to_RGB_Kicker_20 Mean_Shift_Main_input_read_YUV_to_RGB_Kicker_20_1(.CLK(CLK), 
  .RESET(bus_012a2730_), .bus_004dfb2f_(bus_004dfb2f_));
Mean_Shift_Main_input_read_YUV_to_RGB_globalreset_physical_017990c0_ Mean_Shift_Main_input_read_YUV_to_RGB_globalreset_physical_017990c0__1(.bus_009ec447_(CLK), 
  .bus_01464cd0_(RESET), .bus_012a2730_(bus_012a2730_));
Mean_Shift_Main_input_read_YUV_to_RGB_scheduler Mean_Shift_Main_input_read_YUV_to_RGB_scheduler_instance(.CLK(CLK), 
  .RESET(bus_012a2730_), .GO(bus_004dfb2f_), .port_000748d1_(R_RDY), .port_018a5d33_(Y_SEND), 
  .port_005e50aa_(untagged_0_done), .port_0169ec6e_(G_RDY), .port_00a45ff2_(V_SEND), 
  .port_018b3c50_(U_SEND), .port_0021d3f2_(B_RDY), .RESULT(scheduler), .DONE(Mean_Shift_Main_input_read_YUV_to_RGB_scheduler_instance_DONE));
endmodule



module Mean_Shift_Main_input_read_YUV_to_RGB_untagged_0(CLK, GO, port_00315258_, port_0017a8a7_, port_010a8734_, RESULT, RESULT_u994, RESULT_u995, RESULT_u996, RESULT_u997, RESULT_u998, RESULT_u999, RESULT_u1000, RESULT_u1001, RESULT_u1002, RESULT_u1003, RESULT_u1004, DONE);
input		CLK;
input		GO;
input	[7:0]	port_00315258_;
input	[7:0]	port_0017a8a7_;
input	[7:0]	port_010a8734_;
output		RESULT;
output		RESULT_u994;
output		RESULT_u995;
output		RESULT_u996;
output	[15:0]	RESULT_u997;
output		RESULT_u998;
output	[15:0]	RESULT_u999;
output	[7:0]	RESULT_u1000;
output	[7:0]	RESULT_u1001;
output	[15:0]	RESULT_u1002;
output		RESULT_u1003;
output	[7:0]	RESULT_u1004;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u226;
wire		simplePinWrite_u227;
wire	[8:0]	subtract;
wire	[8:0]	subtract_u91;
wire	[8:0]	subtract_u92;
wire	[23:0]	add;
wire	[23:0]	add_u440;
wire	[23:0]	add_u441;
wire	[23:0]	add_u442;
wire	[23:0]	add_u443;
wire	[23:0]	add_u444;
wire	[23:0]	add_u445;
wire	[23:0]	add_u446;
wire	[23:0]	add_u447;
wire	[23:0]	add_u448;
wire	[23:0]	add_u449;
wire	[23:0]	add_u450;
wire	[22:0]	add_u451;
wire	[22:0]	add_u452;
wire	[23:0]	subtract_u93;
wire	[23:0]	add_u453;
wire	[23:0]	add_u454;
wire	[23:0]	subtract_u94;
wire	[23:0]	add_u455;
wire	[23:0]	add_u456;
wire	[23:0]	add_u457;
wire	[23:0]	add_u458;
wire	[23:0]	add_u459;
wire	[23:0]	add_u460;
wire	[23:0]	add_u461;
wire		greaterThan;
wire signed	[15:0]	greaterThan_a_signed;
wire signed	[15:0]	greaterThan_b_signed;
wire		and_u1537_u0;
wire		not_u317_u0;
wire		and_u1538_u0;
wire signed	[15:0]	lessThan_b_signed;
wire signed	[15:0]	lessThan_a_signed;
wire		lessThan;
wire		not_u318_u0;
wire		and_u1539_u0;
wire		and_u1540_u0;
wire		and_u1541_u0;
wire	[7:0]	mux_u492;
wire		and_u1542_u0;
wire		and_u1543_u0;
wire	[7:0]	mux_u493_u0;
wire		and_u1544_u0;
wire		greaterThan_u14;
wire signed	[15:0]	greaterThan_u14_b_signed;
wire signed	[15:0]	greaterThan_u14_a_signed;
wire		and_u1545_u0;
wire		and_u1546_u0;
wire		not_u319_u0;
wire		lessThan_u22;
wire signed	[15:0]	lessThan_u22_a_signed;
wire signed	[15:0]	lessThan_u22_b_signed;
wire		and_u1547_u0;
wire		not_u320_u0;
wire		and_u1548_u0;
wire	[7:0]	mux_u494_u0;
wire		and_u1549_u0;
wire		and_u1550_u0;
wire	[7:0]	mux_u495_u0;
wire		and_u1551_u0;
wire		and_u1552_u0;
wire		greaterThan_u15;
wire signed	[15:0]	greaterThan_u15_b_signed;
wire signed	[15:0]	greaterThan_u15_a_signed;
wire		and_u1553_u0;
wire		and_u1554_u0;
wire		not_u321_u0;
wire signed	[15:0]	lessThan_u23_a_signed;
wire signed	[15:0]	lessThan_u23_b_signed;
wire		lessThan_u23;
wire		and_u1555_u0;
wire		and_u1556_u0;
wire		not_u322_u0;
wire	[7:0]	mux_u496_u0;
wire		and_u1557_u0;
wire		and_u1558_u0;
wire		and_u1559_u0;
wire		and_u1560_u0;
wire	[7:0]	mux_u497_u0;
wire		simplePinWrite_u228;
wire	[15:0]	simplePinWrite_u229;
wire	[7:0]	simplePinWrite_u230;
wire	[7:0]	simplePinWrite_u231;
wire	[15:0]	simplePinWrite_u232;
wire		simplePinWrite_u233;
wire	[15:0]	simplePinWrite_u234;
wire	[7:0]	simplePinWrite_u235;
wire		simplePinWrite_u236;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u226=GO&{1{GO}};
assign simplePinWrite_u227=GO&{1{GO}};
assign subtract={1'b0, port_010a8734_}-9'h10;
assign subtract_u91={1'b0, port_00315258_}-9'h80;
assign subtract_u92={1'b0, port_0017a8a7_}-9'h80;
assign add={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u440={add[17], add[17], add[17], add[17], add[17], add[17], add[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u441={add_u440[18], add_u440[18], add_u440[18], add_u440[18], add_u440[18], add_u440[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u442={subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 8'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 7'b0};
assign add_u443={add_u442[17], add_u442[17], add_u442[17], add_u442[17], add_u442[17], add_u442[17], add_u442[17:7], 7'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 4'b0};
assign add_u444={add_u443[18], add_u443[18], add_u443[18], add_u443[18], add_u443[18], add_u443[18:4], 4'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 3'b0};
assign add_u445={add_u444[19], add_u444[19], add_u444[19], add_u444[19], add_u444[19:3], 3'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92};
assign add_u446={add_u441[19], add_u441[19], add_u441[19], add_u441[19], add_u441[19:1], 1'b0}+{add_u445[20], add_u445[20], add_u445[20], add_u445[20:0]};
assign add_u447={add_u446[21], add_u446[21], add_u446[21:0]}+24'h80;
assign add_u448={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u449={add_u448[17], add_u448[17], add_u448[17], add_u448[17], add_u448[17], add_u448[17], add_u448[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u450={add_u449[18], add_u449[18], add_u449[18], add_u449[18], add_u449[18], add_u449[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u451={subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91, 6'b0}+{subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91, 5'b0};
assign add_u452={add_u451[15], add_u451[15], add_u451[15], add_u451[15], add_u451[15], add_u451[15], add_u451[15], add_u451[15:5], 5'b0}+{subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91, 2'b0};
assign subtract_u93={add_u450[19], add_u450[19], add_u450[19], add_u450[19], add_u450[19:1], 1'b0}-{add_u452[16], add_u452[16], add_u452[16], add_u452[16], add_u452[16], add_u452[16], add_u452[16], add_u452[16:2], 2'b0};
assign add_u453={subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 7'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 6'b0};
assign add_u454={add_u453[16], add_u453[16], add_u453[16], add_u453[16], add_u453[16], add_u453[16], add_u453[16], add_u453[16:6], 6'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 4'b0};
assign subtract_u94={subtract_u93[20], subtract_u93[20], subtract_u93[20], subtract_u93[20:0]}-{add_u454[17], add_u454[17], add_u454[17], add_u454[17], add_u454[17], add_u454[17], add_u454[17:4], 4'b0};
assign add_u455={subtract_u94[21], subtract_u94[21], subtract_u94[21:0]}+24'h80;
assign add_u456={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u457={add_u456[17], add_u456[17], add_u456[17], add_u456[17], add_u456[17], add_u456[17], add_u456[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u458={add_u457[18], add_u457[18], add_u457[18], add_u457[18], add_u457[18], add_u457[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u459={subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91, 9'b0}+{subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91[8], subtract_u91, 2'b0};
assign add_u460={add_u458[19], add_u458[19], add_u458[19], add_u458[19], add_u458[19:1], 1'b0}+{add_u459[18], add_u459[18], add_u459[18], add_u459[18], add_u459[18], add_u459[18:2], 2'b0};
assign add_u461={add_u460[20], add_u460[20], add_u460[20], add_u460[20:1], 1'b0}+24'h80;
assign greaterThan_a_signed={add_u447[22], add_u447[22:8]};
assign greaterThan_b_signed=16'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign and_u1537_u0=GO&not_u317_u0;
assign not_u317_u0=~greaterThan;
assign and_u1538_u0=GO&greaterThan;
assign lessThan_a_signed={add_u447[22], add_u447[22:8]};
assign lessThan_b_signed=16'hff;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign not_u318_u0=~lessThan;
assign and_u1539_u0=and_u1543_u0&lessThan;
assign and_u1540_u0=and_u1543_u0&not_u318_u0;
assign and_u1541_u0=and_u1539_u0&and_u1543_u0;
assign mux_u492=(and_u1542_u0)?8'hff:add_u447[15:8];
assign and_u1542_u0=and_u1540_u0&and_u1543_u0;
assign and_u1543_u0=and_u1538_u0&GO;
assign mux_u493_u0=(and_u1543_u0)?mux_u492:8'h0;
assign and_u1544_u0=and_u1537_u0&GO;
assign greaterThan_u14_a_signed={add_u455[22], add_u455[22:8]};
assign greaterThan_u14_b_signed=16'h0;
assign greaterThan_u14=greaterThan_u14_a_signed>greaterThan_u14_b_signed;
assign and_u1545_u0=GO&not_u319_u0;
assign and_u1546_u0=GO&greaterThan_u14;
assign not_u319_u0=~greaterThan_u14;
assign lessThan_u22_a_signed={add_u455[22], add_u455[22:8]};
assign lessThan_u22_b_signed=16'hff;
assign lessThan_u22=lessThan_u22_a_signed<lessThan_u22_b_signed;
assign and_u1547_u0=and_u1551_u0&lessThan_u22;
assign not_u320_u0=~lessThan_u22;
assign and_u1548_u0=and_u1551_u0&not_u320_u0;
assign mux_u494_u0=(and_u1550_u0)?add_u455[15:8]:8'hff;
assign and_u1549_u0=and_u1548_u0&and_u1551_u0;
assign and_u1550_u0=and_u1547_u0&and_u1551_u0;
assign mux_u495_u0=(and_u1552_u0)?8'h0:mux_u494_u0;
assign and_u1551_u0=and_u1546_u0&GO;
assign and_u1552_u0=and_u1545_u0&GO;
assign greaterThan_u15_a_signed={add_u461[21], add_u461[21], add_u461[21:8]};
assign greaterThan_u15_b_signed=16'h0;
assign greaterThan_u15=greaterThan_u15_a_signed>greaterThan_u15_b_signed;
assign and_u1553_u0=GO&greaterThan_u15;
assign and_u1554_u0=GO&not_u321_u0;
assign not_u321_u0=~greaterThan_u15;
assign lessThan_u23_a_signed={add_u461[21], add_u461[21], add_u461[21:8]};
assign lessThan_u23_b_signed=16'hff;
assign lessThan_u23=lessThan_u23_a_signed<lessThan_u23_b_signed;
assign and_u1555_u0=and_u1560_u0&lessThan_u23;
assign and_u1556_u0=and_u1560_u0&not_u322_u0;
assign not_u322_u0=~lessThan_u23;
assign mux_u496_u0=(and_u1557_u0)?add_u461[15:8]:8'hff;
assign and_u1557_u0=and_u1555_u0&and_u1560_u0;
assign and_u1558_u0=and_u1556_u0&and_u1560_u0;
assign and_u1559_u0=and_u1554_u0&GO;
assign and_u1560_u0=and_u1553_u0&GO;
assign mux_u497_u0=(and_u1560_u0)?mux_u496_u0:8'h0;
assign simplePinWrite_u228=GO&{1{GO}};
assign simplePinWrite_u229=16'h1&{16{1'h1}};
assign simplePinWrite_u230=mux_u493_u0;
assign simplePinWrite_u231=mux_u495_u0;
assign simplePinWrite_u232=16'h1&{16{1'h1}};
assign simplePinWrite_u233=GO&{1{GO}};
assign simplePinWrite_u234=16'h1&{16{1'h1}};
assign simplePinWrite_u235=mux_u497_u0;
assign simplePinWrite_u236=GO&{1{GO}};
assign RESULT=simplePinWrite_u226;
assign RESULT_u994=simplePinWrite_u227;
assign RESULT_u995=simplePinWrite_u233;
assign RESULT_u996=simplePinWrite;
assign RESULT_u997=simplePinWrite_u229;
assign RESULT_u998=simplePinWrite_u236;
assign RESULT_u999=simplePinWrite_u232;
assign RESULT_u1000=simplePinWrite_u235;
assign RESULT_u1001=simplePinWrite_u231;
assign RESULT_u1002=simplePinWrite_u234;
assign RESULT_u1003=simplePinWrite_u228;
assign RESULT_u1004=simplePinWrite_u230;
assign DONE=GO;
endmodule



module Mean_Shift_Main_input_read_YUV_to_RGB_Kicker_20(CLK, RESET, bus_004dfb2f_);
input		CLK;
input		RESET;
output		bus_004dfb2f_;
wire		bus_01ecd139_;
wire		bus_003bbacd_;
reg		kicker_res=1'h0;
reg		kicker_2=1'h0;
wire		bus_00eb3204_;
wire		bus_01b59557_;
reg		kicker_1=1'h0;
assign bus_01ecd139_=~RESET;
assign bus_003bbacd_=kicker_1&bus_01ecd139_&bus_00eb3204_;
always @(posedge CLK)
begin
kicker_res<=bus_003bbacd_;
end
always @(posedge CLK)
begin
kicker_2<=bus_01b59557_;
end
assign bus_00eb3204_=~kicker_2;
assign bus_01b59557_=bus_01ecd139_&kicker_1;
always @(posedge CLK)
begin
kicker_1<=bus_01ecd139_;
end
assign bus_004dfb2f_=kicker_res;
endmodule



module Mean_Shift_Main_input_read_YUV_to_RGB_globalreset_physical_017990c0_(bus_009ec447_, bus_01464cd0_, bus_012a2730_);
input		bus_009ec447_;
input		bus_01464cd0_;
output		bus_012a2730_;
wire		or_005d2cf7_u0;
reg		glitch_u20=1'h0;
wire		and_0018a784_u0;
wire		not_01d66a42_u0;
reg		final_u20=1'h1;
reg		sample_u20=1'h0;
reg		cross_u20=1'h0;
assign or_005d2cf7_u0=bus_01464cd0_|final_u20;
always @(posedge bus_009ec447_)
begin
glitch_u20<=cross_u20;
end
assign and_0018a784_u0=cross_u20&glitch_u20;
assign not_01d66a42_u0=~and_0018a784_u0;
assign bus_012a2730_=or_005d2cf7_u0;
always @(posedge bus_009ec447_)
begin
final_u20<=not_01d66a42_u0;
end
always @(posedge bus_009ec447_)
begin
sample_u20<=1'h1;
end
always @(posedge bus_009ec447_)
begin
cross_u20<=sample_u20;
end
endmodule



module Mean_Shift_Main_input_read_YUV_to_RGB_scheduler(CLK, RESET, GO, port_000748d1_, port_018a5d33_, port_0169ec6e_, port_005e50aa_, port_00a45ff2_, port_018b3c50_, port_0021d3f2_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_000748d1_;
input		port_018a5d33_;
input		port_0169ec6e_;
input		port_005e50aa_;
input		port_00a45ff2_;
input		port_018b3c50_;
input		port_0021d3f2_;
output		RESULT;
output		DONE;
wire		and_u1561_u0;
wire		and_u1562_u0;
wire		and_u1563_u0;
wire		and_u1564_u0;
wire		and_u1565_u0;
wire		not_u323_u0;
wire		and_u1566_u0;
wire		and_u1567_u0;
wire		and_u1568_u0;
wire		not_u324_u0;
wire		and_u1569_u0;
wire		simplePinWrite;
wire		and_u1570_u0;
wire		and_u1571_u0;
reg		loopControl_u34=1'h0;
wire		or_u433_u0;
assign and_u1561_u0=or_u433_u0&or_u433_u0;
assign and_u1562_u0=port_018a5d33_&port_018b3c50_;
assign and_u1563_u0=and_u1562_u0&port_00a45ff2_;
assign and_u1564_u0=port_000748d1_&port_0169ec6e_;
assign and_u1565_u0=and_u1564_u0&port_0021d3f2_;
assign not_u323_u0=~and_u1563_u0;
assign and_u1566_u0=and_u1561_u0&not_u323_u0;
assign and_u1567_u0=and_u1561_u0&and_u1563_u0;
assign and_u1568_u0=and_u1571_u0&and_u1565_u0;
assign not_u324_u0=~and_u1565_u0;
assign and_u1569_u0=and_u1571_u0&not_u324_u0;
assign simplePinWrite=and_u1570_u0&{1{and_u1570_u0}};
assign and_u1570_u0=and_u1568_u0&and_u1571_u0;
assign and_u1571_u0=and_u1567_u0&and_u1561_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u34<=1'h0;
else loopControl_u34<=and_u1561_u0;
end
assign or_u433_u0=GO|loopControl_u34;
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule


