## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Testbench TCL Script file for Network: Process 
## Date: 2015/11/17 16:04:05
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
if {[file exist work_Process]} {vdel -all -lib work_Process}
vlib work_Process
vmap work_Process work_Process

## Compile the glbl constans given by Xilinx 
vlog -work work_Process ../lib/simulation/glbl.v


# Compile sim package
vcom -93 -reportprogress 30 -work work_Process $LibSim/sim_package.vhd
## Compile network instances and add them to work library	
vlog -work work_Process $Rtl/PROCESS.v

## Compile the Top Network
vcom -93 -check_synthesis -quiet -work work_Process $Rtl/Process.vhd

## Compile the Testbench VHD
vcom -93 -check_synthesis -quiet -work work_Process $Testbench/Process_tb.vhd

## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work_Process.glbl work_Process.Process_tb
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Process_tb/CLK
	add wave sim:/Process_tb/RESET
	
	
	## Change radix to decimal
	radix -decimal

add wave -noupdate -divider -height 20 ni_R
add wave sim:/Process_tb/R_DATA
add wave sim:/Process_tb/R_ACK
add wave sim:/Process_tb/R_SEND

add wave -noupdate -divider -height 20 ni_G
add wave sim:/Process_tb/G_DATA
add wave sim:/Process_tb/G_ACK
add wave sim:/Process_tb/G_SEND

add wave -noupdate -divider -height 20 ni_B
add wave sim:/Process_tb/B_DATA
add wave sim:/Process_tb/B_ACK
add wave sim:/Process_tb/B_SEND

add wave -noupdate -divider -height 20 no_Ro
add wave sim:/Process_tb/Ro_DATA
add wave sim:/Process_tb/Ro_SEND
add wave sim:/Process_tb/Ro_ACK
add wave sim:/Process_tb/Ro_RDY

add wave -noupdate -divider -height 20 no_Go
add wave sim:/Process_tb/Go_DATA
add wave sim:/Process_tb/Go_SEND
add wave sim:/Process_tb/Go_ACK
add wave sim:/Process_tb/Go_RDY

add wave -noupdate -divider -height 20 no_Bo
add wave sim:/Process_tb/Bo_DATA
add wave sim:/Process_tb/Bo_SEND
add wave sim:/Process_tb/Bo_ACK
add wave sim:/Process_tb/Bo_RDY







add wave -noupdate -divider -height 20 i_PROCESS
add wave sim:/Process_tb/i_Process/i_PROCESS/CLK
add wave sim:/Process_tb/i_Process/i_PROCESS/Rin_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Rin_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Rin_SEND

add wave sim:/Process_tb/i_Process/i_PROCESS/Gin_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Gin_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Gin_SEND

add wave sim:/Process_tb/i_Process/i_PROCESS/Bin_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Bin_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Bin_SEND
add wave sim:/Process_tb/i_Process/i_PROCESS/Rout_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Rout_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Rout_SEND
add wave sim:/Process_tb/i_Process/i_PROCESS/Rout_RDY

add wave sim:/Process_tb/i_Process/i_PROCESS/Gout_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Gout_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Gout_SEND
add wave sim:/Process_tb/i_Process/i_PROCESS/Gout_RDY

add wave sim:/Process_tb/i_Process/i_PROCESS/Bout_DATA
add wave sim:/Process_tb/i_Process/i_PROCESS/Bout_ACK
add wave sim:/Process_tb/i_Process/i_PROCESS/Bout_SEND
add wave sim:/Process_tb/i_Process/i_PROCESS/Bout_RDY

## FIFO FULL
add wave -noupdate -divider -height 20 "FIFO FULL"
add wave -label PROCESS_Rin_full sim:/Process_tb/i_Process/q_ai_PROCESS_Rin/full
add wave -label PROCESS_Rin_almost_full sim:/Process_tb/i_Process/q_ai_PROCESS_Rin/almost_full
add wave -label PROCESS_Gin_full sim:/Process_tb/i_Process/q_ai_PROCESS_Gin/full
add wave -label PROCESS_Gin_almost_full sim:/Process_tb/i_Process/q_ai_PROCESS_Gin/almost_full
add wave -label PROCESS_Bin_full sim:/Process_tb/i_Process/q_ai_PROCESS_Bin/full
add wave -label PROCESS_Bin_almost_full sim:/Process_tb/i_Process/q_ai_PROCESS_Bin/almost_full

