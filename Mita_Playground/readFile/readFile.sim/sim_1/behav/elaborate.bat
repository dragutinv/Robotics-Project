@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 8bf1067d7c0d44e0a6c1b67a4d55168f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot read_file_behav xil_defaultlib.read_file -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
