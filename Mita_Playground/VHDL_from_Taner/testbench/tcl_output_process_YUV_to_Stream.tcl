## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: output_process_YUV_to_Stream 
## Date: 2015/10/14 15:56:56
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
if {[file exist work_output_process_YUV_to_Stream]} {vdel -all -lib work_output_process_YUV_to_Stream}
vlib work_output_process_YUV_to_Stream
vmap work_output_process_YUV_to_Stream work_output_process_YUV_to_Stream

## Compile the glbl constans given by Xilinx 
vlog -work work_output_process_YUV_to_Stream ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_output_process_YUV_to_Stream $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_output_process_YUV_to_Stream $Rtl/output_process_YUV_to_Stream.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_output_process_YUV_to_Stream $Testbench/output_process_YUV_to_Stream_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_output_process_YUV_to_Stream.glbl work_output_process_YUV_to_Stream.output_process_YUV_to_Stream_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/output_process_YUV_to_Stream_tb/CLK
	add wave sim:/output_process_YUV_to_Stream_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_output_process_YUV_to_Stream"
add wave -label Y_DATA sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/Y_DATA
add wave -label Y_ACK sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/Y_ACK 
add wave -label Y_SEND sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/Y_SEND 

add wave -label U_DATA sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/U_DATA
add wave -label U_ACK sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/U_ACK 
add wave -label U_SEND sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/U_SEND 

add wave -label V_DATA sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/V_DATA
add wave -label V_ACK sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/V_ACK 
add wave -label V_SEND sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/V_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_output_process_YUV_to_Stream"
add wave -label YUV_DATA sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/YUV_DATA 
add wave -label YUV_SEND sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/YUV_ACK
add wave -label YUV_SEND sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/YUV_SEND
add wave -label YUV_RDY sim:/output_process_YUV_to_Stream_tb/i_output_process_YUV_to_Stream/YUV_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
