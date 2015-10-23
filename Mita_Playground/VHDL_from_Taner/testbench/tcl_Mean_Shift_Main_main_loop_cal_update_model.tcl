## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_update_model 
## Date: 2015/10/14 15:56:16
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_update_model]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_update_model}
vlib work_Mean_Shift_Main_main_loop_cal_update_model
vmap work_Mean_Shift_Main_main_loop_cal_update_model work_Mean_Shift_Main_main_loop_cal_update_model

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_update_model ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_update_model $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_update_model $Rtl/Mean_Shift_Main_main_loop_cal_update_model.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_update_model $Testbench/Mean_Shift_Main_main_loop_cal_update_model_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_update_model.glbl work_Mean_Shift_Main_main_loop_cal_update_model.Mean_Shift_Main_main_loop_cal_update_model_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_update_model"
add wave -label R_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/R_DATA
add wave -label R_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/R_ACK 
add wave -label R_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/R_SEND 

add wave -label G_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/G_DATA
add wave -label G_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/G_ACK 
add wave -label G_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/G_SEND 

add wave -label B_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/B_DATA
add wave -label B_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/B_ACK 
add wave -label B_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/B_SEND 

add wave -label centre_x_i_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_DATA
add wave -label centre_x_i_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_ACK 
add wave -label centre_x_i_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_x_i_SEND 

add wave -label centre_y_i_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_DATA
add wave -label centre_y_i_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_ACK 
add wave -label centre_y_i_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/centre_y_i_SEND 

add wave -label kArray_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_DATA
add wave -label kArray_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_ACK 
add wave -label kArray_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/kArray_SEND 

add wave -label loop_status_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_DATA
add wave -label loop_status_ACK sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_ACK 
add wave -label loop_status_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/loop_status_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_update_model"
add wave -label Qu_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_DATA 
add wave -label Qu_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_ACK
add wave -label Qu_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_SEND
add wave -label Qu_RDY sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Qu_RDY

add wave -label Pu_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_DATA 
add wave -label Pu_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_ACK
add wave -label Pu_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_SEND
add wave -label Pu_RDY sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/Pu_RDY

add wave -label bin_o_DATA sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_DATA 
add wave -label bin_o_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_ACK
add wave -label bin_o_SEND sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_SEND
add wave -label bin_o_RDY sim:/Mean_Shift_Main_main_loop_cal_update_model_tb/i_Mean_Shift_Main_main_loop_cal_update_model/bin_o_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
