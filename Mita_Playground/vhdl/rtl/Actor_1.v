// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Sat 31 Oct 2015 11:10:46 +0000
// 

module Actor_1(CLK, source1_ACK, source1_DATA, source1_SEND, RESET, source1_COUNT, source1_RDY);
input		CLK;
input		source1_ACK;
output	[7:0]	source1_DATA;
output		source1_SEND;
wire		sendData_done;
input		RESET;
output	[15:0]	source1_COUNT;
wire		sendData_go;
input		source1_RDY;
wire	[15:0]	sendData_u5;
wire		sendData_u4;
wire		Actor_1_sendData_instance_DONE;
wire	[2:0]	sendData_u3;
wire	[31:0]	sendData_u2;
wire	[31:0]	sendData_u0;
wire		sendData_u1;
wire	[7:0]	sendData_u6;
wire		sendData;
wire		bus_00a4e459_;
wire		bus_0188fcf6_;
wire	[7:0]	bus_015d3ef2_;
wire		bus_00c7f8a1_;
wire		bus_007e8ae0_;
wire		scheduler;
wire		Actor_1_scheduler_instance_DONE;
wire		bus_01f677dc_;
wire	[7:0]	bus_0034e404_;
wire	[31:0]	bus_00a85189_;
wire	[2:0]	bus_018dee4b_;
wire	[31:0]	bus_004a0c21_;
wire		bus_0014a8a5_;
wire		bus_011d3865_;
wire	[31:0]	bus_0179891d_;
assign source1_DATA=sendData_u6;
assign source1_SEND=sendData_u4;
assign sendData_done=bus_00a4e459_;
assign source1_COUNT=sendData_u5;
assign sendData_go=scheduler;
Actor_1_sendData Actor_1_sendData_instance(.CLK(CLK), .RESET(bus_007e8ae0_), .GO(sendData_go), 
  .port_0096dc80_(bus_0179891d_), .port_019fb855_(bus_0014a8a5_), .port_007f4035_(bus_0034e404_), 
  .RESULT(sendData), .RESULT_u0(sendData_u0), .RESULT_u1(sendData_u1), .RESULT_u2(sendData_u2), 
  .RESULT_u3(sendData_u3), .RESULT_u4(sendData_u4), .RESULT_u5(sendData_u5), .RESULT_u6(sendData_u6), 
  .DONE(Actor_1_sendData_instance_DONE));
assign bus_00a4e459_=Actor_1_sendData_instance_DONE&{1{Actor_1_sendData_instance_DONE}};
Actor_1_Kicker_0 Actor_1_Kicker_0_1(.CLK(CLK), .RESET(bus_007e8ae0_), .bus_0188fcf6_(bus_0188fcf6_));
Actor_1_structuralmemory_00bb0925_ Actor_1_structuralmemory_00bb0925__1(.CLK_u0(CLK), 
  .bus_016d9ac6_(bus_007e8ae0_), .bus_00939f6c_(bus_00a85189_), .bus_014a661e_(3'h1), 
  .bus_01bcba17_(bus_01f677dc_), .bus_015d3ef2_(bus_015d3ef2_), .bus_00c7f8a1_(bus_00c7f8a1_));
Actor_1_globalreset_physical_004a2bf9_ Actor_1_globalreset_physical_004a2bf9__1(.bus_017dd067_(CLK), 
  .bus_01f9c707_(RESET), .bus_007e8ae0_(bus_007e8ae0_));
Actor_1_scheduler Actor_1_scheduler_instance(.CLK(CLK), .RESET(bus_007e8ae0_), 
  .GO(bus_0188fcf6_), .port_01d48ee2_(bus_0179891d_), .port_010f6763_(sendData_done), 
  .port_01c4ab2d_(source1_RDY), .RESULT(scheduler), .DONE(Actor_1_scheduler_instance_DONE));
Actor_1_simplememoryreferee_01582b7e_ Actor_1_simplememoryreferee_01582b7e__1(.bus_00fdb20b_(CLK), 
  .bus_01b40b5a_(bus_007e8ae0_), .bus_00e6d838_(bus_00c7f8a1_), .bus_01f80dad_(bus_015d3ef2_), 
  .bus_016beb8a_(sendData_u1), .bus_00eaa36c_(sendData_u2), .bus_01e47654_(3'h1), 
  .bus_004a0c21_(bus_004a0c21_), .bus_00a85189_(bus_00a85189_), .bus_011d3865_(bus_011d3865_), 
  .bus_01f677dc_(bus_01f677dc_), .bus_018dee4b_(bus_018dee4b_), .bus_0034e404_(bus_0034e404_), 
  .bus_0014a8a5_(bus_0014a8a5_));
Actor_1_stateVar_i Actor_1_stateVar_i_1(.bus_00899df2_(CLK), .bus_00e09cfe_(bus_007e8ae0_), 
  .bus_010a2b31_(sendData), .bus_008f26df_(sendData_u0), .bus_0179891d_(bus_0179891d_));
endmodule



module Actor_1_sendData(CLK, RESET, GO, port_0096dc80_, port_019fb855_, port_007f4035_, RESULT, RESULT_u0, RESULT_u1, RESULT_u2, RESULT_u3, RESULT_u4, RESULT_u5, RESULT_u6, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_0096dc80_;
input		port_019fb855_;
input	[7:0]	port_007f4035_;
output		RESULT;
output	[31:0]	RESULT_u0;
output		RESULT_u1;
output	[31:0]	RESULT_u2;
output	[2:0]	RESULT_u3;
output		RESULT_u4;
output	[15:0]	RESULT_u5;
output	[7:0]	RESULT_u6;
output		DONE;
wire	[31:0]	add;
wire		and_u0_u0;
wire	[31:0]	add_u0;
wire	[7:0]	simplePinWrite;
wire	[15:0]	simplePinWrite_u0;
wire		simplePinWrite_u1;
reg		reg_00deab36_u0=1'h0;
assign add=32'h0+port_0096dc80_;
assign and_u0_u0=GO&port_019fb855_;
assign add_u0=port_0096dc80_+32'h1;
assign simplePinWrite=port_007f4035_;
assign simplePinWrite_u0=16'h1&{16{1'h1}};
assign simplePinWrite_u1=GO&{1{GO}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_00deab36_u0<=1'h0;
else reg_00deab36_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u0=add_u0;
assign RESULT_u1=GO;
assign RESULT_u2=add;
assign RESULT_u3=3'h1;
assign RESULT_u4=simplePinWrite_u1;
assign RESULT_u5=simplePinWrite_u0;
assign RESULT_u6=simplePinWrite;
assign DONE=reg_00deab36_u0;
endmodule



module Actor_1_Kicker_0(CLK, RESET, bus_0188fcf6_);
input		CLK;
input		RESET;
output		bus_0188fcf6_;
wire		bus_00c1a8fc_;
wire		bus_01cad80a_;
reg		kicker_1=1'h0;
reg		kicker_res=1'h0;
wire		bus_00a73e11_;
wire		bus_009951b8_;
reg		kicker_2=1'h0;
assign bus_00c1a8fc_=~kicker_2;
assign bus_01cad80a_=~RESET;
always @(posedge CLK)
begin
kicker_1<=bus_01cad80a_;
end
assign bus_0188fcf6_=kicker_res;
always @(posedge CLK)
begin
kicker_res<=bus_009951b8_;
end
assign bus_00a73e11_=bus_01cad80a_&kicker_1;
assign bus_009951b8_=kicker_1&bus_01cad80a_&bus_00c1a8fc_;
always @(posedge CLK)
begin
kicker_2<=bus_00a73e11_;
end
endmodule



module Actor_1_forge_memory_5x32_1(CLK, EN, ADDR, DOUT, DONE);
input		CLK;
input		EN;
input	[31:0]	ADDR;
output	[31:0]	DOUT;
output		DONE;
wire	[31:0]	pre_dout_0;
reg	[31:0]	mux_out;
wire	[31:0]	DIN;
assign DIN=32'h0;
always @(pre_dout_0)
begin
mux_out<=pre_dout_0;
end
assign DOUT=mux_out;
assign DONE=EN;
//  Memory array element: COL: 0, ROW: 0
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0015), .INIT_01(16'h0006), .INIT_02(16'h0018), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_0(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[7:0]), .O(pre_dout_0[7:0]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_1(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[15:8]), .O(pre_dout_0[15:8]));
//  Memory array element: COL: 0, ROW: 2
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_2(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[23:16]), .O(pre_dout_0[23:16]));
//  Memory array element: COL: 0, ROW: 3
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_3(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[31:24]), .O(pre_dout_0[31:24]));
endmodule



module Actor_1_structuralmemory_00bb0925_(CLK_u0, bus_016d9ac6_, bus_00939f6c_, bus_014a661e_, bus_01bcba17_, bus_015d3ef2_, bus_00c7f8a1_);
input		CLK_u0;
input		bus_016d9ac6_;
input	[31:0]	bus_00939f6c_;
input	[2:0]	bus_014a661e_;
input		bus_01bcba17_;
output	[7:0]	bus_015d3ef2_;
output		bus_00c7f8a1_;
wire	[31:0]	bus_00072c1e_;
assign bus_015d3ef2_=bus_00072c1e_[7:0];
assign bus_00c7f8a1_=bus_01bcba17_;
Actor_1_forge_memory_5x32_1 Actor_1_forge_memory_5x32_1_instance0(.CLK(CLK_u0), 
  .EN(bus_01bcba17_), .ADDR(bus_00939f6c_), .DOUT(bus_00072c1e_), .DONE());
endmodule



module Actor_1_globalreset_physical_004a2bf9_(bus_017dd067_, bus_01f9c707_, bus_007e8ae0_);
input		bus_017dd067_;
input		bus_01f9c707_;
output		bus_007e8ae0_;
reg		final_u0=1'h1;
wire		and_00eda429_u0;
reg		glitch_u0=1'h0;
reg		cross_u0=1'h0;
wire		or_0179aaea_u0;
reg		sample_u0=1'h0;
wire		not_01f18288_u0;
always @(posedge bus_017dd067_)
begin
final_u0<=not_01f18288_u0;
end
assign bus_007e8ae0_=or_0179aaea_u0;
assign and_00eda429_u0=cross_u0&glitch_u0;
always @(posedge bus_017dd067_)
begin
glitch_u0<=cross_u0;
end
always @(posedge bus_017dd067_)
begin
cross_u0<=sample_u0;
end
assign or_0179aaea_u0=bus_01f9c707_|final_u0;
always @(posedge bus_017dd067_)
begin
sample_u0<=1'h1;
end
assign not_01f18288_u0=~and_00eda429_u0;
endmodule



module Actor_1_scheduler(CLK, RESET, GO, port_01d48ee2_, port_010f6763_, port_01c4ab2d_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01d48ee2_;
input		port_010f6763_;
input		port_01c4ab2d_;
output		RESULT;
output		DONE;
wire signed	[31:0]	lessThan_b_signed;
wire signed	[31:0]	lessThan_a_signed;
wire		lessThan;
wire		and_u1_u0;
wire		not_u0_u0;
wire		and_u2_u0;
wire		not_u1_u0;
wire		and_u3_u0;
wire		and_u4_u0;
wire		simplePinWrite;
wire		and_u5_u0;
wire		and_u6_u0;
reg		reg_01e16551_u0=1'h0;
wire		and_u7_u0;
wire		or_u0_u0;
assign lessThan_a_signed=port_01d48ee2_;
assign lessThan_b_signed=32'h5;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u1_u0=and_u7_u0&not_u0_u0;
assign not_u0_u0=~lessThan;
assign and_u2_u0=and_u7_u0&lessThan;
assign not_u1_u0=~port_01c4ab2d_;
assign and_u3_u0=and_u6_u0&not_u1_u0;
assign and_u4_u0=and_u6_u0&port_01c4ab2d_;
assign simplePinWrite=and_u5_u0&{1{and_u5_u0}};
assign and_u5_u0=and_u4_u0&and_u6_u0;
assign and_u6_u0=and_u2_u0&and_u7_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e16551_u0<=1'h0;
else reg_01e16551_u0<=and_u7_u0;
end
assign and_u7_u0=or_u0_u0&or_u0_u0;
assign or_u0_u0=GO|reg_01e16551_u0;
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module Actor_1_simplememoryreferee_01582b7e_(bus_00fdb20b_, bus_01b40b5a_, bus_00e6d838_, bus_01f80dad_, bus_016beb8a_, bus_00eaa36c_, bus_01e47654_, bus_004a0c21_, bus_00a85189_, bus_011d3865_, bus_01f677dc_, bus_018dee4b_, bus_0034e404_, bus_0014a8a5_);
input		bus_00fdb20b_;
input		bus_01b40b5a_;
input		bus_00e6d838_;
input	[7:0]	bus_01f80dad_;
input		bus_016beb8a_;
input	[31:0]	bus_00eaa36c_;
input	[2:0]	bus_01e47654_;
output	[31:0]	bus_004a0c21_;
output	[31:0]	bus_00a85189_;
output		bus_011d3865_;
output		bus_01f677dc_;
output	[2:0]	bus_018dee4b_;
output	[7:0]	bus_0034e404_;
output		bus_0014a8a5_;
assign bus_004a0c21_=32'h0;
assign bus_00a85189_=bus_00eaa36c_;
assign bus_011d3865_=1'h0;
assign bus_01f677dc_=bus_016beb8a_;
assign bus_018dee4b_=3'h1;
assign bus_0034e404_=bus_01f80dad_;
assign bus_0014a8a5_=bus_00e6d838_;
endmodule



module Actor_1_endianswapper_019b9d9b_(endianswapper_019b9d9b_in, endianswapper_019b9d9b_out);
input	[31:0]	endianswapper_019b9d9b_in;
output	[31:0]	endianswapper_019b9d9b_out;
assign endianswapper_019b9d9b_out=endianswapper_019b9d9b_in;
endmodule



module Actor_1_endianswapper_0022d78f_(endianswapper_0022d78f_in, endianswapper_0022d78f_out);
input	[31:0]	endianswapper_0022d78f_in;
output	[31:0]	endianswapper_0022d78f_out;
assign endianswapper_0022d78f_out=endianswapper_0022d78f_in;
endmodule



module Actor_1_stateVar_i(bus_00899df2_, bus_00e09cfe_, bus_010a2b31_, bus_008f26df_, bus_0179891d_);
input		bus_00899df2_;
input		bus_00e09cfe_;
input		bus_010a2b31_;
input	[31:0]	bus_008f26df_;
output	[31:0]	bus_0179891d_;
wire	[31:0]	endianswapper_019b9d9b_out;
reg	[31:0]	stateVar_i_u0=32'h0;
wire	[31:0]	endianswapper_0022d78f_out;
Actor_1_endianswapper_019b9d9b_ Actor_1_endianswapper_019b9d9b__1(.endianswapper_019b9d9b_in(stateVar_i_u0), 
  .endianswapper_019b9d9b_out(endianswapper_019b9d9b_out));
always @(posedge bus_00899df2_ or posedge bus_00e09cfe_)
begin
if (bus_00e09cfe_)
stateVar_i_u0<=32'h0;
else if (bus_010a2b31_)
stateVar_i_u0<=endianswapper_0022d78f_out;
end
Actor_1_endianswapper_0022d78f_ Actor_1_endianswapper_0022d78f__1(.endianswapper_0022d78f_in(bus_008f26df_), 
  .endianswapper_0022d78f_out(endianswapper_0022d78f_out));
assign bus_0179891d_=endianswapper_019b9d9b_out;
endmodule


