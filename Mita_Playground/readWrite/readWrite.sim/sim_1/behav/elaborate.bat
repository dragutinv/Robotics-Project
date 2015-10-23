@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 55e63942acee499e8811cebffd09fe47 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot file_handle_behav xil_defaultlib.file_handle -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
