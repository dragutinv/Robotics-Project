@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 49f7e1486b9b4e4fbcff4c01f2d1b05e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_libv_behav xil_defaultlib.tb_libv -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
