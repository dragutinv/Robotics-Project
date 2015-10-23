## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_kArray_derv 
## Date: 2015/10/14 15:56:27
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_kArray_derv]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_kArray_derv}
vlib work_Mean_Shift_Main_main_loop_cal_kArray_derv
vmap work_Mean_Shift_Main_main_loop_cal_kArray_derv work_Mean_Shift_Main_main_loop_cal_kArray_derv

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_kArray_derv ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_kArray_derv $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_kArray_derv $Rtl/Mean_Shift_Main_main_loop_cal_kArray_derv.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_kArray_derv $Testbench/Mean_Shift_Main_main_loop_cal_kArray_derv_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_kArray_derv.glbl work_Mean_Shift_Main_main_loop_cal_kArray_derv.Mean_Shift_Main_main_loop_cal_kArray_derv_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_kArray_derv"
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_kArray_derv"
add wave -label kDervO_DATA sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_DATA 
add wave -label kDervO_SEND sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_ACK
add wave -label kDervO_SEND sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_SEND
add wave -label kDervO_RDY sim:/Mean_Shift_Main_main_loop_cal_kArray_derv_tb/i_Mean_Shift_Main_main_loop_cal_kArray_derv/kDervO_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
