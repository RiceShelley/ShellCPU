// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:36:28 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_stub.v
// Design      : design_1_ALU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU,Vivado 2018.3" *)
module design_1_ALU_0_0(inputA, inputB, outputC, op_add, op_sub, op_and, 
  op_or, op_xor, op_nand, op_asr, op_asl, op_cmp)
/* synthesis syn_black_box black_box_pad_pin="inputA[15:0],inputB[15:0],outputC[15:0],op_add,op_sub,op_and,op_or,op_xor,op_nand,op_asr,op_asl,op_cmp" */;
  input [15:0]inputA;
  input [15:0]inputB;
  output [15:0]outputC;
  input op_add;
  input op_sub;
  input op_and;
  input op_or;
  input op_xor;
  input op_nand;
  input op_asr;
  input op_asl;
  input op_cmp;
endmodule
