@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 276743937593423ba9d6e8cbfcf2ba56 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_mean3x3Operation_vhd_behav xil_defaultlib.test_mean3x3Operation_vhd -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
