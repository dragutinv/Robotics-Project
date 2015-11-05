// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Sat 31 Oct 2015 11:10:49 +0000
// 

module Add_array(CLK, Output_ACK, Output_SEND, Input1_DATA, Input1_COUNT, Output_COUNT, Output_DATA, RESET, Input1_SEND, Input2_SEND, Input2_ACK, Input2_COUNT, Output_RDY, Input2_DATA, Input1_ACK);
input		CLK;
wire		untagged_0_go;
input		Output_ACK;
output		Output_SEND;
input	[7:0]	Input1_DATA;
input	[15:0]	Input1_COUNT;
output	[15:0]	Output_COUNT;
output	[7:0]	Output_DATA;
input		RESET;
input		Input1_SEND;
input		Input2_SEND;
output		Input2_ACK;
input	[15:0]	Input2_COUNT;
input		Output_RDY;
input	[7:0]	Input2_DATA;
wire		untagged_0_done;
output		Input1_ACK;
wire		Add_array_scheduler_instance_DONE;
wire		scheduler;
wire		bus_01848657_;
wire	[15:0]	untagged_0;
wire		Add_array_untagged_0_instance_DONE;
wire	[7:0]	untagged_0_u0;
wire		untagged_0_u3;
wire		untagged_0_u1;
wire		untagged_0_u2;
wire		bus_0101a1a5_;
wire		bus_004dd80b_;
assign untagged_0_go=scheduler;
assign Output_SEND=untagged_0_u1;
assign Output_COUNT=untagged_0;
assign Output_DATA=untagged_0_u0;
assign Input2_ACK=untagged_0_u2;
assign untagged_0_done=bus_0101a1a5_;
assign Input1_ACK=untagged_0_u3;
Add_array_scheduler Add_array_scheduler_instance(.CLK(CLK), .RESET(bus_01848657_), 
  .GO(bus_004dd80b_), .port_008a37a7_(Input1_SEND), .port_00300cc3_(Input2_SEND), 
  .port_00c9964c_(Output_RDY), .port_010a4f40_(untagged_0_done), .RESULT(scheduler), 
  .DONE(Add_array_scheduler_instance_DONE));
Add_array_globalreset_physical_0104e3ef_ Add_array_globalreset_physical_0104e3ef__1(.bus_008dc86f_(CLK), 
  .bus_009b15a4_(RESET), .bus_01848657_(bus_01848657_));
Add_array_untagged_0 Add_array_untagged_0_instance(.CLK(CLK), .GO(untagged_0_go), 
  .port_003da58c_(Input1_DATA), .port_019a462a_(Input2_DATA), .RESULT(untagged_0), 
  .RESULT_u14(untagged_0_u0), .RESULT_u15(untagged_0_u1), .RESULT_u16(untagged_0_u2), 
  .RESULT_u17(untagged_0_u3), .DONE(Add_array_untagged_0_instance_DONE));
assign bus_0101a1a5_=Add_array_untagged_0_instance_DONE&{1{Add_array_untagged_0_instance_DONE}};
Add_array_Kicker_3 Add_array_Kicker_3_1(.CLK(CLK), .RESET(bus_01848657_), .bus_004dd80b_(bus_004dd80b_));
endmodule



module Add_array_scheduler(CLK, RESET, GO, port_008a37a7_, port_00300cc3_, port_00c9964c_, port_010a4f40_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_008a37a7_;
input		port_00300cc3_;
input		port_00c9964c_;
input		port_010a4f40_;
output		RESULT;
output		DONE;
wire		and_u21_u0;
wire		and_u22_u0;
wire		and_u23_u0;
wire		and_u24_u0;
wire		not_u5_u0;
wire		and_u25_u0;
wire		not_u6_u0;
wire		and_u26_u0;
wire		simplePinWrite;
wire		and_u27_u0;
wire		and_u28_u0;
wire		or_u3_u0;
reg		loopControl_u1=1'h0;
assign and_u21_u0=or_u3_u0&or_u3_u0;
assign and_u22_u0=port_008a37a7_&port_00300cc3_;
assign and_u23_u0=and_u21_u0&not_u5_u0;
assign and_u24_u0=and_u21_u0&and_u22_u0;
assign not_u5_u0=~and_u22_u0;
assign and_u25_u0=and_u28_u0&port_00c9964c_;
assign not_u6_u0=~port_00c9964c_;
assign and_u26_u0=and_u28_u0&not_u6_u0;
assign simplePinWrite=and_u27_u0&{1{and_u27_u0}};
assign and_u27_u0=and_u25_u0&and_u28_u0;
assign and_u28_u0=and_u24_u0&and_u21_u0;
assign or_u3_u0=loopControl_u1|GO;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u1<=1'h0;
else loopControl_u1<=and_u21_u0;
end
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module Add_array_globalreset_physical_0104e3ef_(bus_008dc86f_, bus_009b15a4_, bus_01848657_);
input		bus_008dc86f_;
input		bus_009b15a4_;
output		bus_01848657_;
wire		and_01222105_u0;
reg		final_u3=1'h1;
wire		not_01f33acc_u0;
reg		cross_u3=1'h0;
wire		or_01a9f388_u0;
reg		glitch_u3=1'h0;
reg		sample_u3=1'h0;
assign and_01222105_u0=cross_u3&glitch_u3;
always @(posedge bus_008dc86f_)
begin
final_u3<=not_01f33acc_u0;
end
assign not_01f33acc_u0=~and_01222105_u0;
assign bus_01848657_=or_01a9f388_u0;
always @(posedge bus_008dc86f_)
begin
cross_u3<=sample_u3;
end
assign or_01a9f388_u0=bus_009b15a4_|final_u3;
always @(posedge bus_008dc86f_)
begin
glitch_u3<=cross_u3;
end
always @(posedge bus_008dc86f_)
begin
sample_u3<=1'h1;
end
endmodule



module Add_array_untagged_0(CLK, GO, port_003da58c_, port_019a462a_, RESULT, RESULT_u14, RESULT_u15, RESULT_u16, RESULT_u17, DONE);
input		CLK;
input		GO;
input	[7:0]	port_003da58c_;
input	[7:0]	port_019a462a_;
output	[15:0]	RESULT;
output	[7:0]	RESULT_u14;
output		RESULT_u15;
output		RESULT_u16;
output		RESULT_u17;
output		DONE;
wire		simplePinWrite;
wire		simplePinWrite_u4;
wire	[7:0]	add;
wire	[7:0]	simplePinWrite_u5;
wire		simplePinWrite_u6;
wire	[15:0]	simplePinWrite_u7;
assign simplePinWrite=GO&{1{GO}};
assign simplePinWrite_u4=GO&{1{GO}};
assign add=port_003da58c_+port_019a462a_;
assign simplePinWrite_u5=add;
assign simplePinWrite_u6=GO&{1{GO}};
assign simplePinWrite_u7=16'h1&{16{1'h1}};
assign RESULT=simplePinWrite_u7;
assign RESULT_u14=simplePinWrite_u5;
assign RESULT_u15=simplePinWrite_u6;
assign RESULT_u16=simplePinWrite_u4;
assign RESULT_u17=simplePinWrite;
assign DONE=GO;
endmodule



module Add_array_Kicker_3(CLK, RESET, bus_004dd80b_);
input		CLK;
input		RESET;
output		bus_004dd80b_;
wire		bus_01fa4d51_;
wire		bus_00c9a349_;
reg		kicker_res=1'h0;
wire		bus_010ed29d_;
reg		kicker_1=1'h0;
wire		bus_011d14bd_;
reg		kicker_2=1'h0;
assign bus_01fa4d51_=bus_011d14bd_&kicker_1;
assign bus_00c9a349_=~kicker_2;
always @(posedge CLK)
begin
kicker_res<=bus_010ed29d_;
end
assign bus_010ed29d_=kicker_1&bus_011d14bd_&bus_00c9a349_;
assign bus_004dd80b_=kicker_res;
always @(posedge CLK)
begin
kicker_1<=bus_011d14bd_;
end
assign bus_011d14bd_=~RESET;
always @(posedge CLK)
begin
kicker_2<=bus_01fa4d51_;
end
endmodule


