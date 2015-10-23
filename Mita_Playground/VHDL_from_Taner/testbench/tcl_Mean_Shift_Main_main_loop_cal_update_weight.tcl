## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_update_weight 
## Date: 2015/10/14 15:56:21
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_update_weight]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_update_weight}
vlib work_Mean_Shift_Main_main_loop_cal_update_weight
vmap work_Mean_Shift_Main_main_loop_cal_update_weight work_Mean_Shift_Main_main_loop_cal_update_weight

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_update_weight ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_update_weight $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_update_weight $Rtl/Mean_Shift_Main_main_loop_cal_update_weight.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_update_weight $Testbench/Mean_Shift_Main_main_loop_cal_update_weight_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_update_weight.glbl work_Mean_Shift_Main_main_loop_cal_update_weight.Mean_Shift_Main_main_loop_cal_update_weight_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_update_weight"
add wave -label QuModel_DATA sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_DATA
add wave -label QuModel_ACK sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_ACK 
add wave -label QuModel_SEND sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/QuModel_SEND 

add wave -label PuModel_DATA sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_DATA
add wave -label PuModel_ACK sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_ACK 
add wave -label PuModel_SEND sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/PuModel_SEND 

add wave -label bin_DATA sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_DATA
add wave -label bin_ACK sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_ACK 
add wave -label bin_SEND sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/bin_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_update_weight"
add wave -label weights_DATA sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_DATA 
add wave -label weights_SEND sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_ACK
add wave -label weights_SEND sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_SEND
add wave -label weights_RDY sim:/Mean_Shift_Main_main_loop_cal_update_weight_tb/i_Mean_Shift_Main_main_loop_cal_update_weight/weights_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
