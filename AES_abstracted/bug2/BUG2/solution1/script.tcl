############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project BUG2
set_top aqed_top
add_files buf4bug2.cpp
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 50 -name default
#source "./BUG2/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
