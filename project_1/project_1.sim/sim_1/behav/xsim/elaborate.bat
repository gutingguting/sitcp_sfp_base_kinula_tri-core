@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Sep 12 10:59:40 +0800 2024
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto fb25c3c9b9dc40948ac095e5ed445a2a --incr --debug typical --relax --mt 2 -L fifo_generator_v13_2_4 -L xil_defaultlib -L gtwizard_ultrascale_v1_7_6 -L gig_ethernet_pcs_pma_v16_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TOP_file_tb_behav xil_defaultlib.TOP_file_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto fb25c3c9b9dc40948ac095e5ed445a2a --incr --debug typical --relax --mt 2 -L fifo_generator_v13_2_4 -L xil_defaultlib -L gtwizard_ultrascale_v1_7_6 -L gig_ethernet_pcs_pma_v16_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TOP_file_tb_behav xil_defaultlib.TOP_file_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
