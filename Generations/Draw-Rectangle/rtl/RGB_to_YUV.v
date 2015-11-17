// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Tue 17 Nov 2015 18:39:21 +0000
// 

module RGB_to_YUV(R_COUNT, R_SEND, Y_RDY, U_SEND, V_RDY, R_ACK, V_DATA, V_COUNT, Y_COUNT, U_ACK, U_RDY, V_ACK, G_COUNT, G_ACK, Y_DATA, B_DATA, CLK, RESET, V_SEND, B_COUNT, B_ACK, U_COUNT, Y_ACK, U_DATA, R_DATA, B_SEND, Y_SEND, G_SEND, G_DATA);
input	[15:0]	R_COUNT;
input		R_SEND;
input		Y_RDY;
output		U_SEND;
wire		untagged_0_go;
input		V_RDY;
output		R_ACK;
output	[7:0]	V_DATA;
output	[15:0]	V_COUNT;
output	[15:0]	Y_COUNT;
input		U_ACK;
input		U_RDY;
input		V_ACK;
input	[15:0]	G_COUNT;
output		G_ACK;
output	[7:0]	Y_DATA;
input	[7:0]	B_DATA;
input		CLK;
input		RESET;
output		V_SEND;
input	[15:0]	B_COUNT;
output		B_ACK;
output	[15:0]	U_COUNT;
input		Y_ACK;
output	[7:0]	U_DATA;
input	[7:0]	R_DATA;
input		B_SEND;
output		Y_SEND;
wire		untagged_0_done;
input		G_SEND;
input	[7:0]	G_DATA;
wire		bus_00ea04da_;
wire	[7:0]	untagged_0_u242;
wire		RGB_to_YUV_untagged_0_instance_DONE;
wire		untagged_0_u238;
wire		untagged_0_u241;
wire		untagged_0_u235;
wire	[15:0]	untagged_0;
wire		untagged_0_u240;
wire	[7:0]	untagged_0_u243;
wire	[15:0]	untagged_0_u239;
wire		untagged_0_u236;
wire		untagged_0_u237;
wire	[7:0]	untagged_0_u244;
wire	[15:0]	untagged_0_u234;
wire		bus_01e2772e_;
wire		scheduler;
wire		RGB_to_YUV_scheduler_instance_DONE;
wire		bus_00611f31_;
assign U_SEND=untagged_0_u238;
assign untagged_0_go=scheduler;
assign R_ACK=untagged_0_u241;
assign V_DATA=untagged_0_u244;
assign V_COUNT=untagged_0_u234;
assign Y_COUNT=untagged_0;
assign G_ACK=untagged_0_u240;
assign Y_DATA=untagged_0_u242;
assign V_SEND=untagged_0_u236;
assign B_ACK=untagged_0_u237;
assign U_COUNT=untagged_0_u239;
assign U_DATA=untagged_0_u243;
assign Y_SEND=untagged_0_u235;
assign untagged_0_done=bus_00ea04da_;
assign bus_00ea04da_=RGB_to_YUV_untagged_0_instance_DONE&{1{RGB_to_YUV_untagged_0_instance_DONE}};
RGB_to_YUV_untagged_0 RGB_to_YUV_untagged_0_instance(.CLK(CLK), .GO(untagged_0_go), 
  .port_010560bb_(R_DATA), .port_0002e51f_(G_DATA), .port_019a7d5a_(B_DATA), .RESULT_u2084(untagged_0), 
  .RESULT(untagged_0_u234), .RESULT_u2086(untagged_0_u235), .RESULT_u2085(untagged_0_u236), 
  .RESULT_u2088(untagged_0_u237), .RESULT_u2087(untagged_0_u238), .RESULT_u2089(untagged_0_u239), 
  .RESULT_u2090(untagged_0_u240), .RESULT_u2092(untagged_0_u241), .RESULT_u2091(untagged_0_u242), 
  .RESULT_u2094(untagged_0_u243), .RESULT_u2093(untagged_0_u244), .DONE(RGB_to_YUV_untagged_0_instance_DONE));
RGB_to_YUV_Kicker_61 RGB_to_YUV_Kicker_61_1(.CLK(CLK), .RESET(bus_00611f31_), .bus_01e2772e_(bus_01e2772e_));
RGB_to_YUV_scheduler RGB_to_YUV_scheduler_instance(.CLK(CLK), .RESET(bus_00611f31_), 
  .GO(bus_01e2772e_), .port_0064de5d_(B_SEND), .port_01ad55c7_(R_SEND), .port_019a93d2_(U_RDY), 
  .port_008031eb_(Y_RDY), .port_01ded2d0_(untagged_0_done), .port_007035d1_(G_SEND), 
  .port_008a2f18_(V_RDY), .RESULT(scheduler), .DONE(RGB_to_YUV_scheduler_instance_DONE));
RGB_to_YUV_globalreset_physical_001440a0_ RGB_to_YUV_globalreset_physical_001440a0__1(.bus_013eadf2_(CLK), 
  .bus_003ee12a_(RESET), .bus_00611f31_(bus_00611f31_));
endmodule



module RGB_to_YUV_untagged_0(CLK, GO, port_010560bb_, port_0002e51f_, port_019a7d5a_, RESULT, RESULT_u2084, RESULT_u2085, RESULT_u2086, RESULT_u2087, RESULT_u2088, RESULT_u2089, RESULT_u2090, RESULT_u2091, RESULT_u2092, RESULT_u2093, RESULT_u2094, DONE);
input		CLK;
input		GO;
input	[7:0]	port_010560bb_;
input	[7:0]	port_0002e51f_;
input	[7:0]	port_019a7d5a_;
output	[15:0]	RESULT;
output	[15:0]	RESULT_u2084;
output		RESULT_u2085;
output		RESULT_u2086;
output		RESULT_u2087;
output		RESULT_u2088;
output	[15:0]	RESULT_u2089;
output		RESULT_u2090;
output	[7:0]	RESULT_u2091;
output		RESULT_u2092;
output	[7:0]	RESULT_u2093;
output	[7:0]	RESULT_u2094;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u749;
wire		simplePinWrite_u750;
wire	[14:0]	add;
wire	[15:0]	add_u1200;
wire	[16:0]	add_u1201;
wire	[12:0]	add_u1202;
wire	[12:0]	add_u1203;
wire	[17:0]	add_u1204;
wire	[18:0]	add_u1205;
wire	[19:0]	add_u1206;
wire signed	[14:0]	multiply_a_signed;
wire signed	[14:0]	multiply_b_signed;
wire	[14:0]	multiply;
wire	[14:0]	add_u1207;
wire	[14:0]	add_u1208;
wire	[15:0]	subtract;
wire	[14:0]	subtract_u96;
wire	[16:0]	add_u1209;
wire	[17:0]	add_u1210;
wire	[18:0]	add_u1211;
wire	[14:0]	subtract_u97;
wire	[14:0]	subtract_u98;
wire	[14:0]	subtract_u99;
wire	[15:0]	subtract_u100;
wire	[12:0]	add_u1212;
wire	[15:0]	subtract_u101;
wire	[16:0]	add_u1213;
wire	[17:0]	add_u1214;
wire		greaterThan;
wire signed	[31:0]	greaterThan_b_signed;
wire signed	[31:0]	greaterThan_a_signed;
wire		and_u2820_u0;
wire		not_u589_u0;
wire		and_u2821_u0;
wire		lessThan;
wire signed	[31:0]	lessThan_b_signed;
wire signed	[31:0]	lessThan_a_signed;
wire		and_u2822_u0;
wire		not_u590_u0;
wire		and_u2823_u0;
wire		and_u2824_u0;
wire		and_u2825_u0;
wire	[7:0]	mux_u526;
wire		and_u2826_u0;
wire		and_u2827_u0;
wire	[7:0]	mux_u527_u0;
wire signed	[31:0]	greaterThan_u38_a_signed;
wire		greaterThan_u38;
wire signed	[31:0]	greaterThan_u38_b_signed;
wire		and_u2828_u0;
wire		not_u591_u0;
wire		and_u2829_u0;
wire signed	[31:0]	lessThan_u38_a_signed;
wire		lessThan_u38;
wire signed	[31:0]	lessThan_u38_b_signed;
wire		not_u592_u0;
wire		and_u2830_u0;
wire		and_u2831_u0;
wire	[7:0]	mux_u528_u0;
wire		and_u2832_u0;
wire		and_u2833_u0;
wire		and_u2834_u0;
wire		and_u2835_u0;
wire	[7:0]	mux_u529_u0;
wire signed	[31:0]	greaterThan_u39_a_signed;
wire signed	[31:0]	greaterThan_u39_b_signed;
wire		greaterThan_u39;
wire		and_u2836_u0;
wire		not_u593_u0;
wire		and_u2837_u0;
wire signed	[31:0]	lessThan_u39_a_signed;
wire signed	[31:0]	lessThan_u39_b_signed;
wire		lessThan_u39;
wire		and_u2838_u0;
wire		not_u594_u0;
wire		and_u2839_u0;
wire		and_u2840_u0;
wire	[7:0]	mux_u530_u0;
wire		and_u2841_u0;
wire		and_u2842_u0;
wire		and_u2843_u0;
wire	[7:0]	mux_u531_u0;
wire		simplePinWrite_u751;
wire	[15:0]	simplePinWrite_u752;
wire	[7:0]	simplePinWrite_u753;
wire		simplePinWrite_u754;
wire	[15:0]	simplePinWrite_u755;
wire	[7:0]	simplePinWrite_u756;
wire		simplePinWrite_u757;
wire	[7:0]	simplePinWrite_u758;
wire	[15:0]	simplePinWrite_u759;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u749=GO&{1{GO}};
assign simplePinWrite_u750=GO&{1{GO}};
assign add={1'b0, port_010560bb_, 6'b0}+{6'b0, port_010560bb_, 1'b0};
assign add_u1200={1'b0, port_0002e51f_, 7'b0}+{8'b0, port_0002e51f_};
assign add_u1201={2'b0, add[14:1], 1'b0}+{1'b0, add_u1200};
assign add_u1202={1'b0, port_019a7d5a_, 4'b0}+{2'b0, port_019a7d5a_, 3'b0};
assign add_u1203={add_u1202[12:3], 3'b0}+{5'b0, port_019a7d5a_};
assign add_u1204={1'b0, add_u1201}+{5'b0, add_u1203};
assign add_u1205={1'b0, add_u1204}+19'h80;
assign add_u1206={9'b0, add_u1205[18:8]}+20'h10;
assign multiply_a_signed=15'h7fda;
assign multiply_b_signed={7'b0, port_010560bb_};
assign multiply=multiply_a_signed*multiply_b_signed;
assign add_u1207={1'b0, port_0002e51f_, 6'b0}+{4'b0, port_0002e51f_, 3'b0};
assign add_u1208={add_u1207[14:3], 3'b0}+{6'b0, port_0002e51f_, 1'b0};
assign subtract={multiply[14], multiply}-{1'b0, add_u1208[14:1], 1'b0};
assign subtract_u96={port_019a7d5a_, 7'b0}-{3'b0, port_019a7d5a_, 4'b0};
assign add_u1209={subtract[15], subtract}+{2'b0, subtract_u96};
assign add_u1210={add_u1209[16], add_u1209}+18'h80;
assign add_u1211={add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17], add_u1210[17:8]}+19'h80;
assign subtract_u97={port_010560bb_, 7'b0}-{3'b0, port_010560bb_, 4'b0};
assign subtract_u98={port_0002e51f_, 7'b0}-{2'b0, port_0002e51f_, 5'b0};
assign subtract_u99=subtract_u98-{6'b0, port_0002e51f_, 1'b0};
assign subtract_u100={1'b0, subtract_u97}-{1'b0, subtract_u99};
assign add_u1212={1'b0, port_019a7d5a_, 4'b0}+{4'b0, port_019a7d5a_, 1'b0};
assign subtract_u101=subtract_u100-{3'b0, add_u1212[12:1], 1'b0};
assign add_u1213={subtract_u101[15], subtract_u101}+17'h80;
assign add_u1214={add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16], add_u1213[16:8]}+18'h80;
assign greaterThan_a_signed={12'b0, add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12:0]};
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign and_u2820_u0=GO&greaterThan;
assign not_u589_u0=~greaterThan;
assign and_u2821_u0=GO&not_u589_u0;
assign lessThan_a_signed={12'b0, add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12], add_u1206[12:0]};
assign lessThan_b_signed=32'hff;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u2822_u0=and_u2826_u0&lessThan;
assign not_u590_u0=~lessThan;
assign and_u2823_u0=and_u2826_u0&not_u590_u0;
assign and_u2824_u0=and_u2822_u0&and_u2826_u0;
assign and_u2825_u0=and_u2823_u0&and_u2826_u0;
assign mux_u526=(and_u2824_u0)?add_u1206[7:0]:8'hff;
assign and_u2826_u0=and_u2820_u0&GO;
assign and_u2827_u0=and_u2821_u0&GO;
assign mux_u527_u0=(and_u2826_u0)?mux_u526:8'h0;
assign greaterThan_u38_a_signed={add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10:0]};
assign greaterThan_u38_b_signed=32'h0;
assign greaterThan_u38=greaterThan_u38_a_signed>greaterThan_u38_b_signed;
assign and_u2828_u0=GO&greaterThan_u38;
assign not_u591_u0=~greaterThan_u38;
assign and_u2829_u0=GO&not_u591_u0;
assign lessThan_u38_a_signed={add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10], add_u1211[10:0]};
assign lessThan_u38_b_signed=32'hff;
assign lessThan_u38=lessThan_u38_a_signed<lessThan_u38_b_signed;
assign not_u592_u0=~lessThan_u38;
assign and_u2830_u0=and_u2835_u0&lessThan_u38;
assign and_u2831_u0=and_u2835_u0&not_u592_u0;
assign mux_u528_u0=(and_u2833_u0)?add_u1211[7:0]:8'hff;
assign and_u2832_u0=and_u2831_u0&and_u2835_u0;
assign and_u2833_u0=and_u2830_u0&and_u2835_u0;
assign and_u2834_u0=and_u2829_u0&GO;
assign and_u2835_u0=and_u2828_u0&GO;
assign mux_u529_u0=(and_u2835_u0)?mux_u528_u0:8'h0;
assign greaterThan_u39_a_signed={add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9:0]};
assign greaterThan_u39_b_signed=32'h0;
assign greaterThan_u39=greaterThan_u39_a_signed>greaterThan_u39_b_signed;
assign and_u2836_u0=GO&greaterThan_u39;
assign not_u593_u0=~greaterThan_u39;
assign and_u2837_u0=GO&not_u593_u0;
assign lessThan_u39_a_signed={add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9], add_u1214[9:0]};
assign lessThan_u39_b_signed=32'hff;
assign lessThan_u39=lessThan_u39_a_signed<lessThan_u39_b_signed;
assign and_u2838_u0=and_u2842_u0&not_u594_u0;
assign not_u594_u0=~lessThan_u39;
assign and_u2839_u0=and_u2842_u0&lessThan_u39;
assign and_u2840_u0=and_u2839_u0&and_u2842_u0;
assign mux_u530_u0=(and_u2841_u0)?8'hff:add_u1214[7:0];
assign and_u2841_u0=and_u2838_u0&and_u2842_u0;
assign and_u2842_u0=and_u2836_u0&GO;
assign and_u2843_u0=and_u2837_u0&GO;
assign mux_u531_u0=(and_u2842_u0)?mux_u530_u0:8'h0;
assign simplePinWrite_u751=GO&{1{GO}};
assign simplePinWrite_u752=16'h1&{16{1'h1}};
assign simplePinWrite_u753=mux_u527_u0;
assign simplePinWrite_u754=GO&{1{GO}};
assign simplePinWrite_u755=16'h1&{16{1'h1}};
assign simplePinWrite_u756=mux_u529_u0;
assign simplePinWrite_u757=GO&{1{GO}};
assign simplePinWrite_u758=mux_u531_u0;
assign simplePinWrite_u759=16'h1&{16{1'h1}};
assign RESULT=simplePinWrite_u759;
assign RESULT_u2084=simplePinWrite_u752;
assign RESULT_u2085=simplePinWrite_u757;
assign RESULT_u2086=simplePinWrite_u751;
assign RESULT_u2087=simplePinWrite_u754;
assign RESULT_u2088=simplePinWrite_u750;
assign RESULT_u2089=simplePinWrite_u755;
assign RESULT_u2090=simplePinWrite_u749;
assign RESULT_u2091=simplePinWrite_u753;
assign RESULT_u2092=simplePinWrite;
assign RESULT_u2093=simplePinWrite_u758;
assign RESULT_u2094=simplePinWrite_u756;
assign DONE=GO;
endmodule



module RGB_to_YUV_Kicker_61(CLK, RESET, bus_01e2772e_);
input		CLK;
input		RESET;
output		bus_01e2772e_;
reg		kicker_2=1'h0;
reg		kicker_1=1'h0;
wire		bus_00b19087_;
wire		bus_012ee9fb_;
reg		kicker_res=1'h0;
wire		bus_01e4820c_;
wire		bus_014959f2_;
assign bus_01e2772e_=kicker_res;
always @(posedge CLK)
begin
kicker_2<=bus_014959f2_;
end
always @(posedge CLK)
begin
kicker_1<=bus_012ee9fb_;
end
assign bus_00b19087_=kicker_1&bus_012ee9fb_&bus_01e4820c_;
assign bus_012ee9fb_=~RESET;
always @(posedge CLK)
begin
kicker_res<=bus_00b19087_;
end
assign bus_01e4820c_=~kicker_2;
assign bus_014959f2_=bus_012ee9fb_&kicker_1;
endmodule



module RGB_to_YUV_scheduler(CLK, RESET, GO, port_01ad55c7_, port_0064de5d_, port_019a93d2_, port_008031eb_, port_01ded2d0_, port_007035d1_, port_008a2f18_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_01ad55c7_;
input		port_0064de5d_;
input		port_019a93d2_;
input		port_008031eb_;
input		port_01ded2d0_;
input		port_007035d1_;
input		port_008a2f18_;
output		RESULT;
output		DONE;
wire		and_u2844_u0;
wire		and_u2845_u0;
wire		and_u2846_u0;
wire		and_u2847_u0;
wire		and_u2848_u0;
wire		not_u595_u0;
wire		and_u2849_u0;
wire		and_u2850_u0;
wire		not_u596_u0;
wire		and_u2851_u0;
wire		and_u2852_u0;
wire		simplePinWrite;
wire		and_u2853_u0;
wire		and_u2854_u0;
wire		or_u782_u0;
reg		loopControl_u45=1'h0;
assign and_u2844_u0=or_u782_u0&or_u782_u0;
assign and_u2845_u0=port_01ad55c7_&port_007035d1_;
assign and_u2846_u0=and_u2845_u0&port_0064de5d_;
assign and_u2847_u0=port_008031eb_&port_019a93d2_;
assign and_u2848_u0=and_u2847_u0&port_008a2f18_;
assign not_u595_u0=~and_u2846_u0;
assign and_u2849_u0=and_u2844_u0&and_u2846_u0;
assign and_u2850_u0=and_u2844_u0&not_u595_u0;
assign not_u596_u0=~and_u2848_u0;
assign and_u2851_u0=and_u2854_u0&and_u2848_u0;
assign and_u2852_u0=and_u2854_u0&not_u596_u0;
assign simplePinWrite=and_u2853_u0&{1{and_u2853_u0}};
assign and_u2853_u0=and_u2851_u0&and_u2854_u0;
assign and_u2854_u0=and_u2849_u0&and_u2844_u0;
assign or_u782_u0=GO|loopControl_u45;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u45<=1'h0;
else loopControl_u45<=and_u2844_u0;
end
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module RGB_to_YUV_globalreset_physical_001440a0_(bus_013eadf2_, bus_003ee12a_, bus_00611f31_);
input		bus_013eadf2_;
input		bus_003ee12a_;
output		bus_00611f31_;
reg		final_u61=1'h1;
wire		not_01419790_u0;
wire		and_01172e6e_u0;
reg		cross_u61=1'h0;
reg		sample_u61=1'h0;
wire		or_00308e93_u0;
reg		glitch_u61=1'h0;
always @(posedge bus_013eadf2_)
begin
final_u61<=not_01419790_u0;
end
assign not_01419790_u0=~and_01172e6e_u0;
assign and_01172e6e_u0=cross_u61&glitch_u61;
always @(posedge bus_013eadf2_)
begin
cross_u61<=sample_u61;
end
always @(posedge bus_013eadf2_)
begin
sample_u61<=1'h1;
end
assign bus_00611f31_=or_00308e93_u0;
assign or_00308e93_u0=bus_003ee12a_|final_u61;
always @(posedge bus_013eadf2_)
begin
glitch_u61<=cross_u61;
end
endmodule


