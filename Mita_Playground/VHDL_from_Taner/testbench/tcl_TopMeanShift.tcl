## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Network: TopMeanShift 
## Date: 2015/10/14 15:56:57
## ############################################################################

## Set paths
set Lib "../lib/"
set LibSim "../lib/simulation"
set Rtl "../rtl"
set RtlGoDone "../rtl/rtlGoDone"
set Testbench "vhd"

## Create SystemBuilder design library
vlib SystemBuilder
vmap SystemBuilder SystemBuilder

## Compile the SystemBuilder Library from sources
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbtypes.vhdl
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbfifo.vhdl
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbfifo_behavioral.vhdl

## Create the work design library
if {[file exist work_TopMeanShift]} {vdel -all -lib work_TopMeanShift}
vlib work_TopMeanShift
vmap work_TopMeanShift work_TopMeanShift

## Compile the glbl constans given by Xilinx 
vlog -work work_TopMeanShift ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_TopMeanShift $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_TopMeanShift $Rtl/source.v
vlog -work work_TopMeanShift $Rtl/Test_EOS.v
vlog -work work_TopMeanShift $Rtl/Write_stream.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_kArray_evaluation.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_update_model.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_update_weight.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_displacement.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_kArray_derv.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_Centre_XY.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_main_loop_cal_Final_Centre_XY.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_input_read_Stream_to_YUV.v
vlog -work work_TopMeanShift $Rtl/Mean_Shift_Main_input_read_YUV_to_RGB.v
vlog -work work_TopMeanShift $Rtl/output_process_Draw_rectangle.v
vlog -work work_TopMeanShift $Rtl/output_process_RGB_to_YUV.v
vlog -work work_TopMeanShift $Rtl/output_process_YUV_to_Stream.v

## Compile the Top Network
vcom -93 -check_synthesis -quiet -work work_TopMeanShift $Rtl/TopMeanShift.vhd

## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_TopMeanShift $Testbench/TopMeanShift_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_TopMeanShift.glbl work_TopMeanShift.TopMeanShift_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/TopMeanShift_tb/CLK
	add wave sim:/TopMeanShift_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal



add wave -noupdate -divider -height 20 i_source
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_source/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_source/O_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_source/O_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_source/O_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_source/O_RDY

add wave -noupdate -divider -height 20 i_Test_EOS
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/In_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/In_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/In_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/Out_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/Out_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/Out_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/Out_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/pEOF_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/pEOF_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/pEOF_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Test_EOS/pEOF_RDY

add wave -noupdate -divider -height 20 i_Write_stream
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/Byte_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/Byte_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/Byte_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/pEOF_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/pEOF_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Write_stream/pEOF_SEND

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_kArray_evaluation
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_update_model
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/R_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/R_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/R_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/G_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/G_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/G_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/B_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/B_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/B_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_update_weight
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_displacement
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/weights_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/weights_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/weights_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dx_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dx_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dx_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dx_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dy_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dy_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dy_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_displacement/dy_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_kArray_derv
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_derv/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_Centre_XY
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_input_read_Stream_to_YUV
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/stream_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/stream_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/stream_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/Y_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/Y_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/Y_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/Y_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/U_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/U_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/U_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/U_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/V_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/V_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/V_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_Stream_to_YUV/V_RDY

add wave -noupdate -divider -height 20 i_Mean_Shift_Main_input_read_YUV_to_RGB
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_RDY

add wave -noupdate -divider -height 20 i_output_process_Draw_rectangle
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rin_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rin_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rin_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gin_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gin_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gin_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bin_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bin_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bin_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_x_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_x_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_x_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_y_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_y_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/center_y_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rout_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rout_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rout_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Rout_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gout_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gout_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gout_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Gout_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bout_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bout_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bout_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_Draw_rectangle/Bout_RDY

add wave -noupdate -divider -height 20 i_output_process_RGB_to_YUV
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/R_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/R_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/R_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/G_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/G_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/G_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/B_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/B_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/B_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/Y_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/Y_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/Y_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/Y_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/U_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/U_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/U_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/U_RDY

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/V_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/V_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/V_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_RGB_to_YUV/V_RDY

add wave -noupdate -divider -height 20 i_output_process_YUV_to_Stream
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/CLK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/Y_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/Y_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/Y_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/U_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/U_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/U_SEND

add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/V_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/V_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/V_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/YUV_DATA
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/YUV_ACK
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/YUV_SEND
add wave sim:/TopMeanShift_tb/i_TopMeanShift/i_output_process_YUV_to_Stream/YUV_RDY

## FIFO FULL
add wave -noupdate -divider -height 20 "FIFO FULL"
add wave -label Test_EOS_In_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Test_EOS_In/full
add wave -label Test_EOS_In_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Test_EOS_In/almost_full
add wave -label Write_stream_Byte_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Write_stream_Byte/full
add wave -label Write_stream_Byte_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Write_stream_Byte/almost_full
add wave -label Write_stream_pEOF_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Write_stream_pEOF/full
add wave -label Write_stream_pEOF_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Write_stream_pEOF/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_R_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_R/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_R_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_R/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_G_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_G/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_G_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_G/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_B_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_B/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_B_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_B/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_kArray_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_kArray/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_kArray_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_kArray/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_loop_status_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status/full
add wave -label Mean_Shift_Main_main_loop_cal_update_model_loop_status_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_QuModel_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel/full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_QuModel_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_PuModel_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel/full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_PuModel_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_bin_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_bin/full
add wave -label Mean_Shift_Main_main_loop_cal_update_weight_bin_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_update_weight_bin/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_displacement_weights_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_displacement_weights/full
add wave -label Mean_Shift_Main_main_loop_cal_displacement_weights_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_displacement_weights/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_displacement_kDerArray_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray/full
add wave -label Mean_Shift_Main_main_loop_cal_displacement_kDerArray_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i/full
add wave -label Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i/full
add wave -label Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in/full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in/full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in/almost_full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat/full
add wave -label Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat/almost_full
add wave -label Mean_Shift_Main_input_read_Stream_to_YUV_stream_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream/full
add wave -label Mean_Shift_Main_input_read_Stream_to_YUV_stream_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream/almost_full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_Y_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y/full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_Y_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y/almost_full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_U_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_U/full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_U_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_U/almost_full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_V_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_V/full
add wave -label Mean_Shift_Main_input_read_YUV_to_RGB_V_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_V/almost_full
add wave -label output_process_Draw_rectangle_Rin_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Rin/full
add wave -label output_process_Draw_rectangle_Rin_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Rin/almost_full
add wave -label output_process_Draw_rectangle_Gin_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Gin/full
add wave -label output_process_Draw_rectangle_Gin_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Gin/almost_full
add wave -label output_process_Draw_rectangle_Bin_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Bin/full
add wave -label output_process_Draw_rectangle_Bin_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_Bin/almost_full
add wave -label output_process_Draw_rectangle_center_x_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_center_x/full
add wave -label output_process_Draw_rectangle_center_x_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_center_x/almost_full
add wave -label output_process_Draw_rectangle_center_y_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_center_y/full
add wave -label output_process_Draw_rectangle_center_y_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_Draw_rectangle_center_y/almost_full
add wave -label output_process_RGB_to_YUV_R_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_R/full
add wave -label output_process_RGB_to_YUV_R_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_R/almost_full
add wave -label output_process_RGB_to_YUV_G_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_G/full
add wave -label output_process_RGB_to_YUV_G_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_G/almost_full
add wave -label output_process_RGB_to_YUV_B_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_B/full
add wave -label output_process_RGB_to_YUV_B_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_RGB_to_YUV_B/almost_full
add wave -label output_process_YUV_to_Stream_Y_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_Y/full
add wave -label output_process_YUV_to_Stream_Y_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_Y/almost_full
add wave -label output_process_YUV_to_Stream_U_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_U/full
add wave -label output_process_YUV_to_Stream_U_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_U/almost_full
add wave -label output_process_YUV_to_Stream_V_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_V/full
add wave -label output_process_YUV_to_Stream_V_almost_full sim:/TopMeanShift_tb/i_TopMeanShift/q_ai_output_process_YUV_to_Stream_V/almost_full

