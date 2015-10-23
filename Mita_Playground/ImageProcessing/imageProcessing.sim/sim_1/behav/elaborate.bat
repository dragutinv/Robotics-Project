@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto c35c4719d8794b61bbb8265d16dceb98 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot imadder_behav xil_defaultlib.imadder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
