// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Sat 31 Oct 2015 11:10:48 +0000
// 

module Actor_2(source2_COUNT, source2_SEND, source2_RDY, source2_ACK, CLK, RESET, source2_DATA);
wire		sendData_done;
output	[15:0]	source2_COUNT;
wire		sendData_go;
output		source2_SEND;
input		source2_RDY;
input		source2_ACK;
input		CLK;
input		RESET;
output	[7:0]	source2_DATA;
wire		bus_0102f0b3_;
wire		bus_013e07aa_;
wire		sendData_u12;
wire		Actor_2_sendData_instance_DONE;
wire	[31:0]	sendData_u9;
wire		sendData_u8;
wire	[7:0]	sendData_u13;
wire	[15:0]	sendData_u11;
wire	[2:0]	sendData_u10;
wire	[31:0]	sendData_u7;
wire		sendData;
wire	[31:0]	bus_00f26ef5_;
wire		bus_00d4d457_;
wire	[7:0]	bus_012f32e1_;
wire		Actor_2_scheduler_instance_DONE;
wire		scheduler;
wire		bus_00c17d37_;
wire	[31:0]	bus_01007d41_;
wire	[7:0]	bus_00331eef_;
wire	[2:0]	bus_011b66dd_;
wire		bus_014dfaa0_;
wire		bus_00cbfbd1_;
wire	[31:0]	bus_013d8db3_;
wire		bus_0123231e_;
assign sendData_done=bus_0102f0b3_;
assign source2_COUNT=sendData_u11;
assign sendData_go=scheduler;
assign source2_SEND=sendData_u12;
assign source2_DATA=sendData_u13;
assign bus_0102f0b3_=Actor_2_sendData_instance_DONE&{1{Actor_2_sendData_instance_DONE}};
Actor_2_globalreset_physical_0155be8d_ Actor_2_globalreset_physical_0155be8d__1(.bus_00e71896_(CLK), 
  .bus_00a8b368_(RESET), .bus_013e07aa_(bus_013e07aa_));
Actor_2_sendData Actor_2_sendData_instance(.CLK(CLK), .RESET(bus_013e07aa_), .GO(sendData_go), 
  .port_01c7cffb_(bus_00f26ef5_), .port_0145cfda_(bus_00c17d37_), .port_00008fc5_(bus_00331eef_), 
  .RESULT(sendData), .RESULT_u7(sendData_u7), .RESULT_u8(sendData_u8), .RESULT_u9(sendData_u9), 
  .RESULT_u10(sendData_u10), .RESULT_u11(sendData_u11), .RESULT_u12(sendData_u12), 
  .RESULT_u13(sendData_u13), .DONE(Actor_2_sendData_instance_DONE));
Actor_2_stateVar_i Actor_2_stateVar_i_1(.bus_01f9ec52_(CLK), .bus_010a02a9_(bus_013e07aa_), 
  .bus_00cde8ee_(sendData), .bus_01fcd2e5_(sendData_u7), .bus_00f26ef5_(bus_00f26ef5_));
Actor_2_structuralmemory_00e9eaaf_ Actor_2_structuralmemory_00e9eaaf__1(.CLK_u1(CLK), 
  .bus_019a2390_(bus_013e07aa_), .bus_002ed88c_(bus_01007d41_), .bus_010ec537_(3'h1), 
  .bus_00c1204b_(bus_00cbfbd1_), .bus_012f32e1_(bus_012f32e1_), .bus_00d4d457_(bus_00d4d457_));
Actor_2_scheduler Actor_2_scheduler_instance(.CLK(CLK), .RESET(bus_013e07aa_), 
  .GO(bus_0123231e_), .port_00563f14_(bus_00f26ef5_), .port_000d94cc_(sendData_done), 
  .port_013ea41c_(source2_RDY), .RESULT(scheduler), .DONE(Actor_2_scheduler_instance_DONE));
Actor_2_simplememoryreferee_0137d6c6_ Actor_2_simplememoryreferee_0137d6c6__1(.bus_01200de7_(CLK), 
  .bus_0170ea81_(bus_013e07aa_), .bus_00301c83_(bus_00d4d457_), .bus_0162d3c6_(bus_012f32e1_), 
  .bus_0151247f_(sendData_u8), .bus_0018d547_(sendData_u9), .bus_00be31f3_(3'h1), 
  .bus_013d8db3_(bus_013d8db3_), .bus_01007d41_(bus_01007d41_), .bus_014dfaa0_(bus_014dfaa0_), 
  .bus_00cbfbd1_(bus_00cbfbd1_), .bus_011b66dd_(bus_011b66dd_), .bus_00331eef_(bus_00331eef_), 
  .bus_00c17d37_(bus_00c17d37_));
Actor_2_Kicker_1 Actor_2_Kicker_1_1(.CLK(CLK), .RESET(bus_013e07aa_), .bus_0123231e_(bus_0123231e_));
endmodule



module Actor_2_globalreset_physical_0155be8d_(bus_00e71896_, bus_00a8b368_, bus_013e07aa_);
input		bus_00e71896_;
input		bus_00a8b368_;
output		bus_013e07aa_;
reg		cross_u1=1'h0;
reg		final_u1=1'h1;
wire		and_01a6e34c_u0;
reg		glitch_u1=1'h0;
wire		or_019ab1ce_u0;
wire		not_01947fa0_u0;
reg		sample_u1=1'h0;
always @(posedge bus_00e71896_)
begin
cross_u1<=sample_u1;
end
always @(posedge bus_00e71896_)
begin
final_u1<=not_01947fa0_u0;
end
assign and_01a6e34c_u0=cross_u1&glitch_u1;
always @(posedge bus_00e71896_)
begin
glitch_u1<=cross_u1;
end
assign bus_013e07aa_=or_019ab1ce_u0;
assign or_019ab1ce_u0=bus_00a8b368_|final_u1;
assign not_01947fa0_u0=~and_01a6e34c_u0;
always @(posedge bus_00e71896_)
begin
sample_u1<=1'h1;
end
endmodule



module Actor_2_sendData(CLK, RESET, GO, port_01c7cffb_, port_0145cfda_, port_00008fc5_, RESULT, RESULT_u7, RESULT_u8, RESULT_u9, RESULT_u10, RESULT_u11, RESULT_u12, RESULT_u13, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01c7cffb_;
input		port_0145cfda_;
input	[7:0]	port_00008fc5_;
output		RESULT;
output	[31:0]	RESULT_u7;
output		RESULT_u8;
output	[31:0]	RESULT_u9;
output	[2:0]	RESULT_u10;
output	[15:0]	RESULT_u11;
output		RESULT_u12;
output	[7:0]	RESULT_u13;
output		DONE;
wire	[31:0]	add;
wire		and_u8_u0;
wire	[31:0]	add_u1;
wire		simplePinWrite;
wire	[15:0]	simplePinWrite_u2;
wire	[7:0]	simplePinWrite_u3;
reg		reg_01ffcb28_u0=1'h0;
assign add=32'h0+port_01c7cffb_;
assign and_u8_u0=GO&port_0145cfda_;
assign add_u1=port_01c7cffb_+32'h1;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u2=16'h1&{16{1'h1}};
assign simplePinWrite_u3=port_00008fc5_;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01ffcb28_u0<=1'h0;
else reg_01ffcb28_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u7=add_u1;
assign RESULT_u8=GO;
assign RESULT_u9=add;
assign RESULT_u10=3'h1;
assign RESULT_u11=simplePinWrite_u2;
assign RESULT_u12=simplePinWrite;
assign RESULT_u13=simplePinWrite_u3;
assign DONE=reg_01ffcb28_u0;
endmodule



module Actor_2_endianswapper_01e32b58_(endianswapper_01e32b58_in, endianswapper_01e32b58_out);
input	[31:0]	endianswapper_01e32b58_in;
output	[31:0]	endianswapper_01e32b58_out;
assign endianswapper_01e32b58_out=endianswapper_01e32b58_in;
endmodule



module Actor_2_endianswapper_00b648ee_(endianswapper_00b648ee_in, endianswapper_00b648ee_out);
input	[31:0]	endianswapper_00b648ee_in;
output	[31:0]	endianswapper_00b648ee_out;
assign endianswapper_00b648ee_out=endianswapper_00b648ee_in;
endmodule



module Actor_2_stateVar_i(bus_01f9ec52_, bus_010a02a9_, bus_00cde8ee_, bus_01fcd2e5_, bus_00f26ef5_);
input		bus_01f9ec52_;
input		bus_010a02a9_;
input		bus_00cde8ee_;
input	[31:0]	bus_01fcd2e5_;
output	[31:0]	bus_00f26ef5_;
reg	[31:0]	stateVar_i_u1=32'h0;
wire	[31:0]	endianswapper_01e32b58_out;
wire	[31:0]	endianswapper_00b648ee_out;
always @(posedge bus_01f9ec52_ or posedge bus_010a02a9_)
begin
if (bus_010a02a9_)
stateVar_i_u1<=32'h0;
else if (bus_00cde8ee_)
stateVar_i_u1<=endianswapper_01e32b58_out;
end
assign bus_00f26ef5_=endianswapper_00b648ee_out;
Actor_2_endianswapper_01e32b58_ Actor_2_endianswapper_01e32b58__1(.endianswapper_01e32b58_in(bus_01fcd2e5_), 
  .endianswapper_01e32b58_out(endianswapper_01e32b58_out));
Actor_2_endianswapper_00b648ee_ Actor_2_endianswapper_00b648ee__1(.endianswapper_00b648ee_in(stateVar_i_u1), 
  .endianswapper_00b648ee_out(endianswapper_00b648ee_out));
endmodule



module Actor_2_forge_memory_5x32_3(CLK, EN, ADDR, DOUT, DONE);
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
  )RAM16X8S_instance_4(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[7:0]), .O(pre_dout_0[7:0]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_5(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[15:8]), .O(pre_dout_0[15:8]));
//  Memory array element: COL: 0, ROW: 2
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_6(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[23:16]), .O(pre_dout_0[23:16]));
//  Memory array element: COL: 0, ROW: 3
//  Initialization of LUT ram is accomplished through explicit parameter
// setting.
RAM16X8S#(.INIT_00(16'h0000), .INIT_01(16'h0000), .INIT_02(16'h0000), .INIT_03(16'h0000), 
  .INIT_04(16'h0000), .INIT_05(16'h0000), .INIT_06(16'h0000), .INIT_07(16'h0000)
  )RAM16X8S_instance_7(.WCLK(CLK), .WE(1'b0), .A0(ADDR[0]), .A1(ADDR[1]), .A2(ADDR[2]), 
  .A3(ADDR[3]), .D(DIN[31:24]), .O(pre_dout_0[31:24]));
endmodule



module Actor_2_structuralmemory_00e9eaaf_(CLK_u1, bus_019a2390_, bus_002ed88c_, bus_010ec537_, bus_00c1204b_, bus_012f32e1_, bus_00d4d457_);
input		CLK_u1;
input		bus_019a2390_;
input	[31:0]	bus_002ed88c_;
input	[2:0]	bus_010ec537_;
input		bus_00c1204b_;
output	[7:0]	bus_012f32e1_;
output		bus_00d4d457_;
wire	[31:0]	bus_01b563d3_;
assign bus_012f32e1_=bus_01b563d3_[7:0];
assign bus_00d4d457_=bus_00c1204b_;
Actor_2_forge_memory_5x32_3 Actor_2_forge_memory_5x32_3_instance0(.CLK(CLK_u1), 
  .EN(bus_00c1204b_), .ADDR(bus_002ed88c_), .DOUT(bus_01b563d3_), .DONE());
endmodule



module Actor_2_scheduler(CLK, RESET, GO, port_00563f14_, port_000d94cc_, port_013ea41c_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00563f14_;
input		port_000d94cc_;
input		port_013ea41c_;
output		RESULT;
output		DONE;
wire signed	[31:0]	lessThan_b_signed;
wire		lessThan;
wire signed	[31:0]	lessThan_a_signed;
wire		and_u9_u0;
wire		and_u10_u0;
wire		not_u2_u0;
wire		and_u11_u0;
wire		not_u3_u0;
wire		and_u12_u0;
wire		simplePinWrite;
wire		and_u13_u0;
wire		and_u14_u0;
wire		and_u15_u0;
reg		and_delayed_u0=1'h0;
wire		or_u1_u0;
assign lessThan_a_signed=port_00563f14_;
assign lessThan_b_signed=32'h5;
assign lessThan=lessThan_a_signed<lessThan_b_signed;
assign and_u9_u0=and_u15_u0&lessThan;
assign and_u10_u0=and_u15_u0&not_u2_u0;
assign not_u2_u0=~lessThan;
assign and_u11_u0=and_u14_u0&not_u3_u0;
assign not_u3_u0=~port_013ea41c_;
assign and_u12_u0=and_u14_u0&port_013ea41c_;
assign simplePinWrite=and_u13_u0&{1{and_u13_u0}};
assign and_u13_u0=and_u12_u0&and_u14_u0;
assign and_u14_u0=and_u9_u0&and_u15_u0;
assign and_u15_u0=or_u1_u0&or_u1_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
and_delayed_u0<=1'h0;
else and_delayed_u0<=and_u15_u0;
end
assign or_u1_u0=GO|and_delayed_u0;
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module Actor_2_simplememoryreferee_0137d6c6_(bus_01200de7_, bus_0170ea81_, bus_00301c83_, bus_0162d3c6_, bus_0151247f_, bus_0018d547_, bus_00be31f3_, bus_013d8db3_, bus_01007d41_, bus_014dfaa0_, bus_00cbfbd1_, bus_011b66dd_, bus_00331eef_, bus_00c17d37_);
input		bus_01200de7_;
input		bus_0170ea81_;
input		bus_00301c83_;
input	[7:0]	bus_0162d3c6_;
input		bus_0151247f_;
input	[31:0]	bus_0018d547_;
input	[2:0]	bus_00be31f3_;
output	[31:0]	bus_013d8db3_;
output	[31:0]	bus_01007d41_;
output		bus_014dfaa0_;
output		bus_00cbfbd1_;
output	[2:0]	bus_011b66dd_;
output	[7:0]	bus_00331eef_;
output		bus_00c17d37_;
assign bus_013d8db3_=32'h0;
assign bus_01007d41_=bus_0018d547_;
assign bus_014dfaa0_=1'h0;
assign bus_00cbfbd1_=bus_0151247f_;
assign bus_011b66dd_=3'h1;
assign bus_00331eef_=bus_0162d3c6_;
assign bus_00c17d37_=bus_00301c83_;
endmodule



module Actor_2_Kicker_1(CLK, RESET, bus_0123231e_);
input		CLK;
input		RESET;
output		bus_0123231e_;
wire		bus_006a067c_;
reg		kicker_2=1'h0;
wire		bus_00aac167_;
reg		kicker_res=1'h0;
reg		kicker_1=1'h0;
wire		bus_00ce1d85_;
wire		bus_01c583a2_;
assign bus_006a067c_=kicker_1&bus_01c583a2_&bus_00ce1d85_;
always @(posedge CLK)
begin
kicker_2<=bus_00aac167_;
end
assign bus_00aac167_=bus_01c583a2_&kicker_1;
always @(posedge CLK)
begin
kicker_res<=bus_006a067c_;
end
always @(posedge CLK)
begin
kicker_1<=bus_01c583a2_;
end
assign bus_0123231e_=kicker_res;
assign bus_00ce1d85_=~kicker_2;
assign bus_01c583a2_=~RESET;
endmodule


