## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: PROCESS 
## Date: 2015/11/17 16:04:04
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
if {[file exist work_PROCESS]} {vdel -all -lib work_PROCESS}
vlib work_PROCESS
vmap work_PROCESS work_PROCESS

## Compile the glbl constans given by Xilinx 
vlog -work work_PROCESS ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_PROCESS $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_PROCESS $Rtl/PROCESS.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_PROCESS $Testbench/PROCESS_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_PROCESS.glbl work_PROCESS.PROCESS_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/PROCESS_tb/CLK
	add wave sim:/PROCESS_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_PROCESS"
add wave -label Rin_DATA sim:/PROCESS_tb/i_PROCESS/Rin_DATA
add wave -label Rin_ACK sim:/PROCESS_tb/i_PROCESS/Rin_ACK 
add wave -label Rin_SEND sim:/PROCESS_tb/i_PROCESS/Rin_SEND 

add wave -label Gin_DATA sim:/PROCESS_tb/i_PROCESS/Gin_DATA
add wave -label Gin_ACK sim:/PROCESS_tb/i_PROCESS/Gin_ACK 
add wave -label Gin_SEND sim:/PROCESS_tb/i_PROCESS/Gin_SEND 

add wave -label Bin_DATA sim:/PROCESS_tb/i_PROCESS/Bin_DATA
add wave -label Bin_ACK sim:/PROCESS_tb/i_PROCESS/Bin_ACK 
add wave -label Bin_SEND sim:/PROCESS_tb/i_PROCESS/Bin_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_PROCESS"
add wave -label Rout_DATA sim:/PROCESS_tb/i_PROCESS/Rout_DATA 
add wave -label Rout_SEND sim:/PROCESS_tb/i_PROCESS/Rout_ACK
add wave -label Rout_SEND sim:/PROCESS_tb/i_PROCESS/Rout_SEND
add wave -label Rout_RDY sim:/PROCESS_tb/i_PROCESS/Rout_RDY

add wave -label Gout_DATA sim:/PROCESS_tb/i_PROCESS/Gout_DATA 
add wave -label Gout_SEND sim:/PROCESS_tb/i_PROCESS/Gout_ACK
add wave -label Gout_SEND sim:/PROCESS_tb/i_PROCESS/Gout_SEND
add wave -label Gout_RDY sim:/PROCESS_tb/i_PROCESS/Gout_RDY

add wave -label Bout_DATA sim:/PROCESS_tb/i_PROCESS/Bout_DATA 
add wave -label Bout_SEND sim:/PROCESS_tb/i_PROCESS/Bout_ACK
add wave -label Bout_SEND sim:/PROCESS_tb/i_PROCESS/Bout_SEND
add wave -label Bout_RDY sim:/PROCESS_tb/i_PROCESS/Bout_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
