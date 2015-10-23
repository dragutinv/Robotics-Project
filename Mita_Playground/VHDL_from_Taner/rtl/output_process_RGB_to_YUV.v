// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:48 +0100
// 

module output_process_RGB_to_YUV(V_COUNT, U_ACK, Y_DATA, B_SEND, R_COUNT, V_ACK, R_DATA, Y_RDY, R_ACK, G_ACK, G_DATA, V_SEND, U_DATA, B_ACK, V_DATA, U_RDY, U_COUNT, RESET, U_SEND, Y_COUNT, R_SEND, CLK, G_COUNT, B_DATA, G_SEND, V_RDY, Y_SEND, B_COUNT, Y_ACK);
output	[15:0]	V_COUNT;
input		U_ACK;
output	[7:0]	Y_DATA;
input		B_SEND;
input	[15:0]	R_COUNT;
input		V_ACK;
input	[7:0]	R_DATA;
input		Y_RDY;
wire		untagged_0_go;
output		R_ACK;
output		G_ACK;
input	[7:0]	G_DATA;
output		V_SEND;
output	[7:0]	U_DATA;
output		B_ACK;
output	[7:0]	V_DATA;
input		U_RDY;
output	[15:0]	U_COUNT;
input		RESET;
output		U_SEND;
output	[15:0]	Y_COUNT;
input		R_SEND;
input		CLK;
input	[15:0]	G_COUNT;
input	[7:0]	B_DATA;
input		G_SEND;
input		V_RDY;
wire		untagged_0_done;
output		Y_SEND;
input	[15:0]	B_COUNT;
input		Y_ACK;
wire		bus_018baf06_;
wire		scheduler;
wire		output_process_RGB_to_YUV_scheduler_instance_DONE;
wire		bus_0080466a_;
wire		untagged_0;
wire		untagged_0_u38;
wire	[15:0]	untagged_0_u35;
wire	[15:0]	untagged_0_u36;
wire	[7:0]	untagged_0_u37;
wire		untagged_0_u41;
wire		output_process_RGB_to_YUV_untagged_0_instance_DONE;
wire	[7:0]	untagged_0_u42;
wire		untagged_0_u39;
wire		untagged_0_u34;
wire		untagged_0_u43;
wire	[7:0]	untagged_0_u33;
wire	[15:0]	untagged_0_u40;
wire		bus_004b948f_;
assign V_COUNT=untagged_0_u36;
assign Y_DATA=untagged_0_u37;
assign untagged_0_go=scheduler;
assign R_ACK=untagged_0;
assign G_ACK=untagged_0_u34;
assign V_SEND=untagged_0_u41;
assign U_DATA=untagged_0_u42;
assign B_ACK=untagged_0_u43;
assign V_DATA=untagged_0_u33;
assign U_COUNT=untagged_0_u35;
assign U_SEND=untagged_0_u38;
assign Y_COUNT=untagged_0_u40;
assign untagged_0_done=bus_0080466a_;
assign Y_SEND=untagged_0_u39;
output_process_RGB_to_YUV_globalreset_physical_000dd4f7_ output_process_RGB_to_YUV_globalreset_physical_000dd4f7__1(.bus_01a33c13_(CLK), 
  .bus_0107e893_(RESET), .bus_018baf06_(bus_018baf06_));
output_process_RGB_to_YUV_scheduler output_process_RGB_to_YUV_scheduler_instance(.CLK(CLK), 
  .RESET(bus_018baf06_), .GO(bus_004b948f_), .port_0188d499_(U_RDY), .port_0077ec27_(G_SEND), 
  .port_0020aa42_(V_RDY), .port_013fc8a9_(untagged_0_done), .port_0092ed99_(B_SEND), 
  .port_01f64c16_(Y_RDY), .port_01f5d723_(R_SEND), .RESULT(scheduler), .DONE(output_process_RGB_to_YUV_scheduler_instance_DONE));
assign bus_0080466a_=output_process_RGB_to_YUV_untagged_0_instance_DONE&{1{output_process_RGB_to_YUV_untagged_0_instance_DONE}};
output_process_RGB_to_YUV_untagged_0 output_process_RGB_to_YUV_untagged_0_instance(.CLK(CLK), 
  .GO(untagged_0_go), .port_01d65b68_(B_DATA), .port_01868380_(G_DATA), .port_00ad26b6_(R_DATA), 
  .RESULT_u1085(untagged_0), .RESULT(untagged_0_u33), .RESULT_u1086(untagged_0_u34), 
  .RESULT_u1088(untagged_0_u35), .RESULT_u1087(untagged_0_u36), .RESULT_u1090(untagged_0_u37), 
  .RESULT_u1089(untagged_0_u38), .RESULT_u1093(untagged_0_u39), .RESULT_u1092(untagged_0_u40), 
  .RESULT_u1091(untagged_0_u41), .RESULT_u1094(untagged_0_u42), .RESULT_u1095(untagged_0_u43), 
  .DONE(output_process_RGB_to_YUV_untagged_0_instance_DONE));
output_process_RGB_to_YUV_Kicker_22 output_process_RGB_to_YUV_Kicker_22_1(.CLK(CLK), 
  .RESET(bus_018baf06_), .bus_004b948f_(bus_004b948f_));
endmodule



module output_process_RGB_to_YUV_globalreset_physical_000dd4f7_(bus_01a33c13_, bus_0107e893_, bus_018baf06_);
input		bus_01a33c13_;
input		bus_0107e893_;
output		bus_018baf06_;
wire		and_0103d30b_u0;
reg		cross_u22=1'h0;
wire		or_00362c3f_u0;
reg		glitch_u22=1'h0;
reg		final_u22=1'h1;
reg		sample_u22=1'h0;
wire		not_0072f07e_u0;
assign bus_018baf06_=or_00362c3f_u0;
assign and_0103d30b_u0=cross_u22&glitch_u22;
always @(posedge bus_01a33c13_)
begin
cross_u22<=sample_u22;
end
assign or_00362c3f_u0=bus_0107e893_|final_u22;
always @(posedge bus_01a33c13_)
begin
glitch_u22<=cross_u22;
end
always @(posedge bus_01a33c13_)
begin
final_u22<=not_0072f07e_u0;
end
always @(posedge bus_01a33c13_)
begin
sample_u22<=1'h1;
end
assign not_0072f07e_u0=~and_0103d30b_u0;
endmodule



module output_process_RGB_to_YUV_scheduler(CLK, RESET, GO, port_0077ec27_, port_0188d499_, port_0020aa42_, port_013fc8a9_, port_0092ed99_, port_01f64c16_, port_01f5d723_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_0077ec27_;
input		port_0188d499_;
input		port_0020aa42_;
input		port_013fc8a9_;
input		port_0092ed99_;
input		port_01f64c16_;
input		port_01f5d723_;
output		RESULT;
output		DONE;
wire		and_u1653_u0;
wire		and_u1654_u0;
wire		and_u1655_u0;
wire		and_u1656_u0;
wire		and_u1657_u0;
wire		not_u338_u0;
wire		and_u1658_u0;
wire		and_u1659_u0;
wire		and_u1660_u0;
wire		not_u339_u0;
wire		and_u1661_u0;
wire		simplePinWrite;
wire		and_u1662_u0;
wire		and_u1663_u0;
wire		or_u476_u0;
reg		loopControl_u36=1'h0;
assign and_u1653_u0=or_u476_u0&or_u476_u0;
assign and_u1654_u0=port_01f5d723_&port_0077ec27_;
assign and_u1655_u0=and_u1654_u0&port_0092ed99_;
assign and_u1656_u0=port_01f64c16_&port_0188d499_;
assign and_u1657_u0=and_u1656_u0&port_0020aa42_;
assign not_u338_u0=~and_u1655_u0;
assign and_u1658_u0=and_u1653_u0&not_u338_u0;
assign and_u1659_u0=and_u1653_u0&and_u1655_u0;
assign and_u1660_u0=and_u1663_u0&not_u339_u0;
assign not_u339_u0=~and_u1657_u0;
assign and_u1661_u0=and_u1663_u0&and_u1657_u0;
assign simplePinWrite=and_u1662_u0&{1{and_u1662_u0}};
assign and_u1662_u0=and_u1661_u0&and_u1663_u0;
assign and_u1663_u0=and_u1659_u0&and_u1653_u0;
assign or_u476_u0=GO|loopControl_u36;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u36<=1'h0;
else loopControl_u36<=and_u1653_u0;
end
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module output_process_RGB_to_YUV_untagged_0(CLK, GO, port_01d65b68_, port_01868380_, port_00ad26b6_, RESULT, RESULT_u1085, RESULT_u1086, RESULT_u1087, RESULT_u1088, RESULT_u1089, RESULT_u1090, RESULT_u1091, RESULT_u1092, RESULT_u1093, RESULT_u1094, RESULT_u1095, DONE);
input		CLK;
input		GO;
input	[7:0]	port_01d65b68_;
input	[7:0]	port_01868380_;
input	[7:0]	port_00ad26b6_;
output	[7:0]	RESULT;
output		RESULT_u1085;
output		RESULT_u1086;
output	[15:0]	RESULT_u1087;
output	[15:0]	RESULT_u1088;
output		RESULT_u1089;
output	[7:0]	RESULT_u1090;
output		RESULT_u1091;
output	[15:0]	RESULT_u1092;
output		RESULT_u1093;
output	[7:0]	RESULT_u1094;
output		RESULT_u1095;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u253;
wire		simplePinWrite_u254;
wire	[14:0]	add;
wire	[15:0]	add_u539;
wire	[16:0]	add_u540;
wire	[12:0]	add_u541;
wire	[12:0]	add_u542;
wire	[17:0]	add_u543;
wire	[18:0]	add_u544;
wire	[19:0]	add_u545;
wire signed	[14:0]	multiply_a_signed;
wire signed	[14:0]	multiply_b_signed;
wire	[14:0]	multiply;
wire	[14:0]	add_u546;
wire	[14:0]	add_u547;
wire	[15:0]	subtract;
wire	[14:0]	subtract_u96;
wire	[16:0]	add_u548;
wire	[17:0]	add_u549;
wire	[18:0]	add_u550;
wire	[14:0]	subtract_u97;
wire	[14:0]	subtract_u98;
wire	[14:0]	subtract_u99;
wire	[15:0]	subtract_u100;
wire	[12:0]	add_u551;
wire	[15:0]	subtract_u101;
wire	[16:0]	add_u552;
wire	[17:0]	add_u553;
wire		greaterThan;
wire signed	[31:0]	greaterThan_b_signed;
wire signed	[31:0]	greaterThan_a_signed;
wire		not_u340_u0;
wire		and_u1664_u0;
wire		and_u1665_u0;
wire signed	[31:0]	lessThan_a_signed;
wire signed	[31:0]	lessThan_b_signed;
wire		lessThan;
wire		and_u1666_u0;
wire		not_u341_u0;
wire		and_u1667_u0;
wire	[7:0]	mux_u518;
wire		and_u1668_u0;
wire		and_u1669_u0;
wire		and_u1670_u0;
wire		and_u1671_u0;
wire	[7:0]	mux_u519_u0;
wire		greaterThan_u16;
wire signed	[31:0]	greaterThan_u16_b_signed;
wire signed	[31:0]	greaterThan_u16_a_signed;
wire		and_u1672_u0;
wire		not_u342_u0;
wire		and_u1673_u0;
wire signed	[31:0]	lessThan_u24_a_signed;
wire		lessThan_u24;
wire signed	[31:0]	lessThan_u24_b_signed;
wire		and_u1674_u0;
wire		and_u1675_u0;
wire		not_u343_u0;
wire		and_u1676_u0;
wire		and_u1677_u0;
wire	[7:0]	mux_u520_u0;
wire		and_u1678_u0;
wire	[7:0]	mux_u521_u0;
wire		and_u1679_u0;
wire		greaterThan_u17;
wire signed	[31:0]	greaterThan_u17_a_signed;
wire signed	[31:0]	greaterThan_u17_b_signed;
wire		not_u344_u0;
wire		and_u1680_u0;
wire		and_u1681_u0;
wire		lessThan_u25;
wire signed	[31:0]	lessThan_u25_a_signed;
wire signed	[31:0]	lessThan_u25_b_signed;
wire		not_u345_u0;
wire		and_u1682_u0;
wire		and_u1683_u0;
wire	[7:0]	mux_u522_u0;
wire		and_u1684_u0;
wire		and_u1685_u0;
wire		and_u1686_u0;
wire		and_u1687_u0;
wire	[7:0]	mux_u523_u0;
wire	[15:0]	simplePinWrite_u255;
wire		simplePinWrite_u256;
wire	[7:0]	simplePinWrite_u257;
wire		simplePinWrite_u258;
wire	[7:0]	simplePinWrite_u259;
wire	[15:0]	simplePinWrite_u260;
wire	[15:0]	simplePinWrite_u261;
wire	[7:0]	simplePinWrite_u262;
wire		simplePinWrite_u263;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u253=GO&{1{GO}};
assign simplePinWrite_u254=GO&{1{GO}};
assign add={1'b0, port_00ad26b6_, 6'b0}+{6'b0, port_00ad26b6_, 1'b0};
assign add_u539={1'b0, port_01868380_, 7'b0}+{8'b0, port_01868380_};
assign add_u540={2'b0, add[14:1], 1'b0}+{1'b0, add_u539};
assign add_u541={1'b0, port_01d65b68_, 4'b0}+{2'b0, port_01d65b68_, 3'b0};
assign add_u542={add_u541[12:3], 3'b0}+{5'b0, port_01d65b68_};
assign add_u543={1'b0, add_u540}+{5'b0, add_u542};
assign add_u544={1'b0, add_u543}+19'h80;
assign add_u545={9'b0, add_u544[18:8]}+20'h10;
assign multiply_a_signed=15'h7fda;
assign multiply_b_signed={7'b0, port_00ad26b6_};
assign multiply=multiply_a_signed*multiply_b_signed;
assign add_u546={1'b0, port_01868380_, 6'b0}+{4'b0, port_01868380_, 3'b0};
assign add_u547={add_u546[14:3], 3'b0}+{6'b0, port_01868380_, 1'b0};
assign subtract={multiply[14], multiply}-{1'b0, add_u547[14:1], 1'b0};
assign subtract_u96={port_01d65b68_, 7'b0}-{3'b0, port_01d65b68_, 4'b0};
assign add_u548={subtract[15], subtract}+{2'b0, subtract_u96};
assign add_u549={add_u548[16], add_u548}+18'h80;
assign add_u550={add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17], add_u549[17:8]}+19'h80;
assign subtract_u97={port_00ad26b6_, 7'b0}-{3'b0, port_00ad26b6_, 4'b0};
assign subtract_u98={port_01868380_, 7'b0}-{2'b0, port_01868380_, 5'b0};
assign subtract_u99=subtract_u98-{6'b0, port_01868380_, 1'b0};
assign subtract_u100={1'b0, subtract_u97}-{1'b0, subtract_u99};
assign add_u551={1'b0, port_01d65b68_, 4'b0}+{4'b0, port_01d65b68_, 1'b0};
assign subtract_u101=subtract_u100-{3'b0, add_u551[12:1], 1'b0};
assign add_u552={subtract_u101[15], subtract_u101}+17'h80;
assign add_u553={add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16], add_u552[16:8]}+18'h80;
assign greaterThan_a_signed={12'b0, add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12:0]};
assign greaterThan_b_signed=32'h0;
assign greaterThan=greaterThan_a_signed>greaterThan_b_signed;
assign not_u340_u0=~greaterThan;
assign and_u1664_u0=GO&not_u340_u0;
assign and_u1665_u0=GO&greaterThan;
assign lessThan_a_signed={12'b0, add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12], add_u545[12:0]};
assign lessThan_b_signed=32'hff;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u1666_u0=and_u1671_u0&lessThan;
assign not_u341_u0=~lessThan;
assign and_u1667_u0=and_u1671_u0&not_u341_u0;
assign mux_u518=(and_u1668_u0)?add_u545[7:0]:8'hff;
assign and_u1668_u0=and_u1666_u0&and_u1671_u0;
assign and_u1669_u0=and_u1667_u0&and_u1671_u0;
assign and_u1670_u0=and_u1664_u0&GO;
assign and_u1671_u0=and_u1665_u0&GO;
assign mux_u519_u0=(and_u1671_u0)?mux_u518:8'h0;
assign greaterThan_u16_a_signed={add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10:0]};
assign greaterThan_u16_b_signed=32'h0;
assign greaterThan_u16=greaterThan_u16_a_signed>greaterThan_u16_b_signed;
assign and_u1672_u0=GO&not_u342_u0;
assign not_u342_u0=~greaterThan_u16;
assign and_u1673_u0=GO&greaterThan_u16;
assign lessThan_u24_a_signed={add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10], add_u550[10:0]};
assign lessThan_u24_b_signed=32'hff;
assign lessThan_u24=lessThan_u24_a_signed<lessThan_u24_b_signed;
assign and_u1674_u0=and_u1678_u0&lessThan_u24;
assign and_u1675_u0=and_u1678_u0&not_u343_u0;
assign not_u343_u0=~lessThan_u24;
assign and_u1676_u0=and_u1675_u0&and_u1678_u0;
assign and_u1677_u0=and_u1674_u0&and_u1678_u0;
assign mux_u520_u0=(and_u1676_u0)?8'hff:add_u550[7:0];
assign and_u1678_u0=and_u1673_u0&GO;
assign mux_u521_u0=(and_u1678_u0)?mux_u520_u0:8'h0;
assign and_u1679_u0=and_u1672_u0&GO;
assign greaterThan_u17_a_signed={add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9:0]};
assign greaterThan_u17_b_signed=32'h0;
assign greaterThan_u17=greaterThan_u17_a_signed>greaterThan_u17_b_signed;
assign not_u344_u0=~greaterThan_u17;
assign and_u1680_u0=GO&not_u344_u0;
assign and_u1681_u0=GO&greaterThan_u17;
assign lessThan_u25_a_signed={add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9], add_u553[9:0]};
assign lessThan_u25_b_signed=32'hff;
assign lessThan_u25=lessThan_u25_a_signed<lessThan_u25_b_signed;
assign not_u345_u0=~lessThan_u25;
assign and_u1682_u0=and_u1686_u0&lessThan_u25;
assign and_u1683_u0=and_u1686_u0&not_u345_u0;
assign mux_u522_u0=(and_u1685_u0)?add_u553[7:0]:8'hff;
assign and_u1684_u0=and_u1683_u0&and_u1686_u0;
assign and_u1685_u0=and_u1682_u0&and_u1686_u0;
assign and_u1686_u0=and_u1681_u0&GO;
assign and_u1687_u0=and_u1680_u0&GO;
assign mux_u523_u0=(and_u1687_u0)?8'h0:mux_u522_u0;
assign simplePinWrite_u255=16'h1&{16{1'h1}};
assign simplePinWrite_u256=GO&{1{GO}};
assign simplePinWrite_u257=mux_u519_u0;
assign simplePinWrite_u258=GO&{1{GO}};
assign simplePinWrite_u259=mux_u521_u0;
assign simplePinWrite_u260=16'h1&{16{1'h1}};
assign simplePinWrite_u261=16'h1&{16{1'h1}};
assign simplePinWrite_u262=mux_u523_u0;
assign simplePinWrite_u263=GO&{1{GO}};
assign RESULT=simplePinWrite_u262;
assign RESULT_u1085=simplePinWrite;
assign RESULT_u1086=simplePinWrite_u253;
assign RESULT_u1087=simplePinWrite_u261;
assign RESULT_u1088=simplePinWrite_u260;
assign RESULT_u1089=simplePinWrite_u258;
assign RESULT_u1090=simplePinWrite_u257;
assign RESULT_u1091=simplePinWrite_u263;
assign RESULT_u1092=simplePinWrite_u255;
assign RESULT_u1093=simplePinWrite_u256;
assign RESULT_u1094=simplePinWrite_u259;
assign RESULT_u1095=simplePinWrite_u254;
assign DONE=GO;
endmodule



module output_process_RGB_to_YUV_Kicker_22(CLK, RESET, bus_004b948f_);
input		CLK;
input		RESET;
output		bus_004b948f_;
wire		bus_015eda73_;
wire		bus_004882b7_;
wire		bus_00960379_;
wire		bus_00d40d15_;
reg		kicker_1=1'h0;
reg		kicker_2=1'h0;
reg		kicker_res=1'h0;
assign bus_015eda73_=bus_00d40d15_&kicker_1;
assign bus_004882b7_=~kicker_2;
assign bus_00960379_=kicker_1&bus_00d40d15_&bus_004882b7_;
assign bus_00d40d15_=~RESET;
always @(posedge CLK)
begin
kicker_1<=bus_00d40d15_;
end
always @(posedge CLK)
begin
kicker_2<=bus_015eda73_;
end
always @(posedge CLK)
begin
kicker_res<=bus_00960379_;
end
assign bus_004b948f_=kicker_res;
endmodule


