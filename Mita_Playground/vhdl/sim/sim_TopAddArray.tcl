## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Simulation Launch TCL Script file for Network: TopAddArray 
## Date: 2015/10/31 11:10:50
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
vlog -work work $Rtl/Actor_1.v
vlog -work work $Rtl/Actor_2.v
vlog -work work $Rtl/Actor_3.v
vlog -work work $Rtl/Add_array.v

## Compile the Top Network
vcom -93 -check_synthesis -quiet -work work $Rtl/TopAddArray.vhd


## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work.glbl work.TopAddArray
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/TopAddArray/CLK
	add wave sim:/TopAddArray/RESET
	
	
	## Change radix to decimal
	radix -decimal



add wave -noupdate -divider -height 20 i_Actor_1
add wave sim:/TopAddArray/i_Actor_1/CLK
add wave sim:/TopAddArray/i_Actor_1/source1_DATA
add wave sim:/TopAddArray/i_Actor_1/source1_ACK
add wave sim:/TopAddArray/i_Actor_1/source1_SEND
add wave sim:/TopAddArray/i_Actor_1/source1_RDY

add wave -noupdate -divider -height 20 i_Actor_2
add wave sim:/TopAddArray/i_Actor_2/CLK
add wave sim:/TopAddArray/i_Actor_2/source2_DATA
add wave sim:/TopAddArray/i_Actor_2/source2_ACK
add wave sim:/TopAddArray/i_Actor_2/source2_SEND
add wave sim:/TopAddArray/i_Actor_2/source2_RDY

add wave -noupdate -divider -height 20 i_Actor_3
add wave sim:/TopAddArray/i_Actor_3/CLK
add wave sim:/TopAddArray/i_Actor_3/result_DATA
add wave sim:/TopAddArray/i_Actor_3/result_ACK
add wave sim:/TopAddArray/i_Actor_3/result_SEND

add wave -noupdate -divider -height 20 i_Add_array
add wave sim:/TopAddArray/i_Add_array/CLK
add wave sim:/TopAddArray/i_Add_array/Input1_DATA
add wave sim:/TopAddArray/i_Add_array/Input1_ACK
add wave sim:/TopAddArray/i_Add_array/Input1_SEND

add wave sim:/TopAddArray/i_Add_array/Input2_DATA
add wave sim:/TopAddArray/i_Add_array/Input2_ACK
add wave sim:/TopAddArray/i_Add_array/Input2_SEND
add wave sim:/TopAddArray/i_Add_array/Output_DATA
add wave sim:/TopAddArray/i_Add_array/Output_ACK
add wave sim:/TopAddArray/i_Add_array/Output_SEND
add wave sim:/TopAddArray/i_Add_array/Output_RDY

## FIFO FULL
add wave -noupdate -divider -height 20 "FIFO FULL"
add wave -label Actor_3_result_full sim:/TopAddArray/q_ai_Actor_3_result/full
add wave -label Actor_3_result_almost_full sim:/TopAddArray/q_ai_Actor_3_result/almost_full
add wave -label Add_array_Input1_full sim:/TopAddArray/q_ai_Add_array_Input1/full
add wave -label Add_array_Input1_almost_full sim:/TopAddArray/q_ai_Add_array_Input1/almost_full
add wave -label Add_array_Input2_full sim:/TopAddArray/q_ai_Add_array_Input2/full
add wave -label Add_array_Input2_almost_full sim:/TopAddArray/q_ai_Add_array_Input2/almost_full


force -freeze sim:/TopAddArray/CLK 1 0, 0 {50 ns} -r 100
force -freeze sim:/TopAddArray/RESET 1 0
run 500ns
force -freeze sim:/TopAddArray/RESET 0 0
run 10us
wave zoom full
