// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 23:29:54 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_reg_file_0_0/design_1_reg_file_0_0_stub.v
// Design      : design_1_reg_file_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "reg_file,Vivado 2018.3" *)
module design_1_reg_file_0_0(clk, read_addrA, read_addrB, write_addrC, inr, 
  regA, regB, regC, outvalue, wr_en, rst)
/* synthesis syn_black_box black_box_pad_pin="clk,read_addrA[2:0],read_addrB[2:0],write_addrC[2:0],inr[2:0],regA[15:0],regB[15:0],regC[15:0],outvalue[15:0],wr_en,rst" */;
  input clk;
  input [2:0]read_addrA;
  input [2:0]read_addrB;
  input [2:0]write_addrC;
  input [2:0]inr;
  output [15:0]regA;
  output [15:0]regB;
  input [15:0]regC;
  output [15:0]outvalue;
  input wr_en;
  input rst;
endmodule
