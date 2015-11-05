## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Add_array 
## Date: 2015/10/31 11:10:49
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
if {[file exist work_Add_array]} {vdel -all -lib work_Add_array}
vlib work_Add_array
vmap work_Add_array work_Add_array

## Compile the glbl constans given by Xilinx 
vlog -work work_Add_array ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Add_array $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Add_array $Rtl/Add_array.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Add_array $Testbench/Add_array_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Add_array.glbl work_Add_array.Add_array_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Add_array_tb/CLK
	add wave sim:/Add_array_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Add_array"
add wave -label Input1_DATA sim:/Add_array_tb/i_Add_array/Input1_DATA
add wave -label Input1_ACK sim:/Add_array_tb/i_Add_array/Input1_ACK 
add wave -label Input1_SEND sim:/Add_array_tb/i_Add_array/Input1_SEND 

add wave -label Input2_DATA sim:/Add_array_tb/i_Add_array/Input2_DATA
add wave -label Input2_ACK sim:/Add_array_tb/i_Add_array/Input2_ACK 
add wave -label Input2_SEND sim:/Add_array_tb/i_Add_array/Input2_SEND 
add wave -noupdate -divider -height 20 "Outputs: i_Add_array"
add wave -label Output_DATA sim:/Add_array_tb/i_Add_array/Output_DATA 
add wave -label Output_SEND sim:/Add_array_tb/i_Add_array/Output_ACK
add wave -label Output_SEND sim:/Add_array_tb/i_Add_array/Output_SEND
add wave -label Output_RDY sim:/Add_array_tb/i_Add_array/Output_RDY
add wave -noupdate -divider -height 20 "Go & Done" 
