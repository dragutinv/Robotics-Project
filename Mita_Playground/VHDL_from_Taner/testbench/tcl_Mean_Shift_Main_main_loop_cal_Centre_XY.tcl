## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_Centre_XY 
## Date: 2015/10/14 15:56:28
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_Centre_XY]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_Centre_XY}
vlib work_Mean_Shift_Main_main_loop_cal_Centre_XY
vmap work_Mean_Shift_Main_main_loop_cal_Centre_XY work_Mean_Shift_Main_main_loop_cal_Centre_XY

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_Centre_XY ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_Centre_XY $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_Centre_XY $Rtl/Mean_Shift_Main_main_loop_cal_Centre_XY.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_Centre_XY $Testbench/Mean_Shift_Main_main_loop_cal_Centre_XY_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_Centre_XY.glbl work_Mean_Shift_Main_main_loop_cal_Centre_XY.Mean_Shift_Main_main_loop_cal_Centre_XY_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_Centre_XY"
add wave -label dx_i_DATA sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_DATA
add wave -label dx_i_ACK sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_ACK 
add wave -label dx_i_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dx_i_SEND 

add wave -label dy_i_DATA sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_DATA
add wave -label dy_i_ACK sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_ACK 
add wave -label dy_i_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/dy_i_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_Centre_XY"
add wave -label centre_x_out_DATA sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_DATA 
add wave -label centre_x_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_ACK
add wave -label centre_x_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_SEND
add wave -label centre_x_out_RDY sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_x_out_RDY

add wave -label centre_y_out_DATA sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_DATA 
add wave -label centre_y_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_ACK
add wave -label centre_y_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_SEND
add wave -label centre_y_out_RDY sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/centre_y_out_RDY

add wave -label loop_status_DATA sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_DATA 
add wave -label loop_status_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_ACK
add wave -label loop_status_SEND sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_SEND
add wave -label loop_status_RDY sim:/Mean_Shift_Main_main_loop_cal_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Centre_XY/loop_status_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
