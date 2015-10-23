## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: output_process_RGB_to_YUV 
## Date: 2015/10/14 15:56:50
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
if {[file exist work_output_process_RGB_to_YUV]} {vdel -all -lib work_output_process_RGB_to_YUV}
vlib work_output_process_RGB_to_YUV
vmap work_output_process_RGB_to_YUV work_output_process_RGB_to_YUV

## Compile the glbl constans given by Xilinx 
vlog -work work_output_process_RGB_to_YUV ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_output_process_RGB_to_YUV $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_output_process_RGB_to_YUV $Rtl/output_process_RGB_to_YUV.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_output_process_RGB_to_YUV $Testbench/output_process_RGB_to_YUV_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_output_process_RGB_to_YUV.glbl work_output_process_RGB_to_YUV.output_process_RGB_to_YUV_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/output_process_RGB_to_YUV_tb/CLK
	add wave sim:/output_process_RGB_to_YUV_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_output_process_RGB_to_YUV"
add wave -label R_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/R_DATA
add wave -label R_ACK sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/R_ACK 
add wave -label R_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/R_SEND 

add wave -label G_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/G_DATA
add wave -label G_ACK sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/G_ACK 
add wave -label G_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/G_SEND 

add wave -label B_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/B_DATA
add wave -label B_ACK sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/B_ACK 
add wave -label B_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/B_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_output_process_RGB_to_YUV"
add wave -label Y_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/Y_DATA 
add wave -label Y_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/Y_ACK
add wave -label Y_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/Y_SEND
add wave -label Y_RDY sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/Y_RDY

add wave -label U_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/U_DATA 
add wave -label U_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/U_ACK
add wave -label U_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/U_SEND
add wave -label U_RDY sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/U_RDY

add wave -label V_DATA sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/V_DATA 
add wave -label V_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/V_ACK
add wave -label V_SEND sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/V_SEND
add wave -label V_RDY sim:/output_process_RGB_to_YUV_tb/i_output_process_RGB_to_YUV/V_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
