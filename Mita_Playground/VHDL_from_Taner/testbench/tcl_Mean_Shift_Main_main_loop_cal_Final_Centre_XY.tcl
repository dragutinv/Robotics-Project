## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_Final_Centre_XY 
## Date: 2015/10/14 15:56:29
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY}
vlib work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY
vmap work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY $Rtl/Mean_Shift_Main_main_loop_cal_Final_Centre_XY.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY $Testbench/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY.glbl work_Mean_Shift_Main_main_loop_cal_Final_Centre_XY.Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY"
add wave -label X_in_DATA sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_DATA
add wave -label X_in_ACK sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_ACK 
add wave -label X_in_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_in_SEND 

add wave -label Y_in_DATA sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_DATA
add wave -label Y_in_ACK sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_ACK 
add wave -label Y_in_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_in_SEND 

add wave -label loop_stat_DATA sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_DATA
add wave -label loop_stat_ACK sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_ACK 
add wave -label loop_stat_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/loop_stat_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY"
add wave -label X_out_DATA sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_DATA 
add wave -label X_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_ACK
add wave -label X_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_SEND
add wave -label X_out_RDY sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/X_out_RDY

add wave -label Y_out_DATA sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_DATA 
add wave -label Y_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_ACK
add wave -label Y_out_SEND sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_SEND
add wave -label Y_out_RDY sim:/Mean_Shift_Main_main_loop_cal_Final_Centre_XY_tb/i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY/Y_out_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
