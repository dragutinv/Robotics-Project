## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Mean_Shift_Main_input_read_YUV_to_RGB 
## Date: 2015/10/14 15:56:36
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
if {[file exist work_Mean_Shift_Main_input_read_YUV_to_RGB]} {vdel -all -lib work_Mean_Shift_Main_input_read_YUV_to_RGB}
vlib work_Mean_Shift_Main_input_read_YUV_to_RGB
vmap work_Mean_Shift_Main_input_read_YUV_to_RGB work_Mean_Shift_Main_input_read_YUV_to_RGB

## Compile the glbl constans given by Xilinx 
vlog -work work_Mean_Shift_Main_input_read_YUV_to_RGB ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Mean_Shift_Main_input_read_YUV_to_RGB $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Mean_Shift_Main_input_read_YUV_to_RGB $Rtl/Mean_Shift_Main_input_read_YUV_to_RGB.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Mean_Shift_Main_input_read_YUV_to_RGB $Testbench/Mean_Shift_Main_input_read_YUV_to_RGB_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Mean_Shift_Main_input_read_YUV_to_RGB.glbl work_Mean_Shift_Main_input_read_YUV_to_RGB.Mean_Shift_Main_input_read_YUV_to_RGB_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/CLK
	add wave sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Mean_Shift_Main_input_read_YUV_to_RGB"
add wave -label Y_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_DATA
add wave -label Y_ACK sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_ACK 
add wave -label Y_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/Y_SEND 

add wave -label U_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_DATA
add wave -label U_ACK sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_ACK 
add wave -label U_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/U_SEND 

add wave -label V_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_DATA
add wave -label V_ACK sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_ACK 
add wave -label V_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/V_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Mean_Shift_Main_input_read_YUV_to_RGB"
add wave -label R_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_DATA 
add wave -label R_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_ACK
add wave -label R_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_SEND
add wave -label R_RDY sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/R_RDY

add wave -label G_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_DATA 
add wave -label G_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_ACK
add wave -label G_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_SEND
add wave -label G_RDY sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/G_RDY

add wave -label B_DATA sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_DATA 
add wave -label B_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_ACK
add wave -label B_SEND sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_SEND
add wave -label B_RDY sim:/Mean_Shift_Main_input_read_YUV_to_RGB_tb/i_Mean_Shift_Main_input_read_YUV_to_RGB/B_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
