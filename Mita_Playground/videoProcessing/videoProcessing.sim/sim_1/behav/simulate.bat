@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_mean3x3Operation_vhd_behav -key {Behavioral:sim_1:Functional:test_mean3x3Operation_vhd} -tclbatch test_mean3x3Operation_vhd.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
