## ############################################################################
## __  ___ __ ___  _ __   ___  ___ 
## \ \/ / '__/ _ \| '_ \ / _ \/ __|
##  >  <| | | (_) | | | | (_) \__ \
## /_/\_\_|  \___/|_| |_|\___/|___/
## ############################################################################
## Xronos synthesizer
## Simulation Launch TCL Script file for Network: Generation 
## Date: 2015/11/17 18:39:22
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
vlog -work work $Rtl/Generation.v
vlog -work work $Rtl/YUV_to_RGB.v
vlog -work work $Rtl/Stream_to_YUV.v
vlog -work work $Rtl/YUV_to_Stream.v
vlog -work work $Rtl/RGB_to_YUV.v

## Compile the Top Network
vcom -93 -check_synthesis -quiet -work work $Rtl/Generation.vhd


## Start VSIM
vsim -voptargs="+acc" -L unisims_ver -L simprims_ver -t ns work.glbl work.Generation
	
## Add clock(s) and reset signal
add wave -noupdate -divider -height 20 "CLK & RESET"

add wave sim:/Generation/CLK
	add wave sim:/Generation/RESET
	
	
	## Change radix to decimal
	radix -decimal


add wave -noupdate -divider -height 20 no_YUV
add wave sim:/Generation/YUV_DATA
add wave sim:/Generation/YUV_SEND
add wave sim:/Generation/YUV_ACK
add wave sim:/Generation/YUV_RDY
## Freeze ACK and RDY at 1
force -freeze sim:/Generation/YUV_ACK 1 0
force -freeze sim:/Generation/YUV_RDY 1 0



add wave -noupdate -divider -height 20 i_Generation
add wave sim:/Generation/i_Generation/CLK
add wave sim:/Generation/i_Generation/Rin_DATA
add wave sim:/Generation/i_Generation/Rin_ACK
add wave sim:/Generation/i_Generation/Rin_SEND

add wave sim:/Generation/i_Generation/Gin_DATA
add wave sim:/Generation/i_Generation/Gin_ACK
add wave sim:/Generation/i_Generation/Gin_SEND

add wave sim:/Generation/i_Generation/Bin_DATA
add wave sim:/Generation/i_Generation/Bin_ACK
add wave sim:/Generation/i_Generation/Bin_SEND
add wave sim:/Generation/i_Generation/Rout_DATA
add wave sim:/Generation/i_Generation/Rout_ACK
add wave sim:/Generation/i_Generation/Rout_SEND
add wave sim:/Generation/i_Generation/Rout_RDY

add wave sim:/Generation/i_Generation/Gout_DATA
add wave sim:/Generation/i_Generation/Gout_ACK
add wave sim:/Generation/i_Generation/Gout_SEND
add wave sim:/Generation/i_Generation/Gout_RDY

add wave sim:/Generation/i_Generation/Bout_DATA
add wave sim:/Generation/i_Generation/Bout_ACK
add wave sim:/Generation/i_Generation/Bout_SEND
add wave sim:/Generation/i_Generation/Bout_RDY

add wave -noupdate -divider -height 20 i_YUV_to_RGB
add wave sim:/Generation/i_YUV_to_RGB/CLK
add wave sim:/Generation/i_YUV_to_RGB/Y_DATA
add wave sim:/Generation/i_YUV_to_RGB/Y_ACK
add wave sim:/Generation/i_YUV_to_RGB/Y_SEND

add wave sim:/Generation/i_YUV_to_RGB/U_DATA
add wave sim:/Generation/i_YUV_to_RGB/U_ACK
add wave sim:/Generation/i_YUV_to_RGB/U_SEND

add wave sim:/Generation/i_YUV_to_RGB/V_DATA
add wave sim:/Generation/i_YUV_to_RGB/V_ACK
add wave sim:/Generation/i_YUV_to_RGB/V_SEND
add wave sim:/Generation/i_YUV_to_RGB/R_DATA
add wave sim:/Generation/i_YUV_to_RGB/R_ACK
add wave sim:/Generation/i_YUV_to_RGB/R_SEND
add wave sim:/Generation/i_YUV_to_RGB/R_RDY

add wave sim:/Generation/i_YUV_to_RGB/G_DATA
add wave sim:/Generation/i_YUV_to_RGB/G_ACK
add wave sim:/Generation/i_YUV_to_RGB/G_SEND
add wave sim:/Generation/i_YUV_to_RGB/G_RDY

add wave sim:/Generation/i_YUV_to_RGB/B_DATA
add wave sim:/Generation/i_YUV_to_RGB/B_ACK
add wave sim:/Generation/i_YUV_to_RGB/B_SEND
add wave sim:/Generation/i_YUV_to_RGB/B_RDY

add wave -noupdate -divider -height 20 i_Stream_to_YUV
add wave sim:/Generation/i_Stream_to_YUV/CLK
add wave sim:/Generation/i_Stream_to_YUV/stream_DATA
add wave sim:/Generation/i_Stream_to_YUV/stream_ACK
add wave sim:/Generation/i_Stream_to_YUV/stream_SEND
add wave sim:/Generation/i_Stream_to_YUV/Y_DATA
add wave sim:/Generation/i_Stream_to_YUV/Y_ACK
add wave sim:/Generation/i_Stream_to_YUV/Y_SEND
add wave sim:/Generation/i_Stream_to_YUV/Y_RDY

add wave sim:/Generation/i_Stream_to_YUV/U_DATA
add wave sim:/Generation/i_Stream_to_YUV/U_ACK
add wave sim:/Generation/i_Stream_to_YUV/U_SEND
add wave sim:/Generation/i_Stream_to_YUV/U_RDY

add wave sim:/Generation/i_Stream_to_YUV/V_DATA
add wave sim:/Generation/i_Stream_to_YUV/V_ACK
add wave sim:/Generation/i_Stream_to_YUV/V_SEND
add wave sim:/Generation/i_Stream_to_YUV/V_RDY

add wave -noupdate -divider -height 20 i_YUV_to_Stream
add wave sim:/Generation/i_YUV_to_Stream/CLK
add wave sim:/Generation/i_YUV_to_Stream/Y_DATA
add wave sim:/Generation/i_YUV_to_Stream/Y_ACK
add wave sim:/Generation/i_YUV_to_Stream/Y_SEND

add wave sim:/Generation/i_YUV_to_Stream/U_DATA
add wave sim:/Generation/i_YUV_to_Stream/U_ACK
add wave sim:/Generation/i_YUV_to_Stream/U_SEND

add wave sim:/Generation/i_YUV_to_Stream/V_DATA
add wave sim:/Generation/i_YUV_to_Stream/V_ACK
add wave sim:/Generation/i_YUV_to_Stream/V_SEND
add wave sim:/Generation/i_YUV_to_Stream/YUV_DATA
add wave sim:/Generation/i_YUV_to_Stream/YUV_ACK
add wave sim:/Generation/i_YUV_to_Stream/YUV_SEND
add wave sim:/Generation/i_YUV_to_Stream/YUV_RDY

add wave -noupdate -divider -height 20 i_RGB_to_YUV
add wave sim:/Generation/i_RGB_to_YUV/CLK
add wave sim:/Generation/i_RGB_to_YUV/R_DATA
add wave sim:/Generation/i_RGB_to_YUV/R_ACK
add wave sim:/Generation/i_RGB_to_YUV/R_SEND

add wave sim:/Generation/i_RGB_to_YUV/G_DATA
add wave sim:/Generation/i_RGB_to_YUV/G_ACK
add wave sim:/Generation/i_RGB_to_YUV/G_SEND

add wave sim:/Generation/i_RGB_to_YUV/B_DATA
add wave sim:/Generation/i_RGB_to_YUV/B_ACK
add wave sim:/Generation/i_RGB_to_YUV/B_SEND
add wave sim:/Generation/i_RGB_to_YUV/Y_DATA
add wave sim:/Generation/i_RGB_to_YUV/Y_ACK
add wave sim:/Generation/i_RGB_to_YUV/Y_SEND
add wave sim:/Generation/i_RGB_to_YUV/Y_RDY

add wave sim:/Generation/i_RGB_to_YUV/U_DATA
add wave sim:/Generation/i_RGB_to_YUV/U_ACK
add wave sim:/Generation/i_RGB_to_YUV/U_SEND
add wave sim:/Generation/i_RGB_to_YUV/U_RDY

add wave sim:/Generation/i_RGB_to_YUV/V_DATA
add wave sim:/Generation/i_RGB_to_YUV/V_ACK
add wave sim:/Generation/i_RGB_to_YUV/V_SEND
add wave sim:/Generation/i_RGB_to_YUV/V_RDY

## FIFO FULL
add wave -noupdate -divider -height 20 "FIFO FULL"
add wave -label Generation_Rin_full sim:/Generation/q_ai_Generation_Rin/full
add wave -label Generation_Rin_almost_full sim:/Generation/q_ai_Generation_Rin/almost_full
add wave -label Generation_Gin_full sim:/Generation/q_ai_Generation_Gin/full
add wave -label Generation_Gin_almost_full sim:/Generation/q_ai_Generation_Gin/almost_full
add wave -label Generation_Bin_full sim:/Generation/q_ai_Generation_Bin/full
add wave -label Generation_Bin_almost_full sim:/Generation/q_ai_Generation_Bin/almost_full
add wave -label YUV_to_RGB_Y_full sim:/Generation/q_ai_YUV_to_RGB_Y/full
add wave -label YUV_to_RGB_Y_almost_full sim:/Generation/q_ai_YUV_to_RGB_Y/almost_full
add wave -label YUV_to_RGB_U_full sim:/Generation/q_ai_YUV_to_RGB_U/full
add wave -label YUV_to_RGB_U_almost_full sim:/Generation/q_ai_YUV_to_RGB_U/almost_full
add wave -label YUV_to_RGB_V_full sim:/Generation/q_ai_YUV_to_RGB_V/full
add wave -label YUV_to_RGB_V_almost_full sim:/Generation/q_ai_YUV_to_RGB_V/almost_full
add wave -label Stream_to_YUV_stream_full sim:/Generation/q_ai_Stream_to_YUV_stream/full
add wave -label Stream_to_YUV_stream_almost_full sim:/Generation/q_ai_Stream_to_YUV_stream/almost_full
add wave -label YUV_to_Stream_Y_full sim:/Generation/q_ai_YUV_to_Stream_Y/full
add wave -label YUV_to_Stream_Y_almost_full sim:/Generation/q_ai_YUV_to_Stream_Y/almost_full
add wave -label YUV_to_Stream_U_full sim:/Generation/q_ai_YUV_to_Stream_U/full
add wave -label YUV_to_Stream_U_almost_full sim:/Generation/q_ai_YUV_to_Stream_U/almost_full
add wave -label YUV_to_Stream_V_full sim:/Generation/q_ai_YUV_to_Stream_V/full
add wave -label YUV_to_Stream_V_almost_full sim:/Generation/q_ai_YUV_to_Stream_V/almost_full
add wave -label RGB_to_YUV_R_full sim:/Generation/q_ai_RGB_to_YUV_R/full
add wave -label RGB_to_YUV_R_almost_full sim:/Generation/q_ai_RGB_to_YUV_R/almost_full
add wave -label RGB_to_YUV_G_full sim:/Generation/q_ai_RGB_to_YUV_G/full
add wave -label RGB_to_YUV_G_almost_full sim:/Generation/q_ai_RGB_to_YUV_G/almost_full
add wave -label RGB_to_YUV_B_full sim:/Generation/q_ai_RGB_to_YUV_B/full
add wave -label RGB_to_YUV_B_almost_full sim:/Generation/q_ai_RGB_to_YUV_B/almost_full


