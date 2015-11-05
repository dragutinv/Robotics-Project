// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Sat 31 Oct 2015 11:10:49 +0000
// 

module Actor_3(RESET, result_COUNT, result_DATA, CLK, result_ACK, result_SEND);
wire		untagged_0_done;
input		RESET;
input	[15:0]	result_COUNT;
input	[7:0]	result_DATA;
input		CLK;
output		result_ACK;
wire		untagged_0_go;
input		result_SEND;
wire		bus_0176f7a6_;
wire		bus_00a3cf0a_;
wire		scheduler;
wire		Actor_3_scheduler_instance_DONE;
wire		bus_01d49a7e_;
wire		Actor_3_untagged_0_instance_DONE;
wire		untagged_0;
assign untagged_0_done=bus_0176f7a6_;
assign result_ACK=untagged_0;
assign untagged_0_go=scheduler;
assign bus_0176f7a6_=Actor_3_untagged_0_instance_DONE&{1{Actor_3_untagged_0_instance_DONE}};
Actor_3_globalreset_physical_001ad991_ Actor_3_globalreset_physical_001ad991__1(.bus_012678ef_(CLK), 
  .bus_014d649a_(RESET), .bus_00a3cf0a_(bus_00a3cf0a_));
Actor_3_scheduler Actor_3_scheduler_instance(.CLK(CLK), .RESET(bus_00a3cf0a_), 
  .GO(bus_01d49a7e_), .port_009f1889_(untagged_0_done), .port_01fd0d7f_(result_SEND), 
  .RESULT(scheduler), .DONE(Actor_3_scheduler_instance_DONE));
Actor_3_Kicker_2 Actor_3_Kicker_2_1(.CLK(CLK), .RESET(bus_00a3cf0a_), .bus_01d49a7e_(bus_01d49a7e_));
Actor_3_untagged_0 Actor_3_untagged_0_instance(.GO(untagged_0_go), .port_0078a683_(result_DATA), 
  .RESULT(untagged_0), .DONE(Actor_3_untagged_0_instance_DONE));
endmodule



module Actor_3_globalreset_physical_001ad991_(bus_012678ef_, bus_014d649a_, bus_00a3cf0a_);
input		bus_012678ef_;
input		bus_014d649a_;
output		bus_00a3cf0a_;
wire		or_0007d5cc_u0;
wire		not_002cfe39_u0;
reg		glitch_u2=1'h0;
reg		cross_u2=1'h0;
wire		and_00c209a7_u0;
reg		sample_u2=1'h0;
reg		final_u2=1'h1;
assign or_0007d5cc_u0=bus_014d649a_|final_u2;
assign not_002cfe39_u0=~and_00c209a7_u0;
always @(posedge bus_012678ef_)
begin
glitch_u2<=cross_u2;
end
assign bus_00a3cf0a_=or_0007d5cc_u0;
always @(posedge bus_012678ef_)
begin
cross_u2<=sample_u2;
end
assign and_00c209a7_u0=cross_u2&glitch_u2;
always @(posedge bus_012678ef_)
begin
sample_u2<=1'h1;
end
always @(posedge bus_012678ef_)
begin
final_u2<=not_002cfe39_u0;
end
endmodule



module Actor_3_scheduler(CLK, RESET, GO, port_009f1889_, port_01fd0d7f_, RESULT, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_009f1889_;
input		port_01fd0d7f_;
output		RESULT;
output		DONE;
wire		and_u16_u0;
wire		not_u4_u0;
wire		and_u17_u0;
wire		and_u18_u0;
wire		simplePinWrite;
wire		and_u19_u0;
wire		and_u20_u0;
wire		or_u2_u0;
reg		loopControl_u0=1'h0;
assign and_u16_u0=or_u2_u0&or_u2_u0;
assign not_u4_u0=~port_01fd0d7f_;
assign and_u17_u0=and_u16_u0&not_u4_u0;
assign and_u18_u0=and_u16_u0&port_01fd0d7f_;
assign simplePinWrite=and_u19_u0&{1{and_u19_u0}};
assign and_u19_u0=and_u20_u0&and_u20_u0;
assign and_u20_u0=and_u18_u0&and_u16_u0;
assign or_u2_u0=loopControl_u0|GO;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
loopControl_u0<=1'h0;
else loopControl_u0<=and_u16_u0;
end
assign RESULT=simplePinWrite;
assign DONE=1'h0;
endmodule



module Actor_3_Kicker_2(CLK, RESET, bus_01d49a7e_);
input		CLK;
input		RESET;
output		bus_01d49a7e_;
reg		kicker_res=1'h0;
wire		bus_01c4231d_;
wire		bus_009fe7c0_;
reg		kicker_2=1'h0;
wire		bus_001908b6_;
wire		bus_0057c003_;
reg		kicker_1=1'h0;
always @(posedge CLK)
begin
kicker_res<=bus_0057c003_;
end
assign bus_01c4231d_=~kicker_2;
assign bus_009fe7c0_=~RESET;
assign bus_01d49a7e_=kicker_res;
always @(posedge CLK)
begin
kicker_2<=bus_001908b6_;
end
assign bus_001908b6_=bus_009fe7c0_&kicker_1;
assign bus_0057c003_=kicker_1&bus_009fe7c0_&bus_01c4231d_;
always @(posedge CLK)
begin
kicker_1<=bus_009fe7c0_;
end
endmodule



module Actor_3_untagged_0(GO, port_0078a683_, RESULT, DONE);
input		GO;
input	[7:0]	port_0078a683_;
output		RESULT;
output		DONE;
wire		simplePinWrite;
assign simplePinWrite=GO&{1{GO}};
assign RESULT=simplePinWrite;
assign DONE=GO;
endmodule


