// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 19:38:36 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_prog_mem_0_0_stub.v
// Design      : design_1_prog_mem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "prog_mem,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, ins_addr, prog_data, prog_addr, prog_wr, 
  cur_ins)
/* synthesis syn_black_box black_box_pad_pin="clk,ins_addr[15:0],prog_data[15:0],prog_addr[15:0],prog_wr,cur_ins[15:0]" */;
  input clk;
  input [15:0]ins_addr;
  input [15:0]prog_data;
  input [15:0]prog_addr;
  input prog_wr;
  output [15:0]cur_ins;
endmodule
