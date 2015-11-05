@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto c8348123319f40bd9a34f669050ac9eb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot imagetestbench_clk_behav xil_defaultlib.imagetestbench_clk -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
