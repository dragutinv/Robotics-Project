## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_kArray_evaluation 
## Date: 2015/10/14 15:55:52
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_kArray_evaluation]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_kArray_evaluation}
vlib work_Mean_Shift_Main_main_loop_cal_kArray_evaluation
vmap work_Mean_Shift_Main_main_loop_cal_kArray_evaluation work_Mean_Shift_Main_main_loop_cal_kArray_evaluation

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_kArray_evaluation ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_kArray_evaluation $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_kArray_evaluation $Rtl/Mean_Shift_Main_main_loop_cal_kArray_evaluation.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_kArray_evaluation $Testbench/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_kArray_evaluation.glbl work_Mean_Shift_Main_main_loop_cal_kArray_evaluation.Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_kArray_evaluation"
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_kArray_evaluation"
add wave -label kArrayO_DATA sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_DATA 
add wave -label kArrayO_SEND sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_ACK
add wave -label kArrayO_SEND sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_SEND
add wave -label kArrayO_RDY sim:/Mean_Shift_Main_main_loop_cal_kArray_evaluation_tb/i_Mean_Shift_Main_main_loop_cal_kArray_evaluation/kArrayO_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
