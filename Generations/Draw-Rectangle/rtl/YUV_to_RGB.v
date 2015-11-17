// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Tue 17 Nov 2015 18:39:11 +0000
// 

module YUV_to_RGB(B_COUNT, G_DATA, Y_DATA, B_SEND, G_SEND, R_RDY, Y_SEND, RESET, B_ACK, V_COUNT, B_DATA, B_RDY, V_ACK, G_COUNT, R_COUNT, CLK, R_ACK, U_ACK, Y_COUNT, R_DATA, G_ACK, Y_ACK, V_DATA, U_DATA, G_RDY, U_SEND, V_SEND, R_SEND, U_COUNT);
output	[15:0]	B_COUNT;
output	[7:0]	G_DATA;
input	[7:0]	Y_DATA;
output		B_SEND;
output		G_SEND;
input		R_RDY;
input		Y_SEND;
input		RESET;
wire		untagged_0_done;
input		B_ACK;
input	[15:0]	V_COUNT;
output	[7:0]	B_DATA;
input		B_RDY;
output		V_ACK;
output	[15:0]	G_COUNT;
output	[15:0]	R_COUNT;
input		CLK;
input		R_ACK;
output		U_ACK;
input	[15:0]	Y_COUNT;
output	[7:0]	R_DATA;
input		G_ACK;
output		Y_ACK;
input	[7:0]	V_DATA;
input	[7:0]	U_DATA;
input		G_RDY;
wire		untagged_0_go;
input		U_SEND;
input		V_SEND;
output		R_SEND;
input	[15:0]	U_COUNT;
wire		bus_00375249_;
wire		scheduler;
wire		YUV_to_RGB_scheduler_instance_DONE;
wire		bus_0096757f_;
wire		bus_00cc3505_;
wire	[15:0]	untagged_0;
wire		untagged_0_u230;
wire		YUV_to_RGB_untagged_0_instance_DONE;
wire	[15:0]	untagged_0_u232;
wire	[15:0]	untagged_0_u229;
wire	[7:0]	untagged_0_u227;
wire		untagged_0_u228;
wire	[7:0]	untagged_0_u225;
wire		untagged_0_u231;
wire		untagged_0_u224;
wire		untagged_0_u233;
wire	[7:0]	untagged_0_u223;
wire		untagged_0_u226;
assign B_COUNT=untagged_0;
assign G_DATA=untagged_0_u223;
assign B_SEND=untagged_0_u224;
assign G_SEND=untagged_0_u230;
assign untagged_0_done=bus_00375249_;
assign B_DATA=untagged_0_u225;
assign V_ACK=untagged_0_u226;
assign G_COUNT=untagged_0_u229;
assign R_COUNT=untagged_0_u232;
assign U_ACK=untagged_0_u233;
assign R_DATA=untagged_0_u227;
assign Y_ACK=untagged_0_u231;
assign untagged_0_go=scheduler;
assign R_SEND=untagged_0_u228;
assign bus_00375249_=YUV_to_RGB_untagged_0_instance_DONE&{1{YUV_to_RGB_untagged_0_instance_DONE}};
YUV_to_RGB_scheduler YUV_to_RGB_scheduler_instance(.CLK(CLK), .RESET(bus_0096757f_), 
  .GO(bus_00cc3505_), .port_00762f04_(untagged_0_done), .port_01ae09ba_(G_RDY), 
  .port_00bf100e_(B_RDY), .port_01250c68_(U_SEND), .port_019e385f_(V_SEND), .port_01231e83_(R_RDY), 
  .port_01432b96_(Y_SEND), .RESULT(scheduler), .DONE(YUV_to_RGB_scheduler_instance_DONE));
YUV_to_RGB_globalreset_physical_00db1e06_ YUV_to_RGB_globalreset_physical_00db1e06__1(.bus_015da396_(CLK), 
  .bus_00a2d04e_(RESET), .bus_0096757f_(bus_0096757f_));
YUV_to_RGB_Kicker_58 YUV_to_RGB_Kicker_58_1(.CLK(CLK), .RESET(bus_0096757f_), .bus_00cc3505_(bus_00cc3505_));
YUV_to_RGB_untagged_0 YUV_to_RGB_untagged_0_instance(.CLK(CLK), .GO(untagged_0_go), 
  .port_00596782_(U_DATA), .port_00c0c56d_(Y_DATA), .port_01f29ac4_(V_DATA), .RESULT(untagged_0), 
  .RESULT_u1986(untagged_0_u223), .RESULT_u1988(untagged_0_u224), .RESULT_u1987(untagged_0_u225), 
  .RESULT_u1990(untagged_0_u226), .RESULT_u1989(untagged_0_u227), .RESULT_u1993(untagged_0_u228), 
  .RESULT_u1992(untagged_0_u229), .RESULT_u1991(untagged_0_u230), .RESULT_u1995(untagged_0_u231), 
  .RESULT_u1994(untagged_0_u232), .RESULT_u1996(untagged_0_u233), .DONE(YUV_to_RGB_untagged_0_instance_DONE));
endmodule



module YUV_to_RGB_scheduler(CLK, RESET, GO, port_00762f04_, port_01ae09ba_, port_00bf100e_, port_01250c68_, port_019e385f_, port_01231e83_, port_01432b96_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_00762f04_;
input		port_01ae09ba_;
input		port_00bf100e_;
input		port_01250c68_;
input		port_019e385f_;
input		port_01231e83_;
input		port_01432b96_;
output		RESULT;
output		DONE;
wire		and_u2682_u0;
wire		and_u2683_u0;
wire		and_u2684_u0;
wire		and_u2685_u0;
wire		and_u2686_u0;
wire		and_u2687_u0;
wire		and_u2688_u0;
wire		not_u558_u0;
wire		and_u2689_u0;
wire		and_u2690_u0;
wire		not_u559_u0;
wire		simplePinWrite;
wire		and_u2691_u0;
wire		and_u2692_u0;
reg		loopControl_u42=1'h0;
wire		or_u755_u0;
assign and_u2682_u0=or_u755_u0&or_u755_u0;
assign and_u2683_u0=port_01432b96_&port_01250c68_;
assign and_u2684_u0=and_u2683_u0&port_019e385f_;
assign and_u2685_u0=port_01231e83_&port_01ae09ba_;
assign and_u2686_u0=and_u2685_u0&port_00bf100e_;
assign and_u2687_u0=and_u2682_u0&and_u2684_u0;
assign and_u2688_u0=and_u2682_u0&not_u558_u0;
assign not_u558_u0=~and_u2684_u0;
assign and_u2689_u0=and_u2692_u0&and_u2686_u0;
assign and_u2690_u0=and_u2692_u0&not_u559_u0;
assign not_u559_u0=~and_u2686_u0;
assign simplePinWrite=and_u2691_u0&{1{and_u2691_u0}};
assign and_u2691_u0=and_u2689_u0&and_u2692_u0;
assign and_u2692_u0=and_u2687_u0&and_u2682_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u42<=1'h0;
else loopControl_u42<=and_u2682_u0;
end
assign or_u755_u0=GO|loopControl_u42;
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module YUV_to_RGB_globalreset_physical_00db1e06_(bus_015da396_, bus_00a2d04e_, bus_0096757f_);
input		bus_015da396_;
input		bus_00a2d04e_;
output		bus_0096757f_;
reg		final_u58=1'h1;
wire		not_012b0af5_u0;
wire		and_01264c8c_u0;
reg		glitch_u58=1'h0;
reg		sample_u58=1'h0;
reg		cross_u58=1'h0;
wire		or_0119b96a_u0;
always @(posedge bus_015da396_)
begin
final_u58<=not_012b0af5_u0;
end
assign not_012b0af5_u0=~and_01264c8c_u0;
assign and_01264c8c_u0=cross_u58&glitch_u58;
always @(posedge bus_015da396_)
begin
glitch_u58<=cross_u58;
end
always @(posedge bus_015da396_)
begin
sample_u58<=1'h1;
end
assign bus_0096757f_=or_0119b96a_u0;
always @(posedge bus_015da396_)
begin
cross_u58<=sample_u58;
end
assign or_0119b96a_u0=bus_00a2d04e_|final_u58;
endmodule



module YUV_to_RGB_Kicker_58(CLK, RESET, bus_00cc3505_);
input		CLK;
input		RESET;
output		bus_00cc3505_;
reg		kicker_2=1'h0;
wire		bus_0184d029_;
wire		bus_01b9864a_;
reg		kicker_res=1'h0;
wire		bus_01b9ca2a_;
reg		kicker_1=1'h0;
wire		bus_01ffcc2a_;
always @(posedge CLK)
begin
kicker_2<=bus_01b9864a_;
end
assign bus_0184d029_=kicker_1&bus_01ffcc2a_&bus_01b9ca2a_;
assign bus_01b9864a_=bus_01ffcc2a_&kicker_1;
always @(posedge CLK)
begin
kicker_res<=bus_0184d029_;
end
assign bus_01b9ca2a_=~kicker_2;
always @(posedge CLK)
begin
kicker_1<=bus_01ffcc2a_;
end
assign bus_00cc3505_=kicker_res;
assign bus_01ffcc2a_=~RESET;
endmodule



module YUV_to_RGB_untagged_0(CLK, GO, port_00596782_, port_00c0c56d_, port_01f29ac4_, RESULT, RESULT_u1986, RESULT_u1987, RESULT_u1988, RESULT_u1989, RESULT_u1990, RESULT_u1991, RESULT_u1992, RESULT_u1993, RESULT_u1994, RESULT_u1995, RESULT_u1996, DONE);
input		CLK;
input		GO;
input	[7:0]	port_00596782_;
input	[7:0]	port_00c0c56d_;
input	[7:0]	port_01f29ac4_;
output	[15:0]	RESULT;
output	[7:0]	RESULT_u1986;
output	[7:0]	RESULT_u1987;
output		RESULT_u1988;
output	[7:0]	RESULT_u1989;
output		RESULT_u1990;
output		RESULT_u1991;
output	[15:0]	RESULT_u1992;
output		RESULT_u1993;
output	[15:0]	RESULT_u1994;
output		RESULT_u1995;
output		RESULT_u1996;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u714;
wire		simplePinWrite_u715;
wire	[8:0]	subtract;
wire	[8:0]	subtract_u92;
wire	[8:0]	subtract_u93;
wire	[39:0]	add;
wire	[39:0]	add_u1168;
wire	[39:0]	add_u1169;
wire	[39:0]	add_u1170;
wire	[39:0]	add_u1171;
wire	[39:0]	add_u1172;
wire	[39:0]	add_u1173;
wire	[39:0]	add_u1174;
wire	[39:0]	add_u1175;
wire	[39:0]	add_u1176;
wire	[39:0]	add_u1177;
wire	[39:0]	add_u1178;
wire	[39:0]	add_u1179;
wire	[39:0]	add_u1180;
wire	[39:0]	subtract_u94;
wire	[39:0]	add_u1181;
wire	[39:0]	add_u1182;
wire	[39:0]	subtract_u95;
wire	[39:0]	add_u1183;
wire	[39:0]	add_u1184;
wire	[39:0]	add_u1185;
wire	[39:0]	add_u1186;
wire	[39:0]	add_u1187;
wire	[39:0]	add_u1188;
wire	[39:0]	add_u1189;
wire		greaterThan;
wire signed	[31:0]	greaterThan_a_signed;
wire signed	[31:0]	greaterThan_b_signed;
wire		not_u560_u0;
wire		and_u2693_u0;
wire		and_u2694_u0;
wire signed	[31:0]	lessThan_b_signed;
wire		lessThan;
wire signed	[31:0]	lessThan_a_signed;
wire		and_u2695_u0;
wire		not_u561_u0;
wire		and_u2696_u0;
wire	[7:0]	mux_u504;
wire		and_u2697_u0;
wire		and_u2698_u0;
wire		and_u2699_u0;
wire		and_u2700_u0;
wire	[7:0]	mux_u505_u0;
wire signed	[31:0]	greaterThan_u36_a_signed;
wire		greaterThan_u36;
wire signed	[31:0]	greaterThan_u36_b_signed;
wire		and_u2701_u0;
wire		and_u2702_u0;
wire		not_u562_u0;
wire signed	[31:0]	lessThan_u36_a_signed;
wire signed	[31:0]	lessThan_u36_b_signed;
wire		lessThan_u36;
wire		and_u2703_u0;
wire		and_u2704_u0;
wire		not_u563_u0;
wire		and_u2705_u0;
wire	[7:0]	mux_u506_u0;
wire		and_u2706_u0;
wire		and_u2707_u0;
wire		and_u2708_u0;
wire	[7:0]	mux_u507_u0;
wire signed	[31:0]	greaterThan_u37_b_signed;
wire signed	[31:0]	greaterThan_u37_a_signed;
wire		greaterThan_u37;
wire		not_u564_u0;
wire		and_u2709_u0;
wire		and_u2710_u0;
wire signed	[31:0]	lessThan_u37_b_signed;
wire signed	[31:0]	lessThan_u37_a_signed;
wire		lessThan_u37;
wire		not_u565_u0;
wire		and_u2711_u0;
wire		and_u2712_u0;
wire		and_u2713_u0;
wire	[7:0]	mux_u508_u0;
wire		and_u2714_u0;
wire	[7:0]	mux_u509_u0;
wire		and_u2715_u0;
wire		and_u2716_u0;
wire	[7:0]	simplePinWrite_u716;
wire	[15:0]	simplePinWrite_u717;
wire		simplePinWrite_u718;
wire	[7:0]	simplePinWrite_u719;
wire		simplePinWrite_u720;
wire	[15:0]	simplePinWrite_u721;
wire	[7:0]	simplePinWrite_u722;
wire		simplePinWrite_u723;
wire	[15:0]	simplePinWrite_u724;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u714=GO&{1{GO}};
assign simplePinWrite_u715=GO&{1{GO}};
assign subtract={1'b0, port_00c0c56d_}-9'h10;
assign subtract_u92={1'b0, port_00596782_}-9'h80;
assign subtract_u93={1'b0, port_01f29ac4_}-9'h80;
assign add={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u1168={add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17], add[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u1169={add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18], add_u1168[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u1170={subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 8'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 7'b0};
assign add_u1171={add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17], add_u1170[17:7], 7'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 4'b0};
assign add_u1172={add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18], add_u1171[18:4], 4'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 3'b0};
assign add_u1173={add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19], add_u1172[19:3], 3'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93};
assign add_u1174={add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19], add_u1169[19:1], 1'b0}+{add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20], add_u1173[20:0]};
assign add_u1175={add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21], add_u1174[21:0]}+40'h80;
assign add_u1176={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u1177={add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17], add_u1176[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u1178={add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18], add_u1177[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u1179={subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 6'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 5'b0};
assign add_u1180={add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15], add_u1179[15:5], 5'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 2'b0};
assign subtract_u94={add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19], add_u1178[19:1], 1'b0}-{add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16], add_u1180[16:2], 2'b0};
assign add_u1181={subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 7'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 6'b0};
assign add_u1182={add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16], add_u1181[16:6], 6'b0}+{subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93[8], subtract_u93, 4'b0};
assign subtract_u95={subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20], subtract_u94[20:0]}-{add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17], add_u1182[17:4], 4'b0};
assign add_u1183={subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21], subtract_u95[21:0]}+40'h80;
assign add_u1184={subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 8'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 5'b0};
assign add_u1185={add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17], add_u1184[17:5], 5'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 3'b0};
assign add_u1186={add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18], add_u1185[18:3], 3'b0}+{subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract[8], subtract, 1'b0};
assign add_u1187={subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 9'b0}+{subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92[8], subtract_u92, 2'b0};
assign add_u1188={add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19], add_u1186[19:1], 1'b0}+{add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18], add_u1187[18:2], 2'b0};
assign add_u1189={add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20], add_u1188[20:1], 1'b0}+40'h80;
assign greaterThan_a_signed={add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22:8]};
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign not_u560_u0=~greaterThan;
assign and_u2693_u0=GO&not_u560_u0;
assign and_u2694_u0=GO&greaterThan;
assign lessThan_a_signed={add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22], add_u1175[22:8]};
assign lessThan_b_signed=32'hff;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u2695_u0=and_u2700_u0&lessThan;
assign not_u561_u0=~lessThan;
assign and_u2696_u0=and_u2700_u0&not_u561_u0;
assign mux_u504=(and_u2697_u0)?8'hff:add_u1175[15:8];
assign and_u2697_u0=and_u2696_u0&and_u2700_u0;
assign and_u2698_u0=and_u2695_u0&and_u2700_u0;
assign and_u2699_u0=and_u2693_u0&GO;
assign and_u2700_u0=and_u2694_u0&GO;
assign mux_u505_u0=(and_u2700_u0)?mux_u504:8'h0;
assign greaterThan_u36_a_signed={add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22:8]};
assign greaterThan_u36_b_signed=32'h0;
assign greaterThan_u36=greaterThan_u36_a_signed>greaterThan_u36_b_signed;
assign and_u2701_u0=GO&not_u562_u0;
assign and_u2702_u0=GO&greaterThan_u36;
assign not_u562_u0=~greaterThan_u36;
assign lessThan_u36_a_signed={add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22], add_u1183[22:8]};
assign lessThan_u36_b_signed=32'hff;
assign lessThan_u36=lessThan_u36_a_signed<lessThan_u36_b_signed;
assign and_u2703_u0=and_u2707_u0&lessThan_u36;
assign and_u2704_u0=and_u2707_u0&not_u563_u0;
assign not_u563_u0=~lessThan_u36;
assign and_u2705_u0=and_u2703_u0&and_u2707_u0;
assign mux_u506_u0=(and_u2706_u0)?8'hff:add_u1183[15:8];
assign and_u2706_u0=and_u2704_u0&and_u2707_u0;
assign and_u2707_u0=and_u2702_u0&GO;
assign and_u2708_u0=and_u2701_u0&GO;
assign mux_u507_u0=(and_u2707_u0)?mux_u506_u0:8'h0;
assign greaterThan_u37_a_signed={add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21:8]};
assign greaterThan_u37_b_signed=32'h0;
assign greaterThan_u37=greaterThan_u37_a_signed>greaterThan_u37_b_signed;
assign not_u564_u0=~greaterThan_u37;
assign and_u2709_u0=GO&not_u564_u0;
assign and_u2710_u0=GO&greaterThan_u37;
assign lessThan_u37_a_signed={add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21], add_u1189[21:8]};
assign lessThan_u37_b_signed=32'hff;
assign lessThan_u37=lessThan_u37_a_signed<lessThan_u37_b_signed;
assign not_u565_u0=~lessThan_u37;
assign and_u2711_u0=and_u2716_u0&not_u565_u0;
assign and_u2712_u0=and_u2716_u0&lessThan_u37;
assign and_u2713_u0=and_u2712_u0&and_u2716_u0;
assign mux_u508_u0=(and_u2713_u0)?add_u1189[15:8]:8'hff;
assign and_u2714_u0=and_u2711_u0&and_u2716_u0;
assign mux_u509_u0=(and_u2716_u0)?mux_u508_u0:8'h0;
assign and_u2715_u0=and_u2709_u0&GO;
assign and_u2716_u0=and_u2710_u0&GO;
assign simplePinWrite_u716=mux_u505_u0;
assign simplePinWrite_u717=16'h1&{16{1'h1}};
assign simplePinWrite_u718=GO&{1{GO}};
assign simplePinWrite_u719=mux_u507_u0;
assign simplePinWrite_u720=GO&{1{GO}};
assign simplePinWrite_u721=16'h1&{16{1'h1}};
assign simplePinWrite_u722=mux_u509_u0;
assign simplePinWrite_u723=GO&{1{GO}};
assign simplePinWrite_u724=16'h1&{16{1'h1}};
assign RESULT=simplePinWrite_u724;
assign RESULT_u1986=simplePinWrite_u719;
assign RESULT_u1987=simplePinWrite_u722;
assign RESULT_u1988=simplePinWrite_u723;
assign RESULT_u1989=simplePinWrite_u716;
assign RESULT_u1990=simplePinWrite_u715;
assign RESULT_u1991=simplePinWrite_u720;
assign RESULT_u1992=simplePinWrite_u721;
assign RESULT_u1993=simplePinWrite_u718;
assign RESULT_u1994=simplePinWrite_u717;
assign RESULT_u1995=simplePinWrite;
assign RESULT_u1996=simplePinWrite_u714;
assign DONE=GO;
endmodule


