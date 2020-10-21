// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:36:28 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_sim_netlist.v
// Design      : design_1_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ALU_0_0
   (inputA,
    inputB,
    outputC,
    op_add,
    op_sub,
    op_and,
    op_or,
    op_xor,
    op_nand,
    op_asr,
    op_asl,
    op_cmp);
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

  wire [3:1]and_out__15;
  wire [15:0]inputA;
  wire [15:0]inputB;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_nand;
  wire op_or;
  wire op_sub;
  wire op_xor;
  wire [15:0]outputC;
  wire \outputC[0]_INST_0_i_10_n_0 ;
  wire \outputC[0]_INST_0_i_11_n_0 ;
  wire \outputC[0]_INST_0_i_1_n_0 ;
  wire \outputC[0]_INST_0_i_2_n_0 ;
  wire \outputC[0]_INST_0_i_4_n_2 ;
  wire \outputC[0]_INST_0_i_4_n_3 ;
  wire \outputC[0]_INST_0_i_5_n_0 ;
  wire \outputC[0]_INST_0_i_5_n_1 ;
  wire \outputC[0]_INST_0_i_5_n_2 ;
  wire \outputC[0]_INST_0_i_5_n_3 ;
  wire \outputC[0]_INST_0_i_6_n_0 ;
  wire \outputC[0]_INST_0_i_7_n_0 ;
  wire \outputC[0]_INST_0_i_8_n_0 ;
  wire \outputC[0]_INST_0_i_9_n_0 ;
  wire \outputC[10]_INST_0_i_1_n_0 ;
  wire \outputC[10]_INST_0_i_2_n_0 ;
  wire \outputC[11]_INST_0_i_1_n_0 ;
  wire \outputC[11]_INST_0_i_2_n_0 ;
  wire \outputC[12]_INST_0_i_1_n_0 ;
  wire \outputC[12]_INST_0_i_2_n_0 ;
  wire \outputC[13]_INST_0_i_1_n_0 ;
  wire \outputC[13]_INST_0_i_2_n_0 ;
  wire \outputC[14]_INST_0_i_1_n_0 ;
  wire \outputC[14]_INST_0_i_2_n_0 ;
  wire \outputC[15]_INST_0_i_1_n_0 ;
  wire \outputC[15]_INST_0_i_2_n_0 ;
  wire \outputC[15]_INST_0_i_3_n_0 ;
  wire \outputC[1]_INST_0_i_10_n_0 ;
  wire \outputC[1]_INST_0_i_11_n_0 ;
  wire \outputC[1]_INST_0_i_12_n_0 ;
  wire \outputC[1]_INST_0_i_1_n_0 ;
  wire \outputC[1]_INST_0_i_2_n_0 ;
  wire \outputC[1]_INST_0_i_4_n_2 ;
  wire \outputC[1]_INST_0_i_4_n_3 ;
  wire \outputC[1]_INST_0_i_6_n_0 ;
  wire \outputC[1]_INST_0_i_6_n_1 ;
  wire \outputC[1]_INST_0_i_6_n_2 ;
  wire \outputC[1]_INST_0_i_6_n_3 ;
  wire \outputC[1]_INST_0_i_7_n_0 ;
  wire \outputC[1]_INST_0_i_8_n_0 ;
  wire \outputC[1]_INST_0_i_9_n_0 ;
  wire \outputC[2]_INST_0_i_1_n_0 ;
  wire \outputC[3]_INST_0_i_1_n_0 ;
  wire \outputC[3]_INST_0_i_2_n_0 ;
  wire \outputC[4]_INST_0_i_1_n_0 ;
  wire \outputC[4]_INST_0_i_2_n_0 ;
  wire \outputC[5]_INST_0_i_1_n_0 ;
  wire \outputC[5]_INST_0_i_2_n_0 ;
  wire \outputC[6]_INST_0_i_1_n_0 ;
  wire \outputC[6]_INST_0_i_2_n_0 ;
  wire \outputC[7]_INST_0_i_1_n_0 ;
  wire \outputC[7]_INST_0_i_2_n_0 ;
  wire \outputC[8]_INST_0_i_1_n_0 ;
  wire \outputC[8]_INST_0_i_2_n_0 ;
  wire \outputC[9]_INST_0_i_1_n_0 ;
  wire \outputC[9]_INST_0_i_2_n_0 ;
  wire [3:2]\NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED ;

  design_1_ALU_0_0_ALU U0
       (.and_out__15(and_out__15),
        .inputA(inputA),
        .inputB(inputB),
        .op_add(op_add),
        .op_and(op_and),
        .op_asl(op_asl),
        .op_asr(op_asr),
        .op_cmp(op_cmp),
        .op_sub(op_sub),
        .outputC(outputC),
        .\outputC[0]_0 (\outputC[0]_INST_0_i_2_n_0 ),
        .\outputC[0]_1 (\outputC[15]_INST_0_i_3_n_0 ),
        .\outputC[10]_0 (\outputC[10]_INST_0_i_2_n_0 ),
        .\outputC[11]_0 (\outputC[11]_INST_0_i_2_n_0 ),
        .\outputC[12]_0 (\outputC[12]_INST_0_i_2_n_0 ),
        .\outputC[13]_0 (\outputC[13]_INST_0_i_2_n_0 ),
        .\outputC[14]_0 (\outputC[14]_INST_0_i_2_n_0 ),
        .\outputC[15]_0 (\outputC[15]_INST_0_i_2_n_0 ),
        .\outputC[1]_0 (\outputC[3]_INST_0_i_2_n_0 ),
        .\outputC[1]_1 (\outputC[1]_INST_0_i_2_n_0 ),
        .\outputC[4]_0 (\outputC[4]_INST_0_i_2_n_0 ),
        .\outputC[5]_0 (\outputC[5]_INST_0_i_2_n_0 ),
        .\outputC[6]_0 (\outputC[6]_INST_0_i_2_n_0 ),
        .\outputC[7]_0 (\outputC[7]_INST_0_i_2_n_0 ),
        .\outputC[8]_0 (\outputC[8]_INST_0_i_2_n_0 ),
        .\outputC[9]_0 (\outputC[9]_INST_0_i_2_n_0 ),
        .outputC_0_sp_1(\outputC[0]_INST_0_i_1_n_0 ),
        .outputC_10_sp_1(\outputC[10]_INST_0_i_1_n_0 ),
        .outputC_11_sp_1(\outputC[11]_INST_0_i_1_n_0 ),
        .outputC_12_sp_1(\outputC[12]_INST_0_i_1_n_0 ),
        .outputC_13_sp_1(\outputC[13]_INST_0_i_1_n_0 ),
        .outputC_14_sp_1(\outputC[14]_INST_0_i_1_n_0 ),
        .outputC_15_sp_1(\outputC[15]_INST_0_i_1_n_0 ),
        .outputC_1_sp_1(\outputC[1]_INST_0_i_1_n_0 ),
        .outputC_2_sp_1(\outputC[2]_INST_0_i_1_n_0 ),
        .outputC_3_sp_1(\outputC[3]_INST_0_i_1_n_0 ),
        .outputC_4_sp_1(\outputC[4]_INST_0_i_1_n_0 ),
        .outputC_5_sp_1(\outputC[5]_INST_0_i_1_n_0 ),
        .outputC_6_sp_1(\outputC[6]_INST_0_i_1_n_0 ),
        .outputC_7_sp_1(\outputC[7]_INST_0_i_1_n_0 ),
        .outputC_8_sp_1(\outputC[8]_INST_0_i_1_n_0 ),
        .outputC_9_sp_1(\outputC[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[0]_INST_0_i_1 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_10 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .I4(inputA[4]),
        .I5(inputB[4]),
        .O(\outputC[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_11 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[2]),
        .I3(inputB[2]),
        .I4(inputA[1]),
        .I5(inputB[1]),
        .O(\outputC[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F00400)) 
    \outputC[0]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_cmp),
        .I2(op_asr),
        .I3(\outputC[0]_INST_0_i_4_n_2 ),
        .I4(inputA[1]),
        .I5(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[0]_INST_0_i_2_n_0 ));
  CARRY4 \outputC[0]_INST_0_i_4 
       (.CI(\outputC[0]_INST_0_i_5_n_0 ),
        .CO({\NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED [3:2],\outputC[0]_INST_0_i_4_n_2 ,\outputC[0]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\outputC[0]_INST_0_i_6_n_0 ,\outputC[0]_INST_0_i_7_n_0 }));
  CARRY4 \outputC[0]_INST_0_i_5 
       (.CI(1'b0),
        .CO({\outputC[0]_INST_0_i_5_n_0 ,\outputC[0]_INST_0_i_5_n_1 ,\outputC[0]_INST_0_i_5_n_2 ,\outputC[0]_INST_0_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED [3:0]),
        .S({\outputC[0]_INST_0_i_8_n_0 ,\outputC[0]_INST_0_i_9_n_0 ,\outputC[0]_INST_0_i_10_n_0 ,\outputC[0]_INST_0_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \outputC[0]_INST_0_i_6 
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(\outputC[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_7 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[14]),
        .I3(inputB[14]),
        .I4(inputA[13]),
        .I5(inputB[13]),
        .O(\outputC[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_8 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .I4(inputA[10]),
        .I5(inputB[10]),
        .O(\outputC[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[0]_INST_0_i_9 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[8]),
        .I3(inputB[8]),
        .I4(inputA[7]),
        .I5(inputB[7]),
        .O(\outputC[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[10]_INST_0_i_1 
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[10]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[9]),
        .I3(inputA[11]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[11]_INST_0_i_1 
       (.I0(inputB[11]),
        .I1(inputA[11]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[11]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[10]),
        .I3(inputA[12]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[12]_INST_0_i_1 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[12]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[11]),
        .I3(inputA[13]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[13]_INST_0_i_1 
       (.I0(inputB[13]),
        .I1(inputA[13]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[13]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[12]),
        .I3(inputA[14]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[14]_INST_0_i_1 
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[14]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[13]),
        .I3(inputA[15]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[15]_INST_0_i_1 
       (.I0(inputB[15]),
        .I1(inputA[15]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[15]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[14]),
        .I3(inputA[15]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[15]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outputC[15]_INST_0_i_3 
       (.I0(op_sub),
        .I1(op_and),
        .I2(op_add),
        .O(\outputC[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[1]_INST_0_i_1 
       (.I0(inputB[1]),
        .I1(inputA[1]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_10 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[8]),
        .I3(inputB[8]),
        .I4(inputA[7]),
        .I5(inputB[7]),
        .O(\outputC[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_11 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .I4(inputA[4]),
        .I5(inputB[4]),
        .O(\outputC[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_12 
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[2]),
        .I3(inputB[2]),
        .I4(inputA[1]),
        .I5(inputB[1]),
        .O(\outputC[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[1]_INST_0_i_2 
       (.I0(inputA[2]),
        .I1(\outputC[1]_INST_0_i_4_n_2 ),
        .I2(inputA[0]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[1]_INST_0_i_2_n_0 ));
  CARRY4 \outputC[1]_INST_0_i_4 
       (.CI(\outputC[1]_INST_0_i_6_n_0 ),
        .CO({\NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED [3:2],\outputC[1]_INST_0_i_4_n_2 ,\outputC[1]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\outputC[1]_INST_0_i_7_n_0 ,\outputC[1]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[1]_INST_0_i_5 
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(and_out__15[1]));
  CARRY4 \outputC[1]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\outputC[1]_INST_0_i_6_n_0 ,\outputC[1]_INST_0_i_6_n_1 ,\outputC[1]_INST_0_i_6_n_2 ,\outputC[1]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\outputC[1]_INST_0_i_9_n_0 ,\outputC[1]_INST_0_i_10_n_0 ,\outputC[1]_INST_0_i_11_n_0 ,\outputC[1]_INST_0_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \outputC[1]_INST_0_i_7 
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(\outputC[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_8 
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[14]),
        .I3(inputB[14]),
        .I4(inputA[13]),
        .I5(inputB[13]),
        .O(\outputC[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \outputC[1]_INST_0_i_9 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .I4(inputA[10]),
        .I5(inputB[10]),
        .O(\outputC[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[2]_INST_0_i_1 
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[2]_INST_0_i_4 
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(and_out__15[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[3]_INST_0_i_1 
       (.I0(inputB[3]),
        .I1(inputA[3]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \outputC[3]_INST_0_i_2 
       (.I0(op_xor),
        .I1(op_nand),
        .I2(op_or),
        .O(\outputC[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outputC[3]_INST_0_i_5 
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(and_out__15[3]));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[4]_INST_0_i_1 
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[4]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[3]),
        .I3(inputA[5]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[5]_INST_0_i_1 
       (.I0(inputB[5]),
        .I1(inputA[5]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[5]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[4]),
        .I3(inputA[6]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[6]_INST_0_i_1 
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[6]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[5]),
        .I3(inputA[7]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[7]_INST_0_i_1 
       (.I0(inputB[7]),
        .I1(inputA[7]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[7]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[6]),
        .I3(inputA[8]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[8]_INST_0_i_1 
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[8]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[7]),
        .I3(inputA[9]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E6E7E0)) 
    \outputC[9]_INST_0_i_1 
       (.I0(inputB[9]),
        .I1(inputA[9]),
        .I2(op_or),
        .I3(op_nand),
        .I4(op_xor),
        .O(\outputC[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EC20)) 
    \outputC[9]_INST_0_i_2 
       (.I0(op_asl),
        .I1(op_asr),
        .I2(inputA[8]),
        .I3(inputA[10]),
        .I4(\outputC[3]_INST_0_i_2_n_0 ),
        .O(\outputC[9]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_ALU_0_0_ALU
   (outputC,
    inputA,
    inputB,
    outputC_0_sp_1,
    \outputC[0]_0 ,
    \outputC[0]_1 ,
    op_add,
    op_and,
    op_sub,
    outputC_1_sp_1,
    \outputC[1]_0 ,
    \outputC[1]_1 ,
    and_out__15,
    outputC_2_sp_1,
    outputC_3_sp_1,
    outputC_4_sp_1,
    \outputC[4]_0 ,
    outputC_5_sp_1,
    \outputC[5]_0 ,
    outputC_6_sp_1,
    \outputC[6]_0 ,
    outputC_7_sp_1,
    \outputC[7]_0 ,
    outputC_8_sp_1,
    \outputC[8]_0 ,
    outputC_9_sp_1,
    \outputC[9]_0 ,
    outputC_10_sp_1,
    \outputC[10]_0 ,
    outputC_11_sp_1,
    \outputC[11]_0 ,
    outputC_12_sp_1,
    \outputC[12]_0 ,
    outputC_13_sp_1,
    \outputC[13]_0 ,
    outputC_14_sp_1,
    \outputC[14]_0 ,
    outputC_15_sp_1,
    \outputC[15]_0 ,
    op_asr,
    op_cmp,
    op_asl);
  output [15:0]outputC;
  input [15:0]inputA;
  input [15:0]inputB;
  input outputC_0_sp_1;
  input \outputC[0]_0 ;
  input \outputC[0]_1 ;
  input op_add;
  input op_and;
  input op_sub;
  input outputC_1_sp_1;
  input \outputC[1]_0 ;
  input \outputC[1]_1 ;
  input [2:0]and_out__15;
  input outputC_2_sp_1;
  input outputC_3_sp_1;
  input outputC_4_sp_1;
  input \outputC[4]_0 ;
  input outputC_5_sp_1;
  input \outputC[5]_0 ;
  input outputC_6_sp_1;
  input \outputC[6]_0 ;
  input outputC_7_sp_1;
  input \outputC[7]_0 ;
  input outputC_8_sp_1;
  input \outputC[8]_0 ;
  input outputC_9_sp_1;
  input \outputC[9]_0 ;
  input outputC_10_sp_1;
  input \outputC[10]_0 ;
  input outputC_11_sp_1;
  input \outputC[11]_0 ;
  input outputC_12_sp_1;
  input \outputC[12]_0 ;
  input outputC_13_sp_1;
  input \outputC[13]_0 ;
  input outputC_14_sp_1;
  input \outputC[14]_0 ;
  input outputC_15_sp_1;
  input \outputC[15]_0 ;
  input op_asr;
  input op_cmp;
  input op_asl;

  wire add_out_carry__0_i_1_n_0;
  wire add_out_carry__0_i_2_n_0;
  wire add_out_carry__0_i_3_n_0;
  wire add_out_carry__0_i_4_n_0;
  wire add_out_carry__0_n_0;
  wire add_out_carry__0_n_1;
  wire add_out_carry__0_n_2;
  wire add_out_carry__0_n_3;
  wire add_out_carry__1_i_1_n_0;
  wire add_out_carry__1_i_2_n_0;
  wire add_out_carry__1_i_3_n_0;
  wire add_out_carry__1_i_4_n_0;
  wire add_out_carry__1_n_0;
  wire add_out_carry__1_n_1;
  wire add_out_carry__1_n_2;
  wire add_out_carry__1_n_3;
  wire add_out_carry__2_i_1_n_0;
  wire add_out_carry__2_i_2_n_0;
  wire add_out_carry__2_i_3_n_0;
  wire add_out_carry__2_i_4_n_0;
  wire add_out_carry__2_n_1;
  wire add_out_carry__2_n_2;
  wire add_out_carry__2_n_3;
  wire add_out_carry_i_1_n_0;
  wire add_out_carry_i_2_n_0;
  wire add_out_carry_i_3_n_0;
  wire add_out_carry_i_4_n_0;
  wire add_out_carry_n_0;
  wire add_out_carry_n_1;
  wire add_out_carry_n_2;
  wire add_out_carry_n_3;
  wire [2:0]and_out__15;
  wire cmp_out_reg0;
  wire cmp_out_reg0__7_carry__0_n_1;
  wire cmp_out_reg0__7_carry__0_n_2;
  wire cmp_out_reg0__7_carry__0_n_3;
  wire cmp_out_reg0__7_carry_i_1__0_n_0;
  wire cmp_out_reg0__7_carry_i_1_n_0;
  wire cmp_out_reg0__7_carry_i_2__0_n_0;
  wire cmp_out_reg0__7_carry_i_2_n_0;
  wire cmp_out_reg0__7_carry_i_3__0_n_0;
  wire cmp_out_reg0__7_carry_i_3_n_0;
  wire cmp_out_reg0__7_carry_i_4__0_n_0;
  wire cmp_out_reg0__7_carry_i_4_n_0;
  wire cmp_out_reg0__7_carry_i_5__0_n_0;
  wire cmp_out_reg0__7_carry_i_5_n_0;
  wire cmp_out_reg0__7_carry_i_6__0_n_0;
  wire cmp_out_reg0__7_carry_i_6_n_0;
  wire cmp_out_reg0__7_carry_i_7__0_n_0;
  wire cmp_out_reg0__7_carry_i_7_n_0;
  wire cmp_out_reg0__7_carry_i_8__0_n_0;
  wire cmp_out_reg0__7_carry_i_8_n_0;
  wire cmp_out_reg0__7_carry_n_0;
  wire cmp_out_reg0__7_carry_n_1;
  wire cmp_out_reg0__7_carry_n_2;
  wire cmp_out_reg0__7_carry_n_3;
  wire cmp_out_reg0_carry__0_i_1_n_0;
  wire cmp_out_reg0_carry__0_i_2_n_0;
  wire cmp_out_reg0_carry__0_i_3_n_0;
  wire cmp_out_reg0_carry__0_i_4_n_0;
  wire cmp_out_reg0_carry__0_i_5_n_0;
  wire cmp_out_reg0_carry__0_i_6_n_0;
  wire cmp_out_reg0_carry__0_i_7_n_0;
  wire cmp_out_reg0_carry__0_i_8_n_0;
  wire cmp_out_reg0_carry__0_n_0;
  wire cmp_out_reg0_carry__0_n_1;
  wire cmp_out_reg0_carry__0_n_2;
  wire cmp_out_reg0_carry__0_n_3;
  wire cmp_out_reg0_carry_i_1_n_0;
  wire cmp_out_reg0_carry_i_2_n_0;
  wire cmp_out_reg0_carry_i_3_n_0;
  wire cmp_out_reg0_carry_i_4_n_0;
  wire cmp_out_reg0_carry_i_5_n_0;
  wire cmp_out_reg0_carry_i_6_n_0;
  wire cmp_out_reg0_carry_i_7_n_0;
  wire cmp_out_reg0_carry_i_8_n_0;
  wire cmp_out_reg0_carry_n_0;
  wire cmp_out_reg0_carry_n_1;
  wire cmp_out_reg0_carry_n_2;
  wire cmp_out_reg0_carry_n_3;
  wire [15:0]data0;
  wire [15:0]data1;
  wire [15:0]inputA;
  wire [15:0]inputB;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_sub;
  wire [15:0]outputC;
  wire \outputC[0]_0 ;
  wire \outputC[0]_1 ;
  wire \outputC[0]_INST_0_i_3_n_0 ;
  wire \outputC[10]_0 ;
  wire \outputC[10]_INST_0_i_3_n_0 ;
  wire \outputC[11]_0 ;
  wire \outputC[11]_INST_0_i_3_n_0 ;
  wire \outputC[12]_0 ;
  wire \outputC[12]_INST_0_i_3_n_0 ;
  wire \outputC[13]_0 ;
  wire \outputC[13]_INST_0_i_3_n_0 ;
  wire \outputC[14]_0 ;
  wire \outputC[14]_INST_0_i_3_n_0 ;
  wire \outputC[15]_0 ;
  wire \outputC[15]_INST_0_i_4_n_0 ;
  wire \outputC[1]_0 ;
  wire \outputC[1]_1 ;
  wire \outputC[1]_INST_0_i_3_n_0 ;
  wire \outputC[2]_INST_0_i_2_n_0 ;
  wire \outputC[2]_INST_0_i_3_n_0 ;
  wire \outputC[3]_INST_0_i_3_n_0 ;
  wire \outputC[3]_INST_0_i_4_n_0 ;
  wire \outputC[4]_0 ;
  wire \outputC[4]_INST_0_i_3_n_0 ;
  wire \outputC[5]_0 ;
  wire \outputC[5]_INST_0_i_3_n_0 ;
  wire \outputC[6]_0 ;
  wire \outputC[6]_INST_0_i_3_n_0 ;
  wire \outputC[7]_0 ;
  wire \outputC[7]_INST_0_i_3_n_0 ;
  wire \outputC[8]_0 ;
  wire \outputC[8]_INST_0_i_3_n_0 ;
  wire \outputC[9]_0 ;
  wire \outputC[9]_INST_0_i_3_n_0 ;
  wire outputC_0_sn_1;
  wire outputC_10_sn_1;
  wire outputC_11_sn_1;
  wire outputC_12_sn_1;
  wire outputC_13_sn_1;
  wire outputC_14_sn_1;
  wire outputC_15_sn_1;
  wire outputC_1_sn_1;
  wire outputC_2_sn_1;
  wire outputC_3_sn_1;
  wire outputC_4_sn_1;
  wire outputC_5_sn_1;
  wire outputC_6_sn_1;
  wire outputC_7_sn_1;
  wire outputC_8_sn_1;
  wire outputC_9_sn_1;
  wire sub_out_carry__0_i_1_n_0;
  wire sub_out_carry__0_i_2_n_0;
  wire sub_out_carry__0_i_3_n_0;
  wire sub_out_carry__0_i_4_n_0;
  wire sub_out_carry__0_n_0;
  wire sub_out_carry__0_n_1;
  wire sub_out_carry__0_n_2;
  wire sub_out_carry__0_n_3;
  wire sub_out_carry__1_i_1_n_0;
  wire sub_out_carry__1_i_2_n_0;
  wire sub_out_carry__1_i_3_n_0;
  wire sub_out_carry__1_i_4_n_0;
  wire sub_out_carry__1_n_0;
  wire sub_out_carry__1_n_1;
  wire sub_out_carry__1_n_2;
  wire sub_out_carry__1_n_3;
  wire sub_out_carry__2_i_1_n_0;
  wire sub_out_carry__2_i_2_n_0;
  wire sub_out_carry__2_i_3_n_0;
  wire sub_out_carry__2_i_4_n_0;
  wire sub_out_carry__2_n_1;
  wire sub_out_carry__2_n_2;
  wire sub_out_carry__2_n_3;
  wire sub_out_carry_i_1_n_0;
  wire sub_out_carry_i_2_n_0;
  wire sub_out_carry_i_3_n_0;
  wire sub_out_carry_i_4_n_0;
  wire sub_out_carry_n_0;
  wire sub_out_carry_n_1;
  wire sub_out_carry_n_2;
  wire sub_out_carry_n_3;
  wire [3:3]NLW_add_out_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cmp_out_reg0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_sub_out_carry__2_CO_UNCONNECTED;

  assign outputC_0_sn_1 = outputC_0_sp_1;
  assign outputC_10_sn_1 = outputC_10_sp_1;
  assign outputC_11_sn_1 = outputC_11_sp_1;
  assign outputC_12_sn_1 = outputC_12_sp_1;
  assign outputC_13_sn_1 = outputC_13_sp_1;
  assign outputC_14_sn_1 = outputC_14_sp_1;
  assign outputC_15_sn_1 = outputC_15_sp_1;
  assign outputC_1_sn_1 = outputC_1_sp_1;
  assign outputC_2_sn_1 = outputC_2_sp_1;
  assign outputC_3_sn_1 = outputC_3_sp_1;
  assign outputC_4_sn_1 = outputC_4_sp_1;
  assign outputC_5_sn_1 = outputC_5_sp_1;
  assign outputC_6_sn_1 = outputC_6_sp_1;
  assign outputC_7_sn_1 = outputC_7_sp_1;
  assign outputC_8_sn_1 = outputC_8_sp_1;
  assign outputC_9_sn_1 = outputC_9_sp_1;
  CARRY4 add_out_carry
       (.CI(1'b0),
        .CO({add_out_carry_n_0,add_out_carry_n_1,add_out_carry_n_2,add_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[3:0]),
        .O(data0[3:0]),
        .S({add_out_carry_i_1_n_0,add_out_carry_i_2_n_0,add_out_carry_i_3_n_0,add_out_carry_i_4_n_0}));
  CARRY4 add_out_carry__0
       (.CI(add_out_carry_n_0),
        .CO({add_out_carry__0_n_0,add_out_carry__0_n_1,add_out_carry__0_n_2,add_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[7:4]),
        .O(data0[7:4]),
        .S({add_out_carry__0_i_1_n_0,add_out_carry__0_i_2_n_0,add_out_carry__0_i_3_n_0,add_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_1
       (.I0(inputA[7]),
        .I1(inputB[7]),
        .O(add_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_2
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .O(add_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_3
       (.I0(inputA[5]),
        .I1(inputB[5]),
        .O(add_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_4
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .O(add_out_carry__0_i_4_n_0));
  CARRY4 add_out_carry__1
       (.CI(add_out_carry__0_n_0),
        .CO({add_out_carry__1_n_0,add_out_carry__1_n_1,add_out_carry__1_n_2,add_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[11:8]),
        .O(data0[11:8]),
        .S({add_out_carry__1_i_1_n_0,add_out_carry__1_i_2_n_0,add_out_carry__1_i_3_n_0,add_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_1
       (.I0(inputA[11]),
        .I1(inputB[11]),
        .O(add_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_2
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .O(add_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_3
       (.I0(inputA[9]),
        .I1(inputB[9]),
        .O(add_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .O(add_out_carry__1_i_4_n_0));
  CARRY4 add_out_carry__2
       (.CI(add_out_carry__1_n_0),
        .CO({NLW_add_out_carry__2_CO_UNCONNECTED[3],add_out_carry__2_n_1,add_out_carry__2_n_2,add_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,inputA[14:12]}),
        .O(data0[15:12]),
        .S({add_out_carry__2_i_1_n_0,add_out_carry__2_i_2_n_0,add_out_carry__2_i_3_n_0,add_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_1
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(add_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_2
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .O(add_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_3
       (.I0(inputA[13]),
        .I1(inputB[13]),
        .O(add_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_4
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .O(add_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_1
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(add_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_2
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(add_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_3
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(add_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .O(add_out_carry_i_4_n_0));
  CARRY4 cmp_out_reg0__7_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0__7_carry_n_0,cmp_out_reg0__7_carry_n_1,cmp_out_reg0__7_carry_n_2,cmp_out_reg0__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0__7_carry_i_1_n_0,cmp_out_reg0__7_carry_i_2_n_0,cmp_out_reg0__7_carry_i_3_n_0,cmp_out_reg0__7_carry_i_4_n_0}),
        .O(NLW_cmp_out_reg0__7_carry_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0__7_carry_i_5_n_0,cmp_out_reg0__7_carry_i_6_n_0,cmp_out_reg0__7_carry_i_7_n_0,cmp_out_reg0__7_carry_i_8_n_0}));
  CARRY4 cmp_out_reg0__7_carry__0
       (.CI(cmp_out_reg0__7_carry_n_0),
        .CO({cmp_out_reg0,cmp_out_reg0__7_carry__0_n_1,cmp_out_reg0__7_carry__0_n_2,cmp_out_reg0__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0__7_carry_i_1__0_n_0,cmp_out_reg0__7_carry_i_2__0_n_0,cmp_out_reg0__7_carry_i_3__0_n_0,cmp_out_reg0__7_carry_i_4__0_n_0}),
        .O(NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0__7_carry_i_5__0_n_0,cmp_out_reg0__7_carry_i_6__0_n_0,cmp_out_reg0__7_carry_i_7__0_n_0,cmp_out_reg0__7_carry_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_1
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputA[7]),
        .I3(inputB[7]),
        .O(cmp_out_reg0__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_1__0
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputA[15]),
        .I3(inputB[15]),
        .O(cmp_out_reg0__7_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_2
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputA[5]),
        .I3(inputB[5]),
        .O(cmp_out_reg0__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_2__0
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputA[13]),
        .I3(inputB[13]),
        .O(cmp_out_reg0__7_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_3
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputA[3]),
        .I3(inputB[3]),
        .O(cmp_out_reg0__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_3__0
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputA[11]),
        .I3(inputB[11]),
        .O(cmp_out_reg0__7_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_4
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputA[1]),
        .I3(inputB[1]),
        .O(cmp_out_reg0__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0__7_carry_i_4__0
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputA[9]),
        .I3(inputB[9]),
        .O(cmp_out_reg0__7_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_5
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_5__0
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0__7_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_6
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_6__0
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0__7_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_7
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_7__0
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0__7_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_8
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0__7_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_8__0
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0__7_carry_i_8__0_n_0));
  CARRY4 cmp_out_reg0_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0_carry_n_0,cmp_out_reg0_carry_n_1,cmp_out_reg0_carry_n_2,cmp_out_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0_carry_i_1_n_0,cmp_out_reg0_carry_i_2_n_0,cmp_out_reg0_carry_i_3_n_0,cmp_out_reg0_carry_i_4_n_0}),
        .O(NLW_cmp_out_reg0_carry_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0_carry_i_5_n_0,cmp_out_reg0_carry_i_6_n_0,cmp_out_reg0_carry_i_7_n_0,cmp_out_reg0_carry_i_8_n_0}));
  CARRY4 cmp_out_reg0_carry__0
       (.CI(cmp_out_reg0_carry_n_0),
        .CO({cmp_out_reg0_carry__0_n_0,cmp_out_reg0_carry__0_n_1,cmp_out_reg0_carry__0_n_2,cmp_out_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cmp_out_reg0_carry__0_i_1_n_0,cmp_out_reg0_carry__0_i_2_n_0,cmp_out_reg0_carry__0_i_3_n_0,cmp_out_reg0_carry__0_i_4_n_0}),
        .O(NLW_cmp_out_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S({cmp_out_reg0_carry__0_i_5_n_0,cmp_out_reg0_carry__0_i_6_n_0,cmp_out_reg0_carry__0_i_7_n_0,cmp_out_reg0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_1
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_2
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_3
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry__0_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_5
       (.I0(inputB[14]),
        .I1(inputA[14]),
        .I2(inputB[15]),
        .I3(inputA[15]),
        .O(cmp_out_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_6
       (.I0(inputB[12]),
        .I1(inputA[12]),
        .I2(inputB[13]),
        .I3(inputA[13]),
        .O(cmp_out_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_7
       (.I0(inputB[10]),
        .I1(inputA[10]),
        .I2(inputB[11]),
        .I3(inputA[11]),
        .O(cmp_out_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_8
       (.I0(inputB[8]),
        .I1(inputA[8]),
        .I2(inputB[9]),
        .I3(inputA[9]),
        .O(cmp_out_reg0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_1
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_2
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_3
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cmp_out_reg0_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_5
       (.I0(inputB[6]),
        .I1(inputA[6]),
        .I2(inputB[7]),
        .I3(inputA[7]),
        .O(cmp_out_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_6
       (.I0(inputB[4]),
        .I1(inputA[4]),
        .I2(inputB[5]),
        .I3(inputA[5]),
        .O(cmp_out_reg0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_7
       (.I0(inputB[2]),
        .I1(inputA[2]),
        .I2(inputB[3]),
        .I3(inputA[3]),
        .O(cmp_out_reg0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_8
       (.I0(inputB[0]),
        .I1(inputA[0]),
        .I2(inputB[1]),
        .I3(inputA[1]),
        .O(cmp_out_reg0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[0]_INST_0 
       (.I0(outputC_0_sn_1),
        .I1(\outputC[0]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[0]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[0]),
        .O(outputC[0]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[0]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[0]),
        .I2(inputB[0]),
        .I3(op_add),
        .I4(data1[0]),
        .I5(op_sub),
        .O(\outputC[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[10]_INST_0 
       (.I0(outputC_10_sn_1),
        .I1(\outputC[10]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[10]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[10]),
        .O(outputC[10]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[10]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[10]),
        .I2(inputB[10]),
        .I3(op_add),
        .I4(data1[10]),
        .I5(op_sub),
        .O(\outputC[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[11]_INST_0 
       (.I0(outputC_11_sn_1),
        .I1(\outputC[11]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[11]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[11]),
        .O(outputC[11]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[11]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[11]),
        .I2(inputB[11]),
        .I3(op_add),
        .I4(data1[11]),
        .I5(op_sub),
        .O(\outputC[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[12]_INST_0 
       (.I0(outputC_12_sn_1),
        .I1(\outputC[12]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[12]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[12]),
        .O(outputC[12]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[12]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[12]),
        .I2(inputB[12]),
        .I3(op_add),
        .I4(data1[12]),
        .I5(op_sub),
        .O(\outputC[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[13]_INST_0 
       (.I0(outputC_13_sn_1),
        .I1(\outputC[13]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[13]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[13]),
        .O(outputC[13]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[13]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[13]),
        .I2(inputB[13]),
        .I3(op_add),
        .I4(data1[13]),
        .I5(op_sub),
        .O(\outputC[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[14]_INST_0 
       (.I0(outputC_14_sn_1),
        .I1(\outputC[14]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[14]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[14]),
        .O(outputC[14]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[14]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[14]),
        .I2(inputB[14]),
        .I3(op_add),
        .I4(data1[14]),
        .I5(op_sub),
        .O(\outputC[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[15]_INST_0 
       (.I0(outputC_15_sn_1),
        .I1(\outputC[15]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[15]_INST_0_i_4_n_0 ),
        .I4(op_add),
        .I5(data0[15]),
        .O(outputC[15]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[15]_INST_0_i_4 
       (.I0(op_and),
        .I1(inputA[15]),
        .I2(inputB[15]),
        .I3(op_add),
        .I4(data1[15]),
        .I5(op_sub),
        .O(\outputC[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[1]_INST_0 
       (.I0(outputC_1_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[1]_1 ),
        .I4(\outputC[1]_INST_0_i_3_n_0 ),
        .O(outputC[1]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[1]_INST_0_i_3 
       (.I0(data0[1]),
        .I1(and_out__15[0]),
        .I2(data1[1]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[2]_INST_0 
       (.I0(outputC_2_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[2]_INST_0_i_2_n_0 ),
        .I4(\outputC[2]_INST_0_i_3_n_0 ),
        .O(outputC[2]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[2]_INST_0_i_2 
       (.I0(inputA[3]),
        .I1(cmp_out_reg0_carry__0_n_0),
        .I2(inputA[1]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[2]_INST_0_i_3 
       (.I0(data0[2]),
        .I1(and_out__15[1]),
        .I2(data1[2]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \outputC[3]_INST_0 
       (.I0(outputC_3_sn_1),
        .I1(\outputC[0]_1 ),
        .I2(\outputC[1]_0 ),
        .I3(\outputC[3]_INST_0_i_3_n_0 ),
        .I4(\outputC[3]_INST_0_i_4_n_0 ),
        .O(outputC[3]));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[3]_INST_0_i_3 
       (.I0(inputA[4]),
        .I1(cmp_out_reg0),
        .I2(inputA[2]),
        .I3(op_asr),
        .I4(op_cmp),
        .I5(op_asl),
        .O(\outputC[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \outputC[3]_INST_0_i_4 
       (.I0(data0[3]),
        .I1(and_out__15[2]),
        .I2(data1[3]),
        .I3(op_add),
        .I4(op_and),
        .I5(op_sub),
        .O(\outputC[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[4]_INST_0 
       (.I0(outputC_4_sn_1),
        .I1(\outputC[4]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[4]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[4]),
        .O(outputC[4]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[4]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[4]),
        .I2(inputB[4]),
        .I3(op_add),
        .I4(data1[4]),
        .I5(op_sub),
        .O(\outputC[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[5]_INST_0 
       (.I0(outputC_5_sn_1),
        .I1(\outputC[5]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[5]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[5]),
        .O(outputC[5]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[5]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[5]),
        .I2(inputB[5]),
        .I3(op_add),
        .I4(data1[5]),
        .I5(op_sub),
        .O(\outputC[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[6]_INST_0 
       (.I0(outputC_6_sn_1),
        .I1(\outputC[6]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[6]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[6]),
        .O(outputC[6]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[6]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[6]),
        .I2(inputB[6]),
        .I3(op_add),
        .I4(data1[6]),
        .I5(op_sub),
        .O(\outputC[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[7]_INST_0 
       (.I0(outputC_7_sn_1),
        .I1(\outputC[7]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[7]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[7]),
        .O(outputC[7]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[7]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[7]),
        .I2(inputB[7]),
        .I3(op_add),
        .I4(data1[7]),
        .I5(op_sub),
        .O(\outputC[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[8]_INST_0 
       (.I0(outputC_8_sn_1),
        .I1(\outputC[8]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[8]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[8]),
        .O(outputC[8]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[8]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[8]),
        .I2(inputB[8]),
        .I3(op_add),
        .I4(data1[8]),
        .I5(op_sub),
        .O(\outputC[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE0EFE0EFE0E)) 
    \outputC[9]_INST_0 
       (.I0(outputC_9_sn_1),
        .I1(\outputC[9]_0 ),
        .I2(\outputC[0]_1 ),
        .I3(\outputC[9]_INST_0_i_3_n_0 ),
        .I4(op_add),
        .I5(data0[9]),
        .O(outputC[9]));
  LUT6 #(
    .INIT(64'h00FF000000800080)) 
    \outputC[9]_INST_0_i_3 
       (.I0(op_and),
        .I1(inputA[9]),
        .I2(inputB[9]),
        .I3(op_add),
        .I4(data1[9]),
        .I5(op_sub),
        .O(\outputC[9]_INST_0_i_3_n_0 ));
  CARRY4 sub_out_carry
       (.CI(1'b0),
        .CO({sub_out_carry_n_0,sub_out_carry_n_1,sub_out_carry_n_2,sub_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI(inputA[3:0]),
        .O(data1[3:0]),
        .S({sub_out_carry_i_1_n_0,sub_out_carry_i_2_n_0,sub_out_carry_i_3_n_0,sub_out_carry_i_4_n_0}));
  CARRY4 sub_out_carry__0
       (.CI(sub_out_carry_n_0),
        .CO({sub_out_carry__0_n_0,sub_out_carry__0_n_1,sub_out_carry__0_n_2,sub_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[7:4]),
        .O(data1[7:4]),
        .S({sub_out_carry__0_i_1_n_0,sub_out_carry__0_i_2_n_0,sub_out_carry__0_i_3_n_0,sub_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_1
       (.I0(inputA[7]),
        .I1(inputB[7]),
        .O(sub_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_2
       (.I0(inputA[6]),
        .I1(inputB[6]),
        .O(sub_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_3
       (.I0(inputA[5]),
        .I1(inputB[5]),
        .O(sub_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_4
       (.I0(inputA[4]),
        .I1(inputB[4]),
        .O(sub_out_carry__0_i_4_n_0));
  CARRY4 sub_out_carry__1
       (.CI(sub_out_carry__0_n_0),
        .CO({sub_out_carry__1_n_0,sub_out_carry__1_n_1,sub_out_carry__1_n_2,sub_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(inputA[11:8]),
        .O(data1[11:8]),
        .S({sub_out_carry__1_i_1_n_0,sub_out_carry__1_i_2_n_0,sub_out_carry__1_i_3_n_0,sub_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_1
       (.I0(inputA[11]),
        .I1(inputB[11]),
        .O(sub_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_2
       (.I0(inputA[10]),
        .I1(inputB[10]),
        .O(sub_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_3
       (.I0(inputA[9]),
        .I1(inputB[9]),
        .O(sub_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_4
       (.I0(inputA[8]),
        .I1(inputB[8]),
        .O(sub_out_carry__1_i_4_n_0));
  CARRY4 sub_out_carry__2
       (.CI(sub_out_carry__1_n_0),
        .CO({NLW_sub_out_carry__2_CO_UNCONNECTED[3],sub_out_carry__2_n_1,sub_out_carry__2_n_2,sub_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,inputA[14:12]}),
        .O(data1[15:12]),
        .S({sub_out_carry__2_i_1_n_0,sub_out_carry__2_i_2_n_0,sub_out_carry__2_i_3_n_0,sub_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_1
       (.I0(inputA[15]),
        .I1(inputB[15]),
        .O(sub_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_2
       (.I0(inputA[14]),
        .I1(inputB[14]),
        .O(sub_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_3
       (.I0(inputA[13]),
        .I1(inputB[13]),
        .O(sub_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_4
       (.I0(inputA[12]),
        .I1(inputB[12]),
        .O(sub_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_1
       (.I0(inputA[3]),
        .I1(inputB[3]),
        .O(sub_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_2
       (.I0(inputA[2]),
        .I1(inputB[2]),
        .O(sub_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_3
       (.I0(inputA[1]),
        .I1(inputB[1]),
        .O(sub_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_4
       (.I0(inputA[0]),
        .I1(inputB[0]),
        .O(sub_out_carry_i_4_n_0));
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
