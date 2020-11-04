// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 22:03:02 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_shell_cpu_top_0_0/design_1_shell_cpu_top_0_0_stub.v
// Design      : design_1_shell_cpu_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shell_cpu_top,Vivado 2018.3" *)
module design_1_shell_cpu_top_0_0(rst, clk, data_mem, data_mem_wr, from_stack, inr, 
  ins_addr, instruction, outvalue, regA, regB, stack_ptr, stack_wr)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,data_mem[15:0],data_mem_wr,from_stack[15:0],inr[2:0],ins_addr[15:0],instruction[15:0],outvalue[15:0],regA[15:0],regB[15:0],stack_ptr[15:0],stack_wr" */;
  input rst;
  input clk;
  input [15:0]data_mem;
  output data_mem_wr;
  input [15:0]from_stack;
  input [2:0]inr;
  output [15:0]ins_addr;
  input [15:0]instruction;
  output [15:0]outvalue;
  output [15:0]regA;
  output [15:0]regB;
  output [15:0]stack_ptr;
  output stack_wr;
endmodule
