// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 19:38:36 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_prog_mem_0_0_sim_netlist.v
// Design      : design_1_prog_mem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_prog_mem_0_0,prog_mem,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "prog_mem,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ins_addr,
    prog_data,
    prog_addr,
    prog_wr,
    cur_ins);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]ins_addr;
  input [15:0]prog_data;
  input [15:0]prog_addr;
  input prog_wr;
  output [15:0]cur_ins;

  wire clk;
  wire [15:0]cur_ins;
  wire [15:0]ins_addr;
  wire [15:0]prog_addr;
  wire [15:0]prog_data;
  wire prog_wr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_mem U0
       (.clk(clk),
        .cur_ins(cur_ins),
        .ins_addr(ins_addr[9:0]),
        .prog_addr(prog_addr[9:0]),
        .prog_data(prog_data),
        .prog_wr(prog_wr));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_mem
   (cur_ins,
    clk,
    prog_data,
    ins_addr,
    prog_addr,
    prog_wr);
  output [15:0]cur_ins;
  input clk;
  input [15:0]prog_data;
  input [9:0]ins_addr;
  input [9:0]prog_addr;
  input prog_wr;

  wire clk;
  wire [15:0]cur_ins;
  wire \cur_ins[0]_INST_0_i_1_n_0 ;
  wire \cur_ins[0]_INST_0_i_2_n_0 ;
  wire \cur_ins[0]_INST_0_i_3_n_0 ;
  wire \cur_ins[0]_INST_0_i_4_n_0 ;
  wire \cur_ins[0]_INST_0_i_5_n_0 ;
  wire \cur_ins[0]_INST_0_i_6_n_0 ;
  wire \cur_ins[10]_INST_0_i_1_n_0 ;
  wire \cur_ins[10]_INST_0_i_2_n_0 ;
  wire \cur_ins[10]_INST_0_i_3_n_0 ;
  wire \cur_ins[10]_INST_0_i_4_n_0 ;
  wire \cur_ins[10]_INST_0_i_5_n_0 ;
  wire \cur_ins[10]_INST_0_i_6_n_0 ;
  wire \cur_ins[11]_INST_0_i_1_n_0 ;
  wire \cur_ins[11]_INST_0_i_2_n_0 ;
  wire \cur_ins[11]_INST_0_i_3_n_0 ;
  wire \cur_ins[11]_INST_0_i_4_n_0 ;
  wire \cur_ins[11]_INST_0_i_5_n_0 ;
  wire \cur_ins[11]_INST_0_i_6_n_0 ;
  wire \cur_ins[12]_INST_0_i_1_n_0 ;
  wire \cur_ins[12]_INST_0_i_2_n_0 ;
  wire \cur_ins[12]_INST_0_i_3_n_0 ;
  wire \cur_ins[12]_INST_0_i_4_n_0 ;
  wire \cur_ins[12]_INST_0_i_5_n_0 ;
  wire \cur_ins[12]_INST_0_i_6_n_0 ;
  wire \cur_ins[13]_INST_0_i_1_n_0 ;
  wire \cur_ins[13]_INST_0_i_2_n_0 ;
  wire \cur_ins[13]_INST_0_i_3_n_0 ;
  wire \cur_ins[13]_INST_0_i_4_n_0 ;
  wire \cur_ins[13]_INST_0_i_5_n_0 ;
  wire \cur_ins[13]_INST_0_i_6_n_0 ;
  wire \cur_ins[14]_INST_0_i_1_n_0 ;
  wire \cur_ins[14]_INST_0_i_2_n_0 ;
  wire \cur_ins[14]_INST_0_i_3_n_0 ;
  wire \cur_ins[14]_INST_0_i_4_n_0 ;
  wire \cur_ins[14]_INST_0_i_5_n_0 ;
  wire \cur_ins[14]_INST_0_i_6_n_0 ;
  wire \cur_ins[15]_INST_0_i_1_n_0 ;
  wire \cur_ins[15]_INST_0_i_2_n_0 ;
  wire \cur_ins[15]_INST_0_i_3_n_0 ;
  wire \cur_ins[15]_INST_0_i_4_n_0 ;
  wire \cur_ins[15]_INST_0_i_5_n_0 ;
  wire \cur_ins[15]_INST_0_i_6_n_0 ;
  wire \cur_ins[1]_INST_0_i_1_n_0 ;
  wire \cur_ins[1]_INST_0_i_2_n_0 ;
  wire \cur_ins[1]_INST_0_i_3_n_0 ;
  wire \cur_ins[1]_INST_0_i_4_n_0 ;
  wire \cur_ins[1]_INST_0_i_5_n_0 ;
  wire \cur_ins[1]_INST_0_i_6_n_0 ;
  wire \cur_ins[2]_INST_0_i_1_n_0 ;
  wire \cur_ins[2]_INST_0_i_2_n_0 ;
  wire \cur_ins[2]_INST_0_i_3_n_0 ;
  wire \cur_ins[2]_INST_0_i_4_n_0 ;
  wire \cur_ins[2]_INST_0_i_5_n_0 ;
  wire \cur_ins[2]_INST_0_i_6_n_0 ;
  wire \cur_ins[3]_INST_0_i_1_n_0 ;
  wire \cur_ins[3]_INST_0_i_2_n_0 ;
  wire \cur_ins[3]_INST_0_i_3_n_0 ;
  wire \cur_ins[3]_INST_0_i_4_n_0 ;
  wire \cur_ins[3]_INST_0_i_5_n_0 ;
  wire \cur_ins[3]_INST_0_i_6_n_0 ;
  wire \cur_ins[4]_INST_0_i_1_n_0 ;
  wire \cur_ins[4]_INST_0_i_2_n_0 ;
  wire \cur_ins[4]_INST_0_i_3_n_0 ;
  wire \cur_ins[4]_INST_0_i_4_n_0 ;
  wire \cur_ins[4]_INST_0_i_5_n_0 ;
  wire \cur_ins[4]_INST_0_i_6_n_0 ;
  wire \cur_ins[5]_INST_0_i_1_n_0 ;
  wire \cur_ins[5]_INST_0_i_2_n_0 ;
  wire \cur_ins[5]_INST_0_i_3_n_0 ;
  wire \cur_ins[5]_INST_0_i_4_n_0 ;
  wire \cur_ins[5]_INST_0_i_5_n_0 ;
  wire \cur_ins[5]_INST_0_i_6_n_0 ;
  wire \cur_ins[6]_INST_0_i_1_n_0 ;
  wire \cur_ins[6]_INST_0_i_2_n_0 ;
  wire \cur_ins[6]_INST_0_i_3_n_0 ;
  wire \cur_ins[6]_INST_0_i_4_n_0 ;
  wire \cur_ins[6]_INST_0_i_5_n_0 ;
  wire \cur_ins[6]_INST_0_i_6_n_0 ;
  wire \cur_ins[7]_INST_0_i_1_n_0 ;
  wire \cur_ins[7]_INST_0_i_2_n_0 ;
  wire \cur_ins[7]_INST_0_i_3_n_0 ;
  wire \cur_ins[7]_INST_0_i_4_n_0 ;
  wire \cur_ins[7]_INST_0_i_5_n_0 ;
  wire \cur_ins[7]_INST_0_i_6_n_0 ;
  wire \cur_ins[8]_INST_0_i_1_n_0 ;
  wire \cur_ins[8]_INST_0_i_2_n_0 ;
  wire \cur_ins[8]_INST_0_i_3_n_0 ;
  wire \cur_ins[8]_INST_0_i_4_n_0 ;
  wire \cur_ins[8]_INST_0_i_5_n_0 ;
  wire \cur_ins[8]_INST_0_i_6_n_0 ;
  wire \cur_ins[9]_INST_0_i_1_n_0 ;
  wire \cur_ins[9]_INST_0_i_2_n_0 ;
  wire \cur_ins[9]_INST_0_i_3_n_0 ;
  wire \cur_ins[9]_INST_0_i_4_n_0 ;
  wire \cur_ins[9]_INST_0_i_5_n_0 ;
  wire \cur_ins[9]_INST_0_i_6_n_0 ;
  wire [9:0]ins_addr;
  wire mem_reg_0_63_0_2_i_1_n_0;
  wire mem_reg_0_63_0_2_n_0;
  wire mem_reg_0_63_0_2_n_1;
  wire mem_reg_0_63_0_2_n_2;
  wire mem_reg_0_63_12_14_n_0;
  wire mem_reg_0_63_12_14_n_1;
  wire mem_reg_0_63_12_14_n_2;
  wire mem_reg_0_63_15_15_n_0;
  wire mem_reg_0_63_3_5_n_0;
  wire mem_reg_0_63_3_5_n_1;
  wire mem_reg_0_63_3_5_n_2;
  wire mem_reg_0_63_6_8_n_0;
  wire mem_reg_0_63_6_8_n_1;
  wire mem_reg_0_63_6_8_n_2;
  wire mem_reg_0_63_9_11_n_0;
  wire mem_reg_0_63_9_11_n_1;
  wire mem_reg_0_63_9_11_n_2;
  wire mem_reg_128_191_0_2_i_1_n_0;
  wire mem_reg_128_191_0_2_n_0;
  wire mem_reg_128_191_0_2_n_1;
  wire mem_reg_128_191_0_2_n_2;
  wire mem_reg_128_191_12_14_n_0;
  wire mem_reg_128_191_12_14_n_1;
  wire mem_reg_128_191_12_14_n_2;
  wire mem_reg_128_191_15_15_n_0;
  wire mem_reg_128_191_3_5_n_0;
  wire mem_reg_128_191_3_5_n_1;
  wire mem_reg_128_191_3_5_n_2;
  wire mem_reg_128_191_6_8_n_0;
  wire mem_reg_128_191_6_8_n_1;
  wire mem_reg_128_191_6_8_n_2;
  wire mem_reg_128_191_9_11_n_0;
  wire mem_reg_128_191_9_11_n_1;
  wire mem_reg_128_191_9_11_n_2;
  wire mem_reg_192_255_0_2_i_1_n_0;
  wire mem_reg_192_255_0_2_n_0;
  wire mem_reg_192_255_0_2_n_1;
  wire mem_reg_192_255_0_2_n_2;
  wire mem_reg_192_255_12_14_n_0;
  wire mem_reg_192_255_12_14_n_1;
  wire mem_reg_192_255_12_14_n_2;
  wire mem_reg_192_255_15_15_n_0;
  wire mem_reg_192_255_3_5_n_0;
  wire mem_reg_192_255_3_5_n_1;
  wire mem_reg_192_255_3_5_n_2;
  wire mem_reg_192_255_6_8_n_0;
  wire mem_reg_192_255_6_8_n_1;
  wire mem_reg_192_255_6_8_n_2;
  wire mem_reg_192_255_9_11_n_0;
  wire mem_reg_192_255_9_11_n_1;
  wire mem_reg_192_255_9_11_n_2;
  wire mem_reg_256_319_0_2_i_1_n_0;
  wire mem_reg_256_319_0_2_n_0;
  wire mem_reg_256_319_0_2_n_1;
  wire mem_reg_256_319_0_2_n_2;
  wire mem_reg_256_319_12_14_n_0;
  wire mem_reg_256_319_12_14_n_1;
  wire mem_reg_256_319_12_14_n_2;
  wire mem_reg_256_319_15_15_n_0;
  wire mem_reg_256_319_3_5_n_0;
  wire mem_reg_256_319_3_5_n_1;
  wire mem_reg_256_319_3_5_n_2;
  wire mem_reg_256_319_6_8_n_0;
  wire mem_reg_256_319_6_8_n_1;
  wire mem_reg_256_319_6_8_n_2;
  wire mem_reg_256_319_9_11_n_0;
  wire mem_reg_256_319_9_11_n_1;
  wire mem_reg_256_319_9_11_n_2;
  wire mem_reg_320_383_0_2_i_1_n_0;
  wire mem_reg_320_383_0_2_n_0;
  wire mem_reg_320_383_0_2_n_1;
  wire mem_reg_320_383_0_2_n_2;
  wire mem_reg_320_383_12_14_n_0;
  wire mem_reg_320_383_12_14_n_1;
  wire mem_reg_320_383_12_14_n_2;
  wire mem_reg_320_383_15_15_n_0;
  wire mem_reg_320_383_3_5_n_0;
  wire mem_reg_320_383_3_5_n_1;
  wire mem_reg_320_383_3_5_n_2;
  wire mem_reg_320_383_6_8_n_0;
  wire mem_reg_320_383_6_8_n_1;
  wire mem_reg_320_383_6_8_n_2;
  wire mem_reg_320_383_9_11_n_0;
  wire mem_reg_320_383_9_11_n_1;
  wire mem_reg_320_383_9_11_n_2;
  wire mem_reg_384_447_0_2_i_1_n_0;
  wire mem_reg_384_447_0_2_n_0;
  wire mem_reg_384_447_0_2_n_1;
  wire mem_reg_384_447_0_2_n_2;
  wire mem_reg_384_447_12_14_n_0;
  wire mem_reg_384_447_12_14_n_1;
  wire mem_reg_384_447_12_14_n_2;
  wire mem_reg_384_447_15_15_n_0;
  wire mem_reg_384_447_3_5_n_0;
  wire mem_reg_384_447_3_5_n_1;
  wire mem_reg_384_447_3_5_n_2;
  wire mem_reg_384_447_6_8_n_0;
  wire mem_reg_384_447_6_8_n_1;
  wire mem_reg_384_447_6_8_n_2;
  wire mem_reg_384_447_9_11_n_0;
  wire mem_reg_384_447_9_11_n_1;
  wire mem_reg_384_447_9_11_n_2;
  wire mem_reg_448_511_0_2_i_1_n_0;
  wire mem_reg_448_511_0_2_n_0;
  wire mem_reg_448_511_0_2_n_1;
  wire mem_reg_448_511_0_2_n_2;
  wire mem_reg_448_511_12_14_n_0;
  wire mem_reg_448_511_12_14_n_1;
  wire mem_reg_448_511_12_14_n_2;
  wire mem_reg_448_511_15_15_n_0;
  wire mem_reg_448_511_3_5_n_0;
  wire mem_reg_448_511_3_5_n_1;
  wire mem_reg_448_511_3_5_n_2;
  wire mem_reg_448_511_6_8_n_0;
  wire mem_reg_448_511_6_8_n_1;
  wire mem_reg_448_511_6_8_n_2;
  wire mem_reg_448_511_9_11_n_0;
  wire mem_reg_448_511_9_11_n_1;
  wire mem_reg_448_511_9_11_n_2;
  wire mem_reg_512_575_0_2_i_1_n_0;
  wire mem_reg_512_575_0_2_n_0;
  wire mem_reg_512_575_0_2_n_1;
  wire mem_reg_512_575_0_2_n_2;
  wire mem_reg_512_575_12_14_n_0;
  wire mem_reg_512_575_12_14_n_1;
  wire mem_reg_512_575_12_14_n_2;
  wire mem_reg_512_575_15_15_n_0;
  wire mem_reg_512_575_3_5_n_0;
  wire mem_reg_512_575_3_5_n_1;
  wire mem_reg_512_575_3_5_n_2;
  wire mem_reg_512_575_6_8_n_0;
  wire mem_reg_512_575_6_8_n_1;
  wire mem_reg_512_575_6_8_n_2;
  wire mem_reg_512_575_9_11_n_0;
  wire mem_reg_512_575_9_11_n_1;
  wire mem_reg_512_575_9_11_n_2;
  wire mem_reg_576_639_0_2_i_1_n_0;
  wire mem_reg_576_639_0_2_n_0;
  wire mem_reg_576_639_0_2_n_1;
  wire mem_reg_576_639_0_2_n_2;
  wire mem_reg_576_639_12_14_n_0;
  wire mem_reg_576_639_12_14_n_1;
  wire mem_reg_576_639_12_14_n_2;
  wire mem_reg_576_639_15_15_n_0;
  wire mem_reg_576_639_3_5_n_0;
  wire mem_reg_576_639_3_5_n_1;
  wire mem_reg_576_639_3_5_n_2;
  wire mem_reg_576_639_6_8_n_0;
  wire mem_reg_576_639_6_8_n_1;
  wire mem_reg_576_639_6_8_n_2;
  wire mem_reg_576_639_9_11_n_0;
  wire mem_reg_576_639_9_11_n_1;
  wire mem_reg_576_639_9_11_n_2;
  wire mem_reg_640_703_0_2_i_1_n_0;
  wire mem_reg_640_703_0_2_n_0;
  wire mem_reg_640_703_0_2_n_1;
  wire mem_reg_640_703_0_2_n_2;
  wire mem_reg_640_703_12_14_n_0;
  wire mem_reg_640_703_12_14_n_1;
  wire mem_reg_640_703_12_14_n_2;
  wire mem_reg_640_703_15_15_n_0;
  wire mem_reg_640_703_3_5_n_0;
  wire mem_reg_640_703_3_5_n_1;
  wire mem_reg_640_703_3_5_n_2;
  wire mem_reg_640_703_6_8_n_0;
  wire mem_reg_640_703_6_8_n_1;
  wire mem_reg_640_703_6_8_n_2;
  wire mem_reg_640_703_9_11_n_0;
  wire mem_reg_640_703_9_11_n_1;
  wire mem_reg_640_703_9_11_n_2;
  wire mem_reg_64_127_0_2_i_1_n_0;
  wire mem_reg_64_127_0_2_n_0;
  wire mem_reg_64_127_0_2_n_1;
  wire mem_reg_64_127_0_2_n_2;
  wire mem_reg_64_127_12_14_n_0;
  wire mem_reg_64_127_12_14_n_1;
  wire mem_reg_64_127_12_14_n_2;
  wire mem_reg_64_127_15_15_n_0;
  wire mem_reg_64_127_3_5_n_0;
  wire mem_reg_64_127_3_5_n_1;
  wire mem_reg_64_127_3_5_n_2;
  wire mem_reg_64_127_6_8_n_0;
  wire mem_reg_64_127_6_8_n_1;
  wire mem_reg_64_127_6_8_n_2;
  wire mem_reg_64_127_9_11_n_0;
  wire mem_reg_64_127_9_11_n_1;
  wire mem_reg_64_127_9_11_n_2;
  wire mem_reg_704_767_0_2_i_1_n_0;
  wire mem_reg_704_767_0_2_n_0;
  wire mem_reg_704_767_0_2_n_1;
  wire mem_reg_704_767_0_2_n_2;
  wire mem_reg_704_767_12_14_n_0;
  wire mem_reg_704_767_12_14_n_1;
  wire mem_reg_704_767_12_14_n_2;
  wire mem_reg_704_767_15_15_n_0;
  wire mem_reg_704_767_3_5_n_0;
  wire mem_reg_704_767_3_5_n_1;
  wire mem_reg_704_767_3_5_n_2;
  wire mem_reg_704_767_6_8_n_0;
  wire mem_reg_704_767_6_8_n_1;
  wire mem_reg_704_767_6_8_n_2;
  wire mem_reg_704_767_9_11_n_0;
  wire mem_reg_704_767_9_11_n_1;
  wire mem_reg_704_767_9_11_n_2;
  wire mem_reg_768_831_0_2_i_1_n_0;
  wire mem_reg_768_831_0_2_n_0;
  wire mem_reg_768_831_0_2_n_1;
  wire mem_reg_768_831_0_2_n_2;
  wire mem_reg_768_831_12_14_n_0;
  wire mem_reg_768_831_12_14_n_1;
  wire mem_reg_768_831_12_14_n_2;
  wire mem_reg_768_831_15_15_n_0;
  wire mem_reg_768_831_3_5_n_0;
  wire mem_reg_768_831_3_5_n_1;
  wire mem_reg_768_831_3_5_n_2;
  wire mem_reg_768_831_6_8_n_0;
  wire mem_reg_768_831_6_8_n_1;
  wire mem_reg_768_831_6_8_n_2;
  wire mem_reg_768_831_9_11_n_0;
  wire mem_reg_768_831_9_11_n_1;
  wire mem_reg_768_831_9_11_n_2;
  wire mem_reg_832_895_0_2_i_1_n_0;
  wire mem_reg_832_895_0_2_n_0;
  wire mem_reg_832_895_0_2_n_1;
  wire mem_reg_832_895_0_2_n_2;
  wire mem_reg_832_895_12_14_n_0;
  wire mem_reg_832_895_12_14_n_1;
  wire mem_reg_832_895_12_14_n_2;
  wire mem_reg_832_895_15_15_n_0;
  wire mem_reg_832_895_3_5_n_0;
  wire mem_reg_832_895_3_5_n_1;
  wire mem_reg_832_895_3_5_n_2;
  wire mem_reg_832_895_6_8_n_0;
  wire mem_reg_832_895_6_8_n_1;
  wire mem_reg_832_895_6_8_n_2;
  wire mem_reg_832_895_9_11_n_0;
  wire mem_reg_832_895_9_11_n_1;
  wire mem_reg_832_895_9_11_n_2;
  wire mem_reg_896_959_0_2_i_1_n_0;
  wire mem_reg_896_959_0_2_n_0;
  wire mem_reg_896_959_0_2_n_1;
  wire mem_reg_896_959_0_2_n_2;
  wire mem_reg_896_959_12_14_n_0;
  wire mem_reg_896_959_12_14_n_1;
  wire mem_reg_896_959_12_14_n_2;
  wire mem_reg_896_959_15_15_n_0;
  wire mem_reg_896_959_3_5_n_0;
  wire mem_reg_896_959_3_5_n_1;
  wire mem_reg_896_959_3_5_n_2;
  wire mem_reg_896_959_6_8_n_0;
  wire mem_reg_896_959_6_8_n_1;
  wire mem_reg_896_959_6_8_n_2;
  wire mem_reg_896_959_9_11_n_0;
  wire mem_reg_896_959_9_11_n_1;
  wire mem_reg_896_959_9_11_n_2;
  wire mem_reg_960_1023_0_2_i_1_n_0;
  wire mem_reg_960_1023_0_2_n_0;
  wire mem_reg_960_1023_0_2_n_1;
  wire mem_reg_960_1023_0_2_n_2;
  wire mem_reg_960_1023_12_14_n_0;
  wire mem_reg_960_1023_12_14_n_1;
  wire mem_reg_960_1023_12_14_n_2;
  wire mem_reg_960_1023_15_15_n_0;
  wire mem_reg_960_1023_3_5_n_0;
  wire mem_reg_960_1023_3_5_n_1;
  wire mem_reg_960_1023_3_5_n_2;
  wire mem_reg_960_1023_6_8_n_0;
  wire mem_reg_960_1023_6_8_n_1;
  wire mem_reg_960_1023_6_8_n_2;
  wire mem_reg_960_1023_9_11_n_0;
  wire mem_reg_960_1023_9_11_n_1;
  wire mem_reg_960_1023_9_11_n_2;
  wire [9:0]prog_addr;
  wire [15:0]prog_data;
  wire prog_wr;
  wire NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_128_191_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_192_255_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_256_319_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_320_383_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_384_447_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_448_511_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_512_575_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_512_575_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_576_639_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_576_639_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_640_703_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_640_703_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_704_767_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_704_767_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_768_831_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_768_831_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_832_895_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_832_895_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_896_959_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_896_959_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_mem_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_960_1023_12_14_DOD_UNCONNECTED;
  wire NLW_mem_reg_960_1023_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_mem_reg_960_1023_9_11_DOD_UNCONNECTED;

  MUXF8 \cur_ins[0]_INST_0 
       (.I0(\cur_ins[0]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[0]_INST_0_i_2_n_0 ),
        .O(cur_ins[0]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[0]_INST_0_i_1 
       (.I0(\cur_ins[0]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[0]_INST_0_i_4_n_0 ),
        .O(\cur_ins[0]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[0]_INST_0_i_2 
       (.I0(\cur_ins[0]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[0]_INST_0_i_6_n_0 ),
        .O(\cur_ins[0]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[0]_INST_0_i_3 
       (.I0(mem_reg_192_255_0_2_n_0),
        .I1(mem_reg_128_191_0_2_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_0_2_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_0_2_n_0),
        .O(\cur_ins[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[0]_INST_0_i_4 
       (.I0(mem_reg_448_511_0_2_n_0),
        .I1(mem_reg_384_447_0_2_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_0_2_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_0_2_n_0),
        .O(\cur_ins[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[0]_INST_0_i_5 
       (.I0(mem_reg_704_767_0_2_n_0),
        .I1(mem_reg_640_703_0_2_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_0_2_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_0_2_n_0),
        .O(\cur_ins[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[0]_INST_0_i_6 
       (.I0(mem_reg_960_1023_0_2_n_0),
        .I1(mem_reg_896_959_0_2_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_0_2_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_0_2_n_0),
        .O(\cur_ins[0]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[10]_INST_0 
       (.I0(\cur_ins[10]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[10]_INST_0_i_2_n_0 ),
        .O(cur_ins[10]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[10]_INST_0_i_1 
       (.I0(\cur_ins[10]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[10]_INST_0_i_4_n_0 ),
        .O(\cur_ins[10]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[10]_INST_0_i_2 
       (.I0(\cur_ins[10]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[10]_INST_0_i_6_n_0 ),
        .O(\cur_ins[10]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[10]_INST_0_i_3 
       (.I0(mem_reg_192_255_9_11_n_1),
        .I1(mem_reg_128_191_9_11_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_9_11_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_9_11_n_1),
        .O(\cur_ins[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[10]_INST_0_i_4 
       (.I0(mem_reg_448_511_9_11_n_1),
        .I1(mem_reg_384_447_9_11_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_9_11_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_9_11_n_1),
        .O(\cur_ins[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[10]_INST_0_i_5 
       (.I0(mem_reg_704_767_9_11_n_1),
        .I1(mem_reg_640_703_9_11_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_9_11_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_9_11_n_1),
        .O(\cur_ins[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[10]_INST_0_i_6 
       (.I0(mem_reg_960_1023_9_11_n_1),
        .I1(mem_reg_896_959_9_11_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_9_11_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_9_11_n_1),
        .O(\cur_ins[10]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[11]_INST_0 
       (.I0(\cur_ins[11]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[11]_INST_0_i_2_n_0 ),
        .O(cur_ins[11]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[11]_INST_0_i_1 
       (.I0(\cur_ins[11]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[11]_INST_0_i_4_n_0 ),
        .O(\cur_ins[11]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[11]_INST_0_i_2 
       (.I0(\cur_ins[11]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[11]_INST_0_i_6_n_0 ),
        .O(\cur_ins[11]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[11]_INST_0_i_3 
       (.I0(mem_reg_192_255_9_11_n_2),
        .I1(mem_reg_128_191_9_11_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_9_11_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_9_11_n_2),
        .O(\cur_ins[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[11]_INST_0_i_4 
       (.I0(mem_reg_448_511_9_11_n_2),
        .I1(mem_reg_384_447_9_11_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_9_11_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_9_11_n_2),
        .O(\cur_ins[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[11]_INST_0_i_5 
       (.I0(mem_reg_704_767_9_11_n_2),
        .I1(mem_reg_640_703_9_11_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_9_11_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_9_11_n_2),
        .O(\cur_ins[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[11]_INST_0_i_6 
       (.I0(mem_reg_960_1023_9_11_n_2),
        .I1(mem_reg_896_959_9_11_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_9_11_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_9_11_n_2),
        .O(\cur_ins[11]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[12]_INST_0 
       (.I0(\cur_ins[12]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[12]_INST_0_i_2_n_0 ),
        .O(cur_ins[12]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[12]_INST_0_i_1 
       (.I0(\cur_ins[12]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[12]_INST_0_i_4_n_0 ),
        .O(\cur_ins[12]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[12]_INST_0_i_2 
       (.I0(\cur_ins[12]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[12]_INST_0_i_6_n_0 ),
        .O(\cur_ins[12]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[12]_INST_0_i_3 
       (.I0(mem_reg_192_255_12_14_n_0),
        .I1(mem_reg_128_191_12_14_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_12_14_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_12_14_n_0),
        .O(\cur_ins[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[12]_INST_0_i_4 
       (.I0(mem_reg_448_511_12_14_n_0),
        .I1(mem_reg_384_447_12_14_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_12_14_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_12_14_n_0),
        .O(\cur_ins[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[12]_INST_0_i_5 
       (.I0(mem_reg_704_767_12_14_n_0),
        .I1(mem_reg_640_703_12_14_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_12_14_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_12_14_n_0),
        .O(\cur_ins[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[12]_INST_0_i_6 
       (.I0(mem_reg_960_1023_12_14_n_0),
        .I1(mem_reg_896_959_12_14_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_12_14_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_12_14_n_0),
        .O(\cur_ins[12]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[13]_INST_0 
       (.I0(\cur_ins[13]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[13]_INST_0_i_2_n_0 ),
        .O(cur_ins[13]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[13]_INST_0_i_1 
       (.I0(\cur_ins[13]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[13]_INST_0_i_4_n_0 ),
        .O(\cur_ins[13]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[13]_INST_0_i_2 
       (.I0(\cur_ins[13]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[13]_INST_0_i_6_n_0 ),
        .O(\cur_ins[13]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[13]_INST_0_i_3 
       (.I0(mem_reg_192_255_12_14_n_1),
        .I1(mem_reg_128_191_12_14_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_12_14_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_12_14_n_1),
        .O(\cur_ins[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[13]_INST_0_i_4 
       (.I0(mem_reg_448_511_12_14_n_1),
        .I1(mem_reg_384_447_12_14_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_12_14_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_12_14_n_1),
        .O(\cur_ins[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[13]_INST_0_i_5 
       (.I0(mem_reg_704_767_12_14_n_1),
        .I1(mem_reg_640_703_12_14_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_12_14_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_12_14_n_1),
        .O(\cur_ins[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[13]_INST_0_i_6 
       (.I0(mem_reg_960_1023_12_14_n_1),
        .I1(mem_reg_896_959_12_14_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_12_14_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_12_14_n_1),
        .O(\cur_ins[13]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[14]_INST_0 
       (.I0(\cur_ins[14]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[14]_INST_0_i_2_n_0 ),
        .O(cur_ins[14]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[14]_INST_0_i_1 
       (.I0(\cur_ins[14]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[14]_INST_0_i_4_n_0 ),
        .O(\cur_ins[14]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[14]_INST_0_i_2 
       (.I0(\cur_ins[14]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[14]_INST_0_i_6_n_0 ),
        .O(\cur_ins[14]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[14]_INST_0_i_3 
       (.I0(mem_reg_192_255_12_14_n_2),
        .I1(mem_reg_128_191_12_14_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_12_14_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_12_14_n_2),
        .O(\cur_ins[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[14]_INST_0_i_4 
       (.I0(mem_reg_448_511_12_14_n_2),
        .I1(mem_reg_384_447_12_14_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_12_14_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_12_14_n_2),
        .O(\cur_ins[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[14]_INST_0_i_5 
       (.I0(mem_reg_704_767_12_14_n_2),
        .I1(mem_reg_640_703_12_14_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_12_14_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_12_14_n_2),
        .O(\cur_ins[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[14]_INST_0_i_6 
       (.I0(mem_reg_960_1023_12_14_n_2),
        .I1(mem_reg_896_959_12_14_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_12_14_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_12_14_n_2),
        .O(\cur_ins[14]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[15]_INST_0 
       (.I0(\cur_ins[15]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[15]_INST_0_i_2_n_0 ),
        .O(cur_ins[15]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[15]_INST_0_i_1 
       (.I0(\cur_ins[15]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[15]_INST_0_i_4_n_0 ),
        .O(\cur_ins[15]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[15]_INST_0_i_2 
       (.I0(\cur_ins[15]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[15]_INST_0_i_6_n_0 ),
        .O(\cur_ins[15]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[15]_INST_0_i_3 
       (.I0(mem_reg_192_255_15_15_n_0),
        .I1(mem_reg_128_191_15_15_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_15_15_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_15_15_n_0),
        .O(\cur_ins[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[15]_INST_0_i_4 
       (.I0(mem_reg_448_511_15_15_n_0),
        .I1(mem_reg_384_447_15_15_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_15_15_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_15_15_n_0),
        .O(\cur_ins[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[15]_INST_0_i_5 
       (.I0(mem_reg_704_767_15_15_n_0),
        .I1(mem_reg_640_703_15_15_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_15_15_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_15_15_n_0),
        .O(\cur_ins[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[15]_INST_0_i_6 
       (.I0(mem_reg_960_1023_15_15_n_0),
        .I1(mem_reg_896_959_15_15_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_15_15_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_15_15_n_0),
        .O(\cur_ins[15]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[1]_INST_0 
       (.I0(\cur_ins[1]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[1]_INST_0_i_2_n_0 ),
        .O(cur_ins[1]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[1]_INST_0_i_1 
       (.I0(\cur_ins[1]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[1]_INST_0_i_4_n_0 ),
        .O(\cur_ins[1]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[1]_INST_0_i_2 
       (.I0(\cur_ins[1]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[1]_INST_0_i_6_n_0 ),
        .O(\cur_ins[1]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[1]_INST_0_i_3 
       (.I0(mem_reg_192_255_0_2_n_1),
        .I1(mem_reg_128_191_0_2_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_0_2_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_0_2_n_1),
        .O(\cur_ins[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[1]_INST_0_i_4 
       (.I0(mem_reg_448_511_0_2_n_1),
        .I1(mem_reg_384_447_0_2_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_0_2_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_0_2_n_1),
        .O(\cur_ins[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[1]_INST_0_i_5 
       (.I0(mem_reg_704_767_0_2_n_1),
        .I1(mem_reg_640_703_0_2_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_0_2_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_0_2_n_1),
        .O(\cur_ins[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[1]_INST_0_i_6 
       (.I0(mem_reg_960_1023_0_2_n_1),
        .I1(mem_reg_896_959_0_2_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_0_2_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_0_2_n_1),
        .O(\cur_ins[1]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[2]_INST_0 
       (.I0(\cur_ins[2]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[2]_INST_0_i_2_n_0 ),
        .O(cur_ins[2]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[2]_INST_0_i_1 
       (.I0(\cur_ins[2]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[2]_INST_0_i_4_n_0 ),
        .O(\cur_ins[2]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[2]_INST_0_i_2 
       (.I0(\cur_ins[2]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[2]_INST_0_i_6_n_0 ),
        .O(\cur_ins[2]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[2]_INST_0_i_3 
       (.I0(mem_reg_192_255_0_2_n_2),
        .I1(mem_reg_128_191_0_2_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_0_2_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_0_2_n_2),
        .O(\cur_ins[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[2]_INST_0_i_4 
       (.I0(mem_reg_448_511_0_2_n_2),
        .I1(mem_reg_384_447_0_2_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_0_2_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_0_2_n_2),
        .O(\cur_ins[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[2]_INST_0_i_5 
       (.I0(mem_reg_704_767_0_2_n_2),
        .I1(mem_reg_640_703_0_2_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_0_2_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_0_2_n_2),
        .O(\cur_ins[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[2]_INST_0_i_6 
       (.I0(mem_reg_960_1023_0_2_n_2),
        .I1(mem_reg_896_959_0_2_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_0_2_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_0_2_n_2),
        .O(\cur_ins[2]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[3]_INST_0 
       (.I0(\cur_ins[3]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[3]_INST_0_i_2_n_0 ),
        .O(cur_ins[3]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[3]_INST_0_i_1 
       (.I0(\cur_ins[3]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[3]_INST_0_i_4_n_0 ),
        .O(\cur_ins[3]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[3]_INST_0_i_2 
       (.I0(\cur_ins[3]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[3]_INST_0_i_6_n_0 ),
        .O(\cur_ins[3]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[3]_INST_0_i_3 
       (.I0(mem_reg_192_255_3_5_n_0),
        .I1(mem_reg_128_191_3_5_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_3_5_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_3_5_n_0),
        .O(\cur_ins[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[3]_INST_0_i_4 
       (.I0(mem_reg_448_511_3_5_n_0),
        .I1(mem_reg_384_447_3_5_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_3_5_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_3_5_n_0),
        .O(\cur_ins[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[3]_INST_0_i_5 
       (.I0(mem_reg_704_767_3_5_n_0),
        .I1(mem_reg_640_703_3_5_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_3_5_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_3_5_n_0),
        .O(\cur_ins[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[3]_INST_0_i_6 
       (.I0(mem_reg_960_1023_3_5_n_0),
        .I1(mem_reg_896_959_3_5_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_3_5_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_3_5_n_0),
        .O(\cur_ins[3]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[4]_INST_0 
       (.I0(\cur_ins[4]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[4]_INST_0_i_2_n_0 ),
        .O(cur_ins[4]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[4]_INST_0_i_1 
       (.I0(\cur_ins[4]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[4]_INST_0_i_4_n_0 ),
        .O(\cur_ins[4]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[4]_INST_0_i_2 
       (.I0(\cur_ins[4]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[4]_INST_0_i_6_n_0 ),
        .O(\cur_ins[4]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[4]_INST_0_i_3 
       (.I0(mem_reg_192_255_3_5_n_1),
        .I1(mem_reg_128_191_3_5_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_3_5_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_3_5_n_1),
        .O(\cur_ins[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[4]_INST_0_i_4 
       (.I0(mem_reg_448_511_3_5_n_1),
        .I1(mem_reg_384_447_3_5_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_3_5_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_3_5_n_1),
        .O(\cur_ins[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[4]_INST_0_i_5 
       (.I0(mem_reg_704_767_3_5_n_1),
        .I1(mem_reg_640_703_3_5_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_3_5_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_3_5_n_1),
        .O(\cur_ins[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[4]_INST_0_i_6 
       (.I0(mem_reg_960_1023_3_5_n_1),
        .I1(mem_reg_896_959_3_5_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_3_5_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_3_5_n_1),
        .O(\cur_ins[4]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[5]_INST_0 
       (.I0(\cur_ins[5]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[5]_INST_0_i_2_n_0 ),
        .O(cur_ins[5]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[5]_INST_0_i_1 
       (.I0(\cur_ins[5]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[5]_INST_0_i_4_n_0 ),
        .O(\cur_ins[5]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[5]_INST_0_i_2 
       (.I0(\cur_ins[5]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[5]_INST_0_i_6_n_0 ),
        .O(\cur_ins[5]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[5]_INST_0_i_3 
       (.I0(mem_reg_192_255_3_5_n_2),
        .I1(mem_reg_128_191_3_5_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_3_5_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_3_5_n_2),
        .O(\cur_ins[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[5]_INST_0_i_4 
       (.I0(mem_reg_448_511_3_5_n_2),
        .I1(mem_reg_384_447_3_5_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_3_5_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_3_5_n_2),
        .O(\cur_ins[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[5]_INST_0_i_5 
       (.I0(mem_reg_704_767_3_5_n_2),
        .I1(mem_reg_640_703_3_5_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_3_5_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_3_5_n_2),
        .O(\cur_ins[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[5]_INST_0_i_6 
       (.I0(mem_reg_960_1023_3_5_n_2),
        .I1(mem_reg_896_959_3_5_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_3_5_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_3_5_n_2),
        .O(\cur_ins[5]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[6]_INST_0 
       (.I0(\cur_ins[6]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[6]_INST_0_i_2_n_0 ),
        .O(cur_ins[6]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[6]_INST_0_i_1 
       (.I0(\cur_ins[6]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[6]_INST_0_i_4_n_0 ),
        .O(\cur_ins[6]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[6]_INST_0_i_2 
       (.I0(\cur_ins[6]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[6]_INST_0_i_6_n_0 ),
        .O(\cur_ins[6]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[6]_INST_0_i_3 
       (.I0(mem_reg_192_255_6_8_n_0),
        .I1(mem_reg_128_191_6_8_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_6_8_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_6_8_n_0),
        .O(\cur_ins[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[6]_INST_0_i_4 
       (.I0(mem_reg_448_511_6_8_n_0),
        .I1(mem_reg_384_447_6_8_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_6_8_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_6_8_n_0),
        .O(\cur_ins[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[6]_INST_0_i_5 
       (.I0(mem_reg_704_767_6_8_n_0),
        .I1(mem_reg_640_703_6_8_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_6_8_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_6_8_n_0),
        .O(\cur_ins[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[6]_INST_0_i_6 
       (.I0(mem_reg_960_1023_6_8_n_0),
        .I1(mem_reg_896_959_6_8_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_6_8_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_6_8_n_0),
        .O(\cur_ins[6]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[7]_INST_0 
       (.I0(\cur_ins[7]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[7]_INST_0_i_2_n_0 ),
        .O(cur_ins[7]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[7]_INST_0_i_1 
       (.I0(\cur_ins[7]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[7]_INST_0_i_4_n_0 ),
        .O(\cur_ins[7]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[7]_INST_0_i_2 
       (.I0(\cur_ins[7]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[7]_INST_0_i_6_n_0 ),
        .O(\cur_ins[7]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[7]_INST_0_i_3 
       (.I0(mem_reg_192_255_6_8_n_1),
        .I1(mem_reg_128_191_6_8_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_6_8_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_6_8_n_1),
        .O(\cur_ins[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[7]_INST_0_i_4 
       (.I0(mem_reg_448_511_6_8_n_1),
        .I1(mem_reg_384_447_6_8_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_6_8_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_6_8_n_1),
        .O(\cur_ins[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[7]_INST_0_i_5 
       (.I0(mem_reg_704_767_6_8_n_1),
        .I1(mem_reg_640_703_6_8_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_6_8_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_6_8_n_1),
        .O(\cur_ins[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[7]_INST_0_i_6 
       (.I0(mem_reg_960_1023_6_8_n_1),
        .I1(mem_reg_896_959_6_8_n_1),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_6_8_n_1),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_6_8_n_1),
        .O(\cur_ins[7]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[8]_INST_0 
       (.I0(\cur_ins[8]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[8]_INST_0_i_2_n_0 ),
        .O(cur_ins[8]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[8]_INST_0_i_1 
       (.I0(\cur_ins[8]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[8]_INST_0_i_4_n_0 ),
        .O(\cur_ins[8]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[8]_INST_0_i_2 
       (.I0(\cur_ins[8]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[8]_INST_0_i_6_n_0 ),
        .O(\cur_ins[8]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[8]_INST_0_i_3 
       (.I0(mem_reg_192_255_6_8_n_2),
        .I1(mem_reg_128_191_6_8_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_6_8_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_6_8_n_2),
        .O(\cur_ins[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[8]_INST_0_i_4 
       (.I0(mem_reg_448_511_6_8_n_2),
        .I1(mem_reg_384_447_6_8_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_6_8_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_6_8_n_2),
        .O(\cur_ins[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[8]_INST_0_i_5 
       (.I0(mem_reg_704_767_6_8_n_2),
        .I1(mem_reg_640_703_6_8_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_6_8_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_6_8_n_2),
        .O(\cur_ins[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[8]_INST_0_i_6 
       (.I0(mem_reg_960_1023_6_8_n_2),
        .I1(mem_reg_896_959_6_8_n_2),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_6_8_n_2),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_6_8_n_2),
        .O(\cur_ins[8]_INST_0_i_6_n_0 ));
  MUXF8 \cur_ins[9]_INST_0 
       (.I0(\cur_ins[9]_INST_0_i_1_n_0 ),
        .I1(\cur_ins[9]_INST_0_i_2_n_0 ),
        .O(cur_ins[9]),
        .S(ins_addr[9]));
  MUXF7 \cur_ins[9]_INST_0_i_1 
       (.I0(\cur_ins[9]_INST_0_i_3_n_0 ),
        .I1(\cur_ins[9]_INST_0_i_4_n_0 ),
        .O(\cur_ins[9]_INST_0_i_1_n_0 ),
        .S(ins_addr[8]));
  MUXF7 \cur_ins[9]_INST_0_i_2 
       (.I0(\cur_ins[9]_INST_0_i_5_n_0 ),
        .I1(\cur_ins[9]_INST_0_i_6_n_0 ),
        .O(\cur_ins[9]_INST_0_i_2_n_0 ),
        .S(ins_addr[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[9]_INST_0_i_3 
       (.I0(mem_reg_192_255_9_11_n_0),
        .I1(mem_reg_128_191_9_11_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_64_127_9_11_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_0_63_9_11_n_0),
        .O(\cur_ins[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[9]_INST_0_i_4 
       (.I0(mem_reg_448_511_9_11_n_0),
        .I1(mem_reg_384_447_9_11_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_320_383_9_11_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_256_319_9_11_n_0),
        .O(\cur_ins[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[9]_INST_0_i_5 
       (.I0(mem_reg_704_767_9_11_n_0),
        .I1(mem_reg_640_703_9_11_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_576_639_9_11_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_512_575_9_11_n_0),
        .O(\cur_ins[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cur_ins[9]_INST_0_i_6 
       (.I0(mem_reg_960_1023_9_11_n_0),
        .I1(mem_reg_896_959_9_11_n_0),
        .I2(ins_addr[7]),
        .I3(mem_reg_832_895_9_11_n_0),
        .I4(ins_addr[6]),
        .I5(mem_reg_768_831_9_11_n_0),
        .O(\cur_ins[9]_INST_0_i_6_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_0_63_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_0_63_0_2_n_0),
        .DOB(mem_reg_0_63_0_2_n_1),
        .DOC(mem_reg_0_63_0_2_n_2),
        .DOD(NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    mem_reg_0_63_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_addr[9]),
        .I4(prog_addr[8]),
        .O(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_0_63_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_0_63_12_14_n_0),
        .DOB(mem_reg_0_63_12_14_n_1),
        .DOC(mem_reg_0_63_12_14_n_2),
        .DOD(NLW_mem_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_0_63_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_0_63_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_0_63_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_0_63_3_5_n_0),
        .DOB(mem_reg_0_63_3_5_n_1),
        .DOC(mem_reg_0_63_3_5_n_2),
        .DOD(NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_0_63_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_0_63_6_8_n_0),
        .DOB(mem_reg_0_63_6_8_n_1),
        .DOC(mem_reg_0_63_6_8_n_2),
        .DOD(NLW_mem_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_0_63_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_0_63_9_11_n_0),
        .DOB(mem_reg_0_63_9_11_n_1),
        .DOC(mem_reg_0_63_9_11_n_2),
        .DOD(NLW_mem_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_128_191_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_128_191_0_2_n_0),
        .DOB(mem_reg_128_191_0_2_n_1),
        .DOC(mem_reg_128_191_0_2_n_2),
        .DOD(NLW_mem_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    mem_reg_128_191_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[8]),
        .I2(prog_addr[6]),
        .I3(prog_addr[9]),
        .I4(prog_addr[7]),
        .O(mem_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_128_191_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_128_191_12_14_n_0),
        .DOB(mem_reg_128_191_12_14_n_1),
        .DOC(mem_reg_128_191_12_14_n_2),
        .DOD(NLW_mem_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_128_191_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_128_191_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_128_191_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_128_191_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_128_191_3_5_n_0),
        .DOB(mem_reg_128_191_3_5_n_1),
        .DOC(mem_reg_128_191_3_5_n_2),
        .DOD(NLW_mem_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_128_191_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_128_191_6_8_n_0),
        .DOB(mem_reg_128_191_6_8_n_1),
        .DOC(mem_reg_128_191_6_8_n_2),
        .DOD(NLW_mem_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_128_191_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_128_191_9_11_n_0),
        .DOB(mem_reg_128_191_9_11_n_1),
        .DOC(mem_reg_128_191_9_11_n_2),
        .DOD(NLW_mem_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_192_255_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_192_255_0_2_n_0),
        .DOB(mem_reg_192_255_0_2_n_1),
        .DOC(mem_reg_192_255_0_2_n_2),
        .DOD(NLW_mem_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_192_255_0_2_i_1
       (.I0(prog_addr[9]),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_addr[8]),
        .I4(prog_wr),
        .O(mem_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_192_255_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_192_255_12_14_n_0),
        .DOB(mem_reg_192_255_12_14_n_1),
        .DOC(mem_reg_192_255_12_14_n_2),
        .DOD(NLW_mem_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_192_255_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_192_255_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_192_255_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_192_255_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_192_255_3_5_n_0),
        .DOB(mem_reg_192_255_3_5_n_1),
        .DOC(mem_reg_192_255_3_5_n_2),
        .DOD(NLW_mem_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_192_255_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_192_255_6_8_n_0),
        .DOB(mem_reg_192_255_6_8_n_1),
        .DOC(mem_reg_192_255_6_8_n_2),
        .DOD(NLW_mem_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_192_255_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_192_255_9_11_n_0),
        .DOB(mem_reg_192_255_9_11_n_1),
        .DOC(mem_reg_192_255_9_11_n_2),
        .DOD(NLW_mem_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_256_319_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_256_319_0_2_n_0),
        .DOB(mem_reg_256_319_0_2_n_1),
        .DOC(mem_reg_256_319_0_2_n_2),
        .DOD(NLW_mem_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    mem_reg_256_319_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_addr[9]),
        .I4(prog_addr[8]),
        .O(mem_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_256_319_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_256_319_12_14_n_0),
        .DOB(mem_reg_256_319_12_14_n_1),
        .DOC(mem_reg_256_319_12_14_n_2),
        .DOD(NLW_mem_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_256_319_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_256_319_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_256_319_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_256_319_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_256_319_3_5_n_0),
        .DOB(mem_reg_256_319_3_5_n_1),
        .DOC(mem_reg_256_319_3_5_n_2),
        .DOD(NLW_mem_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_256_319_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_256_319_6_8_n_0),
        .DOB(mem_reg_256_319_6_8_n_1),
        .DOC(mem_reg_256_319_6_8_n_2),
        .DOD(NLW_mem_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_256_319_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_256_319_9_11_n_0),
        .DOB(mem_reg_256_319_9_11_n_1),
        .DOC(mem_reg_256_319_9_11_n_2),
        .DOD(NLW_mem_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_320_383_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_320_383_0_2_n_0),
        .DOB(mem_reg_320_383_0_2_n_1),
        .DOC(mem_reg_320_383_0_2_n_2),
        .DOD(NLW_mem_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_320_383_0_2_i_1
       (.I0(prog_addr[9]),
        .I1(prog_addr[8]),
        .I2(prog_addr[6]),
        .I3(prog_addr[7]),
        .I4(prog_wr),
        .O(mem_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_320_383_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_320_383_12_14_n_0),
        .DOB(mem_reg_320_383_12_14_n_1),
        .DOC(mem_reg_320_383_12_14_n_2),
        .DOD(NLW_mem_reg_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_320_383_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_320_383_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_320_383_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_320_383_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_320_383_3_5_n_0),
        .DOB(mem_reg_320_383_3_5_n_1),
        .DOC(mem_reg_320_383_3_5_n_2),
        .DOD(NLW_mem_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_320_383_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_320_383_6_8_n_0),
        .DOB(mem_reg_320_383_6_8_n_1),
        .DOC(mem_reg_320_383_6_8_n_2),
        .DOD(NLW_mem_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_320_383_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_320_383_9_11_n_0),
        .DOB(mem_reg_320_383_9_11_n_1),
        .DOC(mem_reg_320_383_9_11_n_2),
        .DOD(NLW_mem_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_384_447_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_384_447_0_2_n_0),
        .DOB(mem_reg_384_447_0_2_n_1),
        .DOC(mem_reg_384_447_0_2_n_2),
        .DOD(NLW_mem_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_384_447_0_2_i_1
       (.I0(prog_addr[9]),
        .I1(prog_addr[8]),
        .I2(prog_addr[7]),
        .I3(prog_addr[6]),
        .I4(prog_wr),
        .O(mem_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_384_447_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_384_447_12_14_n_0),
        .DOB(mem_reg_384_447_12_14_n_1),
        .DOC(mem_reg_384_447_12_14_n_2),
        .DOD(NLW_mem_reg_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_384_447_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_384_447_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_384_447_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_384_447_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_384_447_3_5_n_0),
        .DOB(mem_reg_384_447_3_5_n_1),
        .DOC(mem_reg_384_447_3_5_n_2),
        .DOD(NLW_mem_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_384_447_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_384_447_6_8_n_0),
        .DOB(mem_reg_384_447_6_8_n_1),
        .DOC(mem_reg_384_447_6_8_n_2),
        .DOD(NLW_mem_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_384_447_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_384_447_9_11_n_0),
        .DOB(mem_reg_384_447_9_11_n_1),
        .DOC(mem_reg_384_447_9_11_n_2),
        .DOD(NLW_mem_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_448_511_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_448_511_0_2_n_0),
        .DOB(mem_reg_448_511_0_2_n_1),
        .DOC(mem_reg_448_511_0_2_n_2),
        .DOD(NLW_mem_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    mem_reg_448_511_0_2_i_1
       (.I0(prog_addr[9]),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_wr),
        .I4(prog_addr[8]),
        .O(mem_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_448_511_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_448_511_12_14_n_0),
        .DOB(mem_reg_448_511_12_14_n_1),
        .DOC(mem_reg_448_511_12_14_n_2),
        .DOD(NLW_mem_reg_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_448_511_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_448_511_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_448_511_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_448_511_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_448_511_3_5_n_0),
        .DOB(mem_reg_448_511_3_5_n_1),
        .DOC(mem_reg_448_511_3_5_n_2),
        .DOD(NLW_mem_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_448_511_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_448_511_6_8_n_0),
        .DOB(mem_reg_448_511_6_8_n_1),
        .DOC(mem_reg_448_511_6_8_n_2),
        .DOD(NLW_mem_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_448_511_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_448_511_9_11_n_0),
        .DOB(mem_reg_448_511_9_11_n_1),
        .DOC(mem_reg_448_511_9_11_n_2),
        .DOD(NLW_mem_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_512_575_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_512_575_0_2_n_0),
        .DOB(mem_reg_512_575_0_2_n_1),
        .DOC(mem_reg_512_575_0_2_n_2),
        .DOD(NLW_mem_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    mem_reg_512_575_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_addr[8]),
        .I4(prog_addr[9]),
        .O(mem_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_512_575_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_512_575_12_14_n_0),
        .DOB(mem_reg_512_575_12_14_n_1),
        .DOC(mem_reg_512_575_12_14_n_2),
        .DOD(NLW_mem_reg_512_575_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_512_575_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_512_575_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_512_575_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_512_575_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_512_575_3_5_n_0),
        .DOB(mem_reg_512_575_3_5_n_1),
        .DOC(mem_reg_512_575_3_5_n_2),
        .DOD(NLW_mem_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_512_575_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_512_575_6_8_n_0),
        .DOB(mem_reg_512_575_6_8_n_1),
        .DOC(mem_reg_512_575_6_8_n_2),
        .DOD(NLW_mem_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_512_575_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_512_575_9_11_n_0),
        .DOB(mem_reg_512_575_9_11_n_1),
        .DOC(mem_reg_512_575_9_11_n_2),
        .DOD(NLW_mem_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_576_639_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_576_639_0_2_n_0),
        .DOB(mem_reg_576_639_0_2_n_1),
        .DOC(mem_reg_576_639_0_2_n_2),
        .DOD(NLW_mem_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_576_639_0_2_i_1
       (.I0(prog_addr[8]),
        .I1(prog_addr[9]),
        .I2(prog_addr[6]),
        .I3(prog_addr[7]),
        .I4(prog_wr),
        .O(mem_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_576_639_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_576_639_12_14_n_0),
        .DOB(mem_reg_576_639_12_14_n_1),
        .DOC(mem_reg_576_639_12_14_n_2),
        .DOD(NLW_mem_reg_576_639_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_576_639_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_576_639_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_576_639_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_576_639_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_576_639_3_5_n_0),
        .DOB(mem_reg_576_639_3_5_n_1),
        .DOC(mem_reg_576_639_3_5_n_2),
        .DOD(NLW_mem_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_576_639_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_576_639_6_8_n_0),
        .DOB(mem_reg_576_639_6_8_n_1),
        .DOC(mem_reg_576_639_6_8_n_2),
        .DOD(NLW_mem_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_576_639_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_576_639_9_11_n_0),
        .DOB(mem_reg_576_639_9_11_n_1),
        .DOC(mem_reg_576_639_9_11_n_2),
        .DOD(NLW_mem_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_640_703_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_640_703_0_2_n_0),
        .DOB(mem_reg_640_703_0_2_n_1),
        .DOC(mem_reg_640_703_0_2_n_2),
        .DOD(NLW_mem_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_640_703_0_2_i_1
       (.I0(prog_addr[8]),
        .I1(prog_addr[9]),
        .I2(prog_addr[7]),
        .I3(prog_addr[6]),
        .I4(prog_wr),
        .O(mem_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_640_703_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_640_703_12_14_n_0),
        .DOB(mem_reg_640_703_12_14_n_1),
        .DOC(mem_reg_640_703_12_14_n_2),
        .DOD(NLW_mem_reg_640_703_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_640_703_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_640_703_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_640_703_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_640_703_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_640_703_3_5_n_0),
        .DOB(mem_reg_640_703_3_5_n_1),
        .DOC(mem_reg_640_703_3_5_n_2),
        .DOD(NLW_mem_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_640_703_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_640_703_6_8_n_0),
        .DOB(mem_reg_640_703_6_8_n_1),
        .DOC(mem_reg_640_703_6_8_n_2),
        .DOD(NLW_mem_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_640_703_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_640_703_9_11_n_0),
        .DOB(mem_reg_640_703_9_11_n_1),
        .DOC(mem_reg_640_703_9_11_n_2),
        .DOD(NLW_mem_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_64_127_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_64_127_0_2_n_0),
        .DOB(mem_reg_64_127_0_2_n_1),
        .DOC(mem_reg_64_127_0_2_n_2),
        .DOD(NLW_mem_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    mem_reg_64_127_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[8]),
        .I2(prog_addr[7]),
        .I3(prog_addr[9]),
        .I4(prog_addr[6]),
        .O(mem_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_64_127_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_64_127_12_14_n_0),
        .DOB(mem_reg_64_127_12_14_n_1),
        .DOC(mem_reg_64_127_12_14_n_2),
        .DOD(NLW_mem_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_64_127_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_64_127_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_64_127_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_64_127_3_5_n_0),
        .DOB(mem_reg_64_127_3_5_n_1),
        .DOC(mem_reg_64_127_3_5_n_2),
        .DOD(NLW_mem_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_64_127_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_64_127_6_8_n_0),
        .DOB(mem_reg_64_127_6_8_n_1),
        .DOC(mem_reg_64_127_6_8_n_2),
        .DOD(NLW_mem_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_64_127_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_64_127_9_11_n_0),
        .DOB(mem_reg_64_127_9_11_n_1),
        .DOC(mem_reg_64_127_9_11_n_2),
        .DOD(NLW_mem_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_704_767_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_704_767_0_2_n_0),
        .DOB(mem_reg_704_767_0_2_n_1),
        .DOC(mem_reg_704_767_0_2_n_2),
        .DOD(NLW_mem_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    mem_reg_704_767_0_2_i_1
       (.I0(prog_addr[8]),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_wr),
        .I4(prog_addr[9]),
        .O(mem_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_704_767_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_704_767_12_14_n_0),
        .DOB(mem_reg_704_767_12_14_n_1),
        .DOC(mem_reg_704_767_12_14_n_2),
        .DOD(NLW_mem_reg_704_767_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_704_767_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_704_767_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_704_767_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_704_767_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_704_767_3_5_n_0),
        .DOB(mem_reg_704_767_3_5_n_1),
        .DOC(mem_reg_704_767_3_5_n_2),
        .DOD(NLW_mem_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_704_767_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_704_767_6_8_n_0),
        .DOB(mem_reg_704_767_6_8_n_1),
        .DOC(mem_reg_704_767_6_8_n_2),
        .DOD(NLW_mem_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_704_767_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_704_767_9_11_n_0),
        .DOB(mem_reg_704_767_9_11_n_1),
        .DOC(mem_reg_704_767_9_11_n_2),
        .DOD(NLW_mem_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_768_831_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_768_831_0_2_n_0),
        .DOB(mem_reg_768_831_0_2_n_1),
        .DOC(mem_reg_768_831_0_2_n_2),
        .DOD(NLW_mem_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    mem_reg_768_831_0_2_i_1
       (.I0(prog_addr[7]),
        .I1(prog_addr[9]),
        .I2(prog_addr[8]),
        .I3(prog_addr[6]),
        .I4(prog_wr),
        .O(mem_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_768_831_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_768_831_12_14_n_0),
        .DOB(mem_reg_768_831_12_14_n_1),
        .DOC(mem_reg_768_831_12_14_n_2),
        .DOD(NLW_mem_reg_768_831_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_768_831_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_768_831_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_768_831_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_768_831_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_768_831_3_5_n_0),
        .DOB(mem_reg_768_831_3_5_n_1),
        .DOC(mem_reg_768_831_3_5_n_2),
        .DOD(NLW_mem_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_768_831_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_768_831_6_8_n_0),
        .DOB(mem_reg_768_831_6_8_n_1),
        .DOC(mem_reg_768_831_6_8_n_2),
        .DOD(NLW_mem_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_768_831_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_768_831_9_11_n_0),
        .DOB(mem_reg_768_831_9_11_n_1),
        .DOC(mem_reg_768_831_9_11_n_2),
        .DOD(NLW_mem_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_832_895_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_832_895_0_2_n_0),
        .DOB(mem_reg_832_895_0_2_n_1),
        .DOC(mem_reg_832_895_0_2_n_2),
        .DOD(NLW_mem_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    mem_reg_832_895_0_2_i_1
       (.I0(prog_addr[7]),
        .I1(prog_addr[8]),
        .I2(prog_addr[6]),
        .I3(prog_wr),
        .I4(prog_addr[9]),
        .O(mem_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_832_895_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_832_895_12_14_n_0),
        .DOB(mem_reg_832_895_12_14_n_1),
        .DOC(mem_reg_832_895_12_14_n_2),
        .DOD(NLW_mem_reg_832_895_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_832_895_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_832_895_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_832_895_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_832_895_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_832_895_3_5_n_0),
        .DOB(mem_reg_832_895_3_5_n_1),
        .DOC(mem_reg_832_895_3_5_n_2),
        .DOD(NLW_mem_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_832_895_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_832_895_6_8_n_0),
        .DOB(mem_reg_832_895_6_8_n_1),
        .DOC(mem_reg_832_895_6_8_n_2),
        .DOD(NLW_mem_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_832_895_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_832_895_9_11_n_0),
        .DOB(mem_reg_832_895_9_11_n_1),
        .DOC(mem_reg_832_895_9_11_n_2),
        .DOD(NLW_mem_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_896_959_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_896_959_0_2_n_0),
        .DOB(mem_reg_896_959_0_2_n_1),
        .DOC(mem_reg_896_959_0_2_n_2),
        .DOD(NLW_mem_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    mem_reg_896_959_0_2_i_1
       (.I0(prog_addr[6]),
        .I1(prog_addr[8]),
        .I2(prog_addr[7]),
        .I3(prog_wr),
        .I4(prog_addr[9]),
        .O(mem_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_896_959_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_896_959_12_14_n_0),
        .DOB(mem_reg_896_959_12_14_n_1),
        .DOC(mem_reg_896_959_12_14_n_2),
        .DOD(NLW_mem_reg_896_959_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_896_959_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_896_959_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_896_959_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_896_959_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_896_959_3_5_n_0),
        .DOB(mem_reg_896_959_3_5_n_1),
        .DOC(mem_reg_896_959_3_5_n_2),
        .DOD(NLW_mem_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_896_959_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_896_959_6_8_n_0),
        .DOB(mem_reg_896_959_6_8_n_1),
        .DOC(mem_reg_896_959_6_8_n_2),
        .DOD(NLW_mem_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_896_959_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_896_959_9_11_n_0),
        .DOB(mem_reg_896_959_9_11_n_1),
        .DOC(mem_reg_896_959_9_11_n_2),
        .DOD(NLW_mem_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_960_1023_0_2
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[0]),
        .DIB(prog_data[1]),
        .DIC(prog_data[2]),
        .DID(1'b0),
        .DOA(mem_reg_960_1023_0_2_n_0),
        .DOB(mem_reg_960_1023_0_2_n_1),
        .DOC(mem_reg_960_1023_0_2_n_2),
        .DOD(NLW_mem_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_960_1023_0_2_i_1
       (.I0(prog_wr),
        .I1(prog_addr[7]),
        .I2(prog_addr[6]),
        .I3(prog_addr[9]),
        .I4(prog_addr[8]),
        .O(mem_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_960_1023_12_14
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[12]),
        .DIB(prog_data[13]),
        .DIC(prog_data[14]),
        .DID(1'b0),
        .DOA(mem_reg_960_1023_12_14_n_0),
        .DOB(mem_reg_960_1023_12_14_n_1),
        .DOC(mem_reg_960_1023_12_14_n_2),
        .DOD(NLW_mem_reg_960_1023_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_960_1023_15_15
       (.A0(prog_addr[0]),
        .A1(prog_addr[1]),
        .A2(prog_addr[2]),
        .A3(prog_addr[3]),
        .A4(prog_addr[4]),
        .A5(prog_addr[5]),
        .D(prog_data[15]),
        .DPO(mem_reg_960_1023_15_15_n_0),
        .DPRA0(ins_addr[0]),
        .DPRA1(ins_addr[1]),
        .DPRA2(ins_addr[2]),
        .DPRA3(ins_addr[3]),
        .DPRA4(ins_addr[4]),
        .DPRA5(ins_addr[5]),
        .SPO(NLW_mem_reg_960_1023_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_960_1023_3_5
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[3]),
        .DIB(prog_data[4]),
        .DIC(prog_data[5]),
        .DID(1'b0),
        .DOA(mem_reg_960_1023_3_5_n_0),
        .DOB(mem_reg_960_1023_3_5_n_1),
        .DOC(mem_reg_960_1023_3_5_n_2),
        .DOD(NLW_mem_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_960_1023_6_8
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[6]),
        .DIB(prog_data[7]),
        .DIC(prog_data[8]),
        .DID(1'b0),
        .DOA(mem_reg_960_1023_6_8_n_0),
        .DOB(mem_reg_960_1023_6_8_n_1),
        .DOC(mem_reg_960_1023_6_8_n_2),
        .DOD(NLW_mem_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_960_1023_9_11
       (.ADDRA(ins_addr[5:0]),
        .ADDRB(ins_addr[5:0]),
        .ADDRC(ins_addr[5:0]),
        .ADDRD(prog_addr[5:0]),
        .DIA(prog_data[9]),
        .DIB(prog_data[10]),
        .DIC(prog_data[11]),
        .DID(1'b0),
        .DOA(mem_reg_960_1023_9_11_n_0),
        .DOB(mem_reg_960_1023_9_11_n_1),
        .DOC(mem_reg_960_1023_9_11_n_2),
        .DOD(NLW_mem_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_960_1023_0_2_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
