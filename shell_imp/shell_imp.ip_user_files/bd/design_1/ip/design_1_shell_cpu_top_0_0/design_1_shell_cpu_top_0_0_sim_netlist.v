// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 22:03:03 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_shell_cpu_top_0_0/design_1_shell_cpu_top_0_0_sim_netlist.v
// Design      : design_1_shell_cpu_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_shell_cpu_top_0_0,shell_cpu_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "shell_cpu_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_shell_cpu_top_0_0
   (rst,
    clk,
    data_mem,
    data_mem_wr,
    from_stack,
    inr,
    ins_addr,
    instruction,
    outvalue,
    regA,
    regB,
    stack_ptr,
    stack_wr);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
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

  wire U0_n_38;
  wire clk;
  wire [15:0]data_mem;
  wire data_mem_wr;
  wire [15:0]from_stack;
  wire [2:0]inr;
  wire [15:0]ins_addr;
  wire [15:0]instruction;
  wire [15:0]outvalue;
  wire [15:0]regA;
  wire [15:0]regB;
  wire rst;
  wire [15:0]stack_ptr;
  wire stack_wr;

  design_1_shell_cpu_top_0_0_shell_cpu_top U0
       (.clk(clk),
        .data_mem(data_mem),
        .from_stack(from_stack),
        .inr(inr),
        .ins_addr(ins_addr[15:1]),
        .instruction(instruction),
        .instruction_15_sp_1(U0_n_38),
        .instruction_8_sp_1(regA[15]),
        .\mem_reg[1][3] (regA[3]),
        .\mem_reg[1][6] (regA[6]),
        .\mem_reg[1][7] (regA[7]),
        .\mem_reg[1][8] (regA[8]),
        .\mem_reg[1][9] (regA[9]),
        .outvalue(outvalue),
        .\pc_reg[0] (ins_addr[0]),
        .regA({regA[14:10],regA[5:4],regA[2:0]}),
        .regB(regB),
        .rst(rst),
        .stack_ptr(stack_ptr));
  LUT3 #(
    .INIT(8'h02)) 
    data_mem_wr_INST_0
       (.I0(instruction[15]),
        .I1(instruction[14]),
        .I2(instruction[13]),
        .O(data_mem_wr));
  LUT5 #(
    .INIT(32'h00000001)) 
    stack_wr_INST_0
       (.I0(instruction[12]),
        .I1(instruction[11]),
        .I2(instruction[10]),
        .I3(U0_n_38),
        .I4(instruction[9]),
        .O(stack_wr));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_shell_cpu_top_0_0_ALU
   (data0,
    sub_out_carry__2_i_7,
    CO,
    cmp_out_reg0__7_carry__0_i_8,
    \instruction[9] ,
    \instruction[9]_0 ,
    \instruction[9]_1 ,
    \instruction[9]_2 ,
    \instruction[9]_3 ,
    \instruction[9]_4 ,
    \instruction[9]_5 ,
    \instruction[9]_6 ,
    \instruction[9]_7 ,
    \instruction[9]_8 ,
    \instruction[9]_9 ,
    \instruction[9]_10 ,
    \instruction[9]_11 ,
    \instruction[9]_12 ,
    DI,
    S,
    \mem[1][4]_i_5 ,
    \mem[1][4]_i_5_0 ,
    \mem[1][8]_i_5 ,
    \mem[1][8]_i_5_0 ,
    \mem_reg[1][15] ,
    \mem_reg[1][15]_0 ,
    \mem[1][0]_i_4 ,
    \mem[1][0]_i_4_0 ,
    \mem[1][4]_i_6_0 ,
    \mem[1][4]_i_6_1 ,
    \mem[1][8]_i_6_0 ,
    \mem[1][8]_i_6_1 ,
    \mem[1][12]_i_6_0 ,
    \mem[1][12]_i_6_1 ,
    cmp_out_reg0_carry__0_0,
    cmp_out_reg0_carry__0_1,
    \mem[1][2]_i_3 ,
    \mem[1][2]_i_3_0 ,
    cmp_out_reg0__7_carry__0_0,
    cmp_out_reg0__7_carry__0_1,
    \mem[1][3]_i_3 ,
    \mem[1][3]_i_3_0 ,
    instruction);
  output [15:0]data0;
  output [4:0]sub_out_carry__2_i_7;
  output [0:0]CO;
  output [0:0]cmp_out_reg0__7_carry__0_i_8;
  output \instruction[9] ;
  output \instruction[9]_0 ;
  output \instruction[9]_1 ;
  output \instruction[9]_2 ;
  output \instruction[9]_3 ;
  output \instruction[9]_4 ;
  output \instruction[9]_5 ;
  output \instruction[9]_6 ;
  output \instruction[9]_7 ;
  output \instruction[9]_8 ;
  output \instruction[9]_9 ;
  output \instruction[9]_10 ;
  output \instruction[9]_11 ;
  output \instruction[9]_12 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\mem[1][4]_i_5 ;
  input [3:0]\mem[1][4]_i_5_0 ;
  input [3:0]\mem[1][8]_i_5 ;
  input [3:0]\mem[1][8]_i_5_0 ;
  input [2:0]\mem_reg[1][15] ;
  input [3:0]\mem_reg[1][15]_0 ;
  input [3:0]\mem[1][0]_i_4 ;
  input [3:0]\mem[1][0]_i_4_0 ;
  input [3:0]\mem[1][4]_i_6_0 ;
  input [3:0]\mem[1][4]_i_6_1 ;
  input [3:0]\mem[1][8]_i_6_0 ;
  input [3:0]\mem[1][8]_i_6_1 ;
  input [2:0]\mem[1][12]_i_6_0 ;
  input [3:0]\mem[1][12]_i_6_1 ;
  input [3:0]cmp_out_reg0_carry__0_0;
  input [3:0]cmp_out_reg0_carry__0_1;
  input [3:0]\mem[1][2]_i_3 ;
  input [3:0]\mem[1][2]_i_3_0 ;
  input [3:0]cmp_out_reg0__7_carry__0_0;
  input [3:0]cmp_out_reg0__7_carry__0_1;
  input [3:0]\mem[1][3]_i_3 ;
  input [3:0]\mem[1][3]_i_3_0 ;
  input [3:0]instruction;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire add_out_carry__0_n_0;
  wire add_out_carry__0_n_1;
  wire add_out_carry__0_n_2;
  wire add_out_carry__0_n_3;
  wire add_out_carry__1_n_0;
  wire add_out_carry__1_n_1;
  wire add_out_carry__1_n_2;
  wire add_out_carry__1_n_3;
  wire add_out_carry__2_n_1;
  wire add_out_carry__2_n_2;
  wire add_out_carry__2_n_3;
  wire add_out_carry_n_0;
  wire add_out_carry_n_1;
  wire add_out_carry_n_2;
  wire add_out_carry_n_3;
  wire [3:0]cmp_out_reg0__7_carry__0_0;
  wire [3:0]cmp_out_reg0__7_carry__0_1;
  wire [0:0]cmp_out_reg0__7_carry__0_i_8;
  wire cmp_out_reg0__7_carry__0_n_1;
  wire cmp_out_reg0__7_carry__0_n_2;
  wire cmp_out_reg0__7_carry__0_n_3;
  wire cmp_out_reg0__7_carry_n_0;
  wire cmp_out_reg0__7_carry_n_1;
  wire cmp_out_reg0__7_carry_n_2;
  wire cmp_out_reg0__7_carry_n_3;
  wire [3:0]cmp_out_reg0_carry__0_0;
  wire [3:0]cmp_out_reg0_carry__0_1;
  wire cmp_out_reg0_carry__0_n_1;
  wire cmp_out_reg0_carry__0_n_2;
  wire cmp_out_reg0_carry__0_n_3;
  wire cmp_out_reg0_carry_n_0;
  wire cmp_out_reg0_carry_n_1;
  wire cmp_out_reg0_carry_n_2;
  wire cmp_out_reg0_carry_n_3;
  wire [15:0]data0;
  wire [14:4]data1;
  wire [3:0]instruction;
  wire \instruction[9] ;
  wire \instruction[9]_0 ;
  wire \instruction[9]_1 ;
  wire \instruction[9]_10 ;
  wire \instruction[9]_11 ;
  wire \instruction[9]_12 ;
  wire \instruction[9]_2 ;
  wire \instruction[9]_3 ;
  wire \instruction[9]_4 ;
  wire \instruction[9]_5 ;
  wire \instruction[9]_6 ;
  wire \instruction[9]_7 ;
  wire \instruction[9]_8 ;
  wire \instruction[9]_9 ;
  wire [3:0]\mem[1][0]_i_4 ;
  wire [3:0]\mem[1][0]_i_4_0 ;
  wire [2:0]\mem[1][12]_i_6_0 ;
  wire [3:0]\mem[1][12]_i_6_1 ;
  wire [3:0]\mem[1][2]_i_3 ;
  wire [3:0]\mem[1][2]_i_3_0 ;
  wire [3:0]\mem[1][3]_i_3 ;
  wire [3:0]\mem[1][3]_i_3_0 ;
  wire [3:0]\mem[1][4]_i_5 ;
  wire [3:0]\mem[1][4]_i_5_0 ;
  wire [3:0]\mem[1][4]_i_6_0 ;
  wire [3:0]\mem[1][4]_i_6_1 ;
  wire [3:0]\mem[1][8]_i_5 ;
  wire [3:0]\mem[1][8]_i_5_0 ;
  wire [3:0]\mem[1][8]_i_6_0 ;
  wire [3:0]\mem[1][8]_i_6_1 ;
  wire [2:0]\mem_reg[1][15] ;
  wire [3:0]\mem_reg[1][15]_0 ;
  wire sub_out_carry__0_n_0;
  wire sub_out_carry__0_n_1;
  wire sub_out_carry__0_n_2;
  wire sub_out_carry__0_n_3;
  wire sub_out_carry__1_n_0;
  wire sub_out_carry__1_n_1;
  wire sub_out_carry__1_n_2;
  wire sub_out_carry__1_n_3;
  wire [4:0]sub_out_carry__2_i_7;
  wire sub_out_carry__2_n_1;
  wire sub_out_carry__2_n_2;
  wire sub_out_carry__2_n_3;
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

  CARRY4 add_out_carry
       (.CI(1'b0),
        .CO({add_out_carry_n_0,add_out_carry_n_1,add_out_carry_n_2,add_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(data0[3:0]),
        .S(S));
  CARRY4 add_out_carry__0
       (.CI(add_out_carry_n_0),
        .CO({add_out_carry__0_n_0,add_out_carry__0_n_1,add_out_carry__0_n_2,add_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][4]_i_5 ),
        .O(data0[7:4]),
        .S(\mem[1][4]_i_5_0 ));
  CARRY4 add_out_carry__1
       (.CI(add_out_carry__0_n_0),
        .CO({add_out_carry__1_n_0,add_out_carry__1_n_1,add_out_carry__1_n_2,add_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][8]_i_5 ),
        .O(data0[11:8]),
        .S(\mem[1][8]_i_5_0 ));
  CARRY4 add_out_carry__2
       (.CI(add_out_carry__1_n_0),
        .CO({NLW_add_out_carry__2_CO_UNCONNECTED[3],add_out_carry__2_n_1,add_out_carry__2_n_2,add_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\mem_reg[1][15] }),
        .O(data0[15:12]),
        .S(\mem_reg[1][15]_0 ));
  CARRY4 cmp_out_reg0__7_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0__7_carry_n_0,cmp_out_reg0__7_carry_n_1,cmp_out_reg0__7_carry_n_2,cmp_out_reg0__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI(cmp_out_reg0__7_carry__0_0),
        .O(NLW_cmp_out_reg0__7_carry_O_UNCONNECTED[3:0]),
        .S(cmp_out_reg0__7_carry__0_1));
  CARRY4 cmp_out_reg0__7_carry__0
       (.CI(cmp_out_reg0__7_carry_n_0),
        .CO({cmp_out_reg0__7_carry__0_i_8,cmp_out_reg0__7_carry__0_n_1,cmp_out_reg0__7_carry__0_n_2,cmp_out_reg0__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][3]_i_3 ),
        .O(NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED[3:0]),
        .S(\mem[1][3]_i_3_0 ));
  CARRY4 cmp_out_reg0_carry
       (.CI(1'b0),
        .CO({cmp_out_reg0_carry_n_0,cmp_out_reg0_carry_n_1,cmp_out_reg0_carry_n_2,cmp_out_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(cmp_out_reg0_carry__0_0),
        .O(NLW_cmp_out_reg0_carry_O_UNCONNECTED[3:0]),
        .S(cmp_out_reg0_carry__0_1));
  CARRY4 cmp_out_reg0_carry__0
       (.CI(cmp_out_reg0_carry_n_0),
        .CO({CO,cmp_out_reg0_carry__0_n_1,cmp_out_reg0_carry__0_n_2,cmp_out_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][2]_i_3 ),
        .O(NLW_cmp_out_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S(\mem[1][2]_i_3_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][10]_i_6 
       (.I0(data1[10]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_8 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][11]_i_6 
       (.I0(data1[11]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_9 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][12]_i_6 
       (.I0(data1[12]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_10 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][13]_i_6 
       (.I0(data1[13]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_11 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][14]_i_10 
       (.I0(data1[14]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_12 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][1]_i_7 
       (.I0(sub_out_carry__2_i_7[1]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9] ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][2]_i_6 
       (.I0(sub_out_carry__2_i_7[2]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][3]_i_6 
       (.I0(sub_out_carry__2_i_7[3]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][4]_i_6 
       (.I0(data1[4]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_2 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][5]_i_6 
       (.I0(data1[5]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_3 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][6]_i_6 
       (.I0(data1[6]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_4 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][7]_i_6 
       (.I0(data1[7]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_5 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][8]_i_6 
       (.I0(data1[8]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_6 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[1][9]_i_6 
       (.I0(data1[9]),
        .I1(instruction[0]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .O(\instruction[9]_7 ));
  CARRY4 sub_out_carry
       (.CI(1'b0),
        .CO({sub_out_carry_n_0,sub_out_carry_n_1,sub_out_carry_n_2,sub_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\mem[1][0]_i_4 ),
        .O(sub_out_carry__2_i_7[3:0]),
        .S(\mem[1][0]_i_4_0 ));
  CARRY4 sub_out_carry__0
       (.CI(sub_out_carry_n_0),
        .CO({sub_out_carry__0_n_0,sub_out_carry__0_n_1,sub_out_carry__0_n_2,sub_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][4]_i_6_0 ),
        .O(data1[7:4]),
        .S(\mem[1][4]_i_6_1 ));
  CARRY4 sub_out_carry__1
       (.CI(sub_out_carry__0_n_0),
        .CO({sub_out_carry__1_n_0,sub_out_carry__1_n_1,sub_out_carry__1_n_2,sub_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\mem[1][8]_i_6_0 ),
        .O(data1[11:8]),
        .S(\mem[1][8]_i_6_1 ));
  CARRY4 sub_out_carry__2
       (.CI(sub_out_carry__1_n_0),
        .CO({NLW_sub_out_carry__2_CO_UNCONNECTED[3],sub_out_carry__2_n_1,sub_out_carry__2_n_2,sub_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\mem[1][12]_i_6_0 }),
        .O({sub_out_carry__2_i_7[4],data1[14:12]}),
        .S(\mem[1][12]_i_6_1 ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_shell_cpu_top_0_0_adder
   (b,
    instruction,
    \pc[3]_i_6 ,
    \pc[7]_i_5 ,
    ins_addr,
    DI,
    \pc[11]_i_5 ,
    \pc[15]_i_6 );
  output [15:0]b;
  input [9:0]instruction;
  input [3:0]\pc[3]_i_6 ;
  input [3:0]\pc[7]_i_5 ;
  input [3:0]ins_addr;
  input [0:0]DI;
  input [3:0]\pc[11]_i_5 ;
  input [3:0]\pc[15]_i_6 ;

  wire [0:0]DI;
  wire [15:0]b;
  wire c_carry__0_n_0;
  wire c_carry__0_n_1;
  wire c_carry__0_n_2;
  wire c_carry__0_n_3;
  wire c_carry__1_n_0;
  wire c_carry__1_n_1;
  wire c_carry__1_n_2;
  wire c_carry__1_n_3;
  wire c_carry__2_n_1;
  wire c_carry__2_n_2;
  wire c_carry__2_n_3;
  wire c_carry_n_0;
  wire c_carry_n_1;
  wire c_carry_n_2;
  wire c_carry_n_3;
  wire [3:0]ins_addr;
  wire [9:0]instruction;
  wire [3:0]\pc[11]_i_5 ;
  wire [3:0]\pc[15]_i_6 ;
  wire [3:0]\pc[3]_i_6 ;
  wire [3:0]\pc[7]_i_5 ;
  wire [3:3]NLW_c_carry__2_CO_UNCONNECTED;

  CARRY4 c_carry
       (.CI(1'b0),
        .CO({c_carry_n_0,c_carry_n_1,c_carry_n_2,c_carry_n_3}),
        .CYINIT(1'b0),
        .DI(instruction[3:0]),
        .O(b[3:0]),
        .S(\pc[3]_i_6 ));
  CARRY4 c_carry__0
       (.CI(c_carry_n_0),
        .CO({c_carry__0_n_0,c_carry__0_n_1,c_carry__0_n_2,c_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(instruction[7:4]),
        .O(b[7:4]),
        .S(\pc[7]_i_5 ));
  CARRY4 c_carry__1
       (.CI(c_carry__0_n_0),
        .CO({c_carry__1_n_0,c_carry__1_n_1,c_carry__1_n_2,c_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ins_addr[0],DI,instruction[9:8]}),
        .O(b[11:8]),
        .S(\pc[11]_i_5 ));
  CARRY4 c_carry__2
       (.CI(c_carry__1_n_0),
        .CO({NLW_c_carry__2_CO_UNCONNECTED[3],c_carry__2_n_1,c_carry__2_n_2,c_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ins_addr[3:1]}),
        .O(b[15:12]),
        .S(\pc[15]_i_6 ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_shell_cpu_top_0_0_adder_0
   (next_ins_addr,
    \mem[1][1]_i_2 ,
    ins_addr);
  output [14:0]next_ins_addr;
  input \mem[1][1]_i_2 ;
  input [14:0]ins_addr;

  wire c_carry__0_n_0;
  wire c_carry__0_n_1;
  wire c_carry__0_n_2;
  wire c_carry__0_n_3;
  wire c_carry__1_n_0;
  wire c_carry__1_n_1;
  wire c_carry__1_n_2;
  wire c_carry__1_n_3;
  wire c_carry__2_n_2;
  wire c_carry__2_n_3;
  wire c_carry_n_0;
  wire c_carry_n_1;
  wire c_carry_n_2;
  wire c_carry_n_3;
  wire [14:0]ins_addr;
  wire \mem[1][1]_i_2 ;
  wire [14:0]next_ins_addr;
  wire [3:2]NLW_c_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_c_carry__2_O_UNCONNECTED;

  CARRY4 c_carry
       (.CI(1'b0),
        .CO({c_carry_n_0,c_carry_n_1,c_carry_n_2,c_carry_n_3}),
        .CYINIT(\mem[1][1]_i_2 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_ins_addr[3:0]),
        .S(ins_addr[3:0]));
  CARRY4 c_carry__0
       (.CI(c_carry_n_0),
        .CO({c_carry__0_n_0,c_carry__0_n_1,c_carry__0_n_2,c_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_ins_addr[7:4]),
        .S(ins_addr[7:4]));
  CARRY4 c_carry__1
       (.CI(c_carry__0_n_0),
        .CO({c_carry__1_n_0,c_carry__1_n_1,c_carry__1_n_2,c_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_ins_addr[11:8]),
        .S(ins_addr[11:8]));
  CARRY4 c_carry__2
       (.CI(c_carry__1_n_0),
        .CO({NLW_c_carry__2_CO_UNCONNECTED[3:2],c_carry__2_n_2,c_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_c_carry__2_O_UNCONNECTED[3],next_ins_addr[14:12]}),
        .S({1'b0,ins_addr[14:12]}));
endmodule

(* ORIG_REF_NAME = "cmp_status_reg" *) 
module design_1_shell_cpu_top_0_0_cmp_status_reg
   (\instruction[13] ,
    \instruction[11] ,
    instruction,
    \cmp_status_reg[0]_0 ,
    rst,
    \cmp_status_reg[3]_0 ,
    clk,
    \cmp_status_reg[2]_0 ,
    \cmp_status_reg[1]_0 ,
    \cmp_status_reg[0]_1 );
  output \instruction[13] ;
  output \instruction[11] ;
  input [6:0]instruction;
  input \cmp_status_reg[0]_0 ;
  input rst;
  input \cmp_status_reg[3]_0 ;
  input clk;
  input \cmp_status_reg[2]_0 ;
  input \cmp_status_reg[1]_0 ;
  input \cmp_status_reg[0]_1 ;

  wire clk;
  wire \cmp_status[3]_i_1_n_0 ;
  wire \cmp_status_reg[0]_0 ;
  wire \cmp_status_reg[0]_1 ;
  wire \cmp_status_reg[1]_0 ;
  wire \cmp_status_reg[2]_0 ;
  wire \cmp_status_reg[3]_0 ;
  wire cmp_status_reg_eq_sig;
  wire cmp_status_reg_gt_sig;
  wire cmp_status_reg_lt_sig;
  wire cmp_status_reg_ne_sig;
  wire [6:0]instruction;
  wire \instruction[11] ;
  wire \instruction[13] ;
  wire \pc[3]_i_7_n_0 ;
  wire \pc[3]_i_8_n_0 ;
  wire rst;

  LUT3 #(
    .INIT(8'h04)) 
    \cmp_status[3]_i_1 
       (.I0(\cmp_status_reg[0]_0 ),
        .I1(instruction[5]),
        .I2(instruction[4]),
        .O(\cmp_status[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[0] 
       (.C(clk),
        .CE(\cmp_status[3]_i_1_n_0 ),
        .D(\cmp_status_reg[0]_1 ),
        .Q(cmp_status_reg_eq_sig),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[1] 
       (.C(clk),
        .CE(\cmp_status[3]_i_1_n_0 ),
        .D(\cmp_status_reg[1]_0 ),
        .Q(cmp_status_reg_ne_sig),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[2] 
       (.C(clk),
        .CE(\cmp_status[3]_i_1_n_0 ),
        .D(\cmp_status_reg[2]_0 ),
        .Q(cmp_status_reg_gt_sig),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[3] 
       (.C(clk),
        .CE(\cmp_status[3]_i_1_n_0 ),
        .D(\cmp_status_reg[3]_0 ),
        .Q(cmp_status_reg_lt_sig),
        .R(rst));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \mem[1][15]_i_14 
       (.I0(instruction[2]),
        .I1(instruction[1]),
        .I2(instruction[6]),
        .I3(instruction[0]),
        .O(\instruction[11] ));
  LUT5 #(
    .INIT(32'hFFFFF44F)) 
    \pc[3]_i_2 
       (.I0(\pc[3]_i_7_n_0 ),
        .I1(\pc[3]_i_8_n_0 ),
        .I2(instruction[4]),
        .I3(instruction[5]),
        .I4(instruction[6]),
        .O(\instruction[13] ));
  LUT4 #(
    .INIT(16'hB080)) 
    \pc[3]_i_7 
       (.I0(cmp_status_reg_lt_sig),
        .I1(instruction[2]),
        .I2(instruction[3]),
        .I3(cmp_status_reg_gt_sig),
        .O(\pc[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30313331)) 
    \pc[3]_i_8 
       (.I0(cmp_status_reg_eq_sig),
        .I1(instruction[5]),
        .I2(instruction[3]),
        .I3(instruction[2]),
        .I4(cmp_status_reg_ne_sig),
        .O(\pc[3]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "prog_cnt_reg" *) 
module design_1_shell_cpu_top_0_0_prog_cnt_reg
   (\pc_reg[0]_0 ,
    S,
    \pc_reg[8]_0 ,
    \pc_reg[12]_0 ,
    \pc_reg[15]_0 ,
    \pc_reg[0]_1 ,
    data_mem_1_sp_1,
    from_stack_2_sp_1,
    from_stack_3_sp_1,
    data_mem_4_sp_1,
    from_stack_5_sp_1,
    data_mem_6_sp_1,
    from_stack_7_sp_1,
    data_mem_8_sp_1,
    data_mem_9_sp_1,
    data_mem_10_sp_1,
    from_stack_11_sp_1,
    from_stack_12_sp_1,
    from_stack_13_sp_1,
    data_mem_14_sp_1,
    data_mem_15_sp_1,
    DI,
    \instruction[3] ,
    \instruction[7] ,
    \pc_reg[10]_0 ,
    \pc_reg[14]_0 ,
    clk,
    rst,
    instruction,
    \pc_reg[3]_0 ,
    \pc_reg[3]_1 ,
    b,
    \pc_reg[3]_2 ,
    \pc_reg[3]_3 ,
    \pc_reg[7]_0 ,
    \pc_reg[7]_1 ,
    \pc_reg[7]_2 ,
    \pc_reg[7]_3 ,
    \pc_reg[11]_0 ,
    \pc_reg[11]_1 ,
    \pc_reg[11]_2 ,
    \pc_reg[11]_3 ,
    \pc_reg[15]_1 ,
    \pc_reg[15]_2 ,
    \pc_reg[15]_3 ,
    \pc_reg[15]_4 ,
    from_stack,
    data_mem,
    next_ins_addr,
    \pc_reg[3]_4 );
  output \pc_reg[0]_0 ;
  output [3:0]S;
  output [3:0]\pc_reg[8]_0 ;
  output [3:0]\pc_reg[12]_0 ;
  output [2:0]\pc_reg[15]_0 ;
  output \pc_reg[0]_1 ;
  output data_mem_1_sp_1;
  output from_stack_2_sp_1;
  output from_stack_3_sp_1;
  output data_mem_4_sp_1;
  output from_stack_5_sp_1;
  output data_mem_6_sp_1;
  output from_stack_7_sp_1;
  output data_mem_8_sp_1;
  output data_mem_9_sp_1;
  output data_mem_10_sp_1;
  output from_stack_11_sp_1;
  output from_stack_12_sp_1;
  output from_stack_13_sp_1;
  output data_mem_14_sp_1;
  output data_mem_15_sp_1;
  output [0:0]DI;
  output [3:0]\instruction[3] ;
  output [3:0]\instruction[7] ;
  output [3:0]\pc_reg[10]_0 ;
  output [3:0]\pc_reg[14]_0 ;
  input clk;
  input rst;
  input [13:0]instruction;
  input \pc_reg[3]_0 ;
  input \pc_reg[3]_1 ;
  input [15:0]b;
  input \pc_reg[3]_2 ;
  input \pc_reg[3]_3 ;
  input \pc_reg[7]_0 ;
  input \pc_reg[7]_1 ;
  input \pc_reg[7]_2 ;
  input \pc_reg[7]_3 ;
  input \pc_reg[11]_0 ;
  input \pc_reg[11]_1 ;
  input \pc_reg[11]_2 ;
  input \pc_reg[11]_3 ;
  input \pc_reg[15]_1 ;
  input \pc_reg[15]_2 ;
  input \pc_reg[15]_3 ;
  input \pc_reg[15]_4 ;
  input [15:0]from_stack;
  input [15:0]data_mem;
  input [14:0]next_ins_addr;
  input \pc_reg[3]_4 ;

  wire [0:0]DI;
  wire [3:0]S;
  wire [15:0]b;
  wire clk;
  wire [15:0]data_mem;
  wire data_mem_10_sn_1;
  wire data_mem_14_sn_1;
  wire data_mem_15_sn_1;
  wire data_mem_1_sn_1;
  wire data_mem_4_sn_1;
  wire data_mem_6_sn_1;
  wire data_mem_8_sn_1;
  wire data_mem_9_sn_1;
  wire [15:0]from_stack;
  wire from_stack_11_sn_1;
  wire from_stack_12_sn_1;
  wire from_stack_13_sn_1;
  wire from_stack_2_sn_1;
  wire from_stack_3_sn_1;
  wire from_stack_5_sn_1;
  wire from_stack_7_sn_1;
  wire [13:0]instruction;
  wire [3:0]\instruction[3] ;
  wire [3:0]\instruction[7] ;
  wire [14:0]next_ins_addr;
  wire \pc[11]_i_2_n_0 ;
  wire \pc[11]_i_3_n_0 ;
  wire \pc[11]_i_4_n_0 ;
  wire \pc[11]_i_5_n_0 ;
  wire \pc[15]_i_1_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire \pc[15]_i_4_n_0 ;
  wire \pc[15]_i_5_n_0 ;
  wire \pc[15]_i_6_n_0 ;
  wire \pc[3]_i_3_n_0 ;
  wire \pc[3]_i_4_n_0 ;
  wire \pc[3]_i_5_n_0 ;
  wire \pc[3]_i_6_n_0 ;
  wire \pc[7]_i_2_n_0 ;
  wire \pc[7]_i_3_n_0 ;
  wire \pc[7]_i_4_n_0 ;
  wire \pc[7]_i_5_n_0 ;
  wire \pc_reg[0]_0 ;
  wire \pc_reg[0]_1 ;
  wire [3:0]\pc_reg[10]_0 ;
  wire \pc_reg[11]_0 ;
  wire \pc_reg[11]_1 ;
  wire \pc_reg[11]_2 ;
  wire \pc_reg[11]_3 ;
  wire \pc_reg[11]_i_1_n_0 ;
  wire \pc_reg[11]_i_1_n_1 ;
  wire \pc_reg[11]_i_1_n_2 ;
  wire \pc_reg[11]_i_1_n_3 ;
  wire \pc_reg[11]_i_1_n_4 ;
  wire \pc_reg[11]_i_1_n_5 ;
  wire \pc_reg[11]_i_1_n_6 ;
  wire \pc_reg[11]_i_1_n_7 ;
  wire [3:0]\pc_reg[12]_0 ;
  wire [3:0]\pc_reg[14]_0 ;
  wire [2:0]\pc_reg[15]_0 ;
  wire \pc_reg[15]_1 ;
  wire \pc_reg[15]_2 ;
  wire \pc_reg[15]_3 ;
  wire \pc_reg[15]_4 ;
  wire \pc_reg[15]_i_2_n_1 ;
  wire \pc_reg[15]_i_2_n_2 ;
  wire \pc_reg[15]_i_2_n_3 ;
  wire \pc_reg[15]_i_2_n_4 ;
  wire \pc_reg[15]_i_2_n_5 ;
  wire \pc_reg[15]_i_2_n_6 ;
  wire \pc_reg[15]_i_2_n_7 ;
  wire \pc_reg[3]_0 ;
  wire \pc_reg[3]_1 ;
  wire \pc_reg[3]_2 ;
  wire \pc_reg[3]_3 ;
  wire \pc_reg[3]_4 ;
  wire \pc_reg[3]_i_1_n_0 ;
  wire \pc_reg[3]_i_1_n_1 ;
  wire \pc_reg[3]_i_1_n_2 ;
  wire \pc_reg[3]_i_1_n_3 ;
  wire \pc_reg[3]_i_1_n_4 ;
  wire \pc_reg[3]_i_1_n_5 ;
  wire \pc_reg[3]_i_1_n_6 ;
  wire \pc_reg[3]_i_1_n_7 ;
  wire \pc_reg[7]_0 ;
  wire \pc_reg[7]_1 ;
  wire \pc_reg[7]_2 ;
  wire \pc_reg[7]_3 ;
  wire \pc_reg[7]_i_1_n_0 ;
  wire \pc_reg[7]_i_1_n_1 ;
  wire \pc_reg[7]_i_1_n_2 ;
  wire \pc_reg[7]_i_1_n_3 ;
  wire \pc_reg[7]_i_1_n_4 ;
  wire \pc_reg[7]_i_1_n_5 ;
  wire \pc_reg[7]_i_1_n_6 ;
  wire \pc_reg[7]_i_1_n_7 ;
  wire [3:0]\pc_reg[8]_0 ;
  wire rst;
  wire [3:3]\NLW_pc_reg[15]_i_2_CO_UNCONNECTED ;

  assign data_mem_10_sp_1 = data_mem_10_sn_1;
  assign data_mem_14_sp_1 = data_mem_14_sn_1;
  assign data_mem_15_sp_1 = data_mem_15_sn_1;
  assign data_mem_1_sp_1 = data_mem_1_sn_1;
  assign data_mem_4_sp_1 = data_mem_4_sn_1;
  assign data_mem_6_sp_1 = data_mem_6_sn_1;
  assign data_mem_8_sp_1 = data_mem_8_sn_1;
  assign data_mem_9_sp_1 = data_mem_9_sn_1;
  assign from_stack_11_sp_1 = from_stack_11_sn_1;
  assign from_stack_12_sp_1 = from_stack_12_sn_1;
  assign from_stack_13_sp_1 = from_stack_13_sn_1;
  assign from_stack_2_sp_1 = from_stack_2_sn_1;
  assign from_stack_3_sp_1 = from_stack_3_sn_1;
  assign from_stack_5_sp_1 = from_stack_5_sn_1;
  assign from_stack_7_sp_1 = from_stack_7_sn_1;
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__0_i_1
       (.I0(instruction[7]),
        .I1(\pc_reg[8]_0 [2]),
        .O(\instruction[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__0_i_2
       (.I0(instruction[6]),
        .I1(\pc_reg[8]_0 [1]),
        .O(\instruction[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__0_i_3
       (.I0(instruction[5]),
        .I1(\pc_reg[8]_0 [0]),
        .O(\instruction[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__0_i_4
       (.I0(instruction[4]),
        .I1(S[3]),
        .O(\instruction[7] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    c_carry__1_i_1
       (.I0(instruction[10]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    c_carry__1_i_2
       (.I0(\pc_reg[12]_0 [1]),
        .I1(\pc_reg[12]_0 [2]),
        .O(\pc_reg[10]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__1_i_3
       (.I0(\pc_reg[12]_0 [1]),
        .I1(instruction[10]),
        .O(\pc_reg[10]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__1_i_4
       (.I0(instruction[9]),
        .I1(\pc_reg[12]_0 [0]),
        .O(\pc_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry__1_i_5
       (.I0(instruction[8]),
        .I1(\pc_reg[8]_0 [3]),
        .O(\pc_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    c_carry__2_i_1
       (.I0(\pc_reg[15]_0 [1]),
        .I1(\pc_reg[15]_0 [2]),
        .O(\pc_reg[14]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    c_carry__2_i_2
       (.I0(\pc_reg[15]_0 [0]),
        .I1(\pc_reg[15]_0 [1]),
        .O(\pc_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    c_carry__2_i_3
       (.I0(\pc_reg[12]_0 [3]),
        .I1(\pc_reg[15]_0 [0]),
        .O(\pc_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    c_carry__2_i_4
       (.I0(\pc_reg[12]_0 [2]),
        .I1(\pc_reg[12]_0 [3]),
        .O(\pc_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry_i_1
       (.I0(instruction[3]),
        .I1(S[2]),
        .O(\instruction[3] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry_i_2
       (.I0(instruction[2]),
        .I1(S[1]),
        .O(\instruction[3] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry_i_3
       (.I0(instruction[1]),
        .I1(S[0]),
        .O(\instruction[3] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    c_carry_i_4
       (.I0(instruction[0]),
        .I1(\pc_reg[0]_0 ),
        .O(\instruction[3] [0]));
  LUT6 #(
    .INIT(64'hCF000050C0000050)) 
    \mem[1][0]_i_2 
       (.I0(\pc_reg[0]_0 ),
        .I1(from_stack[0]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[0]),
        .O(\pc_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hCA0000F0CA000000)) 
    \mem[1][10]_i_2 
       (.I0(data_mem[10]),
        .I1(from_stack[10]),
        .I2(instruction[12]),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(next_ins_addr[9]),
        .O(data_mem_10_sn_1));
  LUT6 #(
    .INIT(64'hCF0000A0C00000A0)) 
    \mem[1][11]_i_2 
       (.I0(next_ins_addr[10]),
        .I1(from_stack[11]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[11]),
        .O(from_stack_11_sn_1));
  LUT6 #(
    .INIT(64'hA00FC000A000C000)) 
    \mem[1][12]_i_2 
       (.I0(from_stack[12]),
        .I1(data_mem[12]),
        .I2(instruction[11]),
        .I3(instruction[13]),
        .I4(instruction[12]),
        .I5(next_ins_addr[11]),
        .O(from_stack_12_sn_1));
  LUT6 #(
    .INIT(64'hAF0000C0A00000C0)) 
    \mem[1][13]_i_2 
       (.I0(from_stack[13]),
        .I1(next_ins_addr[12]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[13]),
        .O(from_stack_13_sn_1));
  LUT6 #(
    .INIT(64'hCA0000F0CA000000)) 
    \mem[1][14]_i_2 
       (.I0(data_mem[14]),
        .I1(from_stack[14]),
        .I2(instruction[12]),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(next_ins_addr[13]),
        .O(data_mem_14_sn_1));
  LUT6 #(
    .INIT(64'hCA0000F0CA000000)) 
    \mem[1][15]_i_4 
       (.I0(data_mem[15]),
        .I1(from_stack[15]),
        .I2(instruction[12]),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(next_ins_addr[14]),
        .O(data_mem_15_sn_1));
  LUT6 #(
    .INIT(64'hF00AC000000AC000)) 
    \mem[1][1]_i_2 
       (.I0(next_ins_addr[0]),
        .I1(data_mem[1]),
        .I2(instruction[11]),
        .I3(instruction[13]),
        .I4(instruction[12]),
        .I5(from_stack[1]),
        .O(data_mem_1_sn_1));
  LUT6 #(
    .INIT(64'hA00FC000A000C000)) 
    \mem[1][2]_i_2 
       (.I0(from_stack[2]),
        .I1(data_mem[2]),
        .I2(instruction[11]),
        .I3(instruction[13]),
        .I4(instruction[12]),
        .I5(next_ins_addr[1]),
        .O(from_stack_2_sn_1));
  LUT6 #(
    .INIT(64'hAF0000C0A00000C0)) 
    \mem[1][3]_i_2 
       (.I0(from_stack[3]),
        .I1(next_ins_addr[2]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[3]),
        .O(from_stack_3_sn_1));
  LUT6 #(
    .INIT(64'hF0A00C0000A00C00)) 
    \mem[1][4]_i_2 
       (.I0(data_mem[4]),
        .I1(next_ins_addr[3]),
        .I2(instruction[13]),
        .I3(instruction[12]),
        .I4(instruction[11]),
        .I5(from_stack[4]),
        .O(data_mem_4_sn_1));
  LUT6 #(
    .INIT(64'hCF0000A0C00000A0)) 
    \mem[1][5]_i_2 
       (.I0(next_ins_addr[4]),
        .I1(from_stack[5]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[5]),
        .O(from_stack_5_sn_1));
  LUT6 #(
    .INIT(64'hF0A00C0000A00C00)) 
    \mem[1][6]_i_2 
       (.I0(data_mem[6]),
        .I1(next_ins_addr[5]),
        .I2(instruction[13]),
        .I3(instruction[12]),
        .I4(instruction[11]),
        .I5(from_stack[6]),
        .O(data_mem_6_sn_1));
  LUT6 #(
    .INIT(64'hAF0000C0A00000C0)) 
    \mem[1][7]_i_2 
       (.I0(from_stack[7]),
        .I1(next_ins_addr[6]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .I4(instruction[11]),
        .I5(data_mem[7]),
        .O(from_stack_7_sn_1));
  LUT6 #(
    .INIT(64'hCA0000F0CA000000)) 
    \mem[1][8]_i_2 
       (.I0(data_mem[8]),
        .I1(from_stack[8]),
        .I2(instruction[12]),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(next_ins_addr[7]),
        .O(data_mem_8_sn_1));
  LUT6 #(
    .INIT(64'hF0A00C0000A00C00)) 
    \mem[1][9]_i_2 
       (.I0(data_mem[9]),
        .I1(next_ins_addr[8]),
        .I2(instruction[13]),
        .I3(instruction[12]),
        .I4(instruction[11]),
        .I5(from_stack[9]),
        .O(data_mem_9_sn_1));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[11]_i_2 
       (.I0(\pc_reg[12]_0 [2]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[11]_3 ),
        .I3(instruction[12]),
        .I4(b[11]),
        .O(\pc[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[11]_i_3 
       (.I0(\pc_reg[12]_0 [1]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[11]_2 ),
        .I3(instruction[12]),
        .I4(b[10]),
        .O(\pc[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[11]_i_4 
       (.I0(\pc_reg[12]_0 [0]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[11]_1 ),
        .I3(instruction[12]),
        .I4(b[9]),
        .O(\pc[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[11]_i_5 
       (.I0(\pc_reg[8]_0 [3]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[11]_0 ),
        .I3(instruction[12]),
        .I4(b[8]),
        .O(\pc[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \pc[15]_i_1 
       (.I0(instruction[13]),
        .I1(instruction[12]),
        .I2(instruction[11]),
        .O(\pc[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[15]_i_3 
       (.I0(\pc_reg[15]_0 [2]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[15]_4 ),
        .I3(instruction[12]),
        .I4(b[15]),
        .O(\pc[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[15]_i_4 
       (.I0(\pc_reg[15]_0 [1]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[15]_3 ),
        .I3(instruction[12]),
        .I4(b[14]),
        .O(\pc[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[15]_i_5 
       (.I0(\pc_reg[15]_0 [0]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[15]_2 ),
        .I3(instruction[12]),
        .I4(b[13]),
        .O(\pc[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[15]_i_6 
       (.I0(\pc_reg[12]_0 [3]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[15]_1 ),
        .I3(instruction[12]),
        .I4(b[12]),
        .O(\pc[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[3]_i_3 
       (.I0(S[2]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[3]_3 ),
        .I3(instruction[12]),
        .I4(b[3]),
        .O(\pc[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[3]_i_4 
       (.I0(S[1]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[3]_2 ),
        .I3(instruction[12]),
        .I4(b[2]),
        .O(\pc[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[3]_i_5 
       (.I0(S[0]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[3]_1 ),
        .I3(instruction[12]),
        .I4(b[1]),
        .O(\pc[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF2E2E)) 
    \pc[3]_i_6 
       (.I0(b[0]),
        .I1(instruction[12]),
        .I2(\pc_reg[3]_4 ),
        .I3(\pc_reg[0]_0 ),
        .I4(\pc_reg[3]_0 ),
        .O(\pc[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[7]_i_2 
       (.I0(\pc_reg[8]_0 [2]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[7]_3 ),
        .I3(instruction[12]),
        .I4(b[7]),
        .O(\pc[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[7]_i_3 
       (.I0(\pc_reg[8]_0 [1]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[7]_2 ),
        .I3(instruction[12]),
        .I4(b[6]),
        .O(\pc[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[7]_i_4 
       (.I0(\pc_reg[8]_0 [0]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[7]_1 ),
        .I3(instruction[12]),
        .I4(b[5]),
        .O(\pc[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \pc[7]_i_5 
       (.I0(S[3]),
        .I1(\pc_reg[3]_0 ),
        .I2(\pc_reg[7]_0 ),
        .I3(instruction[12]),
        .I4(b[4]),
        .O(\pc[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[3]_i_1_n_7 ),
        .Q(\pc_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[11]_i_1_n_5 ),
        .Q(\pc_reg[12]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[11]_i_1_n_4 ),
        .Q(\pc_reg[12]_0 [2]));
  CARRY4 \pc_reg[11]_i_1 
       (.CI(\pc_reg[7]_i_1_n_0 ),
        .CO({\pc_reg[11]_i_1_n_0 ,\pc_reg[11]_i_1_n_1 ,\pc_reg[11]_i_1_n_2 ,\pc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[11]_i_1_n_4 ,\pc_reg[11]_i_1_n_5 ,\pc_reg[11]_i_1_n_6 ,\pc_reg[11]_i_1_n_7 }),
        .S({\pc[11]_i_2_n_0 ,\pc[11]_i_3_n_0 ,\pc[11]_i_4_n_0 ,\pc[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[15]_i_2_n_7 ),
        .Q(\pc_reg[12]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[15]_i_2_n_6 ),
        .Q(\pc_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[15]_i_2_n_5 ),
        .Q(\pc_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[15]_i_2_n_4 ),
        .Q(\pc_reg[15]_0 [2]));
  CARRY4 \pc_reg[15]_i_2 
       (.CI(\pc_reg[11]_i_1_n_0 ),
        .CO({\NLW_pc_reg[15]_i_2_CO_UNCONNECTED [3],\pc_reg[15]_i_2_n_1 ,\pc_reg[15]_i_2_n_2 ,\pc_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[15]_i_2_n_4 ,\pc_reg[15]_i_2_n_5 ,\pc_reg[15]_i_2_n_6 ,\pc_reg[15]_i_2_n_7 }),
        .S({\pc[15]_i_3_n_0 ,\pc[15]_i_4_n_0 ,\pc[15]_i_5_n_0 ,\pc[15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[3]_i_1_n_6 ),
        .Q(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[3]_i_1_n_5 ),
        .Q(S[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[3]_i_1_n_4 ),
        .Q(S[2]));
  CARRY4 \pc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[3]_i_1_n_0 ,\pc_reg[3]_i_1_n_1 ,\pc_reg[3]_i_1_n_2 ,\pc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pc_reg[3]_0 }),
        .O({\pc_reg[3]_i_1_n_4 ,\pc_reg[3]_i_1_n_5 ,\pc_reg[3]_i_1_n_6 ,\pc_reg[3]_i_1_n_7 }),
        .S({\pc[3]_i_3_n_0 ,\pc[3]_i_4_n_0 ,\pc[3]_i_5_n_0 ,\pc[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[7]_i_1_n_7 ),
        .Q(S[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[7]_i_1_n_6 ),
        .Q(\pc_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[7]_i_1_n_5 ),
        .Q(\pc_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[7]_i_1_n_4 ),
        .Q(\pc_reg[8]_0 [2]));
  CARRY4 \pc_reg[7]_i_1 
       (.CI(\pc_reg[3]_i_1_n_0 ),
        .CO({\pc_reg[7]_i_1_n_0 ,\pc_reg[7]_i_1_n_1 ,\pc_reg[7]_i_1_n_2 ,\pc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[7]_i_1_n_4 ,\pc_reg[7]_i_1_n_5 ,\pc_reg[7]_i_1_n_6 ,\pc_reg[7]_i_1_n_7 }),
        .S({\pc[7]_i_2_n_0 ,\pc[7]_i_3_n_0 ,\pc[7]_i_4_n_0 ,\pc[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[11]_i_1_n_7 ),
        .Q(\pc_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst),
        .D(\pc_reg[11]_i_1_n_6 ),
        .Q(\pc_reg[12]_0 [0]));
endmodule

(* ORIG_REF_NAME = "reg_file" *) 
module design_1_shell_cpu_top_0_0_reg_file
   (instruction_10_sp_1,
    instruction_8_sp_1,
    \instruction[8]_0 ,
    instruction_12_sp_1,
    instruction_9_sp_1,
    \instruction[8]_1 ,
    \instruction[9]_0 ,
    \mem_reg[1][3]_0 ,
    \instruction[9]_1 ,
    \instruction[8]_2 ,
    \instruction[8]_3 ,
    \mem_reg[1][6]_0 ,
    \mem_reg[1][7]_0 ,
    \mem_reg[1][8]_0 ,
    \mem_reg[1][9]_0 ,
    \instruction[8]_4 ,
    \instruction[8]_5 ,
    \instruction[8]_6 ,
    \instruction[8]_7 ,
    \instruction[8]_8 ,
    \instruction[8]_9 ,
    regB,
    \instruction[4] ,
    \instruction[4]_0 ,
    \instruction[12]_0 ,
    \instruction[12]_1 ,
    regA,
    D,
    outvalue,
    DI,
    \mem_reg[1][7]_1 ,
    \regA[11]_INST_0_i_1_0 ,
    \regA[14]_INST_0_i_1_0 ,
    \mem_reg[1][3]_1 ,
    \mem_reg[1][7]_2 ,
    \regA[11]_INST_0_i_1_1 ,
    \regA[14]_INST_0_i_1_1 ,
    \instruction[5] ,
    \instruction[12]_2 ,
    \instruction[1] ,
    \instruction[15] ,
    S,
    \instruction[5]_0 ,
    \instruction[1]_0 ,
    \instruction[4]_1 ,
    \instruction[4]_2 ,
    \instruction[12]_3 ,
    \instruction[12]_4 ,
    \instruction[12]_5 ,
    instruction,
    data0,
    CO,
    \mem_reg[1][3]_2 ,
    \mem_reg[1][0]_0 ,
    \mem_reg[1][15]_0 ,
    \mem_reg[1][1]_0 ,
    \mem_reg[1][2]_0 ,
    \mem_reg[1][3]_3 ,
    \mem_reg[1][4]_0 ,
    \mem_reg[1][5]_0 ,
    \mem_reg[1][6]_1 ,
    \mem_reg[1][7]_3 ,
    \mem_reg[1][8]_1 ,
    \mem_reg[1][9]_1 ,
    \mem_reg[1][10]_0 ,
    \mem_reg[1][11]_0 ,
    \mem_reg[1][12]_0 ,
    \mem_reg[1][13]_0 ,
    \mem_reg[1][14]_0 ,
    rst,
    \mem_reg[6][0]_0 ,
    \sp_reg_reg[0] ,
    \sp_reg_reg[0]_0 ,
    stack_ptr,
    inr,
    \mem_reg[1][0]_1 ,
    \mem_reg[1][1]_1 ,
    \mem_reg[1][2]_1 ,
    \mem_reg[1][3]_4 ,
    \mem_reg[1][4]_1 ,
    \mem_reg[1][5]_1 ,
    \mem_reg[1][6]_2 ,
    \mem_reg[1][7]_4 ,
    \mem_reg[1][8]_2 ,
    \mem_reg[1][9]_2 ,
    \mem_reg[1][10]_1 ,
    \mem_reg[1][11]_1 ,
    \mem_reg[1][12]_1 ,
    \mem_reg[1][13]_1 ,
    \mem_reg[1][14]_1 ,
    \mem_reg[1][15]_1 ,
    clk);
  output instruction_10_sp_1;
  output instruction_8_sp_1;
  output \instruction[8]_0 ;
  output instruction_12_sp_1;
  output instruction_9_sp_1;
  output \instruction[8]_1 ;
  output \instruction[9]_0 ;
  output \mem_reg[1][3]_0 ;
  output \instruction[9]_1 ;
  output \instruction[8]_2 ;
  output \instruction[8]_3 ;
  output \mem_reg[1][6]_0 ;
  output \mem_reg[1][7]_0 ;
  output \mem_reg[1][8]_0 ;
  output \mem_reg[1][9]_0 ;
  output \instruction[8]_4 ;
  output \instruction[8]_5 ;
  output \instruction[8]_6 ;
  output \instruction[8]_7 ;
  output \instruction[8]_8 ;
  output \instruction[8]_9 ;
  output [15:0]regB;
  output [3:0]\instruction[4] ;
  output [3:0]\instruction[4]_0 ;
  output [3:0]\instruction[12]_0 ;
  output [3:0]\instruction[12]_1 ;
  output [9:0]regA;
  output [0:0]D;
  output [15:0]outvalue;
  output [3:0]DI;
  output [3:0]\mem_reg[1][7]_1 ;
  output [3:0]\regA[11]_INST_0_i_1_0 ;
  output [2:0]\regA[14]_INST_0_i_1_0 ;
  output [3:0]\mem_reg[1][3]_1 ;
  output [3:0]\mem_reg[1][7]_2 ;
  output [3:0]\regA[11]_INST_0_i_1_1 ;
  output [2:0]\regA[14]_INST_0_i_1_1 ;
  output [3:0]\instruction[5] ;
  output [3:0]\instruction[12]_2 ;
  output [3:0]\instruction[1] ;
  output [3:0]\instruction[15] ;
  output [3:0]S;
  output [3:0]\instruction[5]_0 ;
  output [3:0]\instruction[1]_0 ;
  output [3:0]\instruction[4]_1 ;
  output [3:0]\instruction[4]_2 ;
  output [3:0]\instruction[12]_3 ;
  output [3:0]\instruction[12]_4 ;
  output [3:0]\instruction[12]_5 ;
  input [15:0]instruction;
  input [15:0]data0;
  input [0:0]CO;
  input [0:0]\mem_reg[1][3]_2 ;
  input \mem_reg[1][0]_0 ;
  input [4:0]\mem_reg[1][15]_0 ;
  input \mem_reg[1][1]_0 ;
  input \mem_reg[1][2]_0 ;
  input \mem_reg[1][3]_3 ;
  input \mem_reg[1][4]_0 ;
  input \mem_reg[1][5]_0 ;
  input \mem_reg[1][6]_1 ;
  input \mem_reg[1][7]_3 ;
  input \mem_reg[1][8]_1 ;
  input \mem_reg[1][9]_1 ;
  input \mem_reg[1][10]_0 ;
  input \mem_reg[1][11]_0 ;
  input \mem_reg[1][12]_0 ;
  input \mem_reg[1][13]_0 ;
  input \mem_reg[1][14]_0 ;
  input rst;
  input \mem_reg[6][0]_0 ;
  input \sp_reg_reg[0] ;
  input \sp_reg_reg[0]_0 ;
  input [0:0]stack_ptr;
  input [2:0]inr;
  input \mem_reg[1][0]_1 ;
  input \mem_reg[1][1]_1 ;
  input \mem_reg[1][2]_1 ;
  input \mem_reg[1][3]_4 ;
  input \mem_reg[1][4]_1 ;
  input \mem_reg[1][5]_1 ;
  input \mem_reg[1][6]_2 ;
  input \mem_reg[1][7]_4 ;
  input \mem_reg[1][8]_2 ;
  input \mem_reg[1][9]_2 ;
  input \mem_reg[1][10]_1 ;
  input \mem_reg[1][11]_1 ;
  input \mem_reg[1][12]_1 ;
  input \mem_reg[1][13]_1 ;
  input \mem_reg[1][14]_1 ;
  input \mem_reg[1][15]_1 ;
  input clk;

  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [3:0]S;
  wire add_out_carry__0_i_11_n_0;
  wire add_out_carry__0_i_12_n_0;
  wire add_out_carry__1_i_10_n_0;
  wire add_out_carry__1_i_9_n_0;
  wire add_out_carry__2_i_10_n_0;
  wire add_out_carry__2_i_11_n_0;
  wire add_out_carry__2_i_8_n_0;
  wire add_out_carry__2_i_9_n_0;
  wire add_out_carry_i_10_n_0;
  wire add_out_carry_i_11_n_0;
  wire add_out_carry_i_13_n_0;
  wire add_out_carry_i_9_n_0;
  wire clk;
  wire \cmp_status[0]_i_10_n_0 ;
  wire \cmp_status[0]_i_11_n_0 ;
  wire \cmp_status[0]_i_12_n_0 ;
  wire \cmp_status[0]_i_13_n_0 ;
  wire \cmp_status[0]_i_2_n_0 ;
  wire \cmp_status[0]_i_3_n_0 ;
  wire \cmp_status[0]_i_4_n_0 ;
  wire \cmp_status[0]_i_5_n_0 ;
  wire \cmp_status[0]_i_8_n_0 ;
  wire \cmp_status[0]_i_9_n_0 ;
  wire \cmp_status[1]_i_2_n_0 ;
  wire \cmp_status[2]_i_2_n_0 ;
  wire \cmp_status[3]_i_4_n_0 ;
  wire \cmp_status_reg[0]_i_6_n_2 ;
  wire \cmp_status_reg[0]_i_6_n_3 ;
  wire \cmp_status_reg[0]_i_7_n_0 ;
  wire \cmp_status_reg[0]_i_7_n_1 ;
  wire \cmp_status_reg[0]_i_7_n_2 ;
  wire \cmp_status_reg[0]_i_7_n_3 ;
  wire [15:0]data0;
  wire [2:0]inr;
  wire [15:0]instruction;
  wire [3:0]\instruction[12]_0 ;
  wire [3:0]\instruction[12]_1 ;
  wire [3:0]\instruction[12]_2 ;
  wire [3:0]\instruction[12]_3 ;
  wire [3:0]\instruction[12]_4 ;
  wire [3:0]\instruction[12]_5 ;
  wire [3:0]\instruction[15] ;
  wire [3:0]\instruction[1] ;
  wire [3:0]\instruction[1]_0 ;
  wire [3:0]\instruction[4] ;
  wire [3:0]\instruction[4]_0 ;
  wire [3:0]\instruction[4]_1 ;
  wire [3:0]\instruction[4]_2 ;
  wire [3:0]\instruction[5] ;
  wire [3:0]\instruction[5]_0 ;
  wire \instruction[8]_0 ;
  wire \instruction[8]_1 ;
  wire \instruction[8]_2 ;
  wire \instruction[8]_3 ;
  wire \instruction[8]_4 ;
  wire \instruction[8]_5 ;
  wire \instruction[8]_6 ;
  wire \instruction[8]_7 ;
  wire \instruction[8]_8 ;
  wire \instruction[8]_9 ;
  wire \instruction[9]_0 ;
  wire \instruction[9]_1 ;
  wire instruction_10_sn_1;
  wire instruction_12_sn_1;
  wire instruction_8_sn_1;
  wire instruction_9_sn_1;
  wire \mem[1][0]_i_1_n_0 ;
  wire \mem[1][0]_i_3_n_0 ;
  wire \mem[1][0]_i_4_n_0 ;
  wire \mem[1][0]_i_5_n_0 ;
  wire \mem[1][10]_i_1_n_0 ;
  wire \mem[1][10]_i_3_n_0 ;
  wire \mem[1][10]_i_4_n_0 ;
  wire \mem[1][10]_i_5_n_0 ;
  wire \mem[1][11]_i_1_n_0 ;
  wire \mem[1][11]_i_3_n_0 ;
  wire \mem[1][11]_i_4_n_0 ;
  wire \mem[1][11]_i_5_n_0 ;
  wire \mem[1][12]_i_1_n_0 ;
  wire \mem[1][12]_i_3_n_0 ;
  wire \mem[1][12]_i_4_n_0 ;
  wire \mem[1][12]_i_5_n_0 ;
  wire \mem[1][13]_i_1_n_0 ;
  wire \mem[1][13]_i_3_n_0 ;
  wire \mem[1][13]_i_4_n_0 ;
  wire \mem[1][13]_i_5_n_0 ;
  wire \mem[1][14]_i_1_n_0 ;
  wire \mem[1][14]_i_3_n_0 ;
  wire \mem[1][14]_i_4_n_0 ;
  wire \mem[1][14]_i_5_n_0 ;
  wire \mem[1][14]_i_6_n_0 ;
  wire \mem[1][14]_i_7_n_0 ;
  wire \mem[1][14]_i_8_n_0 ;
  wire \mem[1][14]_i_9_n_0 ;
  wire \mem[1][15]_i_10_n_0 ;
  wire \mem[1][15]_i_11_n_0 ;
  wire \mem[1][15]_i_12_n_0 ;
  wire \mem[1][15]_i_13_n_0 ;
  wire \mem[1][15]_i_15_n_0 ;
  wire \mem[1][15]_i_1_n_0 ;
  wire \mem[1][15]_i_2_n_0 ;
  wire \mem[1][15]_i_3_n_0 ;
  wire \mem[1][15]_i_6_n_0 ;
  wire \mem[1][15]_i_7_n_0 ;
  wire \mem[1][15]_i_8_n_0 ;
  wire \mem[1][15]_i_9_n_0 ;
  wire \mem[1][1]_i_10_n_0 ;
  wire \mem[1][1]_i_11_n_0 ;
  wire \mem[1][1]_i_12_n_0 ;
  wire \mem[1][1]_i_13_n_0 ;
  wire \mem[1][1]_i_14_n_0 ;
  wire \mem[1][1]_i_1_n_0 ;
  wire \mem[1][1]_i_3_n_0 ;
  wire \mem[1][1]_i_4_n_0 ;
  wire \mem[1][1]_i_5_n_0 ;
  wire \mem[1][1]_i_9_n_0 ;
  wire \mem[1][2]_i_1_n_0 ;
  wire \mem[1][2]_i_3_n_0 ;
  wire \mem[1][2]_i_4_n_0 ;
  wire \mem[1][2]_i_5_n_0 ;
  wire \mem[1][3]_i_1_n_0 ;
  wire \mem[1][3]_i_3_n_0 ;
  wire \mem[1][3]_i_4_n_0 ;
  wire \mem[1][3]_i_5_n_0 ;
  wire \mem[1][4]_i_1_n_0 ;
  wire \mem[1][4]_i_3_n_0 ;
  wire \mem[1][4]_i_4_n_0 ;
  wire \mem[1][4]_i_5_n_0 ;
  wire \mem[1][5]_i_1_n_0 ;
  wire \mem[1][5]_i_3_n_0 ;
  wire \mem[1][5]_i_4_n_0 ;
  wire \mem[1][5]_i_5_n_0 ;
  wire \mem[1][6]_i_1_n_0 ;
  wire \mem[1][6]_i_3_n_0 ;
  wire \mem[1][6]_i_4_n_0 ;
  wire \mem[1][6]_i_5_n_0 ;
  wire \mem[1][7]_i_1_n_0 ;
  wire \mem[1][7]_i_3_n_0 ;
  wire \mem[1][7]_i_4_n_0 ;
  wire \mem[1][7]_i_5_n_0 ;
  wire \mem[1][8]_i_1_n_0 ;
  wire \mem[1][8]_i_3_n_0 ;
  wire \mem[1][8]_i_4_n_0 ;
  wire \mem[1][8]_i_5_n_0 ;
  wire \mem[1][9]_i_1_n_0 ;
  wire \mem[1][9]_i_3_n_0 ;
  wire \mem[1][9]_i_4_n_0 ;
  wire \mem[1][9]_i_5_n_0 ;
  wire \mem[2][15]_i_1_n_0 ;
  wire \mem[3][15]_i_1_n_0 ;
  wire \mem[4][15]_i_1_n_0 ;
  wire \mem[5][15]_i_1_n_0 ;
  wire \mem[6][15]_i_1_n_0 ;
  wire \mem[7][15]_i_1_n_0 ;
  wire [15:0]\mem_reg[1] ;
  wire \mem_reg[1][0]_0 ;
  wire \mem_reg[1][0]_1 ;
  wire \mem_reg[1][10]_0 ;
  wire \mem_reg[1][10]_1 ;
  wire \mem_reg[1][11]_0 ;
  wire \mem_reg[1][11]_1 ;
  wire \mem_reg[1][12]_0 ;
  wire \mem_reg[1][12]_1 ;
  wire \mem_reg[1][13]_0 ;
  wire \mem_reg[1][13]_1 ;
  wire \mem_reg[1][14]_0 ;
  wire \mem_reg[1][14]_1 ;
  wire [4:0]\mem_reg[1][15]_0 ;
  wire \mem_reg[1][15]_1 ;
  wire \mem_reg[1][15]_i_5_n_0 ;
  wire \mem_reg[1][1]_0 ;
  wire \mem_reg[1][1]_1 ;
  wire \mem_reg[1][1]_i_6_n_2 ;
  wire \mem_reg[1][1]_i_6_n_3 ;
  wire \mem_reg[1][1]_i_8_n_0 ;
  wire \mem_reg[1][1]_i_8_n_1 ;
  wire \mem_reg[1][1]_i_8_n_2 ;
  wire \mem_reg[1][1]_i_8_n_3 ;
  wire \mem_reg[1][2]_0 ;
  wire \mem_reg[1][2]_1 ;
  wire \mem_reg[1][3]_0 ;
  wire [3:0]\mem_reg[1][3]_1 ;
  wire [0:0]\mem_reg[1][3]_2 ;
  wire \mem_reg[1][3]_3 ;
  wire \mem_reg[1][3]_4 ;
  wire \mem_reg[1][4]_0 ;
  wire \mem_reg[1][4]_1 ;
  wire \mem_reg[1][5]_0 ;
  wire \mem_reg[1][5]_1 ;
  wire \mem_reg[1][6]_0 ;
  wire \mem_reg[1][6]_1 ;
  wire \mem_reg[1][6]_2 ;
  wire \mem_reg[1][7]_0 ;
  wire [3:0]\mem_reg[1][7]_1 ;
  wire [3:0]\mem_reg[1][7]_2 ;
  wire \mem_reg[1][7]_3 ;
  wire \mem_reg[1][7]_4 ;
  wire \mem_reg[1][8]_0 ;
  wire \mem_reg[1][8]_1 ;
  wire \mem_reg[1][8]_2 ;
  wire \mem_reg[1][9]_0 ;
  wire \mem_reg[1][9]_1 ;
  wire \mem_reg[1][9]_2 ;
  wire [15:0]\mem_reg[2] ;
  wire [15:0]\mem_reg[3] ;
  wire [15:0]\mem_reg[4] ;
  wire [15:0]\mem_reg[5] ;
  wire [15:0]\mem_reg[6] ;
  wire \mem_reg[6][0]_0 ;
  wire [15:0]\mem_reg[7] ;
  wire [9:0]mux_2_to_1_1_c;
  wire [15:0]outvalue;
  wire \outvalue[0]_INST_0_i_1_n_0 ;
  wire \outvalue[0]_INST_0_i_2_n_0 ;
  wire \outvalue[10]_INST_0_i_1_n_0 ;
  wire \outvalue[10]_INST_0_i_2_n_0 ;
  wire \outvalue[11]_INST_0_i_1_n_0 ;
  wire \outvalue[11]_INST_0_i_2_n_0 ;
  wire \outvalue[12]_INST_0_i_1_n_0 ;
  wire \outvalue[12]_INST_0_i_2_n_0 ;
  wire \outvalue[13]_INST_0_i_1_n_0 ;
  wire \outvalue[13]_INST_0_i_2_n_0 ;
  wire \outvalue[14]_INST_0_i_1_n_0 ;
  wire \outvalue[14]_INST_0_i_2_n_0 ;
  wire \outvalue[15]_INST_0_i_1_n_0 ;
  wire \outvalue[15]_INST_0_i_2_n_0 ;
  wire \outvalue[1]_INST_0_i_1_n_0 ;
  wire \outvalue[1]_INST_0_i_2_n_0 ;
  wire \outvalue[2]_INST_0_i_1_n_0 ;
  wire \outvalue[2]_INST_0_i_2_n_0 ;
  wire \outvalue[3]_INST_0_i_1_n_0 ;
  wire \outvalue[3]_INST_0_i_2_n_0 ;
  wire \outvalue[4]_INST_0_i_1_n_0 ;
  wire \outvalue[4]_INST_0_i_2_n_0 ;
  wire \outvalue[5]_INST_0_i_1_n_0 ;
  wire \outvalue[5]_INST_0_i_2_n_0 ;
  wire \outvalue[6]_INST_0_i_1_n_0 ;
  wire \outvalue[6]_INST_0_i_2_n_0 ;
  wire \outvalue[7]_INST_0_i_1_n_0 ;
  wire \outvalue[7]_INST_0_i_2_n_0 ;
  wire \outvalue[8]_INST_0_i_1_n_0 ;
  wire \outvalue[8]_INST_0_i_2_n_0 ;
  wire \outvalue[9]_INST_0_i_1_n_0 ;
  wire \outvalue[9]_INST_0_i_2_n_0 ;
  wire [9:0]regA;
  wire \regA[0]_INST_0_i_2_n_0 ;
  wire \regA[0]_INST_0_i_3_n_0 ;
  wire \regA[10]_INST_0_i_2_n_0 ;
  wire \regA[10]_INST_0_i_3_n_0 ;
  wire [3:0]\regA[11]_INST_0_i_1_0 ;
  wire [3:0]\regA[11]_INST_0_i_1_1 ;
  wire \regA[11]_INST_0_i_2_n_0 ;
  wire \regA[11]_INST_0_i_3_n_0 ;
  wire \regA[12]_INST_0_i_2_n_0 ;
  wire \regA[12]_INST_0_i_3_n_0 ;
  wire \regA[13]_INST_0_i_2_n_0 ;
  wire \regA[13]_INST_0_i_3_n_0 ;
  wire [2:0]\regA[14]_INST_0_i_1_0 ;
  wire [2:0]\regA[14]_INST_0_i_1_1 ;
  wire \regA[14]_INST_0_i_2_n_0 ;
  wire \regA[14]_INST_0_i_3_n_0 ;
  wire \regA[15]_INST_0_i_1_n_0 ;
  wire \regA[15]_INST_0_i_2_n_0 ;
  wire \regA[15]_INST_0_i_3_n_0 ;
  wire \regA[15]_INST_0_i_4_n_0 ;
  wire \regA[15]_INST_0_i_5_n_0 ;
  wire \regA[1]_INST_0_i_2_n_0 ;
  wire \regA[1]_INST_0_i_3_n_0 ;
  wire \regA[2]_INST_0_i_2_n_0 ;
  wire \regA[2]_INST_0_i_3_n_0 ;
  wire \regA[3]_INST_0_i_1_n_0 ;
  wire \regA[3]_INST_0_i_2_n_0 ;
  wire \regA[4]_INST_0_i_2_n_0 ;
  wire \regA[4]_INST_0_i_3_n_0 ;
  wire \regA[5]_INST_0_i_2_n_0 ;
  wire \regA[5]_INST_0_i_3_n_0 ;
  wire \regA[6]_INST_0_i_1_n_0 ;
  wire \regA[6]_INST_0_i_2_n_0 ;
  wire \regA[7]_INST_0_i_1_n_0 ;
  wire \regA[7]_INST_0_i_2_n_0 ;
  wire \regA[8]_INST_0_i_1_n_0 ;
  wire \regA[8]_INST_0_i_2_n_0 ;
  wire \regA[9]_INST_0_i_1_n_0 ;
  wire \regA[9]_INST_0_i_2_n_0 ;
  wire [15:0]regB;
  wire \regB[0]_INST_0_i_1_n_0 ;
  wire \regB[0]_INST_0_i_2_n_0 ;
  wire \regB[10]_INST_0_i_1_n_0 ;
  wire \regB[10]_INST_0_i_2_n_0 ;
  wire \regB[11]_INST_0_i_1_n_0 ;
  wire \regB[11]_INST_0_i_2_n_0 ;
  wire \regB[11]_INST_0_i_3_n_0 ;
  wire \regB[12]_INST_0_i_1_n_0 ;
  wire \regB[12]_INST_0_i_2_n_0 ;
  wire \regB[13]_INST_0_i_1_n_0 ;
  wire \regB[13]_INST_0_i_2_n_0 ;
  wire \regB[13]_INST_0_i_3_n_0 ;
  wire \regB[14]_INST_0_i_1_n_0 ;
  wire \regB[14]_INST_0_i_2_n_0 ;
  wire \regB[14]_INST_0_i_3_n_0 ;
  wire \regB[14]_INST_0_i_4_n_0 ;
  wire \regB[14]_INST_0_i_5_n_0 ;
  wire \regB[15]_INST_0_i_1_n_0 ;
  wire \regB[15]_INST_0_i_2_n_0 ;
  wire \regB[15]_INST_0_i_3_n_0 ;
  wire \regB[1]_INST_0_i_1_n_0 ;
  wire \regB[1]_INST_0_i_2_n_0 ;
  wire \regB[2]_INST_0_i_1_n_0 ;
  wire \regB[2]_INST_0_i_2_n_0 ;
  wire \regB[3]_INST_0_i_1_n_0 ;
  wire \regB[3]_INST_0_i_2_n_0 ;
  wire \regB[3]_INST_0_i_3_n_0 ;
  wire \regB[4]_INST_0_i_1_n_0 ;
  wire \regB[4]_INST_0_i_2_n_0 ;
  wire \regB[5]_INST_0_i_1_n_0 ;
  wire \regB[5]_INST_0_i_2_n_0 ;
  wire \regB[6]_INST_0_i_1_n_0 ;
  wire \regB[6]_INST_0_i_2_n_0 ;
  wire \regB[6]_INST_0_i_3_n_0 ;
  wire \regB[7]_INST_0_i_1_n_0 ;
  wire \regB[7]_INST_0_i_2_n_0 ;
  wire \regB[7]_INST_0_i_3_n_0 ;
  wire \regB[8]_INST_0_i_1_n_0 ;
  wire \regB[8]_INST_0_i_2_n_0 ;
  wire \regB[8]_INST_0_i_3_n_0 ;
  wire \regB[9]_INST_0_i_1_n_0 ;
  wire \regB[9]_INST_0_i_2_n_0 ;
  wire \regB[9]_INST_0_i_3_n_0 ;
  wire rst;
  wire \sp_reg_reg[0] ;
  wire \sp_reg_reg[0]_0 ;
  wire [0:0]stack_ptr;
  wire [3:2]\NLW_cmp_status_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_cmp_status_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_cmp_status_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_mem_reg[1][1]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_reg[1][1]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_reg[1][1]_i_8_O_UNCONNECTED ;

  assign instruction_10_sp_1 = instruction_10_sn_1;
  assign instruction_12_sp_1 = instruction_12_sn_1;
  assign instruction_8_sp_1 = instruction_8_sn_1;
  assign instruction_9_sp_1 = instruction_9_sn_1;
  LUT3 #(
    .INIT(8'hB8)) 
    add_out_carry__0_i_1
       (.I0(\regA[7]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[7]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][7]_1 [3]));
  LUT6 #(
    .INIT(64'h0000000D0D0D000D)) 
    add_out_carry__0_i_10
       (.I0(instruction[12]),
        .I1(instruction[10]),
        .I2(instruction[13]),
        .I3(\regB[6]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[6]_INST_0_i_3_n_0 ),
        .O(mux_2_to_1_1_c[6]));
  LUT6 #(
    .INIT(64'h707F7070707F7F7F)) 
    add_out_carry__0_i_11
       (.I0(instruction[15]),
        .I1(instruction[5]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[5]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[5]_INST_0_i_1_n_0 ),
        .O(add_out_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h707F7070707F7F7F)) 
    add_out_carry__0_i_12
       (.I0(instruction[15]),
        .I1(instruction[4]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[4]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[4]_INST_0_i_1_n_0 ),
        .O(add_out_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    add_out_carry__0_i_2
       (.I0(\regA[6]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[6]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][7]_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__0_i_3
       (.I0(\instruction[8]_3 ),
        .O(\mem_reg[1][7]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__0_i_4
       (.I0(\instruction[8]_2 ),
        .O(\mem_reg[1][7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_5
       (.I0(\mem_reg[1][7]_0 ),
        .I1(mux_2_to_1_1_c[7]),
        .O(\instruction[12]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_6
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .O(\instruction[12]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_7
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .O(\instruction[12]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__0_i_8
       (.I0(\instruction[8]_2 ),
        .I1(add_out_carry__0_i_12_n_0),
        .O(\instruction[12]_2 [0]));
  LUT6 #(
    .INIT(64'h0000000D0D0D000D)) 
    add_out_carry__0_i_9
       (.I0(instruction[12]),
        .I1(instruction[10]),
        .I2(instruction[13]),
        .I3(\regB[7]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[7]_INST_0_i_3_n_0 ),
        .O(mux_2_to_1_1_c[7]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__1_i_1
       (.I0(\instruction[8]_5 ),
        .O(\regA[11]_INST_0_i_1_0 [3]));
  LUT6 #(
    .INIT(64'hD0DFD0D0D0DFDFDF)) 
    add_out_carry__1_i_10
       (.I0(instruction[0]),
        .I1(instruction[15]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[10]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[10]_INST_0_i_1_n_0 ),
        .O(add_out_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000D0D0D000D)) 
    add_out_carry__1_i_11
       (.I0(instruction[12]),
        .I1(instruction[10]),
        .I2(instruction[13]),
        .I3(\regB[9]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[9]_INST_0_i_3_n_0 ),
        .O(mux_2_to_1_1_c[9]));
  LUT6 #(
    .INIT(64'h0000000D0D0D000D)) 
    add_out_carry__1_i_12
       (.I0(instruction[12]),
        .I1(instruction[10]),
        .I2(instruction[13]),
        .I3(\regB[8]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[8]_INST_0_i_3_n_0 ),
        .O(mux_2_to_1_1_c[8]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__1_i_2
       (.I0(\instruction[8]_4 ),
        .O(\regA[11]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    add_out_carry__1_i_3
       (.I0(\regA[9]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[9]_INST_0_i_2_n_0 ),
        .O(\regA[11]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    add_out_carry__1_i_4
       (.I0(\regA[8]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[8]_INST_0_i_2_n_0 ),
        .O(\regA[11]_INST_0_i_1_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_5
       (.I0(\instruction[8]_5 ),
        .I1(add_out_carry__1_i_9_n_0),
        .O(\instruction[1] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_6
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .O(\instruction[1] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_7
       (.I0(\mem_reg[1][9]_0 ),
        .I1(mux_2_to_1_1_c[9]),
        .O(\instruction[1] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__1_i_8
       (.I0(\mem_reg[1][8]_0 ),
        .I1(mux_2_to_1_1_c[8]),
        .O(\instruction[1] [0]));
  LUT6 #(
    .INIT(64'hDDDDDDDDF0FFF000)) 
    add_out_carry__1_i_9
       (.I0(instruction[1]),
        .I1(instruction[15]),
        .I2(\regB[11]_INST_0_i_3_n_0 ),
        .I3(\regB[14]_INST_0_i_1_n_0 ),
        .I4(\regB[11]_INST_0_i_2_n_0 ),
        .I5(add_out_carry_i_13_n_0),
        .O(add_out_carry__1_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__2_i_1
       (.I0(\instruction[8]_8 ),
        .O(\regA[14]_INST_0_i_1_0 [2]));
  LUT6 #(
    .INIT(64'hDDDDDDDDF0FFF000)) 
    add_out_carry__2_i_10
       (.I0(instruction[3]),
        .I1(instruction[15]),
        .I2(\regB[13]_INST_0_i_3_n_0 ),
        .I3(\regB[14]_INST_0_i_1_n_0 ),
        .I4(\regB[13]_INST_0_i_2_n_0 ),
        .I5(add_out_carry_i_13_n_0),
        .O(add_out_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hD0DFD0D0D0DFDFDF)) 
    add_out_carry__2_i_11
       (.I0(instruction[2]),
        .I1(instruction[15]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[12]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[12]_INST_0_i_1_n_0 ),
        .O(add_out_carry__2_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__2_i_2
       (.I0(\instruction[8]_7 ),
        .O(\regA[14]_INST_0_i_1_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry__2_i_3
       (.I0(\instruction[8]_6 ),
        .O(\regA[14]_INST_0_i_1_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    add_out_carry__2_i_4
       (.I0(\instruction[8]_9 ),
        .I1(add_out_carry__2_i_8_n_0),
        .O(\instruction[5]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_5
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .O(\instruction[5]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_6
       (.I0(\instruction[8]_7 ),
        .I1(add_out_carry__2_i_10_n_0),
        .O(\instruction[5]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry__2_i_7
       (.I0(\instruction[8]_6 ),
        .I1(add_out_carry__2_i_11_n_0),
        .O(\instruction[5]_0 [0]));
  LUT6 #(
    .INIT(64'hDDDDDDDDF0FFF000)) 
    add_out_carry__2_i_8
       (.I0(instruction[5]),
        .I1(instruction[15]),
        .I2(\regB[15]_INST_0_i_3_n_0 ),
        .I3(\regB[14]_INST_0_i_1_n_0 ),
        .I4(\regB[15]_INST_0_i_2_n_0 ),
        .I5(add_out_carry_i_13_n_0),
        .O(add_out_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'hD0DFD0D0D0DFDFDF)) 
    add_out_carry__2_i_9
       (.I0(instruction[4]),
        .I1(instruction[15]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[14]_INST_0_i_3_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[14]_INST_0_i_2_n_0 ),
        .O(add_out_carry__2_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    add_out_carry_i_1
       (.I0(\regA[3]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[3]_INST_0_i_2_n_0 ),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h707F7070707F7F7F)) 
    add_out_carry_i_10
       (.I0(instruction[15]),
        .I1(instruction[2]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[2]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[2]_INST_0_i_1_n_0 ),
        .O(add_out_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h707F7070707F7F7F)) 
    add_out_carry_i_11
       (.I0(instruction[15]),
        .I1(instruction[1]),
        .I2(add_out_carry_i_13_n_0),
        .I3(\regB[1]_INST_0_i_2_n_0 ),
        .I4(\regB[14]_INST_0_i_1_n_0 ),
        .I5(\regB[1]_INST_0_i_1_n_0 ),
        .O(add_out_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF000000B8B8B8B8)) 
    add_out_carry_i_12
       (.I0(\regB[0]_INST_0_i_2_n_0 ),
        .I1(\regB[14]_INST_0_i_1_n_0 ),
        .I2(\regB[0]_INST_0_i_1_n_0 ),
        .I3(instruction[15]),
        .I4(instruction[0]),
        .I5(add_out_carry_i_13_n_0),
        .O(mux_2_to_1_1_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    add_out_carry_i_13
       (.I0(instruction[13]),
        .I1(instruction[10]),
        .I2(instruction[12]),
        .O(add_out_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry_i_2
       (.I0(\instruction[8]_1 ),
        .O(DI[2]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry_i_3
       (.I0(instruction_8_sn_1),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    add_out_carry_i_4
       (.I0(\instruction[8]_0 ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h9)) 
    add_out_carry_i_5
       (.I0(\mem_reg[1][3]_0 ),
        .I1(add_out_carry_i_9_n_0),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_6
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_out_carry_i_7
       (.I0(instruction_8_sn_1),
        .I1(add_out_carry_i_11_n_0),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    add_out_carry_i_8
       (.I0(\instruction[8]_0 ),
        .I1(mux_2_to_1_1_c[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h77777777F0FFF000)) 
    add_out_carry_i_9
       (.I0(instruction[15]),
        .I1(instruction[3]),
        .I2(\regB[3]_INST_0_i_3_n_0 ),
        .I3(\regB[14]_INST_0_i_1_n_0 ),
        .I4(\regB[3]_INST_0_i_2_n_0 ),
        .I5(add_out_carry_i_13_n_0),
        .O(add_out_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h022F)) 
    cmp_out_reg0__7_carry__0_i_1
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .I2(\instruction[8]_9 ),
        .I3(add_out_carry__2_i_8_n_0),
        .O(\instruction[4]_0 [3]));
  LUT4 #(
    .INIT(16'h4D44)) 
    cmp_out_reg0__7_carry__0_i_2
       (.I0(add_out_carry__2_i_10_n_0),
        .I1(\instruction[8]_7 ),
        .I2(add_out_carry__2_i_11_n_0),
        .I3(\instruction[8]_6 ),
        .O(\instruction[4]_0 [2]));
  LUT4 #(
    .INIT(16'h40F4)) 
    cmp_out_reg0__7_carry__0_i_3
       (.I0(add_out_carry__1_i_10_n_0),
        .I1(\instruction[8]_4 ),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .O(\instruction[4]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    cmp_out_reg0__7_carry__0_i_4
       (.I0(mux_2_to_1_1_c[9]),
        .I1(\mem_reg[1][9]_0 ),
        .I2(mux_2_to_1_1_c[8]),
        .I3(\mem_reg[1][8]_0 ),
        .O(\instruction[4]_0 [0]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0__7_carry__0_i_5
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .I2(\instruction[8]_9 ),
        .I3(add_out_carry__2_i_8_n_0),
        .O(\instruction[4]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry__0_i_6
       (.I0(\instruction[8]_6 ),
        .I1(add_out_carry__2_i_11_n_0),
        .I2(\instruction[8]_7 ),
        .I3(add_out_carry__2_i_10_n_0),
        .O(\instruction[4]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry__0_i_7
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .O(\instruction[4]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry__0_i_8
       (.I0(\mem_reg[1][8]_0 ),
        .I1(mux_2_to_1_1_c[8]),
        .I2(\mem_reg[1][9]_0 ),
        .I3(mux_2_to_1_1_c[9]),
        .O(\instruction[4]_1 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    cmp_out_reg0__7_carry_i_1
       (.I0(mux_2_to_1_1_c[7]),
        .I1(\mem_reg[1][7]_0 ),
        .I2(mux_2_to_1_1_c[6]),
        .I3(\mem_reg[1][6]_0 ),
        .O(\instruction[12]_1 [3]));
  LUT4 #(
    .INIT(16'h4D44)) 
    cmp_out_reg0__7_carry_i_2
       (.I0(add_out_carry__0_i_11_n_0),
        .I1(\instruction[8]_3 ),
        .I2(add_out_carry__0_i_12_n_0),
        .I3(\instruction[8]_2 ),
        .O(\instruction[12]_1 [2]));
  LUT4 #(
    .INIT(16'h044F)) 
    cmp_out_reg0__7_carry_i_3
       (.I0(add_out_carry_i_10_n_0),
        .I1(\instruction[8]_1 ),
        .I2(add_out_carry_i_9_n_0),
        .I3(\mem_reg[1][3]_0 ),
        .O(\instruction[12]_1 [1]));
  LUT4 #(
    .INIT(16'hD444)) 
    cmp_out_reg0__7_carry_i_4
       (.I0(add_out_carry_i_11_n_0),
        .I1(instruction_8_sn_1),
        .I2(mux_2_to_1_1_c[0]),
        .I3(\instruction[8]_0 ),
        .O(\instruction[12]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_5
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .I2(\mem_reg[1][7]_0 ),
        .I3(mux_2_to_1_1_c[7]),
        .O(\instruction[12]_4 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0__7_carry_i_6
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .I2(\instruction[8]_2 ),
        .I3(add_out_carry__0_i_12_n_0),
        .O(\instruction[12]_4 [2]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0__7_carry_i_7
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(\mem_reg[1][3]_0 ),
        .I3(add_out_carry_i_9_n_0),
        .O(\instruction[12]_4 [1]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0__7_carry_i_8
       (.I0(instruction_8_sn_1),
        .I1(add_out_carry_i_11_n_0),
        .I2(\instruction[8]_0 ),
        .I3(mux_2_to_1_1_c[0]),
        .O(\instruction[12]_4 [0]));
  LUT4 #(
    .INIT(16'hF220)) 
    cmp_out_reg0_carry__0_i_1
       (.I0(add_out_carry__2_i_9_n_0),
        .I1(\instruction[8]_8 ),
        .I2(\instruction[8]_9 ),
        .I3(add_out_carry__2_i_8_n_0),
        .O(\instruction[4] [3]));
  LUT4 #(
    .INIT(16'h40F4)) 
    cmp_out_reg0_carry__0_i_2
       (.I0(\instruction[8]_6 ),
        .I1(add_out_carry__2_i_11_n_0),
        .I2(add_out_carry__2_i_10_n_0),
        .I3(\instruction[8]_7 ),
        .O(\instruction[4] [2]));
  LUT4 #(
    .INIT(16'h4F04)) 
    cmp_out_reg0_carry__0_i_3
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .O(\instruction[4] [1]));
  LUT4 #(
    .INIT(16'h4D44)) 
    cmp_out_reg0_carry__0_i_4
       (.I0(mux_2_to_1_1_c[9]),
        .I1(\mem_reg[1][9]_0 ),
        .I2(mux_2_to_1_1_c[8]),
        .I3(\mem_reg[1][8]_0 ),
        .O(\instruction[4] [0]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0_carry__0_i_5
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .I2(\instruction[8]_9 ),
        .I3(add_out_carry__2_i_8_n_0),
        .O(\instruction[4]_2 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_6
       (.I0(\instruction[8]_6 ),
        .I1(add_out_carry__2_i_11_n_0),
        .I2(\instruction[8]_7 ),
        .I3(add_out_carry__2_i_10_n_0),
        .O(\instruction[4]_2 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_7
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .O(\instruction[4]_2 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry__0_i_8
       (.I0(\mem_reg[1][8]_0 ),
        .I1(mux_2_to_1_1_c[8]),
        .I2(\mem_reg[1][9]_0 ),
        .I3(mux_2_to_1_1_c[9]),
        .O(\instruction[4]_2 [0]));
  LUT4 #(
    .INIT(16'h4D44)) 
    cmp_out_reg0_carry_i_1
       (.I0(mux_2_to_1_1_c[7]),
        .I1(\mem_reg[1][7]_0 ),
        .I2(mux_2_to_1_1_c[6]),
        .I3(\mem_reg[1][6]_0 ),
        .O(\instruction[12]_0 [3]));
  LUT4 #(
    .INIT(16'h40F4)) 
    cmp_out_reg0_carry_i_2
       (.I0(\instruction[8]_2 ),
        .I1(add_out_carry__0_i_12_n_0),
        .I2(add_out_carry__0_i_11_n_0),
        .I3(\instruction[8]_3 ),
        .O(\instruction[12]_0 [2]));
  LUT4 #(
    .INIT(16'hF440)) 
    cmp_out_reg0_carry_i_3
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(add_out_carry_i_9_n_0),
        .I3(\mem_reg[1][3]_0 ),
        .O(\instruction[12]_0 [1]));
  LUT4 #(
    .INIT(16'h10F1)) 
    cmp_out_reg0_carry_i_4
       (.I0(\instruction[8]_0 ),
        .I1(mux_2_to_1_1_c[0]),
        .I2(add_out_carry_i_11_n_0),
        .I3(instruction_8_sn_1),
        .O(\instruction[12]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_5
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .I2(\mem_reg[1][7]_0 ),
        .I3(mux_2_to_1_1_c[7]),
        .O(\instruction[12]_5 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    cmp_out_reg0_carry_i_6
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .I2(\instruction[8]_2 ),
        .I3(add_out_carry__0_i_12_n_0),
        .O(\instruction[12]_5 [2]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0_carry_i_7
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(\mem_reg[1][3]_0 ),
        .I3(add_out_carry_i_9_n_0),
        .O(\instruction[12]_5 [1]));
  LUT4 #(
    .INIT(16'h0990)) 
    cmp_out_reg0_carry_i_8
       (.I0(instruction_8_sn_1),
        .I1(add_out_carry_i_11_n_0),
        .I2(\instruction[8]_0 ),
        .I3(mux_2_to_1_1_c[0]),
        .O(\instruction[12]_5 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEFFFEF)) 
    \cmp_status[0]_i_1 
       (.I0(\cmp_status[0]_i_2_n_0 ),
        .I1(\mem[1][0]_i_4_n_0 ),
        .I2(instruction_8_sn_1),
        .I3(\cmp_status[0]_i_3_n_0 ),
        .I4(\cmp_status[0]_i_4_n_0 ),
        .I5(\cmp_status[0]_i_5_n_0 ),
        .O(instruction_10_sn_1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cmp_status[0]_i_10 
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .I4(\mem_reg[1][9]_0 ),
        .I5(mux_2_to_1_1_c[9]),
        .O(\cmp_status[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cmp_status[0]_i_11 
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .I2(\mem_reg[1][7]_0 ),
        .I3(mux_2_to_1_1_c[7]),
        .I4(\mem_reg[1][8]_0 ),
        .I5(mux_2_to_1_1_c[8]),
        .O(\cmp_status[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \cmp_status[0]_i_12 
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .I2(\instruction[8]_2 ),
        .I3(add_out_carry__0_i_12_n_0),
        .I4(\mem_reg[1][3]_0 ),
        .I5(add_out_carry_i_9_n_0),
        .O(\cmp_status[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \cmp_status[0]_i_13 
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(instruction_8_sn_1),
        .I3(add_out_carry_i_11_n_0),
        .I4(\instruction[8]_0 ),
        .I5(mux_2_to_1_1_c[0]),
        .O(\cmp_status[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0A0A0A2A)) 
    \cmp_status[0]_i_2 
       (.I0(data0[0]),
        .I1(instruction[10]),
        .I2(instruction[15]),
        .I3(instruction[11]),
        .I4(instruction[9]),
        .O(\cmp_status[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \cmp_status[0]_i_3 
       (.I0(instruction[11]),
        .I1(instruction[12]),
        .I2(instruction[10]),
        .I3(instruction[15]),
        .I4(instruction[9]),
        .O(\cmp_status[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFFF)) 
    \cmp_status[0]_i_4 
       (.I0(instruction[9]),
        .I1(instruction[15]),
        .I2(instruction[10]),
        .I3(instruction[11]),
        .I4(instruction[12]),
        .I5(\cmp_status_reg[0]_i_6_n_2 ),
        .O(\cmp_status[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA2EFE3EF)) 
    \cmp_status[0]_i_5 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_0 ),
        .I2(mux_2_to_1_1_c[0]),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\cmp_status[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cmp_status[0]_i_8 
       (.I0(add_out_carry__2_i_8_n_0),
        .I1(\instruction[8]_9 ),
        .O(\cmp_status[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cmp_status[0]_i_9 
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .I2(\instruction[8]_6 ),
        .I3(add_out_carry__2_i_11_n_0),
        .I4(\instruction[8]_7 ),
        .I5(add_out_carry__2_i_10_n_0),
        .O(\cmp_status[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4FF)) 
    \cmp_status[1]_i_1 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[1]),
        .I2(\cmp_status[1]_i_2_n_0 ),
        .I3(\mem[1][1]_i_4_n_0 ),
        .I4(\mem[1][1]_i_3_n_0 ),
        .O(instruction_9_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01FF0101)) 
    \cmp_status[1]_i_2 
       (.I0(\mem[1][15]_i_13_n_0 ),
        .I1(add_out_carry_i_11_n_0),
        .I2(instruction_8_sn_1),
        .I3(\mem_reg[1][0]_0 ),
        .I4(\mem_reg[1][15]_0 [1]),
        .O(\cmp_status[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4FF)) 
    \cmp_status[2]_i_1 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[2]),
        .I2(\cmp_status[2]_i_2_n_0 ),
        .I3(\mem[1][2]_i_4_n_0 ),
        .I4(\mem[1][2]_i_3_n_0 ),
        .O(\instruction[9]_0 ));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    \cmp_status[2]_i_2 
       (.I0(\mem[1][15]_i_13_n_0 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(\instruction[8]_1 ),
        .I3(\mem_reg[1][0]_0 ),
        .I4(\mem_reg[1][15]_0 [2]),
        .O(\cmp_status[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4FF)) 
    \cmp_status[3]_i_2 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[3]),
        .I2(\cmp_status[3]_i_4_n_0 ),
        .I3(\mem[1][3]_i_4_n_0 ),
        .I4(\mem[1][3]_i_3_n_0 ),
        .O(\instruction[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \cmp_status[3]_i_3 
       (.I0(instruction[12]),
        .I1(instruction[11]),
        .I2(instruction[10]),
        .I3(instruction[15]),
        .I4(instruction[9]),
        .O(instruction_12_sn_1));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \cmp_status[3]_i_4 
       (.I0(\mem[1][15]_i_13_n_0 ),
        .I1(\mem_reg[1][3]_0 ),
        .I2(add_out_carry_i_9_n_0),
        .I3(\mem_reg[1][0]_0 ),
        .I4(\mem_reg[1][15]_0 [3]),
        .O(\cmp_status[3]_i_4_n_0 ));
  CARRY4 \cmp_status_reg[0]_i_6 
       (.CI(\cmp_status_reg[0]_i_7_n_0 ),
        .CO({\NLW_cmp_status_reg[0]_i_6_CO_UNCONNECTED [3:2],\cmp_status_reg[0]_i_6_n_2 ,\cmp_status_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cmp_status_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\cmp_status[0]_i_8_n_0 ,\cmp_status[0]_i_9_n_0 }));
  CARRY4 \cmp_status_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\cmp_status_reg[0]_i_7_n_0 ,\cmp_status_reg[0]_i_7_n_1 ,\cmp_status_reg[0]_i_7_n_2 ,\cmp_status_reg[0]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cmp_status_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\cmp_status[0]_i_10_n_0 ,\cmp_status[0]_i_11_n_0 ,\cmp_status[0]_i_12_n_0 ,\cmp_status[0]_i_13_n_0 }));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBFBFFFB)) 
    \mem[1][0]_i_1 
       (.I0(\mem_reg[1][0]_1 ),
        .I1(\mem[1][0]_i_3_n_0 ),
        .I2(\mem[1][0]_i_4_n_0 ),
        .I3(data0[0]),
        .I4(\mem[1][15]_i_7_n_0 ),
        .I5(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000080A0AA80)) 
    \mem[1][0]_i_3 
       (.I0(\mem[1][0]_i_5_n_0 ),
        .I1(\mem[1][14]_i_8_n_0 ),
        .I2(\mem[1][14]_i_7_n_0 ),
        .I3(mux_2_to_1_1_c[0]),
        .I4(\instruction[8]_0 ),
        .I5(\mem[1][14]_i_6_n_0 ),
        .O(\mem[1][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \mem[1][0]_i_4 
       (.I0(\mem[1][15]_i_13_n_0 ),
        .I1(mux_2_to_1_1_c[0]),
        .I2(\instruction[8]_0 ),
        .I3(\mem_reg[1][0]_0 ),
        .I4(\mem_reg[1][15]_0 [0]),
        .O(\mem[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    \mem[1][0]_i_5 
       (.I0(instruction_12_sn_1),
        .I1(\cmp_status_reg[0]_i_6_n_2 ),
        .I2(\cmp_status[0]_i_3_n_0 ),
        .I3(\regA[1]_INST_0_i_3_n_0 ),
        .I4(\regA[15]_INST_0_i_1_n_0 ),
        .I5(\regA[1]_INST_0_i_2_n_0 ),
        .O(\mem[1][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][10]_i_1 
       (.I0(\mem_reg[1][10]_1 ),
        .I1(\mem[1][10]_i_3_n_0 ),
        .I2(\mem[1][10]_i_4_n_0 ),
        .I3(\mem[1][10]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][10]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_4 ),
        .I2(add_out_carry__1_i_10_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    \mem[1][10]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_5 ),
        .I2(\mem[1][14]_i_9_n_0 ),
        .I3(\mem_reg[1][9]_0 ),
        .O(\mem[1][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][10]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[10]),
        .I2(\mem_reg[1][10]_0 ),
        .I3(\instruction[8]_4 ),
        .I4(add_out_carry__1_i_10_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][11]_i_1 
       (.I0(\mem_reg[1][11]_1 ),
        .I1(\mem[1][11]_i_3_n_0 ),
        .I2(\mem[1][11]_i_4_n_0 ),
        .I3(\mem[1][11]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][11]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(add_out_carry__1_i_9_n_0),
        .I2(\instruction[8]_5 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \mem[1][11]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_6 ),
        .I2(\instruction[8]_4 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][11]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[11]),
        .I2(\mem_reg[1][11]_0 ),
        .I3(add_out_carry__1_i_9_n_0),
        .I4(\instruction[8]_5 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][12]_i_1 
       (.I0(\mem_reg[1][12]_1 ),
        .I1(\mem[1][12]_i_3_n_0 ),
        .I2(\mem[1][12]_i_4_n_0 ),
        .I3(\mem[1][12]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][12]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_6 ),
        .I2(add_out_carry__2_i_11_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \mem[1][12]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_7 ),
        .I2(\instruction[8]_5 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][12]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[12]),
        .I2(\mem_reg[1][12]_0 ),
        .I3(\instruction[8]_6 ),
        .I4(add_out_carry__2_i_11_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][13]_i_1 
       (.I0(\mem_reg[1][13]_1 ),
        .I1(\mem[1][13]_i_3_n_0 ),
        .I2(\mem[1][13]_i_4_n_0 ),
        .I3(\mem[1][13]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][13]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(add_out_carry__2_i_10_n_0),
        .I2(\instruction[8]_7 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \mem[1][13]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_8 ),
        .I2(\instruction[8]_6 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][13]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[13]),
        .I2(\mem_reg[1][13]_0 ),
        .I3(add_out_carry__2_i_10_n_0),
        .I4(\instruction[8]_7 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][14]_i_1 
       (.I0(\mem_reg[1][14]_1 ),
        .I1(\mem[1][14]_i_3_n_0 ),
        .I2(\mem[1][14]_i_4_n_0 ),
        .I3(\mem[1][14]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][14]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_8 ),
        .I2(add_out_carry__2_i_9_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \mem[1][14]_i_4 
       (.I0(\instruction[8]_9 ),
        .I1(\cmp_status[0]_i_3_n_0 ),
        .I2(\instruction[8]_7 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][14]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[14]),
        .I2(\mem_reg[1][14]_0 ),
        .I3(\instruction[8]_8 ),
        .I4(add_out_carry__2_i_9_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem[1][14]_i_6 
       (.I0(instruction[11]),
        .I1(instruction[12]),
        .I2(instruction[10]),
        .I3(instruction[15]),
        .I4(instruction[9]),
        .O(\mem[1][14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \mem[1][14]_i_7 
       (.I0(instruction[11]),
        .I1(instruction[15]),
        .I2(instruction[10]),
        .I3(instruction[9]),
        .O(\mem[1][14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \mem[1][14]_i_8 
       (.I0(instruction[9]),
        .I1(instruction[11]),
        .I2(instruction[15]),
        .I3(instruction[10]),
        .O(\mem[1][14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem[1][14]_i_9 
       (.I0(instruction[11]),
        .I1(instruction[12]),
        .I2(instruction[10]),
        .I3(instruction[15]),
        .I4(instruction[9]),
        .O(\mem[1][14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \mem[1][15]_i_1 
       (.I0(rst),
        .I1(instruction[8]),
        .I2(instruction[6]),
        .I3(instruction[7]),
        .I4(\mem[1][15]_i_3_n_0 ),
        .O(\mem[1][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF3F3FF7F)) 
    \mem[1][15]_i_10 
       (.I0(instruction[9]),
        .I1(instruction[15]),
        .I2(instruction[10]),
        .I3(instruction[12]),
        .I4(instruction[11]),
        .O(\mem[1][15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A3030303030)) 
    \mem[1][15]_i_11 
       (.I0(\mem[1][14]_i_7_n_0 ),
        .I1(\mem[1][14]_i_6_n_0 ),
        .I2(\instruction[8]_9 ),
        .I3(add_out_carry_i_13_n_0),
        .I4(\regB[15]_INST_0_i_1_n_0 ),
        .I5(\mem[1][15]_i_15_n_0 ),
        .O(\mem[1][15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \mem[1][15]_i_12 
       (.I0(\instruction[8]_9 ),
        .I1(\cmp_status[0]_i_3_n_0 ),
        .I2(\instruction[8]_8 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \mem[1][15]_i_13 
       (.I0(instruction[9]),
        .I1(instruction[11]),
        .I2(instruction[15]),
        .I3(instruction[12]),
        .I4(instruction[10]),
        .O(\mem[1][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBBBBFFBF)) 
    \mem[1][15]_i_15 
       (.I0(instruction[15]),
        .I1(instruction[5]),
        .I2(instruction[12]),
        .I3(instruction[10]),
        .I4(instruction[13]),
        .O(\mem[1][15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBFBFFFB)) 
    \mem[1][15]_i_2 
       (.I0(\mem_reg[1][15]_1 ),
        .I1(\mem_reg[1][15]_i_5_n_0 ),
        .I2(\mem[1][15]_i_6_n_0 ),
        .I3(data0[15]),
        .I4(\mem[1][15]_i_7_n_0 ),
        .I5(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAABAAAA)) 
    \mem[1][15]_i_3 
       (.I0(\mem_reg[6][0]_0 ),
        .I1(instruction[12]),
        .I2(instruction[11]),
        .I3(instruction[10]),
        .I4(instruction[9]),
        .I5(\mem[1][15]_i_9_n_0 ),
        .O(\mem[1][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \mem[1][15]_i_6 
       (.I0(\mem[1][15]_i_13_n_0 ),
        .I1(\instruction[8]_9 ),
        .I2(add_out_carry__2_i_8_n_0),
        .I3(\mem_reg[1][0]_0 ),
        .I4(\mem_reg[1][15]_0 [4]),
        .O(\mem[1][15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \mem[1][15]_i_7 
       (.I0(instruction[9]),
        .I1(instruction[11]),
        .I2(instruction[15]),
        .I3(instruction[10]),
        .O(\mem[1][15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC2)) 
    \mem[1][15]_i_8 
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[13]),
        .O(\mem[1][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000E0FF00FF00FF)) 
    \mem[1][15]_i_9 
       (.I0(instruction[10]),
        .I1(instruction[11]),
        .I2(instruction[12]),
        .I3(instruction[14]),
        .I4(instruction[13]),
        .I5(instruction[15]),
        .O(\mem[1][15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][1]_i_1 
       (.I0(\mem_reg[1][1]_1 ),
        .I1(\mem[1][1]_i_3_n_0 ),
        .I2(\mem[1][1]_i_4_n_0 ),
        .I3(\mem[1][1]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem[1][1]_i_10 
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .I2(\instruction[8]_6 ),
        .I3(add_out_carry__2_i_11_n_0),
        .I4(\instruction[8]_7 ),
        .I5(add_out_carry__2_i_10_n_0),
        .O(\mem[1][1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem[1][1]_i_11 
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .I2(\instruction[8]_5 ),
        .I3(add_out_carry__1_i_9_n_0),
        .I4(\mem_reg[1][9]_0 ),
        .I5(mux_2_to_1_1_c[9]),
        .O(\mem[1][1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem[1][1]_i_12 
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .I2(\mem_reg[1][7]_0 ),
        .I3(mux_2_to_1_1_c[7]),
        .I4(\mem_reg[1][8]_0 ),
        .I5(mux_2_to_1_1_c[8]),
        .O(\mem[1][1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \mem[1][1]_i_13 
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .I2(\instruction[8]_2 ),
        .I3(add_out_carry__0_i_12_n_0),
        .I4(\mem_reg[1][3]_0 ),
        .I5(add_out_carry_i_9_n_0),
        .O(\mem[1][1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \mem[1][1]_i_14 
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .I2(instruction_8_sn_1),
        .I3(add_out_carry_i_11_n_0),
        .I4(\instruction[8]_0 ),
        .I5(mux_2_to_1_1_c[0]),
        .O(\mem[1][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \mem[1][1]_i_3 
       (.I0(\mem[1][14]_i_9_n_0 ),
        .I1(\instruction[8]_0 ),
        .I2(\mem_reg[1][1]_i_6_n_2 ),
        .I3(instruction_12_sn_1),
        .I4(\cmp_status[0]_i_3_n_0 ),
        .I5(\instruction[8]_1 ),
        .O(\mem[1][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD501C101)) 
    \mem[1][1]_i_4 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(instruction_8_sn_1),
        .I2(add_out_carry_i_11_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][1]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[1]),
        .I2(\mem_reg[1][1]_0 ),
        .I3(instruction_8_sn_1),
        .I4(add_out_carry_i_11_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem[1][1]_i_9 
       (.I0(add_out_carry__2_i_8_n_0),
        .I1(\instruction[8]_9 ),
        .O(\mem[1][1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][2]_i_1 
       (.I0(\mem_reg[1][2]_1 ),
        .I1(\mem[1][2]_i_3_n_0 ),
        .I2(\mem[1][2]_i_4_n_0 ),
        .I3(\mem[1][2]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \mem[1][2]_i_3 
       (.I0(\mem[1][14]_i_9_n_0 ),
        .I1(instruction_8_sn_1),
        .I2(CO),
        .I3(instruction_12_sn_1),
        .I4(\cmp_status[0]_i_3_n_0 ),
        .I5(\mem_reg[1][3]_0 ),
        .O(\mem[1][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD501C101)) 
    \mem[1][2]_i_4 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_1 ),
        .I2(add_out_carry_i_10_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][2]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[2]),
        .I2(\mem_reg[1][2]_0 ),
        .I3(\instruction[8]_1 ),
        .I4(add_out_carry_i_10_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][3]_i_1 
       (.I0(\mem_reg[1][3]_4 ),
        .I1(\mem[1][3]_i_3_n_0 ),
        .I2(\mem[1][3]_i_4_n_0 ),
        .I3(\mem[1][3]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \mem[1][3]_i_3 
       (.I0(\mem[1][14]_i_9_n_0 ),
        .I1(\instruction[8]_1 ),
        .I2(\mem_reg[1][3]_2 ),
        .I3(instruction_12_sn_1),
        .I4(\cmp_status[0]_i_3_n_0 ),
        .I5(\instruction[8]_2 ),
        .O(\mem[1][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08AA0F08)) 
    \mem[1][3]_i_4 
       (.I0(\mem[1][14]_i_7_n_0 ),
        .I1(\mem[1][14]_i_8_n_0 ),
        .I2(\mem[1][14]_i_6_n_0 ),
        .I3(\mem_reg[1][3]_0 ),
        .I4(add_out_carry_i_9_n_0),
        .O(\mem[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    \mem[1][3]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[3]),
        .I2(\mem_reg[1][3]_3 ),
        .I3(add_out_carry_i_9_n_0),
        .I4(\mem_reg[1][3]_0 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][4]_i_1 
       (.I0(\mem_reg[1][4]_1 ),
        .I1(\mem[1][4]_i_3_n_0 ),
        .I2(\mem[1][4]_i_4_n_0 ),
        .I3(\mem[1][4]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][4]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_2 ),
        .I2(add_out_carry__0_i_12_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    \mem[1][4]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_3 ),
        .I2(\mem[1][14]_i_9_n_0 ),
        .I3(\mem_reg[1][3]_0 ),
        .O(\mem[1][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][4]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[4]),
        .I2(\mem_reg[1][4]_0 ),
        .I3(\instruction[8]_2 ),
        .I4(add_out_carry__0_i_12_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][5]_i_1 
       (.I0(\mem_reg[1][5]_1 ),
        .I1(\mem[1][5]_i_3_n_0 ),
        .I2(\mem[1][5]_i_4_n_0 ),
        .I3(\mem[1][5]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AFE3EFE)) 
    \mem[1][5]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(\instruction[8]_3 ),
        .I2(add_out_carry__0_i_11_n_0),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \mem[1][5]_i_4 
       (.I0(\mem[1][14]_i_9_n_0 ),
        .I1(\instruction[8]_2 ),
        .I2(\cmp_status[0]_i_3_n_0 ),
        .I3(\mem_reg[1][6]_0 ),
        .O(\mem[1][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \mem[1][5]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[5]),
        .I2(\mem_reg[1][5]_0 ),
        .I3(\instruction[8]_3 ),
        .I4(add_out_carry__0_i_11_n_0),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][6]_i_1 
       (.I0(\mem_reg[1][6]_2 ),
        .I1(\mem[1][6]_i_3_n_0 ),
        .I2(\mem[1][6]_i_4_n_0 ),
        .I3(\mem[1][6]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8BFBCBF)) 
    \mem[1][6]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .I2(\mem_reg[1][6]_0 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \mem[1][6]_i_4 
       (.I0(\mem_reg[1][7]_0 ),
        .I1(\cmp_status[0]_i_3_n_0 ),
        .I2(\instruction[8]_3 ),
        .I3(\mem[1][14]_i_9_n_0 ),
        .O(\mem[1][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \mem[1][6]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[6]),
        .I2(\mem_reg[1][6]_1 ),
        .I3(mux_2_to_1_1_c[6]),
        .I4(\mem_reg[1][6]_0 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][7]_i_1 
       (.I0(\mem_reg[1][7]_4 ),
        .I1(\mem[1][7]_i_3_n_0 ),
        .I2(\mem[1][7]_i_4_n_0 ),
        .I3(\mem[1][7]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8BFBCBF)) 
    \mem[1][7]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(mux_2_to_1_1_c[7]),
        .I2(\mem_reg[1][7]_0 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0DDD)) 
    \mem[1][7]_i_4 
       (.I0(\mem_reg[1][8]_0 ),
        .I1(\cmp_status[0]_i_3_n_0 ),
        .I2(\mem[1][14]_i_9_n_0 ),
        .I3(\mem_reg[1][6]_0 ),
        .O(\mem[1][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \mem[1][7]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[7]),
        .I2(\mem_reg[1][7]_3 ),
        .I3(mux_2_to_1_1_c[7]),
        .I4(\mem_reg[1][7]_0 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][8]_i_1 
       (.I0(\mem_reg[1][8]_2 ),
        .I1(\mem[1][8]_i_3_n_0 ),
        .I2(\mem[1][8]_i_4_n_0 ),
        .I3(\mem[1][8]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8BFBCBF)) 
    \mem[1][8]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(mux_2_to_1_1_c[8]),
        .I2(\mem_reg[1][8]_0 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0DDD)) 
    \mem[1][8]_i_4 
       (.I0(\mem_reg[1][9]_0 ),
        .I1(\cmp_status[0]_i_3_n_0 ),
        .I2(\mem[1][14]_i_9_n_0 ),
        .I3(\mem_reg[1][7]_0 ),
        .O(\mem[1][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \mem[1][8]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[8]),
        .I2(\mem_reg[1][8]_1 ),
        .I3(mux_2_to_1_1_c[8]),
        .I4(\mem_reg[1][8]_0 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \mem[1][9]_i_1 
       (.I0(\mem_reg[1][9]_2 ),
        .I1(\mem[1][9]_i_3_n_0 ),
        .I2(\mem[1][9]_i_4_n_0 ),
        .I3(\mem[1][9]_i_5_n_0 ),
        .I4(\mem[1][15]_i_8_n_0 ),
        .O(\mem[1][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8BFBCBF)) 
    \mem[1][9]_i_3 
       (.I0(\mem[1][14]_i_6_n_0 ),
        .I1(mux_2_to_1_1_c[9]),
        .I2(\mem_reg[1][9]_0 ),
        .I3(\mem[1][14]_i_7_n_0 ),
        .I4(\mem[1][14]_i_8_n_0 ),
        .O(\mem[1][9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    \mem[1][9]_i_4 
       (.I0(\cmp_status[0]_i_3_n_0 ),
        .I1(\instruction[8]_4 ),
        .I2(\mem[1][14]_i_9_n_0 ),
        .I3(\mem_reg[1][8]_0 ),
        .O(\mem[1][9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \mem[1][9]_i_5 
       (.I0(\mem[1][15]_i_7_n_0 ),
        .I1(data0[9]),
        .I2(\mem_reg[1][9]_1 ),
        .I3(mux_2_to_1_1_c[9]),
        .I4(\mem_reg[1][9]_0 ),
        .I5(\mem[1][15]_i_13_n_0 ),
        .O(\mem[1][9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F0F8)) 
    \mem[2][15]_i_1 
       (.I0(instruction[7]),
        .I1(\mem[1][15]_i_3_n_0 ),
        .I2(rst),
        .I3(instruction[6]),
        .I4(instruction[8]),
        .O(\mem[2][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F8F0)) 
    \mem[3][15]_i_1 
       (.I0(instruction[7]),
        .I1(\mem[1][15]_i_3_n_0 ),
        .I2(rst),
        .I3(instruction[6]),
        .I4(instruction[8]),
        .O(\mem[3][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \mem[4][15]_i_1 
       (.I0(rst),
        .I1(instruction[7]),
        .I2(instruction[8]),
        .I3(instruction[6]),
        .I4(\mem[1][15]_i_3_n_0 ),
        .O(\mem[4][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \mem[5][15]_i_1 
       (.I0(rst),
        .I1(instruction[6]),
        .I2(instruction[7]),
        .I3(instruction[8]),
        .I4(\mem[1][15]_i_3_n_0 ),
        .O(\mem[5][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F8F0F0)) 
    \mem[6][15]_i_1 
       (.I0(instruction[7]),
        .I1(\mem[1][15]_i_3_n_0 ),
        .I2(rst),
        .I3(instruction[6]),
        .I4(instruction[8]),
        .O(\mem[6][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F0F0F0)) 
    \mem[7][15]_i_1 
       (.I0(instruction[7]),
        .I1(\mem[1][15]_i_3_n_0 ),
        .I2(rst),
        .I3(instruction[6]),
        .I4(instruction[8]),
        .O(\mem[7][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[1] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][10] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[1] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][11] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[1] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][12] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[1] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][13] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[1] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][14] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[1] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][15] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[1] [15]),
        .R(rst));
  MUXF7 \mem_reg[1][15]_i_5 
       (.I0(\mem[1][15]_i_11_n_0 ),
        .I1(\mem[1][15]_i_12_n_0 ),
        .O(\mem_reg[1][15]_i_5_n_0 ),
        .S(\mem[1][15]_i_10_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[1] [1]),
        .R(rst));
  CARRY4 \mem_reg[1][1]_i_6 
       (.CI(\mem_reg[1][1]_i_8_n_0 ),
        .CO({\NLW_mem_reg[1][1]_i_6_CO_UNCONNECTED [3:2],\mem_reg[1][1]_i_6_n_2 ,\mem_reg[1][1]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_mem_reg[1][1]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\mem[1][1]_i_9_n_0 ,\mem[1][1]_i_10_n_0 }));
  CARRY4 \mem_reg[1][1]_i_8 
       (.CI(1'b0),
        .CO({\mem_reg[1][1]_i_8_n_0 ,\mem_reg[1][1]_i_8_n_1 ,\mem_reg[1][1]_i_8_n_2 ,\mem_reg[1][1]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_mem_reg[1][1]_i_8_O_UNCONNECTED [3:0]),
        .S({\mem[1][1]_i_11_n_0 ,\mem[1][1]_i_12_n_0 ,\mem[1][1]_i_13_n_0 ,\mem[1][1]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[1] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[1] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[1] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[1] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[1] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[1] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[1] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][9] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[1] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[2] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][10] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[2] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][11] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[2] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][12] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[2] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][13] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[2] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][14] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[2] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][15] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[2] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[2] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[2] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[2] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[2] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[2] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[2] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[2] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[2] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][9] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[2] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[3] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][10] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[3] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][11] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[3] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][12] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[3] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][13] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[3] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][14] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[3] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][15] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[3] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[3] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[3] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[3] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[3] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[3] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[3] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[3] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[3] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][9] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[3] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[4] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][10] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[4] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][11] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[4] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][12] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[4] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][13] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[4] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][14] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[4] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][15] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[4] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[4] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[4] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[4] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[4] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[4] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[4] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[4] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[4] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][9] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[4] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[5] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][10] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[5] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][11] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[5] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][12] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[5] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][13] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[5] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][14] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[5] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][15] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[5] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[5] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[5] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[5] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[5] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[5] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[5] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[5] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[5] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][9] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[5] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[6] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][10] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[6] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][11] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[6] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][12] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[6] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][13] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[6] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][14] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[6] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][15] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[6] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[6] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[6] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[6] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[6] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[6] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[6] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[6] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[6] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][9] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[6] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][0]_i_1_n_0 ),
        .Q(\mem_reg[7] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][10] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][10]_i_1_n_0 ),
        .Q(\mem_reg[7] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][11] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][11]_i_1_n_0 ),
        .Q(\mem_reg[7] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][12] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][12]_i_1_n_0 ),
        .Q(\mem_reg[7] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][13] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][13]_i_1_n_0 ),
        .Q(\mem_reg[7] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][14] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][14]_i_1_n_0 ),
        .Q(\mem_reg[7] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][15] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][15]_i_2_n_0 ),
        .Q(\mem_reg[7] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][1]_i_1_n_0 ),
        .Q(\mem_reg[7] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][2]_i_1_n_0 ),
        .Q(\mem_reg[7] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][3]_i_1_n_0 ),
        .Q(\mem_reg[7] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][4]_i_1_n_0 ),
        .Q(\mem_reg[7] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][5]_i_1_n_0 ),
        .Q(\mem_reg[7] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][6]_i_1_n_0 ),
        .Q(\mem_reg[7] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][7]_i_1_n_0 ),
        .Q(\mem_reg[7] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][8]_i_1_n_0 ),
        .Q(\mem_reg[7] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][9] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(\mem[1][9]_i_1_n_0 ),
        .Q(\mem_reg[7] [9]),
        .R(rst));
  MUXF7 \outvalue[0]_INST_0 
       (.I0(\outvalue[0]_INST_0_i_1_n_0 ),
        .I1(\outvalue[0]_INST_0_i_2_n_0 ),
        .O(outvalue[0]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [0]),
        .O(\outvalue[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[0]_INST_0_i_2 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [0]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [0]),
        .O(\outvalue[0]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[10]_INST_0 
       (.I0(\outvalue[10]_INST_0_i_1_n_0 ),
        .I1(\outvalue[10]_INST_0_i_2_n_0 ),
        .O(outvalue[10]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [10]),
        .O(\outvalue[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[10]_INST_0_i_2 
       (.I0(\mem_reg[7] [10]),
        .I1(\mem_reg[6] [10]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [10]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [10]),
        .O(\outvalue[10]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[11]_INST_0 
       (.I0(\outvalue[11]_INST_0_i_1_n_0 ),
        .I1(\outvalue[11]_INST_0_i_2_n_0 ),
        .O(outvalue[11]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [11]),
        .O(\outvalue[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[11]_INST_0_i_2 
       (.I0(\mem_reg[7] [11]),
        .I1(\mem_reg[6] [11]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [11]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [11]),
        .O(\outvalue[11]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[12]_INST_0 
       (.I0(\outvalue[12]_INST_0_i_1_n_0 ),
        .I1(\outvalue[12]_INST_0_i_2_n_0 ),
        .O(outvalue[12]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [12]),
        .O(\outvalue[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[12]_INST_0_i_2 
       (.I0(\mem_reg[7] [12]),
        .I1(\mem_reg[6] [12]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [12]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [12]),
        .O(\outvalue[12]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[13]_INST_0 
       (.I0(\outvalue[13]_INST_0_i_1_n_0 ),
        .I1(\outvalue[13]_INST_0_i_2_n_0 ),
        .O(outvalue[13]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [13]),
        .O(\outvalue[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[13]_INST_0_i_2 
       (.I0(\mem_reg[7] [13]),
        .I1(\mem_reg[6] [13]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [13]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [13]),
        .O(\outvalue[13]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[14]_INST_0 
       (.I0(\outvalue[14]_INST_0_i_1_n_0 ),
        .I1(\outvalue[14]_INST_0_i_2_n_0 ),
        .O(outvalue[14]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [14]),
        .O(\outvalue[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[14]_INST_0_i_2 
       (.I0(\mem_reg[7] [14]),
        .I1(\mem_reg[6] [14]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [14]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [14]),
        .O(\outvalue[14]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[15]_INST_0 
       (.I0(\outvalue[15]_INST_0_i_1_n_0 ),
        .I1(\outvalue[15]_INST_0_i_2_n_0 ),
        .O(outvalue[15]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [15]),
        .O(\outvalue[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[15]_INST_0_i_2 
       (.I0(\mem_reg[7] [15]),
        .I1(\mem_reg[6] [15]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [15]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [15]),
        .O(\outvalue[15]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[1]_INST_0 
       (.I0(\outvalue[1]_INST_0_i_1_n_0 ),
        .I1(\outvalue[1]_INST_0_i_2_n_0 ),
        .O(outvalue[1]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [1]),
        .O(\outvalue[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[1]_INST_0_i_2 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [1]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [1]),
        .O(\outvalue[1]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[2]_INST_0 
       (.I0(\outvalue[2]_INST_0_i_1_n_0 ),
        .I1(\outvalue[2]_INST_0_i_2_n_0 ),
        .O(outvalue[2]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [2]),
        .O(\outvalue[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[2]_INST_0_i_2 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [2]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [2]),
        .O(\outvalue[2]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[3]_INST_0 
       (.I0(\outvalue[3]_INST_0_i_1_n_0 ),
        .I1(\outvalue[3]_INST_0_i_2_n_0 ),
        .O(outvalue[3]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [3]),
        .O(\outvalue[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[3]_INST_0_i_2 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [3]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [3]),
        .O(\outvalue[3]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[4]_INST_0 
       (.I0(\outvalue[4]_INST_0_i_1_n_0 ),
        .I1(\outvalue[4]_INST_0_i_2_n_0 ),
        .O(outvalue[4]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [4]),
        .O(\outvalue[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[4]_INST_0_i_2 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [4]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [4]),
        .O(\outvalue[4]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[5]_INST_0 
       (.I0(\outvalue[5]_INST_0_i_1_n_0 ),
        .I1(\outvalue[5]_INST_0_i_2_n_0 ),
        .O(outvalue[5]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [5]),
        .O(\outvalue[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[5]_INST_0_i_2 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [5]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [5]),
        .O(\outvalue[5]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[6]_INST_0 
       (.I0(\outvalue[6]_INST_0_i_1_n_0 ),
        .I1(\outvalue[6]_INST_0_i_2_n_0 ),
        .O(outvalue[6]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [6]),
        .O(\outvalue[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[6]_INST_0_i_2 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [6]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [6]),
        .O(\outvalue[6]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[7]_INST_0 
       (.I0(\outvalue[7]_INST_0_i_1_n_0 ),
        .I1(\outvalue[7]_INST_0_i_2_n_0 ),
        .O(outvalue[7]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [7]),
        .O(\outvalue[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[7]_INST_0_i_2 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [7]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [7]),
        .O(\outvalue[7]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[8]_INST_0 
       (.I0(\outvalue[8]_INST_0_i_1_n_0 ),
        .I1(\outvalue[8]_INST_0_i_2_n_0 ),
        .O(outvalue[8]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [8]),
        .O(\outvalue[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[8]_INST_0_i_2 
       (.I0(\mem_reg[7] [8]),
        .I1(\mem_reg[6] [8]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [8]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [8]),
        .O(\outvalue[8]_INST_0_i_2_n_0 ));
  MUXF7 \outvalue[9]_INST_0 
       (.I0(\outvalue[9]_INST_0_i_1_n_0 ),
        .I1(\outvalue[9]_INST_0_i_2_n_0 ),
        .O(outvalue[9]),
        .S(inr[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \outvalue[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(inr[1]),
        .I3(inr[0]),
        .I4(\mem_reg[1] [9]),
        .O(\outvalue[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[9]_INST_0_i_2 
       (.I0(\mem_reg[7] [9]),
        .I1(\mem_reg[6] [9]),
        .I2(inr[1]),
        .I3(\mem_reg[5] [9]),
        .I4(inr[0]),
        .I5(\mem_reg[4] [9]),
        .O(\outvalue[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[0]_INST_0 
       (.I0(\instruction[8]_0 ),
        .O(regA[0]));
  MUXF7 \regA[0]_INST_0_i_1 
       (.I0(\regA[0]_INST_0_i_2_n_0 ),
        .I1(\regA[0]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_0 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[0]_INST_0_i_2 
       (.I0(\mem_reg[4] [0]),
        .I1(\mem_reg[5] [0]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [0]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [0]),
        .O(\regA[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[0]_INST_0_i_3 
       (.I0(\mem_reg[1] [0]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [0]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [0]),
        .O(\regA[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[10]_INST_0 
       (.I0(\instruction[8]_4 ),
        .O(regA[5]));
  MUXF7 \regA[10]_INST_0_i_1 
       (.I0(\regA[10]_INST_0_i_2_n_0 ),
        .I1(\regA[10]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_4 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[10]_INST_0_i_2 
       (.I0(\mem_reg[4] [10]),
        .I1(\mem_reg[5] [10]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [10]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [10]),
        .O(\regA[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[10]_INST_0_i_3 
       (.I0(\mem_reg[1] [10]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [10]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [10]),
        .O(\regA[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[11]_INST_0 
       (.I0(\instruction[8]_5 ),
        .O(regA[6]));
  MUXF7 \regA[11]_INST_0_i_1 
       (.I0(\regA[11]_INST_0_i_2_n_0 ),
        .I1(\regA[11]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_5 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[11]_INST_0_i_2 
       (.I0(\mem_reg[4] [11]),
        .I1(\mem_reg[5] [11]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [11]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [11]),
        .O(\regA[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[11]_INST_0_i_3 
       (.I0(\mem_reg[1] [11]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [11]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [11]),
        .O(\regA[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[12]_INST_0 
       (.I0(\instruction[8]_6 ),
        .O(regA[7]));
  MUXF7 \regA[12]_INST_0_i_1 
       (.I0(\regA[12]_INST_0_i_2_n_0 ),
        .I1(\regA[12]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_6 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[12]_INST_0_i_2 
       (.I0(\mem_reg[4] [12]),
        .I1(\mem_reg[5] [12]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [12]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [12]),
        .O(\regA[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[12]_INST_0_i_3 
       (.I0(\mem_reg[1] [12]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [12]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [12]),
        .O(\regA[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[13]_INST_0 
       (.I0(\instruction[8]_7 ),
        .O(regA[8]));
  MUXF7 \regA[13]_INST_0_i_1 
       (.I0(\regA[13]_INST_0_i_2_n_0 ),
        .I1(\regA[13]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_7 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[13]_INST_0_i_2 
       (.I0(\mem_reg[4] [13]),
        .I1(\mem_reg[5] [13]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [13]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [13]),
        .O(\regA[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[13]_INST_0_i_3 
       (.I0(\mem_reg[1] [13]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [13]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [13]),
        .O(\regA[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[14]_INST_0 
       (.I0(\instruction[8]_8 ),
        .O(regA[9]));
  MUXF7 \regA[14]_INST_0_i_1 
       (.I0(\regA[14]_INST_0_i_2_n_0 ),
        .I1(\regA[14]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_8 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[14]_INST_0_i_2 
       (.I0(\mem_reg[4] [14]),
        .I1(\mem_reg[5] [14]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [14]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [14]),
        .O(\regA[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[14]_INST_0_i_3 
       (.I0(\mem_reg[1] [14]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [14]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [14]),
        .O(\regA[14]_INST_0_i_3_n_0 ));
  MUXF7 \regA[15]_INST_0 
       (.I0(\regA[15]_INST_0_i_2_n_0 ),
        .I1(\regA[15]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_9 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5C1C4C1C5FDF7FDF)) 
    \regA[15]_INST_0_i_1 
       (.I0(instruction[8]),
        .I1(instruction[13]),
        .I2(instruction[15]),
        .I3(instruction[14]),
        .I4(instruction[12]),
        .I5(instruction[5]),
        .O(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[15]_INST_0_i_2 
       (.I0(\mem_reg[4] [15]),
        .I1(\mem_reg[5] [15]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [15]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [15]),
        .O(\regA[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[15]_INST_0_i_3 
       (.I0(\mem_reg[1] [15]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [15]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [15]),
        .O(\regA[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h37371151F7F7DD5D)) 
    \regA[15]_INST_0_i_4 
       (.I0(instruction[4]),
        .I1(instruction[15]),
        .I2(instruction[14]),
        .I3(instruction[12]),
        .I4(instruction[13]),
        .I5(instruction[7]),
        .O(\regA[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h37371151F7F7DD5D)) 
    \regA[15]_INST_0_i_5 
       (.I0(instruction[3]),
        .I1(instruction[15]),
        .I2(instruction[14]),
        .I3(instruction[12]),
        .I4(instruction[13]),
        .I5(instruction[6]),
        .O(\regA[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[1]_INST_0 
       (.I0(instruction_8_sn_1),
        .O(regA[1]));
  MUXF7 \regA[1]_INST_0_i_1 
       (.I0(\regA[1]_INST_0_i_2_n_0 ),
        .I1(\regA[1]_INST_0_i_3_n_0 ),
        .O(instruction_8_sn_1),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[1]_INST_0_i_2 
       (.I0(\mem_reg[4] [1]),
        .I1(\mem_reg[5] [1]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [1]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [1]),
        .O(\regA[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[1]_INST_0_i_3 
       (.I0(\mem_reg[1] [1]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [1]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [1]),
        .O(\regA[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[2]_INST_0 
       (.I0(\instruction[8]_1 ),
        .O(regA[2]));
  MUXF7 \regA[2]_INST_0_i_1 
       (.I0(\regA[2]_INST_0_i_2_n_0 ),
        .I1(\regA[2]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_1 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[2]_INST_0_i_2 
       (.I0(\mem_reg[4] [2]),
        .I1(\mem_reg[5] [2]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [2]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [2]),
        .O(\regA[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[2]_INST_0_i_3 
       (.I0(\mem_reg[1] [2]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [2]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [2]),
        .O(\regA[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regA[3]_INST_0 
       (.I0(\regA[3]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[3]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][3]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[3]_INST_0_i_1 
       (.I0(\mem_reg[1] [3]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [3]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [3]),
        .O(\regA[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[3]_INST_0_i_2 
       (.I0(\mem_reg[4] [3]),
        .I1(\mem_reg[5] [3]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [3]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [3]),
        .O(\regA[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[4]_INST_0 
       (.I0(\instruction[8]_2 ),
        .O(regA[3]));
  MUXF7 \regA[4]_INST_0_i_1 
       (.I0(\regA[4]_INST_0_i_2_n_0 ),
        .I1(\regA[4]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_2 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[4]_INST_0_i_2 
       (.I0(\mem_reg[4] [4]),
        .I1(\mem_reg[5] [4]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [4]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [4]),
        .O(\regA[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[4]_INST_0_i_3 
       (.I0(\mem_reg[1] [4]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [4]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [4]),
        .O(\regA[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \regA[5]_INST_0 
       (.I0(\instruction[8]_3 ),
        .O(regA[4]));
  MUXF7 \regA[5]_INST_0_i_1 
       (.I0(\regA[5]_INST_0_i_2_n_0 ),
        .I1(\regA[5]_INST_0_i_3_n_0 ),
        .O(\instruction[8]_3 ),
        .S(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regA[5]_INST_0_i_2 
       (.I0(\mem_reg[4] [5]),
        .I1(\mem_reg[5] [5]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [5]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [5]),
        .O(\regA[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regA[5]_INST_0_i_3 
       (.I0(\mem_reg[1] [5]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [5]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [5]),
        .O(\regA[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regA[6]_INST_0 
       (.I0(\regA[6]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[6]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][6]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[6]_INST_0_i_1 
       (.I0(\mem_reg[1] [6]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [6]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [6]),
        .O(\regA[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[6]_INST_0_i_2 
       (.I0(\mem_reg[4] [6]),
        .I1(\mem_reg[5] [6]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [6]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [6]),
        .O(\regA[6]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \regA[7]_INST_0 
       (.I0(\regA[7]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[7]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][7]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[7]_INST_0_i_1 
       (.I0(\mem_reg[1] [7]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [7]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [7]),
        .O(\regA[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[7]_INST_0_i_2 
       (.I0(\mem_reg[4] [7]),
        .I1(\mem_reg[5] [7]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [7]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [7]),
        .O(\regA[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regA[8]_INST_0 
       (.I0(\regA[8]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[8]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][8]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[8]_INST_0_i_1 
       (.I0(\mem_reg[1] [8]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [8]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [8]),
        .O(\regA[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[8]_INST_0_i_2 
       (.I0(\mem_reg[4] [8]),
        .I1(\mem_reg[5] [8]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [8]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [8]),
        .O(\regA[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regA[9]_INST_0 
       (.I0(\regA[9]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[9]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][9]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regA[9]_INST_0_i_1 
       (.I0(\mem_reg[1] [9]),
        .I1(\regA[15]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [9]),
        .I3(\regA[15]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [9]),
        .O(\regA[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[9]_INST_0_i_2 
       (.I0(\mem_reg[4] [9]),
        .I1(\mem_reg[5] [9]),
        .I2(\regA[15]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [9]),
        .I4(\regA[15]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [9]),
        .O(\regA[9]_INST_0_i_2_n_0 ));
  MUXF7 \regB[0]_INST_0 
       (.I0(\regB[0]_INST_0_i_1_n_0 ),
        .I1(\regB[0]_INST_0_i_2_n_0 ),
        .O(regB[0]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[0]_INST_0_i_1 
       (.I0(\mem_reg[1] [0]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [0]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [0]),
        .O(\regB[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[0]_INST_0_i_2 
       (.I0(\mem_reg[4] [0]),
        .I1(\mem_reg[5] [0]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [0]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [0]),
        .O(\regB[0]_INST_0_i_2_n_0 ));
  MUXF7 \regB[10]_INST_0 
       (.I0(\regB[10]_INST_0_i_1_n_0 ),
        .I1(\regB[10]_INST_0_i_2_n_0 ),
        .O(regB[10]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[10]_INST_0_i_1 
       (.I0(\mem_reg[1] [10]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [10]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [10]),
        .O(\regB[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[10]_INST_0_i_2 
       (.I0(\mem_reg[4] [10]),
        .I1(\mem_reg[5] [10]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [10]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [10]),
        .O(\regB[10]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[11]_INST_0 
       (.I0(\regB[11]_INST_0_i_1_n_0 ),
        .O(regB[11]));
  MUXF7 \regB[11]_INST_0_i_1 
       (.I0(\regB[11]_INST_0_i_2_n_0 ),
        .I1(\regB[11]_INST_0_i_3_n_0 ),
        .O(\regB[11]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[11]_INST_0_i_2 
       (.I0(\mem_reg[1] [11]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [11]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [11]),
        .O(\regB[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[11]_INST_0_i_3 
       (.I0(\mem_reg[4] [11]),
        .I1(\mem_reg[5] [11]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [11]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [11]),
        .O(\regB[11]_INST_0_i_3_n_0 ));
  MUXF7 \regB[12]_INST_0 
       (.I0(\regB[12]_INST_0_i_1_n_0 ),
        .I1(\regB[12]_INST_0_i_2_n_0 ),
        .O(regB[12]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[12]_INST_0_i_1 
       (.I0(\mem_reg[1] [12]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [12]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [12]),
        .O(\regB[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[12]_INST_0_i_2 
       (.I0(\mem_reg[4] [12]),
        .I1(\mem_reg[5] [12]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [12]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [12]),
        .O(\regB[12]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[13]_INST_0 
       (.I0(\regB[13]_INST_0_i_1_n_0 ),
        .O(regB[13]));
  MUXF7 \regB[13]_INST_0_i_1 
       (.I0(\regB[13]_INST_0_i_2_n_0 ),
        .I1(\regB[13]_INST_0_i_3_n_0 ),
        .O(\regB[13]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[13]_INST_0_i_2 
       (.I0(\mem_reg[1] [13]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [13]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [13]),
        .O(\regB[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[13]_INST_0_i_3 
       (.I0(\mem_reg[4] [13]),
        .I1(\mem_reg[5] [13]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [13]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [13]),
        .O(\regB[13]_INST_0_i_3_n_0 ));
  MUXF7 \regB[14]_INST_0 
       (.I0(\regB[14]_INST_0_i_2_n_0 ),
        .I1(\regB[14]_INST_0_i_3_n_0 ),
        .O(regB[14]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \regB[14]_INST_0_i_1 
       (.I0(instruction[5]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[2]),
        .O(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[14]_INST_0_i_2 
       (.I0(\mem_reg[1] [14]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [14]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [14]),
        .O(\regB[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[14]_INST_0_i_3 
       (.I0(\mem_reg[4] [14]),
        .I1(\mem_reg[5] [14]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [14]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [14]),
        .O(\regB[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \regB[14]_INST_0_i_4 
       (.I0(instruction[4]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[1]),
        .O(\regB[14]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \regB[14]_INST_0_i_5 
       (.I0(instruction[3]),
        .I1(instruction[12]),
        .I2(instruction[14]),
        .I3(instruction[0]),
        .O(\regB[14]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[15]_INST_0 
       (.I0(\regB[15]_INST_0_i_1_n_0 ),
        .O(regB[15]));
  MUXF7 \regB[15]_INST_0_i_1 
       (.I0(\regB[15]_INST_0_i_2_n_0 ),
        .I1(\regB[15]_INST_0_i_3_n_0 ),
        .O(\regB[15]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF503F5F3)) 
    \regB[15]_INST_0_i_2 
       (.I0(\mem_reg[2] [15]),
        .I1(\mem_reg[3] [15]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[1] [15]),
        .O(\regB[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \regB[15]_INST_0_i_3 
       (.I0(\mem_reg[6] [15]),
        .I1(\mem_reg[7] [15]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[4] [15]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[5] [15]),
        .O(\regB[15]_INST_0_i_3_n_0 ));
  MUXF7 \regB[1]_INST_0 
       (.I0(\regB[1]_INST_0_i_1_n_0 ),
        .I1(\regB[1]_INST_0_i_2_n_0 ),
        .O(regB[1]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[1]_INST_0_i_1 
       (.I0(\mem_reg[1] [1]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [1]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [1]),
        .O(\regB[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[1]_INST_0_i_2 
       (.I0(\mem_reg[4] [1]),
        .I1(\mem_reg[5] [1]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [1]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [1]),
        .O(\regB[1]_INST_0_i_2_n_0 ));
  MUXF7 \regB[2]_INST_0 
       (.I0(\regB[2]_INST_0_i_1_n_0 ),
        .I1(\regB[2]_INST_0_i_2_n_0 ),
        .O(regB[2]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[2]_INST_0_i_1 
       (.I0(\mem_reg[1] [2]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [2]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [2]),
        .O(\regB[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[2]_INST_0_i_2 
       (.I0(\mem_reg[4] [2]),
        .I1(\mem_reg[5] [2]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [2]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [2]),
        .O(\regB[2]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[3]_INST_0 
       (.I0(\regB[3]_INST_0_i_1_n_0 ),
        .O(regB[3]));
  MUXF7 \regB[3]_INST_0_i_1 
       (.I0(\regB[3]_INST_0_i_2_n_0 ),
        .I1(\regB[3]_INST_0_i_3_n_0 ),
        .O(\regB[3]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[3]_INST_0_i_2 
       (.I0(\mem_reg[1] [3]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [3]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [3]),
        .O(\regB[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[3]_INST_0_i_3 
       (.I0(\mem_reg[4] [3]),
        .I1(\mem_reg[5] [3]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [3]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [3]),
        .O(\regB[3]_INST_0_i_3_n_0 ));
  MUXF7 \regB[4]_INST_0 
       (.I0(\regB[4]_INST_0_i_1_n_0 ),
        .I1(\regB[4]_INST_0_i_2_n_0 ),
        .O(regB[4]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[4]_INST_0_i_1 
       (.I0(\mem_reg[1] [4]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [4]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [4]),
        .O(\regB[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[4]_INST_0_i_2 
       (.I0(\mem_reg[4] [4]),
        .I1(\mem_reg[5] [4]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [4]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [4]),
        .O(\regB[4]_INST_0_i_2_n_0 ));
  MUXF7 \regB[5]_INST_0 
       (.I0(\regB[5]_INST_0_i_1_n_0 ),
        .I1(\regB[5]_INST_0_i_2_n_0 ),
        .O(regB[5]),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \regB[5]_INST_0_i_1 
       (.I0(\mem_reg[1] [5]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [5]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [5]),
        .O(\regB[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[5]_INST_0_i_2 
       (.I0(\mem_reg[4] [5]),
        .I1(\mem_reg[5] [5]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [5]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [5]),
        .O(\regB[5]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[6]_INST_0 
       (.I0(\regB[6]_INST_0_i_1_n_0 ),
        .O(regB[6]));
  MUXF7 \regB[6]_INST_0_i_1 
       (.I0(\regB[6]_INST_0_i_2_n_0 ),
        .I1(\regB[6]_INST_0_i_3_n_0 ),
        .O(\regB[6]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[6]_INST_0_i_2 
       (.I0(\mem_reg[1] [6]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [6]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [6]),
        .O(\regB[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[6]_INST_0_i_3 
       (.I0(\mem_reg[4] [6]),
        .I1(\mem_reg[5] [6]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [6]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [6]),
        .O(\regB[6]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[7]_INST_0 
       (.I0(\regB[7]_INST_0_i_1_n_0 ),
        .O(regB[7]));
  MUXF7 \regB[7]_INST_0_i_1 
       (.I0(\regB[7]_INST_0_i_2_n_0 ),
        .I1(\regB[7]_INST_0_i_3_n_0 ),
        .O(\regB[7]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[7]_INST_0_i_2 
       (.I0(\mem_reg[1] [7]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [7]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [7]),
        .O(\regB[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[7]_INST_0_i_3 
       (.I0(\mem_reg[4] [7]),
        .I1(\mem_reg[5] [7]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [7]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [7]),
        .O(\regB[7]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[8]_INST_0 
       (.I0(\regB[8]_INST_0_i_1_n_0 ),
        .O(regB[8]));
  MUXF7 \regB[8]_INST_0_i_1 
       (.I0(\regB[8]_INST_0_i_2_n_0 ),
        .I1(\regB[8]_INST_0_i_3_n_0 ),
        .O(\regB[8]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[8]_INST_0_i_2 
       (.I0(\mem_reg[1] [8]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [8]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [8]),
        .O(\regB[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[8]_INST_0_i_3 
       (.I0(\mem_reg[4] [8]),
        .I1(\mem_reg[5] [8]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [8]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [8]),
        .O(\regB[8]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \regB[9]_INST_0 
       (.I0(\regB[9]_INST_0_i_1_n_0 ),
        .O(regB[9]));
  MUXF7 \regB[9]_INST_0_i_1 
       (.I0(\regB[9]_INST_0_i_2_n_0 ),
        .I1(\regB[9]_INST_0_i_3_n_0 ),
        .O(\regB[9]_INST_0_i_1_n_0 ),
        .S(\regB[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \regB[9]_INST_0_i_2 
       (.I0(\mem_reg[1] [9]),
        .I1(\regB[14]_INST_0_i_4_n_0 ),
        .I2(\mem_reg[2] [9]),
        .I3(\regB[14]_INST_0_i_5_n_0 ),
        .I4(\mem_reg[3] [9]),
        .O(\regB[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \regB[9]_INST_0_i_3 
       (.I0(\mem_reg[4] [9]),
        .I1(\mem_reg[5] [9]),
        .I2(\regB[14]_INST_0_i_4_n_0 ),
        .I3(\mem_reg[6] [9]),
        .I4(\regB[14]_INST_0_i_5_n_0 ),
        .I5(\mem_reg[7] [9]),
        .O(\regB[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \sp_reg[0]_i_1 
       (.I0(\sp_reg_reg[0] ),
        .I1(\instruction[8]_0 ),
        .I2(\sp_reg_reg[0]_0 ),
        .I3(stack_ptr),
        .O(D));
  LUT3 #(
    .INIT(8'hB8)) 
    sub_out_carry__0_i_1
       (.I0(\regA[7]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[7]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][7]_2 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    sub_out_carry__0_i_2
       (.I0(\regA[6]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[6]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][7]_2 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__0_i_3
       (.I0(\instruction[8]_3 ),
        .O(\mem_reg[1][7]_2 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__0_i_4
       (.I0(\instruction[8]_2 ),
        .O(\mem_reg[1][7]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_5
       (.I0(\mem_reg[1][7]_0 ),
        .I1(mux_2_to_1_1_c[7]),
        .O(\instruction[12]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_6
       (.I0(\mem_reg[1][6]_0 ),
        .I1(mux_2_to_1_1_c[6]),
        .O(\instruction[12]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_7
       (.I0(\instruction[8]_3 ),
        .I1(add_out_carry__0_i_11_n_0),
        .O(\instruction[12]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__0_i_8
       (.I0(\instruction[8]_2 ),
        .I1(add_out_carry__0_i_12_n_0),
        .O(\instruction[12]_3 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__1_i_1
       (.I0(\instruction[8]_5 ),
        .O(\regA[11]_INST_0_i_1_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__1_i_2
       (.I0(\instruction[8]_4 ),
        .O(\regA[11]_INST_0_i_1_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    sub_out_carry__1_i_3
       (.I0(\regA[9]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[9]_INST_0_i_2_n_0 ),
        .O(\regA[11]_INST_0_i_1_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    sub_out_carry__1_i_4
       (.I0(\regA[8]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[8]_INST_0_i_2_n_0 ),
        .O(\regA[11]_INST_0_i_1_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_5
       (.I0(\instruction[8]_5 ),
        .I1(add_out_carry__1_i_9_n_0),
        .O(\instruction[1]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_6
       (.I0(\instruction[8]_4 ),
        .I1(add_out_carry__1_i_10_n_0),
        .O(\instruction[1]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_7
       (.I0(\mem_reg[1][9]_0 ),
        .I1(mux_2_to_1_1_c[9]),
        .O(\instruction[1]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__1_i_8
       (.I0(\mem_reg[1][8]_0 ),
        .I1(mux_2_to_1_1_c[8]),
        .O(\instruction[1]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__2_i_1
       (.I0(\instruction[8]_8 ),
        .O(\regA[14]_INST_0_i_1_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__2_i_2
       (.I0(\instruction[8]_7 ),
        .O(\regA[14]_INST_0_i_1_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry__2_i_3
       (.I0(\instruction[8]_6 ),
        .O(\regA[14]_INST_0_i_1_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sub_out_carry__2_i_4
       (.I0(\instruction[8]_9 ),
        .I1(add_out_carry__2_i_8_n_0),
        .O(\instruction[5] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_5
       (.I0(\instruction[8]_8 ),
        .I1(add_out_carry__2_i_9_n_0),
        .O(\instruction[5] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_6
       (.I0(\instruction[8]_7 ),
        .I1(add_out_carry__2_i_10_n_0),
        .O(\instruction[5] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry__2_i_7
       (.I0(\instruction[8]_6 ),
        .I1(add_out_carry__2_i_11_n_0),
        .O(\instruction[5] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sub_out_carry_i_1
       (.I0(\regA[3]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_1_n_0 ),
        .I2(\regA[3]_INST_0_i_2_n_0 ),
        .O(\mem_reg[1][3]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry_i_2
       (.I0(\instruction[8]_1 ),
        .O(\mem_reg[1][3]_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry_i_3
       (.I0(instruction_8_sn_1),
        .O(\mem_reg[1][3]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_out_carry_i_4
       (.I0(\instruction[8]_0 ),
        .O(\mem_reg[1][3]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sub_out_carry_i_5
       (.I0(\mem_reg[1][3]_0 ),
        .I1(add_out_carry_i_9_n_0),
        .O(\instruction[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_6
       (.I0(\instruction[8]_1 ),
        .I1(add_out_carry_i_10_n_0),
        .O(\instruction[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_out_carry_i_7
       (.I0(instruction_8_sn_1),
        .I1(add_out_carry_i_11_n_0),
        .O(\instruction[15] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sub_out_carry_i_8
       (.I0(\instruction[8]_0 ),
        .I1(mux_2_to_1_1_c[0]),
        .O(\instruction[15] [0]));
endmodule

(* ORIG_REF_NAME = "shell_cpu_top" *) 
module design_1_shell_cpu_top_0_0_shell_cpu_top
   (\pc_reg[0] ,
    ins_addr,
    stack_ptr,
    \mem_reg[1][3] ,
    \mem_reg[1][6] ,
    \mem_reg[1][7] ,
    \mem_reg[1][8] ,
    \mem_reg[1][9] ,
    instruction_8_sp_1,
    instruction_15_sp_1,
    regB,
    regA,
    outvalue,
    clk,
    rst,
    instruction,
    from_stack,
    data_mem,
    inr);
  output \pc_reg[0] ;
  output [14:0]ins_addr;
  output [15:0]stack_ptr;
  output \mem_reg[1][3] ;
  output \mem_reg[1][6] ;
  output \mem_reg[1][7] ;
  output \mem_reg[1][8] ;
  output \mem_reg[1][9] ;
  output instruction_8_sp_1;
  output instruction_15_sp_1;
  output [15:0]regB;
  output [9:0]regA;
  output [15:0]outvalue;
  input clk;
  input rst;
  input [15:0]instruction;
  input [15:0]from_stack;
  input [15:0]data_mem;
  input [2:0]inr;

  wire ALU_inst_n_21;
  wire ALU_inst_n_23;
  wire ALU_inst_n_24;
  wire ALU_inst_n_25;
  wire ALU_inst_n_26;
  wire ALU_inst_n_27;
  wire ALU_inst_n_28;
  wire ALU_inst_n_29;
  wire ALU_inst_n_30;
  wire ALU_inst_n_31;
  wire ALU_inst_n_32;
  wire ALU_inst_n_33;
  wire ALU_inst_n_34;
  wire ALU_inst_n_35;
  wire ALU_inst_n_36;
  wire PC_n_16;
  wire PC_n_17;
  wire PC_n_18;
  wire PC_n_19;
  wire PC_n_20;
  wire PC_n_21;
  wire PC_n_22;
  wire PC_n_23;
  wire PC_n_24;
  wire PC_n_25;
  wire PC_n_26;
  wire PC_n_27;
  wire PC_n_28;
  wire PC_n_29;
  wire PC_n_30;
  wire PC_n_31;
  wire PC_n_32;
  wire PC_n_33;
  wire PC_n_34;
  wire PC_n_35;
  wire PC_n_36;
  wire PC_n_37;
  wire PC_n_38;
  wire PC_n_39;
  wire PC_n_40;
  wire PC_n_41;
  wire PC_n_42;
  wire PC_n_43;
  wire PC_n_44;
  wire PC_n_45;
  wire PC_n_46;
  wire PC_n_47;
  wire PC_n_48;
  wire [15:0]b;
  wire clk;
  wire cmp_out_reg0;
  wire cmp_status_reg_inst_n_0;
  wire cmp_status_reg_inst_n_1;
  wire [15:0]data0;
  wire [15:0]data1;
  wire [15:0]data_mem;
  wire [15:0]from_stack;
  wire [2:0]inr;
  wire [14:0]ins_addr;
  wire [15:0]instruction;
  wire instruction_15_sn_1;
  wire instruction_8_sn_1;
  wire \mem_reg[1][3] ;
  wire \mem_reg[1][6] ;
  wire \mem_reg[1][7] ;
  wire \mem_reg[1][8] ;
  wire \mem_reg[1][9] ;
  wire [15:1]next_ins_addr;
  wire [15:0]outvalue;
  wire \pc_reg[0] ;
  wire [9:0]regA;
  wire [15:0]regB;
  wire reg_file_inst_n_0;
  wire reg_file_inst_n_1;
  wire reg_file_inst_n_10;
  wire reg_file_inst_n_100;
  wire reg_file_inst_n_101;
  wire reg_file_inst_n_102;
  wire reg_file_inst_n_103;
  wire reg_file_inst_n_104;
  wire reg_file_inst_n_105;
  wire reg_file_inst_n_106;
  wire reg_file_inst_n_107;
  wire reg_file_inst_n_108;
  wire reg_file_inst_n_109;
  wire reg_file_inst_n_110;
  wire reg_file_inst_n_111;
  wire reg_file_inst_n_112;
  wire reg_file_inst_n_113;
  wire reg_file_inst_n_114;
  wire reg_file_inst_n_115;
  wire reg_file_inst_n_116;
  wire reg_file_inst_n_117;
  wire reg_file_inst_n_118;
  wire reg_file_inst_n_119;
  wire reg_file_inst_n_120;
  wire reg_file_inst_n_121;
  wire reg_file_inst_n_122;
  wire reg_file_inst_n_123;
  wire reg_file_inst_n_124;
  wire reg_file_inst_n_125;
  wire reg_file_inst_n_126;
  wire reg_file_inst_n_127;
  wire reg_file_inst_n_128;
  wire reg_file_inst_n_129;
  wire reg_file_inst_n_130;
  wire reg_file_inst_n_131;
  wire reg_file_inst_n_132;
  wire reg_file_inst_n_133;
  wire reg_file_inst_n_134;
  wire reg_file_inst_n_135;
  wire reg_file_inst_n_136;
  wire reg_file_inst_n_137;
  wire reg_file_inst_n_138;
  wire reg_file_inst_n_139;
  wire reg_file_inst_n_140;
  wire reg_file_inst_n_141;
  wire reg_file_inst_n_142;
  wire reg_file_inst_n_143;
  wire reg_file_inst_n_144;
  wire reg_file_inst_n_145;
  wire reg_file_inst_n_146;
  wire reg_file_inst_n_147;
  wire reg_file_inst_n_148;
  wire reg_file_inst_n_149;
  wire reg_file_inst_n_15;
  wire reg_file_inst_n_150;
  wire reg_file_inst_n_151;
  wire reg_file_inst_n_152;
  wire reg_file_inst_n_153;
  wire reg_file_inst_n_154;
  wire reg_file_inst_n_155;
  wire reg_file_inst_n_156;
  wire reg_file_inst_n_157;
  wire reg_file_inst_n_16;
  wire reg_file_inst_n_17;
  wire reg_file_inst_n_18;
  wire reg_file_inst_n_19;
  wire reg_file_inst_n_2;
  wire reg_file_inst_n_3;
  wire reg_file_inst_n_37;
  wire reg_file_inst_n_38;
  wire reg_file_inst_n_39;
  wire reg_file_inst_n_4;
  wire reg_file_inst_n_40;
  wire reg_file_inst_n_41;
  wire reg_file_inst_n_42;
  wire reg_file_inst_n_43;
  wire reg_file_inst_n_44;
  wire reg_file_inst_n_45;
  wire reg_file_inst_n_46;
  wire reg_file_inst_n_47;
  wire reg_file_inst_n_48;
  wire reg_file_inst_n_49;
  wire reg_file_inst_n_5;
  wire reg_file_inst_n_50;
  wire reg_file_inst_n_51;
  wire reg_file_inst_n_52;
  wire reg_file_inst_n_6;
  wire reg_file_inst_n_63;
  wire reg_file_inst_n_8;
  wire reg_file_inst_n_80;
  wire reg_file_inst_n_81;
  wire reg_file_inst_n_82;
  wire reg_file_inst_n_83;
  wire reg_file_inst_n_84;
  wire reg_file_inst_n_85;
  wire reg_file_inst_n_86;
  wire reg_file_inst_n_87;
  wire reg_file_inst_n_88;
  wire reg_file_inst_n_89;
  wire reg_file_inst_n_9;
  wire reg_file_inst_n_90;
  wire reg_file_inst_n_91;
  wire reg_file_inst_n_92;
  wire reg_file_inst_n_93;
  wire reg_file_inst_n_94;
  wire reg_file_inst_n_95;
  wire reg_file_inst_n_96;
  wire reg_file_inst_n_97;
  wire reg_file_inst_n_98;
  wire reg_file_inst_n_99;
  wire rst;
  wire [15:0]stack_ptr;
  wire stack_ptr_reg_inst_n_16;
  wire stack_ptr_reg_inst_n_17;

  assign instruction_15_sp_1 = instruction_15_sn_1;
  assign instruction_8_sp_1 = instruction_8_sn_1;
  design_1_shell_cpu_top_0_0_ALU ALU_inst
       (.CO(ALU_inst_n_21),
        .DI({reg_file_inst_n_80,reg_file_inst_n_81,reg_file_inst_n_82,reg_file_inst_n_83}),
        .S({reg_file_inst_n_126,reg_file_inst_n_127,reg_file_inst_n_128,reg_file_inst_n_129}),
        .cmp_out_reg0__7_carry__0_0({reg_file_inst_n_49,reg_file_inst_n_50,reg_file_inst_n_51,reg_file_inst_n_52}),
        .cmp_out_reg0__7_carry__0_1({reg_file_inst_n_150,reg_file_inst_n_151,reg_file_inst_n_152,reg_file_inst_n_153}),
        .cmp_out_reg0__7_carry__0_i_8(cmp_out_reg0),
        .cmp_out_reg0_carry__0_0({reg_file_inst_n_45,reg_file_inst_n_46,reg_file_inst_n_47,reg_file_inst_n_48}),
        .cmp_out_reg0_carry__0_1({reg_file_inst_n_154,reg_file_inst_n_155,reg_file_inst_n_156,reg_file_inst_n_157}),
        .data0(data0),
        .instruction({instruction[15],instruction[11:9]}),
        .\instruction[9] (ALU_inst_n_23),
        .\instruction[9]_0 (ALU_inst_n_24),
        .\instruction[9]_1 (ALU_inst_n_25),
        .\instruction[9]_10 (ALU_inst_n_34),
        .\instruction[9]_11 (ALU_inst_n_35),
        .\instruction[9]_12 (ALU_inst_n_36),
        .\instruction[9]_2 (ALU_inst_n_26),
        .\instruction[9]_3 (ALU_inst_n_27),
        .\instruction[9]_4 (ALU_inst_n_28),
        .\instruction[9]_5 (ALU_inst_n_29),
        .\instruction[9]_6 (ALU_inst_n_30),
        .\instruction[9]_7 (ALU_inst_n_31),
        .\instruction[9]_8 (ALU_inst_n_32),
        .\instruction[9]_9 (ALU_inst_n_33),
        .\mem[1][0]_i_4 ({reg_file_inst_n_95,reg_file_inst_n_96,reg_file_inst_n_97,reg_file_inst_n_98}),
        .\mem[1][0]_i_4_0 ({reg_file_inst_n_122,reg_file_inst_n_123,reg_file_inst_n_124,reg_file_inst_n_125}),
        .\mem[1][12]_i_6_0 ({reg_file_inst_n_107,reg_file_inst_n_108,reg_file_inst_n_109}),
        .\mem[1][12]_i_6_1 ({reg_file_inst_n_110,reg_file_inst_n_111,reg_file_inst_n_112,reg_file_inst_n_113}),
        .\mem[1][2]_i_3 ({reg_file_inst_n_37,reg_file_inst_n_38,reg_file_inst_n_39,reg_file_inst_n_40}),
        .\mem[1][2]_i_3_0 ({reg_file_inst_n_142,reg_file_inst_n_143,reg_file_inst_n_144,reg_file_inst_n_145}),
        .\mem[1][3]_i_3 ({reg_file_inst_n_41,reg_file_inst_n_42,reg_file_inst_n_43,reg_file_inst_n_44}),
        .\mem[1][3]_i_3_0 ({reg_file_inst_n_138,reg_file_inst_n_139,reg_file_inst_n_140,reg_file_inst_n_141}),
        .\mem[1][4]_i_5 ({reg_file_inst_n_84,reg_file_inst_n_85,reg_file_inst_n_86,reg_file_inst_n_87}),
        .\mem[1][4]_i_5_0 ({reg_file_inst_n_114,reg_file_inst_n_115,reg_file_inst_n_116,reg_file_inst_n_117}),
        .\mem[1][4]_i_6_0 ({reg_file_inst_n_99,reg_file_inst_n_100,reg_file_inst_n_101,reg_file_inst_n_102}),
        .\mem[1][4]_i_6_1 ({reg_file_inst_n_146,reg_file_inst_n_147,reg_file_inst_n_148,reg_file_inst_n_149}),
        .\mem[1][8]_i_5 ({reg_file_inst_n_88,reg_file_inst_n_89,reg_file_inst_n_90,reg_file_inst_n_91}),
        .\mem[1][8]_i_5_0 ({reg_file_inst_n_118,reg_file_inst_n_119,reg_file_inst_n_120,reg_file_inst_n_121}),
        .\mem[1][8]_i_6_0 ({reg_file_inst_n_103,reg_file_inst_n_104,reg_file_inst_n_105,reg_file_inst_n_106}),
        .\mem[1][8]_i_6_1 ({reg_file_inst_n_134,reg_file_inst_n_135,reg_file_inst_n_136,reg_file_inst_n_137}),
        .\mem_reg[1][15] ({reg_file_inst_n_92,reg_file_inst_n_93,reg_file_inst_n_94}),
        .\mem_reg[1][15]_0 ({reg_file_inst_n_130,reg_file_inst_n_131,reg_file_inst_n_132,reg_file_inst_n_133}),
        .sub_out_carry__2_i_7({data1[15],data1[3:0]}));
  design_1_shell_cpu_top_0_0_prog_cnt_reg PC
       (.DI(PC_n_32),
        .S(ins_addr[3:0]),
        .b(b),
        .clk(clk),
        .data_mem(data_mem),
        .data_mem_10_sp_1(PC_n_26),
        .data_mem_14_sp_1(PC_n_30),
        .data_mem_15_sp_1(PC_n_31),
        .data_mem_1_sp_1(PC_n_17),
        .data_mem_4_sp_1(PC_n_20),
        .data_mem_6_sp_1(PC_n_22),
        .data_mem_8_sp_1(PC_n_24),
        .data_mem_9_sp_1(PC_n_25),
        .from_stack(from_stack),
        .from_stack_11_sp_1(PC_n_27),
        .from_stack_12_sp_1(PC_n_28),
        .from_stack_13_sp_1(PC_n_29),
        .from_stack_2_sp_1(PC_n_18),
        .from_stack_3_sp_1(PC_n_19),
        .from_stack_5_sp_1(PC_n_21),
        .from_stack_7_sp_1(PC_n_23),
        .instruction({instruction[15:13],instruction[10:0]}),
        .\instruction[3] ({PC_n_33,PC_n_34,PC_n_35,PC_n_36}),
        .\instruction[7] ({PC_n_37,PC_n_38,PC_n_39,PC_n_40}),
        .next_ins_addr(next_ins_addr),
        .\pc_reg[0]_0 (\pc_reg[0] ),
        .\pc_reg[0]_1 (PC_n_16),
        .\pc_reg[10]_0 ({PC_n_41,PC_n_42,PC_n_43,PC_n_44}),
        .\pc_reg[11]_0 (\mem_reg[1][8] ),
        .\pc_reg[11]_1 (\mem_reg[1][9] ),
        .\pc_reg[11]_2 (reg_file_inst_n_15),
        .\pc_reg[11]_3 (reg_file_inst_n_16),
        .\pc_reg[12]_0 (ins_addr[11:8]),
        .\pc_reg[14]_0 ({PC_n_45,PC_n_46,PC_n_47,PC_n_48}),
        .\pc_reg[15]_0 (ins_addr[14:12]),
        .\pc_reg[15]_1 (reg_file_inst_n_17),
        .\pc_reg[15]_2 (reg_file_inst_n_18),
        .\pc_reg[15]_3 (reg_file_inst_n_19),
        .\pc_reg[15]_4 (instruction_8_sn_1),
        .\pc_reg[3]_0 (cmp_status_reg_inst_n_0),
        .\pc_reg[3]_1 (reg_file_inst_n_1),
        .\pc_reg[3]_2 (reg_file_inst_n_5),
        .\pc_reg[3]_3 (\mem_reg[1][3] ),
        .\pc_reg[3]_4 (reg_file_inst_n_2),
        .\pc_reg[7]_0 (reg_file_inst_n_9),
        .\pc_reg[7]_1 (reg_file_inst_n_10),
        .\pc_reg[7]_2 (\mem_reg[1][6] ),
        .\pc_reg[7]_3 (\mem_reg[1][7] ),
        .\pc_reg[8]_0 (ins_addr[7:4]),
        .rst(rst));
  design_1_shell_cpu_top_0_0_adder adder_0_inst
       (.DI(PC_n_32),
        .b(b),
        .ins_addr(ins_addr[12:9]),
        .instruction(instruction[9:0]),
        .\pc[11]_i_5 ({PC_n_41,PC_n_42,PC_n_43,PC_n_44}),
        .\pc[15]_i_6 ({PC_n_45,PC_n_46,PC_n_47,PC_n_48}),
        .\pc[3]_i_6 ({PC_n_33,PC_n_34,PC_n_35,PC_n_36}),
        .\pc[7]_i_5 ({PC_n_37,PC_n_38,PC_n_39,PC_n_40}));
  design_1_shell_cpu_top_0_0_adder_0 adder_1_inst
       (.ins_addr(ins_addr),
        .\mem[1][1]_i_2 (\pc_reg[0] ),
        .next_ins_addr(next_ins_addr));
  design_1_shell_cpu_top_0_0_cmp_status_reg cmp_status_reg_inst
       (.clk(clk),
        .\cmp_status_reg[0]_0 (reg_file_inst_n_3),
        .\cmp_status_reg[0]_1 (reg_file_inst_n_0),
        .\cmp_status_reg[1]_0 (reg_file_inst_n_4),
        .\cmp_status_reg[2]_0 (reg_file_inst_n_6),
        .\cmp_status_reg[3]_0 (reg_file_inst_n_8),
        .instruction(instruction[15:9]),
        .\instruction[11] (cmp_status_reg_inst_n_1),
        .\instruction[13] (cmp_status_reg_inst_n_0),
        .rst(rst));
  design_1_shell_cpu_top_0_0_reg_file reg_file_inst
       (.CO(ALU_inst_n_21),
        .D(reg_file_inst_n_63),
        .DI({reg_file_inst_n_80,reg_file_inst_n_81,reg_file_inst_n_82,reg_file_inst_n_83}),
        .S({reg_file_inst_n_126,reg_file_inst_n_127,reg_file_inst_n_128,reg_file_inst_n_129}),
        .clk(clk),
        .data0(data0),
        .inr(inr),
        .instruction(instruction),
        .\instruction[12]_0 ({reg_file_inst_n_45,reg_file_inst_n_46,reg_file_inst_n_47,reg_file_inst_n_48}),
        .\instruction[12]_1 ({reg_file_inst_n_49,reg_file_inst_n_50,reg_file_inst_n_51,reg_file_inst_n_52}),
        .\instruction[12]_2 ({reg_file_inst_n_114,reg_file_inst_n_115,reg_file_inst_n_116,reg_file_inst_n_117}),
        .\instruction[12]_3 ({reg_file_inst_n_146,reg_file_inst_n_147,reg_file_inst_n_148,reg_file_inst_n_149}),
        .\instruction[12]_4 ({reg_file_inst_n_150,reg_file_inst_n_151,reg_file_inst_n_152,reg_file_inst_n_153}),
        .\instruction[12]_5 ({reg_file_inst_n_154,reg_file_inst_n_155,reg_file_inst_n_156,reg_file_inst_n_157}),
        .\instruction[15] ({reg_file_inst_n_122,reg_file_inst_n_123,reg_file_inst_n_124,reg_file_inst_n_125}),
        .\instruction[1] ({reg_file_inst_n_118,reg_file_inst_n_119,reg_file_inst_n_120,reg_file_inst_n_121}),
        .\instruction[1]_0 ({reg_file_inst_n_134,reg_file_inst_n_135,reg_file_inst_n_136,reg_file_inst_n_137}),
        .\instruction[4] ({reg_file_inst_n_37,reg_file_inst_n_38,reg_file_inst_n_39,reg_file_inst_n_40}),
        .\instruction[4]_0 ({reg_file_inst_n_41,reg_file_inst_n_42,reg_file_inst_n_43,reg_file_inst_n_44}),
        .\instruction[4]_1 ({reg_file_inst_n_138,reg_file_inst_n_139,reg_file_inst_n_140,reg_file_inst_n_141}),
        .\instruction[4]_2 ({reg_file_inst_n_142,reg_file_inst_n_143,reg_file_inst_n_144,reg_file_inst_n_145}),
        .\instruction[5] ({reg_file_inst_n_110,reg_file_inst_n_111,reg_file_inst_n_112,reg_file_inst_n_113}),
        .\instruction[5]_0 ({reg_file_inst_n_130,reg_file_inst_n_131,reg_file_inst_n_132,reg_file_inst_n_133}),
        .\instruction[8]_0 (reg_file_inst_n_2),
        .\instruction[8]_1 (reg_file_inst_n_5),
        .\instruction[8]_2 (reg_file_inst_n_9),
        .\instruction[8]_3 (reg_file_inst_n_10),
        .\instruction[8]_4 (reg_file_inst_n_15),
        .\instruction[8]_5 (reg_file_inst_n_16),
        .\instruction[8]_6 (reg_file_inst_n_17),
        .\instruction[8]_7 (reg_file_inst_n_18),
        .\instruction[8]_8 (reg_file_inst_n_19),
        .\instruction[8]_9 (instruction_8_sn_1),
        .\instruction[9]_0 (reg_file_inst_n_6),
        .\instruction[9]_1 (reg_file_inst_n_8),
        .instruction_10_sp_1(reg_file_inst_n_0),
        .instruction_12_sp_1(reg_file_inst_n_3),
        .instruction_8_sp_1(reg_file_inst_n_1),
        .instruction_9_sp_1(reg_file_inst_n_4),
        .\mem_reg[1][0]_0 (cmp_status_reg_inst_n_1),
        .\mem_reg[1][0]_1 (PC_n_16),
        .\mem_reg[1][10]_0 (ALU_inst_n_32),
        .\mem_reg[1][10]_1 (PC_n_26),
        .\mem_reg[1][11]_0 (ALU_inst_n_33),
        .\mem_reg[1][11]_1 (PC_n_27),
        .\mem_reg[1][12]_0 (ALU_inst_n_34),
        .\mem_reg[1][12]_1 (PC_n_28),
        .\mem_reg[1][13]_0 (ALU_inst_n_35),
        .\mem_reg[1][13]_1 (PC_n_29),
        .\mem_reg[1][14]_0 (ALU_inst_n_36),
        .\mem_reg[1][14]_1 (PC_n_30),
        .\mem_reg[1][15]_0 ({data1[15],data1[3:0]}),
        .\mem_reg[1][15]_1 (PC_n_31),
        .\mem_reg[1][1]_0 (ALU_inst_n_23),
        .\mem_reg[1][1]_1 (PC_n_17),
        .\mem_reg[1][2]_0 (ALU_inst_n_24),
        .\mem_reg[1][2]_1 (PC_n_18),
        .\mem_reg[1][3]_0 (\mem_reg[1][3] ),
        .\mem_reg[1][3]_1 ({reg_file_inst_n_95,reg_file_inst_n_96,reg_file_inst_n_97,reg_file_inst_n_98}),
        .\mem_reg[1][3]_2 (cmp_out_reg0),
        .\mem_reg[1][3]_3 (ALU_inst_n_25),
        .\mem_reg[1][3]_4 (PC_n_19),
        .\mem_reg[1][4]_0 (ALU_inst_n_26),
        .\mem_reg[1][4]_1 (PC_n_20),
        .\mem_reg[1][5]_0 (ALU_inst_n_27),
        .\mem_reg[1][5]_1 (PC_n_21),
        .\mem_reg[1][6]_0 (\mem_reg[1][6] ),
        .\mem_reg[1][6]_1 (ALU_inst_n_28),
        .\mem_reg[1][6]_2 (PC_n_22),
        .\mem_reg[1][7]_0 (\mem_reg[1][7] ),
        .\mem_reg[1][7]_1 ({reg_file_inst_n_84,reg_file_inst_n_85,reg_file_inst_n_86,reg_file_inst_n_87}),
        .\mem_reg[1][7]_2 ({reg_file_inst_n_99,reg_file_inst_n_100,reg_file_inst_n_101,reg_file_inst_n_102}),
        .\mem_reg[1][7]_3 (ALU_inst_n_29),
        .\mem_reg[1][7]_4 (PC_n_23),
        .\mem_reg[1][8]_0 (\mem_reg[1][8] ),
        .\mem_reg[1][8]_1 (ALU_inst_n_30),
        .\mem_reg[1][8]_2 (PC_n_24),
        .\mem_reg[1][9]_0 (\mem_reg[1][9] ),
        .\mem_reg[1][9]_1 (ALU_inst_n_31),
        .\mem_reg[1][9]_2 (PC_n_25),
        .\mem_reg[6][0]_0 (instruction_15_sn_1),
        .outvalue(outvalue),
        .regA(regA),
        .\regA[11]_INST_0_i_1_0 ({reg_file_inst_n_88,reg_file_inst_n_89,reg_file_inst_n_90,reg_file_inst_n_91}),
        .\regA[11]_INST_0_i_1_1 ({reg_file_inst_n_103,reg_file_inst_n_104,reg_file_inst_n_105,reg_file_inst_n_106}),
        .\regA[14]_INST_0_i_1_0 ({reg_file_inst_n_92,reg_file_inst_n_93,reg_file_inst_n_94}),
        .\regA[14]_INST_0_i_1_1 ({reg_file_inst_n_107,reg_file_inst_n_108,reg_file_inst_n_109}),
        .regB(regB),
        .rst(rst),
        .\sp_reg_reg[0] (stack_ptr_reg_inst_n_17),
        .\sp_reg_reg[0]_0 (stack_ptr_reg_inst_n_16),
        .stack_ptr(stack_ptr[0]));
  design_1_shell_cpu_top_0_0_stack_ptr_reg stack_ptr_reg_inst
       (.D(reg_file_inst_n_63),
        .clk(clk),
        .instruction(instruction[15:9]),
        .\instruction[15] (instruction_15_sn_1),
        .rst(rst),
        .rst_0(stack_ptr_reg_inst_n_16),
        .rst_1(stack_ptr_reg_inst_n_17),
        .\sp_reg_reg[10]_0 (reg_file_inst_n_15),
        .\sp_reg_reg[11]_0 (reg_file_inst_n_16),
        .\sp_reg_reg[12]_0 (reg_file_inst_n_17),
        .\sp_reg_reg[13]_0 (reg_file_inst_n_18),
        .\sp_reg_reg[14]_0 (reg_file_inst_n_19),
        .\sp_reg_reg[15]_0 (instruction_8_sn_1),
        .\sp_reg_reg[1]_0 (reg_file_inst_n_1),
        .\sp_reg_reg[2]_0 (reg_file_inst_n_5),
        .\sp_reg_reg[3]_0 (\mem_reg[1][3] ),
        .\sp_reg_reg[4]_0 (reg_file_inst_n_9),
        .\sp_reg_reg[5]_0 (reg_file_inst_n_10),
        .\sp_reg_reg[6]_0 (\mem_reg[1][6] ),
        .\sp_reg_reg[7]_0 (\mem_reg[1][7] ),
        .\sp_reg_reg[8]_0 (\mem_reg[1][8] ),
        .\sp_reg_reg[9]_0 (\mem_reg[1][9] ),
        .stack_ptr(stack_ptr));
endmodule

(* ORIG_REF_NAME = "stack_ptr_reg" *) 
module design_1_shell_cpu_top_0_0_stack_ptr_reg
   (stack_ptr,
    rst_0,
    rst_1,
    \instruction[15] ,
    \sp_reg_reg[15]_0 ,
    \sp_reg_reg[14]_0 ,
    \sp_reg_reg[13]_0 ,
    \sp_reg_reg[12]_0 ,
    \sp_reg_reg[11]_0 ,
    \sp_reg_reg[10]_0 ,
    \sp_reg_reg[9]_0 ,
    \sp_reg_reg[8]_0 ,
    \sp_reg_reg[7]_0 ,
    \sp_reg_reg[6]_0 ,
    \sp_reg_reg[5]_0 ,
    \sp_reg_reg[4]_0 ,
    \sp_reg_reg[3]_0 ,
    \sp_reg_reg[2]_0 ,
    \sp_reg_reg[1]_0 ,
    instruction,
    rst,
    clk,
    D);
  output [15:0]stack_ptr;
  output rst_0;
  output rst_1;
  output \instruction[15] ;
  input \sp_reg_reg[15]_0 ;
  input \sp_reg_reg[14]_0 ;
  input \sp_reg_reg[13]_0 ;
  input \sp_reg_reg[12]_0 ;
  input \sp_reg_reg[11]_0 ;
  input \sp_reg_reg[10]_0 ;
  input \sp_reg_reg[9]_0 ;
  input \sp_reg_reg[8]_0 ;
  input \sp_reg_reg[7]_0 ;
  input \sp_reg_reg[6]_0 ;
  input \sp_reg_reg[5]_0 ;
  input \sp_reg_reg[4]_0 ;
  input \sp_reg_reg[3]_0 ;
  input \sp_reg_reg[2]_0 ;
  input \sp_reg_reg[1]_0 ;
  input [6:0]instruction;
  input rst;
  input clk;
  input [0:0]D;

  wire [0:0]D;
  wire clk;
  wire [6:0]instruction;
  wire \instruction[15] ;
  wire rst;
  wire rst_0;
  wire rst_1;
  wire sp_reg0_carry__0_i_1_n_0;
  wire sp_reg0_carry__0_i_2_n_0;
  wire sp_reg0_carry__0_i_3_n_0;
  wire sp_reg0_carry__0_i_4_n_0;
  wire sp_reg0_carry__0_n_0;
  wire sp_reg0_carry__0_n_1;
  wire sp_reg0_carry__0_n_2;
  wire sp_reg0_carry__0_n_3;
  wire sp_reg0_carry__0_n_4;
  wire sp_reg0_carry__0_n_5;
  wire sp_reg0_carry__0_n_6;
  wire sp_reg0_carry__0_n_7;
  wire sp_reg0_carry__1_i_1_n_0;
  wire sp_reg0_carry__1_i_2_n_0;
  wire sp_reg0_carry__1_i_3_n_0;
  wire sp_reg0_carry__1_i_4_n_0;
  wire sp_reg0_carry__1_n_0;
  wire sp_reg0_carry__1_n_1;
  wire sp_reg0_carry__1_n_2;
  wire sp_reg0_carry__1_n_3;
  wire sp_reg0_carry__1_n_4;
  wire sp_reg0_carry__1_n_5;
  wire sp_reg0_carry__1_n_6;
  wire sp_reg0_carry__1_n_7;
  wire sp_reg0_carry__2_i_1_n_0;
  wire sp_reg0_carry__2_i_2_n_0;
  wire sp_reg0_carry__2_i_3_n_0;
  wire sp_reg0_carry__2_n_2;
  wire sp_reg0_carry__2_n_3;
  wire sp_reg0_carry__2_n_5;
  wire sp_reg0_carry__2_n_6;
  wire sp_reg0_carry__2_n_7;
  wire sp_reg0_carry_i_1_n_0;
  wire sp_reg0_carry_i_2_n_0;
  wire sp_reg0_carry_i_3_n_0;
  wire sp_reg0_carry_i_4_n_0;
  wire sp_reg0_carry_i_5_n_0;
  wire sp_reg0_carry_n_0;
  wire sp_reg0_carry_n_1;
  wire sp_reg0_carry_n_2;
  wire sp_reg0_carry_n_3;
  wire sp_reg0_carry_n_4;
  wire sp_reg0_carry_n_5;
  wire sp_reg0_carry_n_6;
  wire sp_reg0_carry_n_7;
  wire \sp_reg[10]_i_1_n_0 ;
  wire \sp_reg[11]_i_1_n_0 ;
  wire \sp_reg[12]_i_1_n_0 ;
  wire \sp_reg[13]_i_1_n_0 ;
  wire \sp_reg[14]_i_1_n_0 ;
  wire \sp_reg[15]_i_1_n_0 ;
  wire \sp_reg[15]_i_2_n_0 ;
  wire \sp_reg[1]_i_1_n_0 ;
  wire \sp_reg[2]_i_1_n_0 ;
  wire \sp_reg[3]_i_1_n_0 ;
  wire \sp_reg[4]_i_1_n_0 ;
  wire \sp_reg[5]_i_1_n_0 ;
  wire \sp_reg[6]_i_1_n_0 ;
  wire \sp_reg[7]_i_1_n_0 ;
  wire \sp_reg[8]_i_1_n_0 ;
  wire \sp_reg[9]_i_1_n_0 ;
  wire \sp_reg_reg[10]_0 ;
  wire \sp_reg_reg[11]_0 ;
  wire \sp_reg_reg[12]_0 ;
  wire \sp_reg_reg[13]_0 ;
  wire \sp_reg_reg[14]_0 ;
  wire \sp_reg_reg[15]_0 ;
  wire \sp_reg_reg[1]_0 ;
  wire \sp_reg_reg[2]_0 ;
  wire \sp_reg_reg[3]_0 ;
  wire \sp_reg_reg[4]_0 ;
  wire \sp_reg_reg[5]_0 ;
  wire \sp_reg_reg[6]_0 ;
  wire \sp_reg_reg[7]_0 ;
  wire \sp_reg_reg[8]_0 ;
  wire \sp_reg_reg[9]_0 ;
  wire [15:0]stack_ptr;
  wire [3:2]NLW_sp_reg0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_sp_reg0_carry__2_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry
       (.CI(1'b0),
        .CO({sp_reg0_carry_n_0,sp_reg0_carry_n_1,sp_reg0_carry_n_2,sp_reg0_carry_n_3}),
        .CYINIT(stack_ptr[0]),
        .DI({stack_ptr[3:1],sp_reg0_carry_i_1_n_0}),
        .O({sp_reg0_carry_n_4,sp_reg0_carry_n_5,sp_reg0_carry_n_6,sp_reg0_carry_n_7}),
        .S({sp_reg0_carry_i_2_n_0,sp_reg0_carry_i_3_n_0,sp_reg0_carry_i_4_n_0,sp_reg0_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__0
       (.CI(sp_reg0_carry_n_0),
        .CO({sp_reg0_carry__0_n_0,sp_reg0_carry__0_n_1,sp_reg0_carry__0_n_2,sp_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(stack_ptr[7:4]),
        .O({sp_reg0_carry__0_n_4,sp_reg0_carry__0_n_5,sp_reg0_carry__0_n_6,sp_reg0_carry__0_n_7}),
        .S({sp_reg0_carry__0_i_1_n_0,sp_reg0_carry__0_i_2_n_0,sp_reg0_carry__0_i_3_n_0,sp_reg0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_1
       (.I0(stack_ptr[7]),
        .I1(stack_ptr[8]),
        .O(sp_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_2
       (.I0(stack_ptr[6]),
        .I1(stack_ptr[7]),
        .O(sp_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_3
       (.I0(stack_ptr[5]),
        .I1(stack_ptr[6]),
        .O(sp_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__0_i_4
       (.I0(stack_ptr[4]),
        .I1(stack_ptr[5]),
        .O(sp_reg0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__1
       (.CI(sp_reg0_carry__0_n_0),
        .CO({sp_reg0_carry__1_n_0,sp_reg0_carry__1_n_1,sp_reg0_carry__1_n_2,sp_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(stack_ptr[11:8]),
        .O({sp_reg0_carry__1_n_4,sp_reg0_carry__1_n_5,sp_reg0_carry__1_n_6,sp_reg0_carry__1_n_7}),
        .S({sp_reg0_carry__1_i_1_n_0,sp_reg0_carry__1_i_2_n_0,sp_reg0_carry__1_i_3_n_0,sp_reg0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_1
       (.I0(stack_ptr[11]),
        .I1(stack_ptr[12]),
        .O(sp_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_2
       (.I0(stack_ptr[10]),
        .I1(stack_ptr[11]),
        .O(sp_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_3
       (.I0(stack_ptr[9]),
        .I1(stack_ptr[10]),
        .O(sp_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__1_i_4
       (.I0(stack_ptr[8]),
        .I1(stack_ptr[9]),
        .O(sp_reg0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_reg0_carry__2
       (.CI(sp_reg0_carry__1_n_0),
        .CO({NLW_sp_reg0_carry__2_CO_UNCONNECTED[3:2],sp_reg0_carry__2_n_2,sp_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,stack_ptr[13:12]}),
        .O({NLW_sp_reg0_carry__2_O_UNCONNECTED[3],sp_reg0_carry__2_n_5,sp_reg0_carry__2_n_6,sp_reg0_carry__2_n_7}),
        .S({1'b0,sp_reg0_carry__2_i_1_n_0,sp_reg0_carry__2_i_2_n_0,sp_reg0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_1
       (.I0(stack_ptr[14]),
        .I1(stack_ptr[15]),
        .O(sp_reg0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_2
       (.I0(stack_ptr[13]),
        .I1(stack_ptr[14]),
        .O(sp_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry__2_i_3
       (.I0(stack_ptr[12]),
        .I1(stack_ptr[13]),
        .O(sp_reg0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_reg0_carry_i_1
       (.I0(stack_ptr[1]),
        .O(sp_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_2
       (.I0(stack_ptr[3]),
        .I1(stack_ptr[4]),
        .O(sp_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_3
       (.I0(stack_ptr[2]),
        .I1(stack_ptr[3]),
        .O(sp_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sp_reg0_carry_i_4
       (.I0(stack_ptr[1]),
        .I1(stack_ptr[2]),
        .O(sp_reg0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    sp_reg0_carry_i_5
       (.I0(stack_ptr[1]),
        .I1(instruction[0]),
        .I2(\instruction[15] ),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .I5(instruction[3]),
        .O(sp_reg0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[10]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__1_n_6),
        .I2(rst_1),
        .I3(\sp_reg_reg[10]_0 ),
        .O(\sp_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[11]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__1_n_5),
        .I2(rst_1),
        .I3(\sp_reg_reg[11]_0 ),
        .O(\sp_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[12]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__1_n_4),
        .I2(rst_1),
        .I3(\sp_reg_reg[12]_0 ),
        .O(\sp_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[13]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__2_n_7),
        .I2(rst_1),
        .I3(\sp_reg_reg[13]_0 ),
        .O(\sp_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[14]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__2_n_6),
        .I2(rst_1),
        .I3(\sp_reg_reg[14]_0 ),
        .O(\sp_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000015)) 
    \sp_reg[15]_i_1 
       (.I0(\instruction[15] ),
        .I1(instruction[0]),
        .I2(instruction[1]),
        .I3(instruction[3]),
        .I4(instruction[2]),
        .I5(rst),
        .O(\sp_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[15]_i_2 
       (.I0(rst_0),
        .I1(sp_reg0_carry__2_n_5),
        .I2(rst_1),
        .I3(\sp_reg_reg[15]_0 ),
        .O(\sp_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \sp_reg[15]_i_3 
       (.I0(rst),
        .I1(instruction[2]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[0]),
        .I5(\instruction[15] ),
        .O(rst_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \sp_reg[15]_i_4 
       (.I0(rst),
        .I1(instruction[2]),
        .I2(instruction[3]),
        .I3(instruction[1]),
        .I4(instruction[0]),
        .I5(\instruction[15] ),
        .O(rst_1));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[1]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry_n_7),
        .I2(rst_1),
        .I3(\sp_reg_reg[1]_0 ),
        .O(\sp_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[2]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry_n_6),
        .I2(rst_1),
        .I3(\sp_reg_reg[2]_0 ),
        .O(\sp_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[3]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry_n_5),
        .I2(rst_1),
        .I3(\sp_reg_reg[3]_0 ),
        .O(\sp_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[4]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry_n_4),
        .I2(rst_1),
        .I3(\sp_reg_reg[4]_0 ),
        .O(\sp_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \sp_reg[5]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__0_n_7),
        .I2(rst_1),
        .I3(\sp_reg_reg[5]_0 ),
        .O(\sp_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[6]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__0_n_6),
        .I2(rst_1),
        .I3(\sp_reg_reg[6]_0 ),
        .O(\sp_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[7]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__0_n_5),
        .I2(rst_1),
        .I3(\sp_reg_reg[7]_0 ),
        .O(\sp_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[8]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__0_n_4),
        .I2(rst_1),
        .I3(\sp_reg_reg[8]_0 ),
        .O(\sp_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp_reg[9]_i_1 
       (.I0(rst_0),
        .I1(sp_reg0_carry__1_n_7),
        .I2(rst_1),
        .I3(\sp_reg_reg[9]_0 ),
        .O(\sp_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[0] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(D),
        .Q(stack_ptr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[10] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[10]_i_1_n_0 ),
        .Q(stack_ptr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[11] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[11]_i_1_n_0 ),
        .Q(stack_ptr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[12] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[12]_i_1_n_0 ),
        .Q(stack_ptr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[13] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[13]_i_1_n_0 ),
        .Q(stack_ptr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[14] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[14]_i_1_n_0 ),
        .Q(stack_ptr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[15] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[15]_i_2_n_0 ),
        .Q(stack_ptr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[1] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[1]_i_1_n_0 ),
        .Q(stack_ptr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[2] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[2]_i_1_n_0 ),
        .Q(stack_ptr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[3] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[3]_i_1_n_0 ),
        .Q(stack_ptr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[4] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[4]_i_1_n_0 ),
        .Q(stack_ptr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[5] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[5]_i_1_n_0 ),
        .Q(stack_ptr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[6] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[6]_i_1_n_0 ),
        .Q(stack_ptr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[7] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[7]_i_1_n_0 ),
        .Q(stack_ptr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[8] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[8]_i_1_n_0 ),
        .Q(stack_ptr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sp_reg_reg[9] 
       (.C(clk),
        .CE(\sp_reg[15]_i_1_n_0 ),
        .D(\sp_reg[9]_i_1_n_0 ),
        .Q(stack_ptr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    stack_wr_INST_0_i_1
       (.I0(instruction[6]),
        .I1(instruction[4]),
        .I2(instruction[5]),
        .O(\instruction[15] ));
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
