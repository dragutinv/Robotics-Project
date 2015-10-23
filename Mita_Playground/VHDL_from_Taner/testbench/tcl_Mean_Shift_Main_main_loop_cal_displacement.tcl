## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_main_loop_cal_displacement 
## Date: 2015/10/14 15:56:26
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
if {[file exist work_Mean_Shift_Main_main_loop_cal_displacement]} {vdel -all -lib work_Mean_Shift_Main_main_loop_cal_displacement}
vlib work_Mean_Shift_Main_main_loop_cal_displacement
vmap work_Mean_Shift_Main_main_loop_cal_displacement work_Mean_Shift_Main_main_loop_cal_displacement

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_main_loop_cal_displacement ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_main_loop_cal_displacement $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_main_loop_cal_displacement $Rtl/Mean_Shift_Main_main_loop_cal_displacement.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_main_loop_cal_displacement $Testbench/Mean_Shift_Main_main_loop_cal_displacement_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_main_loop_cal_displacement.glbl work_Mean_Shift_Main_main_loop_cal_displacement.Mean_Shift_Main_main_loop_cal_displacement_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/CLK
	add wave sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_main_loop_cal_displacement"
add wave -label weights_DATA sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/weights_DATA
add wave -label weights_ACK sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/weights_ACK 
add wave -label weights_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/weights_SEND 

add wave -label kDerArray_DATA sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_DATA
add wave -label kDerArray_ACK sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_ACK 
add wave -label kDerArray_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/kDerArray_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_main_loop_cal_displacement"
add wave -label dx_DATA sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dx_DATA 
add wave -label dx_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dx_ACK
add wave -label dx_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dx_SEND
add wave -label dx_RDY sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dx_RDY

add wave -label dy_DATA sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dy_DATA 
add wave -label dy_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dy_ACK
add wave -label dy_SEND sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dy_SEND
add wave -label dy_RDY sim:/Mean_Shift_Main_main_loop_cal_displacement_tb/i_Mean_Shift_Main_main_loop_cal_displacement/dy_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
