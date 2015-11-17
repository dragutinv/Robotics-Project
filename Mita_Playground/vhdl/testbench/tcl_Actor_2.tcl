## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Actor: Actor_2 
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
if {[file exist work_Actor_2]} {vdel -all -lib work_Actor_2}
vlib work_Actor_2
vmap work_Actor_2 work_Actor_2

## Compile the glbl constans given by Xilinx 
vlog -work work_Actor_2 ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Actor_2 $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Actor_2 $Rtl/Actor_2.v


## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Actor_2 $Testbench/Actor_2_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Actor_2.glbl work_Actor_2.Actor_2_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Actor_2_tb/CLK
	add wave sim:/Actor_2_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20  "Inputs: i_Actor_2"
add wave -noupdate -divider -height 20 "Outputs: i_Actor_2"
add wave -label source2_DATA sim:/Actor_2_tb/i_Actor_2/source2_DATA 
add wave -label source2_SEND sim:/Actor_2_tb/i_Actor_2/source2_ACK
add wave -label source2_SEND sim:/Actor_2_tb/i_Actor_2/source2_SEND
add wave -label source2_RDY sim:/Actor_2_tb/i_Actor_2/source2_RDY
add wave -noupdate -divider -height 20 "Go & Done" 