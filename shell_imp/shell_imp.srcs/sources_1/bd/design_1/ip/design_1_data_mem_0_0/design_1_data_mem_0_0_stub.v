// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 22:22:30 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_data_mem_0_0/design_1_data_mem_0_0_stub.v
// Design      : design_1_data_mem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data_mem,Vivado 2018.3" *)
module design_1_data_mem_0_0(clk, rd_addr, wr_addr, data_in, stack_addr, 
  prog_addr, prog_data, stack_wr_en, wr_en, prog_wr, prog_mode, data_out, stack_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rd_addr[15:0],wr_addr[15:0],data_in[15:0],stack_addr[15:0],prog_addr[15:0],prog_data[15:0],stack_wr_en,wr_en,prog_wr,prog_mode,data_out[15:0],stack_out[15:0]" */;
  input clk;
  input [15:0]rd_addr;
  input [15:0]wr_addr;
  input [15:0]data_in;
  input [15:0]stack_addr;
  input [15:0]prog_addr;
  input [15:0]prog_data;
  input stack_wr_en;
  input wr_en;
  input prog_wr;
  input prog_mode;
  output [15:0]data_out;
  output [15:0]stack_out;
endmodule
