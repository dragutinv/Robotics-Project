// __  ___ __ ___  _ __   ___  ___ 
// \ \/ / '__/ _ \| '_ \ / _ \/ __|
//  >  <| | | (_) | | | | (_) \__ \
// /_/\_\_|  \___/|_| |_|\___/|___/
// 
// Xronos synthesizer version
// Run date: Wed 14 Oct 2015 15:56:29 +0100
// 

module Mean_Shift_Main_input_read_Stream_to_YUV(V_DATA, V_RDY, V_COUNT, RESET, CLK, Y_ACK, V_SEND, U_RDY, stream_DATA, stream_ACK, U_COUNT, U_DATA, U_ACK, Y_COUNT, Y_DATA, stream_COUNT, Y_SEND, stream_SEND, V_ACK, Y_RDY, U_SEND);
output	[7:0]	V_DATA;
input		V_RDY;
output	[15:0]	V_COUNT;
wire		send_done;
input		RESET;
input		CLK;
wire		doneCount_go;
input		Y_ACK;
output		V_SEND;
wire		getPixValueY_done;
input		U_RDY;
input	[7:0]	stream_DATA;
output		stream_ACK;
output	[15:0]	U_COUNT;
output	[7:0]	U_DATA;
input		U_ACK;
output	[15:0]	Y_COUNT;
wire		getPixValueU_done;
wire		getPixValueY_go;
output	[7:0]	Y_DATA;
input	[15:0]	stream_COUNT;
output		Y_SEND;
wire		getPixValueU_go;
input		stream_SEND;
wire		getPixValueV_go;
input		V_ACK;
wire		getPictureSize_go;
wire		getPictureSize_done;
wire		doneCount_done;
input		Y_RDY;
wire		send_go;
wire		getPixValueV_done;
output		U_SEND;
wire	[31:0]	getPixValueY_u12;
wire		getPixValueY;
wire	[2:0]	getPixValueY_u16;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY_instance_DONE;
wire		getPixValueY_u13;
wire	[7:0]	getPixValueY_u15;
wire		getPixValueY_u17;
wire	[31:0]	getPixValueY_u14;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV_instance_DONE;
wire	[31:0]	getPixValueV_u12;
wire	[2:0]	getPixValueV_u16;
wire		getPixValueV_u17;
wire		getPixValueV;
wire		getPixValueV_u13;
wire	[7:0]	getPixValueV_u15;
wire	[31:0]	getPixValueV_u14;
wire		doneCount;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_doneCount_instance_DONE;
wire	[31:0]	doneCount_u2;
wire	[31:0]	getPixValueU_u14;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU_instance_DONE;
wire		getPixValueU_u13;
wire		getPixValueU;
wire	[2:0]	getPixValueU_u16;
wire	[31:0]	getPixValueU_u12;
wire		getPixValueU_u17;
wire	[7:0]	getPixValueU_u15;
wire		scheduler_u224;
wire		scheduler_u217;
wire		scheduler_u221;
wire		scheduler_u222;
wire		scheduler_u215;
wire		scheduler_u220;
wire		scheduler;
wire		scheduler_u227;
wire		scheduler_u216;
wire		scheduler_u225;
wire		scheduler_u223;
wire		scheduler_u226;
wire		scheduler_u218;
wire		scheduler_u219;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_scheduler_instance_DONE;
wire		scheduler_u229;
wire		scheduler_u228;
wire		bus_01c41cac_;
wire		bus_01a4dbfb_;
wire		bus_00ddf8f4_;
wire		bus_01110e2a_;
wire		bus_01ae3810_;
wire		bus_00842659_;
wire		bus_00d0e91e_;
wire		bus_01f8da3a_;
wire	[7:0]	bus_00b17408_;
wire	[7:0]	bus_00de0ea0_;
wire		bus_0033cf53_;
wire	[31:0]	bus_01701fa3_;
wire		bus_011cf1d5_;
wire	[2:0]	bus_018fc434_;
wire		bus_0115f945_;
wire	[7:0]	bus_00cb0181_;
wire	[2:0]	bus_010e5d48_;
wire		bus_00c4de6b_;
wire	[7:0]	bus_010a588d_;
wire		bus_000da7da_;
wire	[31:0]	bus_00cfdc5e_;
wire		bus_01df2d74_;
wire		bus_01579abd_;
wire		bus_017f827d_;
wire	[7:0]	bus_00bad775_;
wire		bus_001ca3d9_;
wire	[31:0]	send_u89;
wire	[31:0]	send_u86;
wire	[15:0]	send_u99;
wire		send_u88;
wire	[7:0]	send_u91;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_send_instance_DONE;
wire		send_u96;
wire		send_u85;
wire	[2:0]	send_u87;
wire	[7:0]	send_u93;
wire	[15:0]	send_u92;
wire	[2:0]	send_u84;
wire		send_u95;
wire		send_u94;
wire	[15:0]	send_u98;
wire	[31:0]	send_u81;
wire		send_u82;
wire		send;
wire	[2:0]	send_u90;
wire	[7:0]	send_u97;
wire	[31:0]	send_u83;
wire		bus_00812c03_;
wire	[7:0]	bus_01e7311b_;
wire		bus_002519c3_;
wire		bus_0143bf9d_;
wire	[7:0]	bus_01b71ff7_;
wire	[31:0]	bus_01f0e476_;
wire	[7:0]	bus_00e7aaf3_;
wire		or_012ecdeb_u0;
wire		bus_01b6d70e_;
wire		bus_0029d842_;
wire	[7:0]	bus_00c8ddc8_;
wire		bus_0194c0f1_;
wire		bus_01097ef3_;
wire	[2:0]	bus_01ba064c_;
wire		bus_01b1feff_;
wire		bus_015be2db_;
wire		bus_00d988c5_;
wire	[31:0]	bus_001ae93a_;
wire	[7:0]	bus_01ab7b69_;
wire		bus_00b86df9_;
wire	[7:0]	bus_0102e41b_;
wire	[15:0]	getPictureSize_u6;
wire	[15:0]	getPictureSize_u8;
wire		Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize_instance_DONE;
wire		getPictureSize;
wire		getPictureSize_u7;
assign V_DATA=send_u97;
assign V_COUNT=send_u99;
assign send_done=bus_01c41cac_;
assign doneCount_go=scheduler_u225;
assign V_SEND=send_u95;
assign getPixValueY_done=bus_01ae3810_;
assign stream_ACK=or_012ecdeb_u0;
assign U_COUNT=send_u92;
assign U_DATA=send_u91;
assign Y_COUNT=send_u98;
assign getPixValueU_done=bus_00842659_;
assign getPixValueY_go=scheduler_u229;
assign Y_DATA=send_u93;
assign Y_SEND=send_u96;
assign getPixValueU_go=scheduler_u224;
assign getPixValueV_go=scheduler_u226;
assign getPictureSize_go=scheduler_u227;
assign getPictureSize_done=bus_01097ef3_;
assign doneCount_done=bus_002519c3_;
assign send_go=scheduler_u228;
assign getPixValueV_done=bus_01b6d70e_;
assign U_SEND=send_u94;
Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(getPixValueY_go), .port_00a61a68_(bus_01f0e476_), 
  .port_000b53bc_(bus_01b1feff_), .port_00c3e0dc_(stream_DATA), .RESULT(getPixValueY), 
  .RESULT_u938(getPixValueY_u12), .RESULT_u939(getPixValueY_u13), .RESULT_u940(getPixValueY_u14), 
  .RESULT_u941(getPixValueY_u15), .RESULT_u942(getPixValueY_u16), .RESULT_u943(getPixValueY_u17), 
  .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY_instance_DONE));
Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(getPixValueV_go), .port_00d03979_(bus_01f0e476_), 
  .port_018b8472_(bus_0033cf53_), .port_002f8d73_(stream_DATA), .RESULT(getPixValueV), 
  .RESULT_u944(getPixValueV_u12), .RESULT_u945(getPixValueV_u13), .RESULT_u946(getPixValueV_u14), 
  .RESULT_u947(getPixValueV_u15), .RESULT_u948(getPixValueV_u16), .RESULT_u949(getPixValueV_u17), 
  .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV_instance_DONE));
Mean_Shift_Main_input_read_Stream_to_YUV_doneCount Mean_Shift_Main_input_read_Stream_to_YUV_doneCount_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(doneCount_go), .RESULT(doneCount), .RESULT_u950(doneCount_u2), 
  .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_doneCount_instance_DONE));
Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(getPixValueU_go), .port_01dc29e7_(bus_01f0e476_), 
  .port_0012b735_(bus_000da7da_), .port_01b0a34a_(stream_DATA), .RESULT(getPixValueU), 
  .RESULT_u951(getPixValueU_u12), .RESULT_u952(getPixValueU_u13), .RESULT_u953(getPixValueU_u14), 
  .RESULT_u954(getPixValueU_u15), .RESULT_u955(getPixValueU_u16), .RESULT_u956(getPixValueU_u17), 
  .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU_instance_DONE));
Mean_Shift_Main_input_read_Stream_to_YUV_scheduler Mean_Shift_Main_input_read_Stream_to_YUV_scheduler_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(bus_001ca3d9_), .port_000555fa_(bus_01110e2a_), .port_009dee67_(bus_00ddf8f4_), 
  .port_01fe7fca_(bus_01a4dbfb_), .port_00c32775_(bus_0194c0f1_), .port_01b5fe26_(bus_0143bf9d_), 
  .port_00fae178_({bus_00e7aaf3_[7], 2'b0, bus_00e7aaf3_[4], 4'b0}), .port_001f8f84_({bus_01b71ff7_[7], 1'b0, bus_01b71ff7_[5:4], 4'b0}), 
  .port_016034ca_(bus_01f0e476_), .port_01f1269c_(Y_RDY), .port_0144b732_(getPixValueV_done), 
  .port_01d6f6d4_(stream_SEND), .port_0110aec6_(send_done), .port_01965555_(getPixValueY_done), 
  .port_00030ee2_(U_RDY), .port_016ff6a8_(getPictureSize_done), .port_00ccdb66_(getPixValueU_done), 
  .port_01e94456_(V_RDY), .port_00165ddc_(doneCount_done), .RESULT(scheduler), 
  .RESULT_u957(scheduler_u215), .RESULT_u958(scheduler_u216), .RESULT_u959(scheduler_u217), 
  .RESULT_u960(scheduler_u218), .RESULT_u961(scheduler_u219), .RESULT_u962(scheduler_u220), 
  .RESULT_u963(scheduler_u221), .RESULT_u964(scheduler_u222), .RESULT_u965(scheduler_u223), 
  .RESULT_u966(scheduler_u224), .RESULT_u967(scheduler_u225), .RESULT_u968(scheduler_u226), 
  .RESULT_u969(scheduler_u227), .RESULT_u970(scheduler_u228), .RESULT_u971(scheduler_u229), 
  .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_scheduler_instance_DONE));
assign bus_01c41cac_=Mean_Shift_Main_input_read_Stream_to_YUV_send_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_send_instance_DONE}};
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s10 Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s10_1(.bus_004d48de_(CLK), 
  .bus_01eb1f65_(bus_00d0e91e_), .bus_00822a46_(scheduler_u218), .bus_0197992a_(scheduler_u219), 
  .bus_01a4dbfb_(bus_01a4dbfb_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s1 Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s1_1(.bus_01c07d39_(CLK), 
  .bus_005d3664_(bus_00d0e91e_), .bus_0180c335_(scheduler_u216), .bus_00e49913_(scheduler_u217), 
  .bus_00ddf8f4_(bus_00ddf8f4_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s0 Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s0_1(.bus_00ec2cf6_(CLK), 
  .bus_017bf0e7_(bus_00d0e91e_), .bus_00de0913_(scheduler), .bus_011340a1_(scheduler_u215), 
  .bus_01110e2a_(bus_01110e2a_));
assign bus_01ae3810_=Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY_instance_DONE}};
assign bus_00842659_=Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU_instance_DONE}};
Mean_Shift_Main_input_read_Stream_to_YUV_globalreset_physical_01fd2cba_ Mean_Shift_Main_input_read_Stream_to_YUV_globalreset_physical_01fd2cba__1(.bus_01eb5b7c_(CLK), 
  .bus_00ee6d14_(RESET), .bus_00d0e91e_(bus_00d0e91e_));
Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_00c903db_ Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_00c903db__1(.bus_01111adb_(CLK), 
  .bus_01fa3d22_(bus_00d0e91e_), .bus_000d25e7_(bus_00812c03_), .bus_01ce9948_(bus_01e7311b_), 
  .bus_010b766a_(getPixValueV_u13), .bus_00febef1_(getPixValueV_u15), .bus_01751ade_(getPixValueV_u14), 
  .bus_0134722c_(3'h1), .bus_016496a4_(send_u82), .bus_012dca61_(send_u83), .bus_00c7473d_(3'h1), 
  .bus_00b17408_(bus_00b17408_), .bus_01701fa3_(bus_01701fa3_), .bus_011cf1d5_(bus_011cf1d5_), 
  .bus_01f8da3a_(bus_01f8da3a_), .bus_018fc434_(bus_018fc434_), .bus_0033cf53_(bus_0033cf53_), 
  .bus_00de0ea0_(bus_00de0ea0_), .bus_0115f945_(bus_0115f945_));
Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_01d7fe21_ Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_01d7fe21__1(.bus_00cc1089_(CLK), 
  .bus_01519d09_(bus_00d0e91e_), .bus_009d190c_(bus_017f827d_), .bus_01baf38a_(bus_00bad775_), 
  .bus_01c9ee00_(getPixValueU_u13), .bus_01407d2b_(getPixValueU_u15), .bus_01f692c7_(getPixValueU_u14), 
  .bus_0176467c_(3'h1), .bus_0029fe9a_(send_u85), .bus_018e9371_(send_u86), .bus_00576b93_(3'h1), 
  .bus_00cb0181_(bus_00cb0181_), .bus_00cfdc5e_(bus_00cfdc5e_), .bus_01df2d74_(bus_01df2d74_), 
  .bus_00c4de6b_(bus_00c4de6b_), .bus_010e5d48_(bus_010e5d48_), .bus_000da7da_(bus_000da7da_), 
  .bus_010a588d_(bus_010a588d_), .bus_01579abd_(bus_01579abd_));
Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_011cd3c0_ Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_011cd3c0__1(.CLK_u37(CLK), 
  .bus_0095e7c9_(bus_00d0e91e_), .bus_00ae03ba_(bus_00cfdc5e_), .bus_013b564e_(3'h1), 
  .bus_01d4632b_(bus_00c4de6b_), .bus_00055b54_(bus_01df2d74_), .bus_00bec138_(bus_00cb0181_), 
  .bus_00bad775_(bus_00bad775_), .bus_017f827d_(bus_017f827d_));
Mean_Shift_Main_input_read_Stream_to_YUV_Kicker_19 Mean_Shift_Main_input_read_Stream_to_YUV_Kicker_19_1(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .bus_001ca3d9_(bus_001ca3d9_));
Mean_Shift_Main_input_read_Stream_to_YUV_send Mean_Shift_Main_input_read_Stream_to_YUV_send_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(send_go), .port_00aefaa7_(bus_01f0e476_), .port_017c1041_(bus_0115f945_), 
  .port_0129635f_(bus_00de0ea0_), .port_01ff713b_(bus_01579abd_), .port_013cee86_(bus_010a588d_), 
  .port_00718fe5_(bus_00d988c5_), .port_0134d75e_(bus_01ab7b69_), .RESULT(send), 
  .RESULT_u972(send_u81), .RESULT_u973(send_u82), .RESULT_u974(send_u83), .RESULT_u975(send_u84), 
  .RESULT_u979(send_u85), .RESULT_u980(send_u86), .RESULT_u981(send_u87), .RESULT_u976(send_u88), 
  .RESULT_u977(send_u89), .RESULT_u978(send_u90), .RESULT_u983(send_u91), .RESULT_u982(send_u92), 
  .RESULT_u984(send_u93), .RESULT_u985(send_u94), .RESULT_u986(send_u95), .RESULT_u987(send_u96), 
  .RESULT_u988(send_u97), .RESULT_u989(send_u98), .RESULT_u990(send_u99), .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_send_instance_DONE));
Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_012054b3_ Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_012054b3__1(.CLK_u38(CLK), 
  .bus_00c99fe4_(bus_00d0e91e_), .bus_01c846d7_(bus_01701fa3_), .bus_0164d95c_(3'h1), 
  .bus_016dc613_(bus_01f8da3a_), .bus_003da574_(bus_011cf1d5_), .bus_01d515a9_(bus_00b17408_), 
  .bus_01e7311b_(bus_01e7311b_), .bus_00812c03_(bus_00812c03_));
assign bus_002519c3_=Mean_Shift_Main_input_read_Stream_to_YUV_doneCount_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_doneCount_instance_DONE}};
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s3 Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s3_1(.bus_01c8c297_(CLK), 
  .bus_015f82e4_(bus_00d0e91e_), .bus_01581d51_(scheduler_u222), .bus_01a361e7_(scheduler_u223), 
  .bus_0143bf9d_(bus_0143bf9d_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureWidthLuma Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureWidthLuma_1(.bus_005c7d11_(CLK), 
  .bus_00171155_(bus_00d0e91e_), .bus_01cffca8_(getPictureSize), .bus_0080c98f_(16'hb0), 
  .bus_01b71ff7_(bus_01b71ff7_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_count Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_count_1(.bus_018cd8cf_(CLK), 
  .bus_01ee21b5_(bus_00d0e91e_), .bus_00954b5b_(getPixValueY), .bus_012ee8ed_(getPixValueY_u12), 
  .bus_006a5fef_(getPixValueU), .bus_016683ea_(getPixValueU_u12), .bus_01d1d506_(getPixValueV), 
  .bus_01435529_(getPixValueV_u12), .bus_0097e50d_(doneCount), .bus_013347e1_(32'h0), 
  .bus_01ce1016_(send), .bus_006a461c_(send_u81), .bus_01f0e476_(bus_01f0e476_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureHeightLuma Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureHeightLuma_1(.bus_003bf227_(CLK), 
  .bus_0196e8d1_(bus_00d0e91e_), .bus_00ad75b3_(getPictureSize_u7), .bus_00c98d67_(16'h90), 
  .bus_00e7aaf3_(bus_00e7aaf3_));
assign or_012ecdeb_u0=getPixValueY_u17|getPixValueU_u17|getPixValueV_u17;
assign bus_01b6d70e_=Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV_instance_DONE}};
Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_014603c2_ Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_014603c2__1(.CLK_u39(CLK), 
  .bus_010a733e_(bus_00d0e91e_), .bus_00ceb9b6_(bus_001ae93a_), .bus_00176c97_(3'h1), 
  .bus_01adc2b0_(bus_015be2db_), .bus_0048f122_(bus_00b86df9_), .bus_00dcae18_(bus_0102e41b_), 
  .bus_00c8ddc8_(bus_00c8ddc8_), .bus_0029d842_(bus_0029d842_));
Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s2 Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s2_1(.bus_01f5bb6c_(CLK), 
  .bus_01e3ef08_(bus_00d0e91e_), .bus_01169bd4_(scheduler_u220), .bus_017a1232_(scheduler_u221), 
  .bus_0194c0f1_(bus_0194c0f1_));
assign bus_01097ef3_=Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize_instance_DONE&{1{Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize_instance_DONE}};
Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_0091ede2_ Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_0091ede2__1(.bus_00d35f4b_(CLK), 
  .bus_011548d6_(bus_00d0e91e_), .bus_00617d44_(bus_0029d842_), .bus_006ae1a0_(bus_00c8ddc8_), 
  .bus_00dcc10e_(getPixValueY_u13), .bus_0044c5e9_(getPixValueY_u15), .bus_00a6b21b_(getPixValueY_u14), 
  .bus_00324297_(3'h1), .bus_01c0d04d_(send_u88), .bus_00bbbfed_(send_u89), .bus_0105c15c_(3'h1), 
  .bus_0102e41b_(bus_0102e41b_), .bus_001ae93a_(bus_001ae93a_), .bus_00b86df9_(bus_00b86df9_), 
  .bus_015be2db_(bus_015be2db_), .bus_01ba064c_(bus_01ba064c_), .bus_01b1feff_(bus_01b1feff_), 
  .bus_01ab7b69_(bus_01ab7b69_), .bus_00d988c5_(bus_00d988c5_));
Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize_instance(.CLK(CLK), 
  .RESET(bus_00d0e91e_), .GO(getPictureSize_go), .RESULT(getPictureSize), .RESULT_u991(getPictureSize_u6), 
  .RESULT_u992(getPictureSize_u7), .RESULT_u993(getPictureSize_u8), .DONE(Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize_instance_DONE));
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueY(CLK, RESET, GO, port_00a61a68_, port_000b53bc_, port_00c3e0dc_, RESULT, RESULT_u938, RESULT_u939, RESULT_u940, RESULT_u941, RESULT_u942, RESULT_u943, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00a61a68_;
input		port_000b53bc_;
input	[7:0]	port_00c3e0dc_;
output		RESULT;
output	[31:0]	RESULT_u938;
output		RESULT_u939;
output	[31:0]	RESULT_u940;
output	[7:0]	RESULT_u941;
output	[2:0]	RESULT_u942;
output		RESULT_u943;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	add;
wire		or_u416_u0;
reg		reg_01f2ef5d_u0=1'h0;
wire		and_u1475_u0;
wire	[31:0]	add_u434;
reg		reg_01e526bc_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign add=32'h0+port_00a61a68_;
assign or_u416_u0=and_u1475_u0|RESET;
always @(posedge CLK or posedge GO or posedge or_u416_u0)
begin
if (or_u416_u0)
reg_01f2ef5d_u0<=1'h0;
else if (GO)
reg_01f2ef5d_u0<=1'h1;
else reg_01f2ef5d_u0<=reg_01f2ef5d_u0;
end
assign and_u1475_u0=reg_01f2ef5d_u0&port_000b53bc_;
assign add_u434=port_00a61a68_+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01e526bc_u0<=1'h0;
else reg_01e526bc_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u938=add_u434;
assign RESULT_u939=GO;
assign RESULT_u940=add;
assign RESULT_u941=port_00c3e0dc_;
assign RESULT_u942=3'h1;
assign RESULT_u943=simplePinWrite;
assign DONE=reg_01e526bc_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueV(CLK, RESET, GO, port_00d03979_, port_018b8472_, port_002f8d73_, RESULT, RESULT_u944, RESULT_u945, RESULT_u946, RESULT_u947, RESULT_u948, RESULT_u949, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00d03979_;
input		port_018b8472_;
input	[7:0]	port_002f8d73_;
output		RESULT;
output	[31:0]	RESULT_u944;
output		RESULT_u945;
output	[31:0]	RESULT_u946;
output	[7:0]	RESULT_u947;
output	[2:0]	RESULT_u948;
output		RESULT_u949;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	add;
wire		and_u1476_u0;
reg		reg_0104d833_u0=1'h0;
wire		or_u417_u0;
wire	[31:0]	add_u435;
reg		reg_0066ccd4_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign add=32'h0+port_00d03979_;
assign and_u1476_u0=reg_0104d833_u0&port_018b8472_;
always @(posedge CLK or posedge GO or posedge or_u417_u0)
begin
if (or_u417_u0)
reg_0104d833_u0<=1'h0;
else if (GO)
reg_0104d833_u0<=1'h1;
else reg_0104d833_u0<=reg_0104d833_u0;
end
assign or_u417_u0=and_u1476_u0|RESET;
assign add_u435=port_00d03979_+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0066ccd4_u0<=1'h0;
else reg_0066ccd4_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u944=add_u435;
assign RESULT_u945=GO;
assign RESULT_u946=add;
assign RESULT_u947=port_002f8d73_;
assign RESULT_u948=3'h1;
assign RESULT_u949=simplePinWrite;
assign DONE=reg_0066ccd4_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_doneCount(CLK, RESET, GO, RESULT, RESULT_u950, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[31:0]	RESULT_u950;
output		DONE;
reg		reg_01c0b1c6_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_01c0b1c6_u0<=1'h0;
else reg_01c0b1c6_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u950=32'h0;
assign DONE=reg_01c0b1c6_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_getPixValueU(CLK, RESET, GO, port_01dc29e7_, port_0012b735_, port_01b0a34a_, RESULT, RESULT_u951, RESULT_u952, RESULT_u953, RESULT_u954, RESULT_u955, RESULT_u956, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_01dc29e7_;
input		port_0012b735_;
input	[7:0]	port_01b0a34a_;
output		RESULT;
output	[31:0]	RESULT_u951;
output		RESULT_u952;
output	[31:0]	RESULT_u953;
output	[7:0]	RESULT_u954;
output	[2:0]	RESULT_u955;
output		RESULT_u956;
output		DONE;
wire		simplePinWrite;
wire	[31:0]	add;
wire		or_u418_u0;
wire		and_u1477_u0;
reg		reg_018875fe_u0=1'h0;
wire	[31:0]	add_u436;
reg		reg_007c48f4_u0=1'h0;
assign simplePinWrite=GO&{1{GO}};
assign add=32'h0+port_01dc29e7_;
assign or_u418_u0=and_u1477_u0|RESET;
assign and_u1477_u0=reg_018875fe_u0&port_0012b735_;
always @(posedge CLK or posedge GO or posedge or_u418_u0)
begin
if (or_u418_u0)
reg_018875fe_u0<=1'h0;
else if (GO)
reg_018875fe_u0<=1'h1;
else reg_018875fe_u0<=reg_018875fe_u0;
end
assign add_u436=port_01dc29e7_+32'h1;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_007c48f4_u0<=1'h0;
else reg_007c48f4_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u951=add_u436;
assign RESULT_u952=GO;
assign RESULT_u953=add;
assign RESULT_u954=port_01b0a34a_;
assign RESULT_u955=3'h1;
assign RESULT_u956=simplePinWrite;
assign DONE=reg_007c48f4_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_scheduler(CLK, RESET, GO, port_000555fa_, port_009dee67_, port_01fe7fca_, port_00c32775_, port_01b5fe26_, port_00fae178_, port_001f8f84_, port_016034ca_, port_01f1269c_, port_0144b732_, port_01d6f6d4_, port_0110aec6_, port_01965555_, port_00030ee2_, port_016ff6a8_, port_01e94456_, port_00ccdb66_, port_00165ddc_, RESULT, RESULT_u957, RESULT_u958, RESULT_u959, RESULT_u960, RESULT_u961, RESULT_u962, RESULT_u963, RESULT_u964, RESULT_u965, RESULT_u966, RESULT_u967, RESULT_u968, RESULT_u969, RESULT_u970, RESULT_u971, DONE);
input		CLK;
input		RESET;
input		GO;
input		port_000555fa_;
input		port_009dee67_;
input		port_01fe7fca_;
input		port_00c32775_;
input		port_01b5fe26_;
input	[7:0]	port_00fae178_;
input	[7:0]	port_001f8f84_;
input	[31:0]	port_016034ca_;
input		port_01f1269c_;
input		port_0144b732_;
input		port_01d6f6d4_;
input		port_0110aec6_;
input		port_01965555_;
input		port_00030ee2_;
input		port_016ff6a8_;
input		port_01e94456_;
input		port_00ccdb66_;
input		port_00165ddc_;
output		RESULT;
output		RESULT_u957;
output		RESULT_u958;
output		RESULT_u959;
output		RESULT_u960;
output		RESULT_u961;
output		RESULT_u962;
output		RESULT_u963;
output		RESULT_u964;
output		RESULT_u965;
output		RESULT_u966;
output		RESULT_u967;
output		RESULT_u968;
output		RESULT_u969;
output		RESULT_u970;
output		RESULT_u971;
output		DONE;
wire	[31:0]	multiply_a_unsigned;
wire	[31:0]	multiply_b_unsigned;
wire	[31:0]	multiply;
wire		equals;
wire signed	[31:0]	equals_a_signed;
wire	[31:0]	equals_b_unsigned;
wire		and_u1478_u0;
wire		and_u1479_u0;
wire		and_u1480_u0;
wire		not_u304_u0;
wire		and_u1481_u0;
wire		not_u305_u0;
wire		and_u1482_u0;
wire		and_u1483_u0;
wire		simplePinWrite;
wire		and_u1484_u0;
wire		not_u306_u0;
wire		and_u1485_u0;
wire		and_u1486_u0;
wire		simplePinWrite_u210;
wire		and_u1487_u0;
wire		and_u1488_u0;
wire		and_u1489_u0;
wire		and_u1490_u0;
wire		and_u1491_u0;
wire		and_u1492_u0;
wire		not_u307_u0;
wire		and_u1493_u0;
wire		not_u308_u0;
wire		and_u1494_u0;
wire		and_u1495_u0;
wire		simplePinWrite_u211;
wire		and_u1496_u0;
wire		and_u1497_u0;
wire		not_u309_u0;
wire		and_u1498_u0;
wire		simplePinWrite_u212;
wire		and_u1499_u0;
wire		and_u1500_u0;
wire		and_u1501_u0;
wire		and_u1502_u0;
wire		and_u1503_u0;
wire		not_u310_u0;
wire		and_u1504_u0;
wire		and_u1505_u0;
wire		simplePinWrite_u213;
wire		and_u1506_u0;
wire		and_u1507_u0;
wire		and_u1508_u0;
wire		and_u1509_u0;
wire		not_u311_u0;
wire		and_u1510_u0;
wire		and_u1511_u0;
wire		not_u312_u0;
wire		and_u1512_u0;
wire		simplePinWrite_u214;
wire		and_u1513_u0;
wire		and_u1514_u0;
wire		not_u313_u0;
wire		and_u1515_u0;
wire		simplePinWrite_u215;
wire		and_u1516_u0;
wire		and_u1517_u0;
wire		and_u1518_u0;
wire		and_u1519_u0;
wire		and_u1520_u0;
wire		and_u1521_u0;
wire		not_u314_u0;
wire		and_u1522_u0;
wire		not_u315_u0;
wire		and_u1523_u0;
wire		and_u1524_u0;
wire		simplePinWrite_u216;
wire		and_u1525_u0;
wire		and_u1526_u0;
wire		not_u316_u0;
wire		and_u1527_u0;
wire		simplePinWrite_u217;
wire		and_u1528_u0;
wire		and_u1529_u0;
wire		and_u1530_u0;
wire		and_u1531_u0;
wire		and_u1532_u0;
wire		mux_u482;
wire		or_u419_u0;
wire		or_u420_u0;
wire		mux_u483_u0;
wire		mux_u484_u0;
wire		or_u421_u0;
wire		doneCount_go_merge;
wire		or_u422_u0;
wire		mux_u485_u0;
wire		mux_u486_u0;
wire		or_u423_u0;
reg		syncEnable_u350=1'h0;
reg		syncEnable_u351_u0=1'h0;
reg		syncEnable_u352_u0=1'h0;
reg		block_GO_delayed_u43=1'h0;
reg		syncEnable_u353_u0=1'h0;
reg		syncEnable_u354_u0=1'h0;
reg		syncEnable_u355_u0=1'h0;
reg		syncEnable_u356_u0=1'h0;
reg		syncEnable_u357_u0=1'h0;
reg		syncEnable_u358_u0=1'h0;
reg		reg_0108dfd1_u0=1'h0;
wire		and_u1533_u0;
reg		reg_0108dfd1_result_delayed_u0=1'h0;
reg		loopControl_u33=1'h0;
wire		or_u424_u0;
reg		syncEnable_u359_u0=1'h0;
wire		mux_u487_u0;
wire		or_u425_u0;
wire		mux_u488_u0;
wire		or_u426_u0;
reg		reg_0025c45a_u0=1'h0;
wire		or_u427_u0;
wire		mux_u489_u0;
reg		reg_0025c45a_result_delayed_u0=1'h0;
wire		mux_u490_u0;
wire		or_u428_u0;
wire		or_u429_u0;
wire		mux_u491_u0;
assign multiply_a_unsigned={24'b0, port_001f8f84_[7], 1'b0, port_001f8f84_[5:4], 4'b0};
assign multiply_b_unsigned={24'b0, port_00fae178_[7], 2'b0, port_00fae178_[4], 4'b0};
assign multiply=multiply_a_unsigned*multiply_b_unsigned;
assign equals_a_signed=port_016034ca_;
assign equals_b_unsigned={multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17], multiply[17:0]};
assign equals=equals_a_signed==equals_b_unsigned;
assign and_u1478_u0=port_01f1269c_&port_00030ee2_;
assign and_u1479_u0=and_u1478_u0&port_01e94456_;
assign and_u1480_u0=block_GO_delayed_u43&syncEnable_u356_u0;
assign not_u304_u0=~syncEnable_u356_u0;
assign and_u1481_u0=block_GO_delayed_u43&not_u304_u0;
assign not_u305_u0=~syncEnable_u351_u0;
assign and_u1482_u0=and_u1491_u0&syncEnable_u351_u0;
assign and_u1483_u0=and_u1491_u0&not_u305_u0;
assign simplePinWrite=and_u1484_u0&{1{and_u1484_u0}};
assign and_u1484_u0=and_u1489_u0&and_u1489_u0;
assign not_u306_u0=~syncEnable_u352_u0;
assign and_u1485_u0=and_u1490_u0&syncEnable_u352_u0;
assign and_u1486_u0=and_u1490_u0&not_u306_u0;
assign simplePinWrite_u210=and_u1487_u0&{1{and_u1487_u0}};
assign and_u1487_u0=and_u1488_u0&and_u1488_u0;
assign and_u1488_u0=and_u1485_u0&and_u1490_u0;
assign and_u1489_u0=and_u1482_u0&and_u1491_u0;
assign and_u1490_u0=and_u1483_u0&and_u1491_u0;
assign and_u1491_u0=and_u1480_u0&block_GO_delayed_u43;
assign and_u1492_u0=block_GO_delayed_u43&not_u307_u0;
assign not_u307_u0=~syncEnable_u350;
assign and_u1493_u0=block_GO_delayed_u43&syncEnable_u350;
assign not_u308_u0=~syncEnable_u351_u0;
assign and_u1494_u0=and_u1503_u0&syncEnable_u351_u0;
assign and_u1495_u0=and_u1503_u0&not_u308_u0;
assign simplePinWrite_u211=and_u1496_u0&{1{and_u1496_u0}};
assign and_u1496_u0=and_u1502_u0&and_u1502_u0;
assign and_u1497_u0=and_u1501_u0&syncEnable_u355_u0;
assign not_u309_u0=~syncEnable_u355_u0;
assign and_u1498_u0=and_u1501_u0&not_u309_u0;
assign simplePinWrite_u212=and_u1499_u0&{1{and_u1499_u0}};
assign and_u1499_u0=and_u1500_u0&and_u1500_u0;
assign and_u1500_u0=and_u1497_u0&and_u1501_u0;
assign and_u1501_u0=and_u1495_u0&and_u1503_u0;
assign and_u1502_u0=and_u1494_u0&and_u1503_u0;
assign and_u1503_u0=and_u1493_u0&block_GO_delayed_u43;
assign not_u310_u0=~syncEnable_u358_u0;
assign and_u1504_u0=block_GO_delayed_u43&not_u310_u0;
assign and_u1505_u0=block_GO_delayed_u43&syncEnable_u358_u0;
assign simplePinWrite_u213=and_u1506_u0&{1{and_u1506_u0}};
assign and_u1506_u0=and_u1507_u0&and_u1507_u0;
assign and_u1507_u0=and_u1508_u0&and_u1508_u0;
assign and_u1508_u0=and_u1505_u0&block_GO_delayed_u43;
assign and_u1509_u0=block_GO_delayed_u43&not_u311_u0;
assign not_u311_u0=~syncEnable_u353_u0;
assign and_u1510_u0=block_GO_delayed_u43&syncEnable_u353_u0;
assign and_u1511_u0=and_u1520_u0&syncEnable_u351_u0;
assign not_u312_u0=~syncEnable_u351_u0;
assign and_u1512_u0=and_u1520_u0&not_u312_u0;
assign simplePinWrite_u214=and_u1513_u0&{1{and_u1513_u0}};
assign and_u1513_u0=and_u1518_u0&and_u1518_u0;
assign and_u1514_u0=and_u1519_u0&not_u313_u0;
assign not_u313_u0=~syncEnable_u357_u0;
assign and_u1515_u0=and_u1519_u0&syncEnable_u357_u0;
assign simplePinWrite_u215=and_u1516_u0&{1{and_u1516_u0}};
assign and_u1516_u0=and_u1517_u0&and_u1517_u0;
assign and_u1517_u0=and_u1515_u0&and_u1519_u0;
assign and_u1518_u0=and_u1511_u0&and_u1520_u0;
assign and_u1519_u0=and_u1512_u0&and_u1520_u0;
assign and_u1520_u0=and_u1510_u0&block_GO_delayed_u43;
assign and_u1521_u0=block_GO_delayed_u43&not_u314_u0;
assign not_u314_u0=~syncEnable_u354_u0;
assign and_u1522_u0=block_GO_delayed_u43&syncEnable_u354_u0;
assign not_u315_u0=~syncEnable_u351_u0;
assign and_u1523_u0=and_u1532_u0&syncEnable_u351_u0;
assign and_u1524_u0=and_u1532_u0&not_u315_u0;
assign simplePinWrite_u216=and_u1525_u0&{1{and_u1525_u0}};
assign and_u1525_u0=and_u1530_u0&and_u1530_u0;
assign and_u1526_u0=and_u1529_u0&and_u1479_u0;
assign not_u316_u0=~and_u1479_u0;
assign and_u1527_u0=and_u1529_u0&not_u316_u0;
assign simplePinWrite_u217=and_u1528_u0&{1{and_u1528_u0}};
assign and_u1528_u0=and_u1526_u0&and_u1529_u0;
assign and_u1529_u0=and_u1531_u0&and_u1531_u0;
assign and_u1530_u0=and_u1523_u0&and_u1532_u0;
assign and_u1531_u0=and_u1524_u0&and_u1532_u0;
assign and_u1532_u0=and_u1522_u0&block_GO_delayed_u43;
assign mux_u482=(and_u1496_u0)?1'h1:1'h0;
assign or_u419_u0=and_u1496_u0|and_u1513_u0;
assign or_u420_u0=and_u1484_u0|and_u1506_u0;
assign mux_u483_u0=(and_u1484_u0)?1'h0:1'h1;
assign mux_u484_u0=(and_u1484_u0)?1'h1:1'h0;
assign or_u421_u0=and_u1484_u0|and_u1496_u0;
assign doneCount_go_merge=simplePinWrite|simplePinWrite_u211|simplePinWrite_u214|simplePinWrite_u216;
assign or_u422_u0=and_u1513_u0|and_u1525_u0;
assign mux_u485_u0=(and_u1513_u0)?1'h1:1'h0;
assign mux_u486_u0=(and_u1506_u0)?1'h0:1'h1;
assign or_u423_u0=and_u1506_u0|and_u1525_u0;
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u350<=port_009dee67_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u351_u0<=equals;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u352_u0<=port_01d6f6d4_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
block_GO_delayed_u43<=1'h0;
else block_GO_delayed_u43<=and_u1533_u0;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u353_u0<=port_00c32775_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u354_u0<=port_01b5fe26_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u355_u0<=port_01d6f6d4_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u356_u0<=port_000555fa_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u357_u0<=port_01d6f6d4_;
end
always @(posedge CLK)
begin
if (and_u1533_u0)
syncEnable_u358_u0<=port_01fe7fca_;
end
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0108dfd1_u0<=1'h0;
else reg_0108dfd1_u0<=and_u1533_u0;
end
assign and_u1533_u0=or_u424_u0&or_u424_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0108dfd1_result_delayed_u0<=1'h0;
else reg_0108dfd1_result_delayed_u0<=reg_0108dfd1_u0;
end
always @(posedge CLK or posedge syncEnable_u359_u0)
begin
if (syncEnable_u359_u0)
loopControl_u33<=1'h0;
else loopControl_u33<=reg_0108dfd1_result_delayed_u0;
end
assign or_u424_u0=loopControl_u33|reg_0025c45a_result_delayed_u0;
always @(posedge CLK)
begin
if (reg_0025c45a_result_delayed_u0)
syncEnable_u359_u0<=RESET;
end
assign mux_u487_u0=(GO)?1'h0:mux_u484_u0;
assign or_u425_u0=GO|or_u421_u0;
assign mux_u488_u0=(GO)?1'h0:mux_u482;
assign or_u426_u0=GO|or_u419_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0025c45a_u0<=1'h0;
else reg_0025c45a_u0<=GO;
end
assign or_u427_u0=GO|or_u420_u0;
assign mux_u489_u0=(GO)?1'h0:mux_u483_u0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_0025c45a_result_delayed_u0<=1'h0;
else reg_0025c45a_result_delayed_u0<=reg_0025c45a_u0;
end
assign mux_u490_u0=(GO)?1'h1:mux_u486_u0;
assign or_u428_u0=GO|or_u423_u0;
assign or_u429_u0=GO|or_u422_u0;
assign mux_u491_u0=(GO)?1'h0:mux_u485_u0;
assign RESULT=or_u427_u0;
assign RESULT_u957=mux_u489_u0;
assign RESULT_u958=or_u425_u0;
assign RESULT_u959=mux_u487_u0;
assign RESULT_u960=or_u428_u0;
assign RESULT_u961=mux_u490_u0;
assign RESULT_u962=or_u426_u0;
assign RESULT_u963=mux_u488_u0;
assign RESULT_u964=or_u429_u0;
assign RESULT_u965=mux_u491_u0;
assign RESULT_u966=simplePinWrite_u212;
assign RESULT_u967=doneCount_go_merge;
assign RESULT_u968=simplePinWrite_u215;
assign RESULT_u969=simplePinWrite_u213;
assign RESULT_u970=simplePinWrite_u217;
assign RESULT_u971=simplePinWrite_u210;
assign DONE=1'h0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s10(bus_004d48de_, bus_01eb1f65_, bus_00822a46_, bus_0197992a_, bus_01a4dbfb_);
input		bus_004d48de_;
input		bus_01eb1f65_;
input		bus_00822a46_;
input		bus_0197992a_;
output		bus_01a4dbfb_;
reg		stateVar_state_s10_u4=1'h0;
assign bus_01a4dbfb_=stateVar_state_s10_u4;
always @(posedge bus_004d48de_ or posedge bus_01eb1f65_)
begin
if (bus_01eb1f65_)
stateVar_state_s10_u4<=1'h0;
else if (bus_00822a46_)
stateVar_state_s10_u4<=bus_0197992a_;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s1(bus_01c07d39_, bus_005d3664_, bus_0180c335_, bus_00e49913_, bus_00ddf8f4_);
input		bus_01c07d39_;
input		bus_005d3664_;
input		bus_0180c335_;
input		bus_00e49913_;
output		bus_00ddf8f4_;
reg		stateVar_state_s1_u17=1'h0;
always @(posedge bus_01c07d39_ or posedge bus_005d3664_)
begin
if (bus_005d3664_)
stateVar_state_s1_u17<=1'h0;
else if (bus_0180c335_)
stateVar_state_s1_u17<=bus_00e49913_;
end
assign bus_00ddf8f4_=stateVar_state_s1_u17;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s0(bus_00ec2cf6_, bus_017bf0e7_, bus_00de0913_, bus_011340a1_, bus_01110e2a_);
input		bus_00ec2cf6_;
input		bus_017bf0e7_;
input		bus_00de0913_;
input		bus_011340a1_;
output		bus_01110e2a_;
reg		stateVar_state_s0_u15=1'h0;
always @(posedge bus_00ec2cf6_ or posedge bus_017bf0e7_)
begin
if (bus_017bf0e7_)
stateVar_state_s0_u15<=1'h0;
else if (bus_00de0913_)
stateVar_state_s0_u15<=bus_011340a1_;
end
assign bus_01110e2a_=stateVar_state_s0_u15;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_globalreset_physical_01fd2cba_(bus_01eb5b7c_, bus_00ee6d14_, bus_00d0e91e_);
input		bus_01eb5b7c_;
input		bus_00ee6d14_;
output		bus_00d0e91e_;
reg		glitch_u19=1'h0;
wire		not_00c466d0_u0;
wire		and_01d7bfec_u0;
wire		or_013b5317_u0;
reg		final_u19=1'h1;
reg		cross_u19=1'h0;
reg		sample_u19=1'h0;
always @(posedge bus_01eb5b7c_)
begin
glitch_u19<=cross_u19;
end
assign not_00c466d0_u0=~and_01d7bfec_u0;
assign and_01d7bfec_u0=cross_u19&glitch_u19;
assign bus_00d0e91e_=or_013b5317_u0;
assign or_013b5317_u0=bus_00ee6d14_|final_u19;
always @(posedge bus_01eb5b7c_)
begin
final_u19<=not_00c466d0_u0;
end
always @(posedge bus_01eb5b7c_)
begin
cross_u19<=sample_u19;
end
always @(posedge bus_01eb5b7c_)
begin
sample_u19<=1'h1;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_00c903db_(bus_01111adb_, bus_01fa3d22_, bus_000d25e7_, bus_01ce9948_, bus_010b766a_, bus_00febef1_, bus_01751ade_, bus_0134722c_, bus_016496a4_, bus_012dca61_, bus_00c7473d_, bus_00b17408_, bus_01701fa3_, bus_011cf1d5_, bus_01f8da3a_, bus_018fc434_, bus_0033cf53_, bus_00de0ea0_, bus_0115f945_);
input		bus_01111adb_;
input		bus_01fa3d22_;
input		bus_000d25e7_;
input	[7:0]	bus_01ce9948_;
input		bus_010b766a_;
input	[7:0]	bus_00febef1_;
input	[31:0]	bus_01751ade_;
input	[2:0]	bus_0134722c_;
input		bus_016496a4_;
input	[31:0]	bus_012dca61_;
input	[2:0]	bus_00c7473d_;
output	[7:0]	bus_00b17408_;
output	[31:0]	bus_01701fa3_;
output		bus_011cf1d5_;
output		bus_01f8da3a_;
output	[2:0]	bus_018fc434_;
output		bus_0033cf53_;
output	[7:0]	bus_00de0ea0_;
output		bus_0115f945_;
wire		or_00d40f0c_u0;
wire		and_019f4871_u0;
wire		not_015af794_u0;
reg		done_qual_u77=1'h0;
wire		not_0008662c_u0;
reg		done_qual_u78_u0=1'h0;
wire		or_0116db5f_u0;
wire		or_0193ad7b_u0;
wire		and_0075de82_u0;
wire	[31:0]	mux_005a4d8b_u0;
wire	[7:0]	mux_00828e31_u0;
assign or_00d40f0c_u0=bus_010b766a_|done_qual_u78_u0;
assign and_019f4871_u0=or_0193ad7b_u0&bus_000d25e7_;
assign not_015af794_u0=~bus_000d25e7_;
always @(posedge bus_01111adb_)
begin
if (bus_01fa3d22_)
done_qual_u77<=1'h0;
else done_qual_u77<=bus_016496a4_;
end
assign not_0008662c_u0=~bus_000d25e7_;
assign bus_00b17408_=mux_00828e31_u0;
assign bus_01701fa3_=mux_005a4d8b_u0;
assign bus_011cf1d5_=bus_010b766a_;
assign bus_01f8da3a_=or_0116db5f_u0;
assign bus_018fc434_=3'h1;
assign bus_0033cf53_=and_0075de82_u0;
assign bus_00de0ea0_=bus_01ce9948_;
assign bus_0115f945_=and_019f4871_u0;
always @(posedge bus_01111adb_)
begin
if (bus_01fa3d22_)
done_qual_u78_u0<=1'h0;
else done_qual_u78_u0<=bus_010b766a_;
end
assign or_0116db5f_u0=bus_010b766a_|bus_016496a4_;
assign or_0193ad7b_u0=bus_016496a4_|done_qual_u77;
assign and_0075de82_u0=or_00d40f0c_u0&bus_000d25e7_;
assign mux_005a4d8b_u0=(bus_010b766a_)?bus_01751ade_:bus_012dca61_;
assign mux_00828e31_u0=({8{bus_010b766a_}}&bus_00febef1_);
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_01d7fe21_(bus_00cc1089_, bus_01519d09_, bus_009d190c_, bus_01baf38a_, bus_01c9ee00_, bus_01407d2b_, bus_01f692c7_, bus_0176467c_, bus_0029fe9a_, bus_018e9371_, bus_00576b93_, bus_00cb0181_, bus_00cfdc5e_, bus_01df2d74_, bus_00c4de6b_, bus_010e5d48_, bus_000da7da_, bus_010a588d_, bus_01579abd_);
input		bus_00cc1089_;
input		bus_01519d09_;
input		bus_009d190c_;
input	[7:0]	bus_01baf38a_;
input		bus_01c9ee00_;
input	[7:0]	bus_01407d2b_;
input	[31:0]	bus_01f692c7_;
input	[2:0]	bus_0176467c_;
input		bus_0029fe9a_;
input	[31:0]	bus_018e9371_;
input	[2:0]	bus_00576b93_;
output	[7:0]	bus_00cb0181_;
output	[31:0]	bus_00cfdc5e_;
output		bus_01df2d74_;
output		bus_00c4de6b_;
output	[2:0]	bus_010e5d48_;
output		bus_000da7da_;
output	[7:0]	bus_010a588d_;
output		bus_01579abd_;
reg		done_qual_u79_u0=1'h0;
wire		and_00edc5b4_u0;
wire		or_00183d50_u0;
wire		or_00d8f082_u0;
wire	[31:0]	mux_0012fce5_u0;
wire		not_01e00a1b_u0;
reg		done_qual_u80_u0=1'h0;
wire	[7:0]	mux_00029ff3_u0;
wire		or_00552847_u0;
wire		and_009eefd4_u0;
wire		not_00654dc1_u0;
always @(posedge bus_00cc1089_)
begin
if (bus_01519d09_)
done_qual_u79_u0<=1'h0;
else done_qual_u79_u0<=bus_0029fe9a_;
end
assign and_00edc5b4_u0=or_00552847_u0&bus_009d190c_;
assign or_00183d50_u0=bus_0029fe9a_|done_qual_u79_u0;
assign or_00d8f082_u0=bus_01c9ee00_|bus_0029fe9a_;
assign mux_0012fce5_u0=(bus_01c9ee00_)?bus_01f692c7_:bus_018e9371_;
assign not_01e00a1b_u0=~bus_009d190c_;
assign bus_00cb0181_=mux_00029ff3_u0;
assign bus_00cfdc5e_=mux_0012fce5_u0;
assign bus_01df2d74_=bus_01c9ee00_;
assign bus_00c4de6b_=or_00d8f082_u0;
assign bus_010e5d48_=3'h1;
assign bus_000da7da_=and_00edc5b4_u0;
assign bus_010a588d_=bus_01baf38a_;
assign bus_01579abd_=and_009eefd4_u0;
always @(posedge bus_00cc1089_)
begin
if (bus_01519d09_)
done_qual_u80_u0<=1'h0;
else done_qual_u80_u0<=bus_01c9ee00_;
end
assign mux_00029ff3_u0=({8{bus_01c9ee00_}}&bus_01407d2b_);
assign or_00552847_u0=bus_01c9ee00_|done_qual_u80_u0;
assign and_009eefd4_u0=or_00183d50_u0&bus_009d190c_;
assign not_00654dc1_u0=~bus_009d190c_;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65(CLK, EN, WE, ADDR, DIN, DOUT, DONE);
input		CLK;
input		EN;
input		WE;
input	[31:0]	ADDR;
input	[7:0]	DIN;
output	[7:0]	DOUT;
output		DONE;
wire		we_0;
wire	[7:0]	pre_dout_0;
wire		we_1;
wire	[7:0]	pre_dout_1;
reg	[7:0]	mux_out;
reg	[31:0]	ADDR_reg;
reg		ren_done;
reg		wen_done;
assign we_0=WE&(ADDR[31:14]==18'h0);
assign we_1=WE&(ADDR[31:14]==18'h1);
always @(posedge CLK)
begin
ADDR_reg<=ADDR;
end
always @(ADDR_reg or pre_dout_0 or pre_dout_1)
begin
case (ADDR_reg[31:14])18'd0:mux_out=pre_dout_0;
18'd1:mux_out=pre_dout_1;
default:mux_out=8'h0;
endcase end
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
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_120(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[0]), 
  .DO(pre_dout_0[0]));
//  Memory array element: COL: 0, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_121(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[1]), 
  .DO(pre_dout_0[1]));
//  Memory array element: COL: 0, ROW: 2
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_122(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[2]), 
  .DO(pre_dout_0[2]));
//  Memory array element: COL: 0, ROW: 3
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_123(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[3]), 
  .DO(pre_dout_0[3]));
//  Memory array element: COL: 0, ROW: 4
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_124(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[4]), 
  .DO(pre_dout_0[4]));
//  Memory array element: COL: 0, ROW: 5
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_125(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[5]), 
  .DO(pre_dout_0[5]));
//  Memory array element: COL: 0, ROW: 6
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_126(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[6]), 
  .DO(pre_dout_0[6]));
//  Memory array element: COL: 0, ROW: 7
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_127(.CLK(CLK), .WE(we_0), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[7]), 
  .DO(pre_dout_0[7]));
//  Memory array element: COL: 1, ROW: 0
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_128(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[0]), 
  .DO(pre_dout_1[0]));
//  Memory array element: COL: 1, ROW: 1
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_129(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[1]), 
  .DO(pre_dout_1[1]));
//  Memory array element: COL: 1, ROW: 2
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_130(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[2]), 
  .DO(pre_dout_1[2]));
//  Memory array element: COL: 1, ROW: 3
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_131(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[3]), 
  .DO(pre_dout_1[3]));
//  Memory array element: COL: 1, ROW: 4
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_132(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[4]), 
  .DO(pre_dout_1[4]));
//  Memory array element: COL: 1, ROW: 5
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_133(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[5]), 
  .DO(pre_dout_1[5]));
//  Memory array element: COL: 1, ROW: 6
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_134(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[6]), 
  .DO(pre_dout_1[6]));
//  Memory array element: COL: 1, ROW: 7
//  Initialization of Block ram now done through explicit parameter
// setting.
RAMB16_S1#(.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000), 
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
  .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000)
  )RAMB16_S1_instance_135(.CLK(CLK), .WE(we_1), .EN(EN), .SSR(1'b0), .ADDR(ADDR), .DI(DIN[7]), 
  .DO(pre_dout_1[7]));
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_011cd3c0_(CLK_u37, bus_0095e7c9_, bus_00ae03ba_, bus_013b564e_, bus_01d4632b_, bus_00055b54_, bus_00bec138_, bus_00bad775_, bus_017f827d_);
input		CLK_u37;
input		bus_0095e7c9_;
input	[31:0]	bus_00ae03ba_;
input	[2:0]	bus_013b564e_;
input		bus_01d4632b_;
input		bus_00055b54_;
input	[7:0]	bus_00bec138_;
output	[7:0]	bus_00bad775_;
output		bus_017f827d_;
wire	[7:0]	bus_0023d7ed_;
reg		logicalMem_ba3d04_we_delay0_u0=1'h0;
reg		logicalMem_ba3d04_re_delay0_u0=1'h0;
wire		or_0095a03a_u0;
wire		or_001ead64_u0;
Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65 Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65_instance0(.CLK(CLK_u37), 
  .EN(or_0095a03a_u0), .WE(bus_00055b54_), .ADDR(bus_00ae03ba_), .DIN(bus_00bec138_), 
  .DOUT(bus_0023d7ed_), .DONE());
always @(posedge CLK_u37 or posedge bus_0095e7c9_)
begin
if (bus_0095e7c9_)
logicalMem_ba3d04_we_delay0_u0<=1'h0;
else logicalMem_ba3d04_we_delay0_u0<=bus_00055b54_;
end
always @(posedge CLK_u37 or posedge bus_0095e7c9_)
begin
if (bus_0095e7c9_)
logicalMem_ba3d04_re_delay0_u0<=1'h0;
else logicalMem_ba3d04_re_delay0_u0<=bus_01d4632b_;
end
assign or_0095a03a_u0=bus_01d4632b_|bus_00055b54_;
assign bus_00bad775_=bus_0023d7ed_;
assign bus_017f827d_=or_001ead64_u0;
assign or_001ead64_u0=logicalMem_ba3d04_re_delay0_u0|logicalMem_ba3d04_we_delay0_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_Kicker_19(CLK, RESET, bus_001ca3d9_);
input		CLK;
input		RESET;
output		bus_001ca3d9_;
wire		bus_0101ae2a_;
wire		bus_00919cbe_;
reg		kicker_1=1'h0;
wire		bus_0192874b_;
reg		kicker_2=1'h0;
reg		kicker_res=1'h0;
wire		bus_00d5f10e_;
assign bus_0101ae2a_=~kicker_2;
assign bus_00919cbe_=kicker_1&bus_00d5f10e_&bus_0101ae2a_;
always @(posedge CLK)
begin
kicker_1<=bus_00d5f10e_;
end
assign bus_0192874b_=bus_00d5f10e_&kicker_1;
always @(posedge CLK)
begin
kicker_2<=bus_0192874b_;
end
assign bus_001ca3d9_=kicker_res;
always @(posedge CLK)
begin
kicker_res<=bus_00919cbe_;
end
assign bus_00d5f10e_=~RESET;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_send(CLK, RESET, GO, port_00aefaa7_, port_017c1041_, port_0129635f_, port_00718fe5_, port_0134d75e_, port_01ff713b_, port_013cee86_, RESULT, RESULT_u972, RESULT_u973, RESULT_u974, RESULT_u975, RESULT_u976, RESULT_u977, RESULT_u978, RESULT_u979, RESULT_u980, RESULT_u981, RESULT_u982, RESULT_u983, RESULT_u984, RESULT_u985, RESULT_u986, RESULT_u987, RESULT_u988, RESULT_u989, RESULT_u990, DONE);
input		CLK;
input		RESET;
input		GO;
input	[31:0]	port_00aefaa7_;
input		port_017c1041_;
input	[7:0]	port_0129635f_;
input		port_00718fe5_;
input	[7:0]	port_0134d75e_;
input		port_01ff713b_;
input	[7:0]	port_013cee86_;
output		RESULT;
output	[31:0]	RESULT_u972;
output		RESULT_u973;
output	[31:0]	RESULT_u974;
output	[2:0]	RESULT_u975;
output		RESULT_u976;
output	[31:0]	RESULT_u977;
output	[2:0]	RESULT_u978;
output		RESULT_u979;
output	[31:0]	RESULT_u980;
output	[2:0]	RESULT_u981;
output	[15:0]	RESULT_u982;
output	[7:0]	RESULT_u983;
output	[7:0]	RESULT_u984;
output		RESULT_u985;
output		RESULT_u986;
output		RESULT_u987;
output	[7:0]	RESULT_u988;
output	[15:0]	RESULT_u989;
output	[15:0]	RESULT_u990;
output		DONE;
wire	[31:0]	add;
wire		and_u1534_u0;
wire		or_u430_u0;
reg		done_cache_u51=1'h0;
wire	[31:0]	add_u437;
wire		and_u1535_u0;
reg		done_cache_u52_u0=1'h0;
wire		or_u431_u0;
wire	[31:0]	add_u438;
reg		done_cache_u53_u0=1'h0;
wire		or_u432_u0;
wire		and_u1536_u0;
wire	[31:0]	add_u439;
wire		simplePinWrite;
wire	[7:0]	simplePinWrite_u218;
wire	[15:0]	simplePinWrite_u219;
wire	[15:0]	simplePinWrite_u220;
wire		simplePinWrite_u221;
wire	[7:0]	simplePinWrite_u222;
wire	[7:0]	simplePinWrite_u223;
wire		simplePinWrite_u224;
wire	[15:0]	simplePinWrite_u225;
reg		reg_003a5721_u0=1'h0;
assign add=32'h0+port_00aefaa7_;
assign and_u1534_u0=done_cache_u51&port_00718fe5_;
assign or_u430_u0=and_u1534_u0|RESET;
always @(posedge CLK or posedge GO or posedge or_u430_u0)
begin
if (or_u430_u0)
done_cache_u51<=1'h0;
else if (GO)
done_cache_u51<=1'h1;
else done_cache_u51<=done_cache_u51;
end
assign add_u437=32'h0+port_00aefaa7_;
assign and_u1535_u0=done_cache_u52_u0&port_01ff713b_;
always @(posedge CLK or posedge GO or posedge or_u431_u0)
begin
if (or_u431_u0)
done_cache_u52_u0<=1'h0;
else if (GO)
done_cache_u52_u0<=1'h1;
else done_cache_u52_u0<=done_cache_u52_u0;
end
assign or_u431_u0=and_u1535_u0|RESET;
assign add_u438=32'h0+port_00aefaa7_;
always @(posedge CLK or posedge GO or posedge or_u432_u0)
begin
if (or_u432_u0)
done_cache_u53_u0<=1'h0;
else if (GO)
done_cache_u53_u0<=1'h1;
else done_cache_u53_u0<=done_cache_u53_u0;
end
assign or_u432_u0=and_u1536_u0|RESET;
assign and_u1536_u0=done_cache_u53_u0&port_017c1041_;
assign add_u439=port_00aefaa7_+32'h1;
assign simplePinWrite=reg_003a5721_u0&{1{reg_003a5721_u0}};
assign simplePinWrite_u218=port_0134d75e_;
assign simplePinWrite_u219=16'h1&{16{1'h1}};
assign simplePinWrite_u220=16'h1&{16{1'h1}};
assign simplePinWrite_u221=reg_003a5721_u0&{1{reg_003a5721_u0}};
assign simplePinWrite_u222=port_013cee86_;
assign simplePinWrite_u223=port_0129635f_;
assign simplePinWrite_u224=reg_003a5721_u0&{1{reg_003a5721_u0}};
assign simplePinWrite_u225=16'h1&{16{1'h1}};
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_003a5721_u0<=1'h0;
else reg_003a5721_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u972=add_u439;
assign RESULT_u973=GO;
assign RESULT_u974=add_u438;
assign RESULT_u975=3'h1;
assign RESULT_u976=GO;
assign RESULT_u977=add;
assign RESULT_u978=3'h1;
assign RESULT_u979=GO;
assign RESULT_u980=add_u437;
assign RESULT_u981=3'h1;
assign RESULT_u982=simplePinWrite_u220;
assign RESULT_u983=simplePinWrite_u222;
assign RESULT_u984=simplePinWrite_u218;
assign RESULT_u985=simplePinWrite_u221;
assign RESULT_u986=simplePinWrite_u224;
assign RESULT_u987=simplePinWrite;
assign RESULT_u988=simplePinWrite_u223;
assign RESULT_u989=simplePinWrite_u219;
assign RESULT_u990=simplePinWrite_u225;
assign DONE=reg_003a5721_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_012054b3_(CLK_u38, bus_00c99fe4_, bus_01c846d7_, bus_0164d95c_, bus_016dc613_, bus_003da574_, bus_01d515a9_, bus_01e7311b_, bus_00812c03_);
input		CLK_u38;
input		bus_00c99fe4_;
input	[31:0]	bus_01c846d7_;
input	[2:0]	bus_0164d95c_;
input		bus_016dc613_;
input		bus_003da574_;
input	[7:0]	bus_01d515a9_;
output	[7:0]	bus_01e7311b_;
output		bus_00812c03_;
wire		or_01f8b613_u0;
reg		logicalMem_16c8125_re_delay0_u0=1'h0;
wire		or_012fd0d8_u0;
wire	[7:0]	bus_00e866e2_;
reg		logicalMem_16c8125_we_delay0_u0=1'h0;
assign or_01f8b613_u0=logicalMem_16c8125_re_delay0_u0|logicalMem_16c8125_we_delay0_u0;
always @(posedge CLK_u38 or posedge bus_00c99fe4_)
begin
if (bus_00c99fe4_)
logicalMem_16c8125_re_delay0_u0<=1'h0;
else logicalMem_16c8125_re_delay0_u0<=bus_016dc613_;
end
assign or_012fd0d8_u0=bus_016dc613_|bus_003da574_;
assign bus_01e7311b_=bus_00e866e2_;
assign bus_00812c03_=or_01f8b613_u0;
Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65 Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65_instance1(.CLK(CLK_u38), 
  .EN(or_012fd0d8_u0), .WE(bus_003da574_), .ADDR(bus_01c846d7_), .DIN(bus_01d515a9_), 
  .DOUT(bus_00e866e2_), .DONE());
always @(posedge CLK_u38 or posedge bus_00c99fe4_)
begin
if (bus_00c99fe4_)
logicalMem_16c8125_we_delay0_u0<=1'h0;
else logicalMem_16c8125_we_delay0_u0<=bus_003da574_;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s3(bus_01c8c297_, bus_015f82e4_, bus_01581d51_, bus_01a361e7_, bus_0143bf9d_);
input		bus_01c8c297_;
input		bus_015f82e4_;
input		bus_01581d51_;
input		bus_01a361e7_;
output		bus_0143bf9d_;
reg		stateVar_state_s3_u9=1'h0;
assign bus_0143bf9d_=stateVar_state_s3_u9;
always @(posedge bus_01c8c297_ or posedge bus_015f82e4_)
begin
if (bus_015f82e4_)
stateVar_state_s3_u9<=1'h0;
else if (bus_01581d51_)
stateVar_state_s3_u9<=bus_01a361e7_;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_00f07366_(endianswapper_00f07366_in, endianswapper_00f07366_out);
input	[15:0]	endianswapper_00f07366_in;
output	[7:0]	endianswapper_00f07366_out;
assign endianswapper_00f07366_out=8'hb0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_01b96007_(endianswapper_01b96007_in, endianswapper_01b96007_out);
input	[7:0]	endianswapper_01b96007_in;
output	[7:0]	endianswapper_01b96007_out;
assign endianswapper_01b96007_out={endianswapper_01b96007_in[7], 1'b0, endianswapper_01b96007_in[5:4], 4'b0};
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureWidthLuma(bus_005c7d11_, bus_00171155_, bus_01cffca8_, bus_0080c98f_, bus_01b71ff7_);
input		bus_005c7d11_;
input		bus_00171155_;
input		bus_01cffca8_;
input	[15:0]	bus_0080c98f_;
output	[7:0]	bus_01b71ff7_;
wire	[7:0]	endianswapper_00f07366_out;
wire	[7:0]	endianswapper_01b96007_out;
reg	[7:0]	stateVar_pictureWidthLuma_u2=8'h0;
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_00f07366_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_00f07366__1(.endianswapper_00f07366_in(16'hb0), 
  .endianswapper_00f07366_out(endianswapper_00f07366_out));
assign bus_01b71ff7_={endianswapper_01b96007_out[7], 1'b0, endianswapper_01b96007_out[5:4], 4'b0};
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_01b96007_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_01b96007__1(.endianswapper_01b96007_in({stateVar_pictureWidthLuma_u2[7], 1'b0, stateVar_pictureWidthLuma_u2[5:4], 4'b0}), 
  .endianswapper_01b96007_out(endianswapper_01b96007_out));
always @(posedge bus_005c7d11_ or posedge bus_00171155_)
begin
if (bus_00171155_)
stateVar_pictureWidthLuma_u2<=8'h0;
else if (bus_01cffca8_)
stateVar_pictureWidthLuma_u2<=8'hb0;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0046549c_(endianswapper_0046549c_in, endianswapper_0046549c_out);
input	[31:0]	endianswapper_0046549c_in;
output	[31:0]	endianswapper_0046549c_out;
assign endianswapper_0046549c_out=endianswapper_0046549c_in;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_000a7b14_(endianswapper_000a7b14_in, endianswapper_000a7b14_out);
input	[31:0]	endianswapper_000a7b14_in;
output	[31:0]	endianswapper_000a7b14_out;
assign endianswapper_000a7b14_out=endianswapper_000a7b14_in;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_count(bus_018cd8cf_, bus_01ee21b5_, bus_00954b5b_, bus_012ee8ed_, bus_006a5fef_, bus_016683ea_, bus_01d1d506_, bus_01435529_, bus_0097e50d_, bus_013347e1_, bus_01ce1016_, bus_006a461c_, bus_01f0e476_);
input		bus_018cd8cf_;
input		bus_01ee21b5_;
input		bus_00954b5b_;
input	[31:0]	bus_012ee8ed_;
input		bus_006a5fef_;
input	[31:0]	bus_016683ea_;
input		bus_01d1d506_;
input	[31:0]	bus_01435529_;
input		bus_0097e50d_;
input	[31:0]	bus_013347e1_;
input		bus_01ce1016_;
input	[31:0]	bus_006a461c_;
output	[31:0]	bus_01f0e476_;
wire	[31:0]	endianswapper_0046549c_out;
reg	[31:0]	stateVar_count_u6=32'h0;
wire	[31:0]	mux_01d973bc_u0;
wire		or_0175b939_u0;
wire	[31:0]	endianswapper_000a7b14_out;
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0046549c_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0046549c__1(.endianswapper_0046549c_in(mux_01d973bc_u0), 
  .endianswapper_0046549c_out(endianswapper_0046549c_out));
always @(posedge bus_018cd8cf_ or posedge bus_01ee21b5_)
begin
if (bus_01ee21b5_)
stateVar_count_u6<=32'h0;
else if (or_0175b939_u0)
stateVar_count_u6<=endianswapper_0046549c_out;
end
assign mux_01d973bc_u0=({32{bus_00954b5b_}}&bus_012ee8ed_)|({32{bus_006a5fef_}}&bus_016683ea_)|({32{bus_01d1d506_}}&bus_01435529_)|({32{bus_0097e50d_}}&32'h0)|({32{bus_01ce1016_}}&bus_006a461c_);
assign bus_01f0e476_=endianswapper_000a7b14_out;
assign or_0175b939_u0=bus_00954b5b_|bus_006a5fef_|bus_01d1d506_|bus_0097e50d_|bus_01ce1016_;
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_000a7b14_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_000a7b14__1(.endianswapper_000a7b14_in(stateVar_count_u6), 
  .endianswapper_000a7b14_out(endianswapper_000a7b14_out));
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_012ad708_(endianswapper_012ad708_in, endianswapper_012ad708_out);
input	[7:0]	endianswapper_012ad708_in;
output	[7:0]	endianswapper_012ad708_out;
assign endianswapper_012ad708_out={endianswapper_012ad708_in[7], 2'b0, endianswapper_012ad708_in[4], 4'b0};
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0122841a_(endianswapper_0122841a_in, endianswapper_0122841a_out);
input	[15:0]	endianswapper_0122841a_in;
output	[7:0]	endianswapper_0122841a_out;
assign endianswapper_0122841a_out=8'h90;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_pictureHeightLuma(bus_003bf227_, bus_0196e8d1_, bus_00ad75b3_, bus_00c98d67_, bus_00e7aaf3_);
input		bus_003bf227_;
input		bus_0196e8d1_;
input		bus_00ad75b3_;
input	[15:0]	bus_00c98d67_;
output	[7:0]	bus_00e7aaf3_;
reg	[7:0]	stateVar_pictureHeightLuma_u2=8'h0;
wire	[7:0]	endianswapper_012ad708_out;
wire	[7:0]	endianswapper_0122841a_out;
always @(posedge bus_003bf227_ or posedge bus_0196e8d1_)
begin
if (bus_0196e8d1_)
stateVar_pictureHeightLuma_u2<=8'h0;
else if (bus_00ad75b3_)
stateVar_pictureHeightLuma_u2<=8'h90;
end
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_012ad708_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_012ad708__1(.endianswapper_012ad708_in({stateVar_pictureHeightLuma_u2[7], 2'b0, stateVar_pictureHeightLuma_u2[4], 4'b0}), 
  .endianswapper_012ad708_out(endianswapper_012ad708_out));
Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0122841a_ Mean_Shift_Main_input_read_Stream_to_YUV_endianswapper_0122841a__1(.endianswapper_0122841a_in(16'h90), 
  .endianswapper_0122841a_out(endianswapper_0122841a_out));
assign bus_00e7aaf3_={endianswapper_012ad708_out[7], 2'b0, endianswapper_012ad708_out[4], 4'b0};
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_structuralmemory_014603c2_(CLK_u39, bus_010a733e_, bus_00ceb9b6_, bus_00176c97_, bus_01adc2b0_, bus_0048f122_, bus_00dcae18_, bus_00c8ddc8_, bus_0029d842_);
input		CLK_u39;
input		bus_010a733e_;
input	[31:0]	bus_00ceb9b6_;
input	[2:0]	bus_00176c97_;
input		bus_01adc2b0_;
input		bus_0048f122_;
input	[7:0]	bus_00dcae18_;
output	[7:0]	bus_00c8ddc8_;
output		bus_0029d842_;
wire		or_011724d8_u0;
reg		logicalMem_b8878a_re_delay0_u0=1'h0;
reg		logicalMem_b8878a_we_delay0_u0=1'h0;
wire	[7:0]	bus_008978d3_;
wire		or_01245556_u0;
assign or_011724d8_u0=bus_01adc2b0_|bus_0048f122_;
always @(posedge CLK_u39 or posedge bus_010a733e_)
begin
if (bus_010a733e_)
logicalMem_b8878a_re_delay0_u0<=1'h0;
else logicalMem_b8878a_re_delay0_u0<=bus_01adc2b0_;
end
always @(posedge CLK_u39 or posedge bus_010a733e_)
begin
if (bus_010a733e_)
logicalMem_b8878a_we_delay0_u0<=1'h0;
else logicalMem_b8878a_we_delay0_u0<=bus_0048f122_;
end
Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65 Mean_Shift_Main_input_read_Stream_to_YUV_forge_memory_25344x8_65_instance2(.CLK(CLK_u39), 
  .EN(or_011724d8_u0), .WE(bus_0048f122_), .ADDR(bus_00ceb9b6_), .DIN(bus_00dcae18_), 
  .DOUT(bus_008978d3_), .DONE());
assign bus_00c8ddc8_=bus_008978d3_;
assign bus_0029d842_=or_01245556_u0;
assign or_01245556_u0=logicalMem_b8878a_re_delay0_u0|logicalMem_b8878a_we_delay0_u0;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_stateVar_state_s2(bus_01f5bb6c_, bus_01e3ef08_, bus_01169bd4_, bus_017a1232_, bus_0194c0f1_);
input		bus_01f5bb6c_;
input		bus_01e3ef08_;
input		bus_01169bd4_;
input		bus_017a1232_;
output		bus_0194c0f1_;
reg		stateVar_state_s2_u9=1'h0;
assign bus_0194c0f1_=stateVar_state_s2_u9;
always @(posedge bus_01f5bb6c_ or posedge bus_01e3ef08_)
begin
if (bus_01e3ef08_)
stateVar_state_s2_u9<=1'h0;
else if (bus_01169bd4_)
stateVar_state_s2_u9<=bus_017a1232_;
end
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_simplememoryreferee_0091ede2_(bus_00d35f4b_, bus_011548d6_, bus_00617d44_, bus_006ae1a0_, bus_00dcc10e_, bus_0044c5e9_, bus_00a6b21b_, bus_00324297_, bus_01c0d04d_, bus_00bbbfed_, bus_0105c15c_, bus_0102e41b_, bus_001ae93a_, bus_00b86df9_, bus_015be2db_, bus_01ba064c_, bus_01b1feff_, bus_01ab7b69_, bus_00d988c5_);
input		bus_00d35f4b_;
input		bus_011548d6_;
input		bus_00617d44_;
input	[7:0]	bus_006ae1a0_;
input		bus_00dcc10e_;
input	[7:0]	bus_0044c5e9_;
input	[31:0]	bus_00a6b21b_;
input	[2:0]	bus_00324297_;
input		bus_01c0d04d_;
input	[31:0]	bus_00bbbfed_;
input	[2:0]	bus_0105c15c_;
output	[7:0]	bus_0102e41b_;
output	[31:0]	bus_001ae93a_;
output		bus_00b86df9_;
output		bus_015be2db_;
output	[2:0]	bus_01ba064c_;
output		bus_01b1feff_;
output	[7:0]	bus_01ab7b69_;
output		bus_00d988c5_;
wire		and_01effca1_u0;
reg		done_qual_u81_u0=1'h0;
wire	[7:0]	mux_00ee53eb_u0;
wire		not_000d95ce_u0;
reg		done_qual_u82_u0=1'h0;
wire		or_019000c2_u0;
wire		or_01275561_u0;
wire	[31:0]	mux_0117113c_u0;
wire		not_0147bb5b_u0;
wire		and_006dc0ee_u0;
wire		or_010ec550_u0;
assign and_01effca1_u0=or_01275561_u0&bus_00617d44_;
always @(posedge bus_00d35f4b_)
begin
if (bus_011548d6_)
done_qual_u81_u0<=1'h0;
else done_qual_u81_u0<=bus_01c0d04d_;
end
assign bus_0102e41b_=mux_00ee53eb_u0;
assign bus_001ae93a_=mux_0117113c_u0;
assign bus_00b86df9_=bus_00dcc10e_;
assign bus_015be2db_=or_010ec550_u0;
assign bus_01ba064c_=3'h1;
assign bus_01b1feff_=and_006dc0ee_u0;
assign bus_01ab7b69_=bus_006ae1a0_;
assign bus_00d988c5_=and_01effca1_u0;
assign mux_00ee53eb_u0=({8{bus_00dcc10e_}}&bus_0044c5e9_);
assign not_000d95ce_u0=~bus_00617d44_;
always @(posedge bus_00d35f4b_)
begin
if (bus_011548d6_)
done_qual_u82_u0<=1'h0;
else done_qual_u82_u0<=bus_00dcc10e_;
end
assign or_019000c2_u0=bus_00dcc10e_|done_qual_u82_u0;
assign or_01275561_u0=bus_01c0d04d_|done_qual_u81_u0;
assign mux_0117113c_u0=(bus_00dcc10e_)?bus_00a6b21b_:bus_00bbbfed_;
assign not_0147bb5b_u0=~bus_00617d44_;
assign and_006dc0ee_u0=or_019000c2_u0&bus_00617d44_;
assign or_010ec550_u0=bus_00dcc10e_|bus_01c0d04d_;
endmodule



module Mean_Shift_Main_input_read_Stream_to_YUV_getPictureSize(CLK, RESET, GO, RESULT, RESULT_u991, RESULT_u992, RESULT_u993, DONE);
input		CLK;
input		RESET;
input		GO;
output		RESULT;
output	[15:0]	RESULT_u991;
output		RESULT_u992;
output	[15:0]	RESULT_u993;
output		DONE;
reg		reg_002f0fef_u0=1'h0;
always @(posedge CLK or posedge RESET)
begin
if (RESET)
reg_002f0fef_u0<=1'h0;
else reg_002f0fef_u0<=GO;
end
assign RESULT=GO;
assign RESULT_u991=16'hb0;
assign RESULT_u992=GO;
assign RESULT_u993=16'h90;
assign DONE=reg_002f0fef_u0;
endmodule


