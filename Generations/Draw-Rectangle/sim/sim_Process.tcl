## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Simulation Launch TCL Script file for Network: Process 
## Date: 2015/11/17 16:04:05
## ############################################################################

## Set paths
set Lib "../lib/"
set Rtl "../rtl"
set RtlGoDone "../rtl/rtlGoDone"

## Create SystemBuilder design library
vlib SystemBuilder
vmap SystemBuilder SystemBuilder

## Compile the SystemBuilder Library from sources
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbtypes.vhdl
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbfifo.vhdl
vcom -reportprogress 300 -work SystemBuilder $Lib/systemBuilder/vhdl/sbfifo_behavioral.vhdl

## Create the work design library
if {[file exist work]} {vdel -all -lib work}
vlib work
vmap work work

## Compile the glbl constans given by Xilinx 
vlog -work work ../lib/simulation/glbl.v


## Compile network instances and add them to work library	
vlog -work work $Rtl/PROCESS.v

## Compile the Top Network
vcom -93 -check_synthesis -quiet -work work $Rtl/Process.vhd


## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work.glbl work.Process
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Process/CLK
	add wave sim:/Process/RESET
	
	
	## Change radix to decimal
	radix -decimal


add wave -noupdate -divider -height 20 no_Ro
add wave sim:/Process/Ro_DATA
add wave sim:/Process/Ro_SEND
add wave sim:/Process/Ro_ACK
add wave sim:/Process/Ro_RDY
## Freeze ACK and RDY at 1
force -freeze sim:/Process/Ro_ACK 1 0
force -freeze sim:/Process/Ro_RDY 1 0

add wave -noupdate -divider -height 20 no_Go
add wave sim:/Process/Go_DATA
add wave sim:/Process/Go_SEND
add wave sim:/Process/Go_ACK
add wave sim:/Process/Go_RDY
## Freeze ACK and RDY at 1
force -freeze sim:/Process/Go_ACK 1 0
force -freeze sim:/Process/Go_RDY 1 0

add wave -noupdate -divider -height 20 no_Bo
add wave sim:/Process/Bo_DATA
add wave sim:/Process/Bo_SEND
add wave sim:/Process/Bo_ACK
add wave sim:/Process/Bo_RDY
## Freeze ACK and RDY at 1
force -freeze sim:/Process/Bo_ACK 1 0
force -freeze sim:/Process/Bo_RDY 1 0







add wave -noupdate -divider -height 20 i_PROCESS
add wave sim:/Process/i_PROCESS/CLK
add wave sim:/Process/i_PROCESS/Rin_DATA
add wave sim:/Process/i_PROCESS/Rin_ACK
add wave sim:/Process/i_PROCESS/Rin_SEND

add wave sim:/Process/i_PROCESS/Gin_DATA
add wave sim:/Process/i_PROCESS/Gin_ACK
add wave sim:/Process/i_PROCESS/Gin_SEND

add wave sim:/Process/i_PROCESS/Bin_DATA
add wave sim:/Process/i_PROCESS/Bin_ACK
add wave sim:/Process/i_PROCESS/Bin_SEND
add wave sim:/Process/i_PROCESS/Rout_DATA
add wave sim:/Process/i_PROCESS/Rout_ACK
add wave sim:/Process/i_PROCESS/Rout_SEND
add wave sim:/Process/i_PROCESS/Rout_RDY

add wave sim:/Process/i_PROCESS/Gout_DATA
add wave sim:/Process/i_PROCESS/Gout_ACK
add wave sim:/Process/i_PROCESS/Gout_SEND
add wave sim:/Process/i_PROCESS/Gout_RDY

add wave sim:/Process/i_PROCESS/Bout_DATA
add wave sim:/Process/i_PROCESS/Bout_ACK
add wave sim:/Process/i_PROCESS/Bout_SEND
add wave sim:/Process/i_PROCESS/Bout_RDY

## FIFO FULL
add wave -noupdate -divider -height 20 "FIFO FULL"
add wave -label PROCESS_Rin_full sim:/Process/q_ai_PROCESS_Rin/full
add wave -label PROCESS_Rin_almost_full sim:/Process/q_ai_PROCESS_Rin/almost_full
add wave -label PROCESS_Gin_full sim:/Process/q_ai_PROCESS_Gin/full
add wave -label PROCESS_Gin_almost_full sim:/Process/q_ai_PROCESS_Gin/almost_full
add wave -label PROCESS_Bin_full sim:/Process/q_ai_PROCESS_Bin/full
add wave -label PROCESS_Bin_almost_full sim:/Process/q_ai_PROCESS_Bin/almost_full


