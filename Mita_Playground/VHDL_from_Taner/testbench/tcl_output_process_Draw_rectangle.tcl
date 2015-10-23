## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: output_process_Draw_rectangle 
## Date: 2015/10/14 15:56:48
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
if {[file exist work_output_process_Draw_rectangle]} {vdel -all -lib work_output_process_Draw_rectangle}
vlib work_output_process_Draw_rectangle
vmap work_output_process_Draw_rectangle work_output_process_Draw_rectangle

## Compile the glbl constans given by Xilinx 
vlog -work work_output_process_Draw_rectangle ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_output_process_Draw_rectangle $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_output_process_Draw_rectangle $Rtl/output_process_Draw_rectangle.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_output_process_Draw_rectangle $Testbench/output_process_Draw_rectangle_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_output_process_Draw_rectangle.glbl work_output_process_Draw_rectangle.output_process_Draw_rectangle_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/output_process_Draw_rectangle_tb/CLK
	add wave sim:/output_process_Draw_rectangle_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_output_process_Draw_rectangle"
add wave -label Rin_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rin_DATA
add wave -label Rin_ACK sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rin_ACK 
add wave -label Rin_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rin_SEND 

add wave -label Gin_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gin_DATA
add wave -label Gin_ACK sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gin_ACK 
add wave -label Gin_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gin_SEND 

add wave -label Bin_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bin_DATA
add wave -label Bin_ACK sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bin_ACK 
add wave -label Bin_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bin_SEND 

add wave -label center_x_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_x_DATA
add wave -label center_x_ACK sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_x_ACK 
add wave -label center_x_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_x_SEND 

add wave -label center_y_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_y_DATA
add wave -label center_y_ACK sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_y_ACK 
add wave -label center_y_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/center_y_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_output_process_Draw_rectangle"
add wave -label Rout_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rout_DATA 
add wave -label Rout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rout_ACK
add wave -label Rout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rout_SEND
add wave -label Rout_RDY sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Rout_RDY

add wave -label Gout_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gout_DATA 
add wave -label Gout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gout_ACK
add wave -label Gout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gout_SEND
add wave -label Gout_RDY sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Gout_RDY

add wave -label Bout_DATA sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bout_DATA 
add wave -label Bout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bout_ACK
add wave -label Bout_SEND sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bout_SEND
add wave -label Bout_RDY sim:/output_process_Draw_rectangle_tb/i_output_process_Draw_rectangle/Bout_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
