// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 23:29:54 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_reg_file_0_0/design_1_reg_file_0_0_sim_netlist.v
// Design      : design_1_reg_file_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reg_file_0_0,reg_file,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg_file,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_reg_file_0_0
   (clk,
    read_addrA,
    read_addrB,
    write_addrC,
    inr,
    regA,
    regB,
    regC,
    outvalue,
    wr_en,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [2:0]read_addrA;
  input [2:0]read_addrB;
  input [2:0]write_addrC;
  input [2:0]inr;
  output [15:0]regA;
  output [15:0]regB;
  input [15:0]regC;
  output [15:0]outvalue;
  input wr_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire clk;
  wire [2:0]inr;
  wire [15:0]outvalue;
  wire [2:0]read_addrA;
  wire [2:0]read_addrB;
  wire [15:0]regA;
  wire [15:0]regB;
  wire [15:0]regC;
  wire rst;
  wire wr_en;
  wire [2:0]write_addrC;

  design_1_reg_file_0_0_reg_file U0
       (.clk(clk),
        .inr(inr),
        .outvalue(outvalue),
        .read_addrA(read_addrA),
        .read_addrB(read_addrB),
        .regA(regA),
        .regB(regB),
        .regC(regC),
        .rst(rst),
        .wr_en(wr_en),
        .write_addrC(write_addrC));
endmodule

(* ORIG_REF_NAME = "reg_file" *) 
module design_1_reg_file_0_0_reg_file
   (regA,
    regB,
    outvalue,
    rst,
    clk,
    regC,
    wr_en,
    write_addrC,
    read_addrA,
    read_addrB,
    inr);
  output [15:0]regA;
  output [15:0]regB;
  output [15:0]outvalue;
  input rst;
  input clk;
  input [15:0]regC;
  input wr_en;
  input [2:0]write_addrC;
  input [2:0]read_addrA;
  input [2:0]read_addrB;
  input [2:0]inr;

  wire clk;
  wire [2:0]inr;
  wire \mem[0][0]_i_1_n_0 ;
  wire \mem[0][10]_i_1_n_0 ;
  wire \mem[0][11]_i_1_n_0 ;
  wire \mem[0][12]_i_1_n_0 ;
  wire \mem[0][13]_i_1_n_0 ;
  wire \mem[0][14]_i_1_n_0 ;
  wire \mem[0][15]_i_1_n_0 ;
  wire \mem[0][1]_i_1_n_0 ;
  wire \mem[0][2]_i_1_n_0 ;
  wire \mem[0][3]_i_1_n_0 ;
  wire \mem[0][4]_i_1_n_0 ;
  wire \mem[0][5]_i_1_n_0 ;
  wire \mem[0][6]_i_1_n_0 ;
  wire \mem[0][7]_i_1_n_0 ;
  wire \mem[0][8]_i_1_n_0 ;
  wire \mem[0][9]_i_1_n_0 ;
  wire \mem[0]_0 ;
  wire \mem[1][15]_i_1_n_0 ;
  wire \mem[2][15]_i_1_n_0 ;
  wire \mem[3][15]_i_1_n_0 ;
  wire \mem[4][15]_i_1_n_0 ;
  wire \mem[5][15]_i_1_n_0 ;
  wire \mem[6][15]_i_1_n_0 ;
  wire \mem[7][15]_i_1_n_0 ;
  wire [15:0]\mem_reg[0] ;
  wire [15:0]\mem_reg[1] ;
  wire [15:0]\mem_reg[2] ;
  wire [15:0]\mem_reg[3] ;
  wire [15:0]\mem_reg[4] ;
  wire [15:0]\mem_reg[5] ;
  wire [15:0]\mem_reg[6] ;
  wire [15:0]\mem_reg[7] ;
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
  wire [2:0]read_addrA;
  wire [2:0]read_addrB;
  wire [15:0]regA;
  wire \regA[0]_INST_0_i_1_n_0 ;
  wire \regA[0]_INST_0_i_2_n_0 ;
  wire \regA[10]_INST_0_i_1_n_0 ;
  wire \regA[10]_INST_0_i_2_n_0 ;
  wire \regA[11]_INST_0_i_1_n_0 ;
  wire \regA[11]_INST_0_i_2_n_0 ;
  wire \regA[12]_INST_0_i_1_n_0 ;
  wire \regA[12]_INST_0_i_2_n_0 ;
  wire \regA[13]_INST_0_i_1_n_0 ;
  wire \regA[13]_INST_0_i_2_n_0 ;
  wire \regA[14]_INST_0_i_1_n_0 ;
  wire \regA[14]_INST_0_i_2_n_0 ;
  wire \regA[15]_INST_0_i_1_n_0 ;
  wire \regA[15]_INST_0_i_2_n_0 ;
  wire \regA[1]_INST_0_i_1_n_0 ;
  wire \regA[1]_INST_0_i_2_n_0 ;
  wire \regA[2]_INST_0_i_1_n_0 ;
  wire \regA[2]_INST_0_i_2_n_0 ;
  wire \regA[3]_INST_0_i_1_n_0 ;
  wire \regA[3]_INST_0_i_2_n_0 ;
  wire \regA[4]_INST_0_i_1_n_0 ;
  wire \regA[4]_INST_0_i_2_n_0 ;
  wire \regA[5]_INST_0_i_1_n_0 ;
  wire \regA[5]_INST_0_i_2_n_0 ;
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
  wire \regB[12]_INST_0_i_1_n_0 ;
  wire \regB[12]_INST_0_i_2_n_0 ;
  wire \regB[13]_INST_0_i_1_n_0 ;
  wire \regB[13]_INST_0_i_2_n_0 ;
  wire \regB[14]_INST_0_i_1_n_0 ;
  wire \regB[14]_INST_0_i_2_n_0 ;
  wire \regB[15]_INST_0_i_1_n_0 ;
  wire \regB[15]_INST_0_i_2_n_0 ;
  wire \regB[1]_INST_0_i_1_n_0 ;
  wire \regB[1]_INST_0_i_2_n_0 ;
  wire \regB[2]_INST_0_i_1_n_0 ;
  wire \regB[2]_INST_0_i_2_n_0 ;
  wire \regB[3]_INST_0_i_1_n_0 ;
  wire \regB[3]_INST_0_i_2_n_0 ;
  wire \regB[4]_INST_0_i_1_n_0 ;
  wire \regB[4]_INST_0_i_2_n_0 ;
  wire \regB[5]_INST_0_i_1_n_0 ;
  wire \regB[5]_INST_0_i_2_n_0 ;
  wire \regB[6]_INST_0_i_1_n_0 ;
  wire \regB[6]_INST_0_i_2_n_0 ;
  wire \regB[7]_INST_0_i_1_n_0 ;
  wire \regB[7]_INST_0_i_2_n_0 ;
  wire \regB[8]_INST_0_i_1_n_0 ;
  wire \regB[8]_INST_0_i_2_n_0 ;
  wire \regB[9]_INST_0_i_1_n_0 ;
  wire \regB[9]_INST_0_i_2_n_0 ;
  wire [15:0]regC;
  wire rst;
  wire wr_en;
  wire [2:0]write_addrC;

  LUT4 #(
    .INIT(16'h5557)) 
    \/i_ 
       (.I0(wr_en),
        .I1(write_addrC[1]),
        .I2(write_addrC[0]),
        .I3(write_addrC[2]),
        .O(\mem[0]_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][0]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[0]),
        .O(\mem[0][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][10]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[10]),
        .O(\mem[0][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][11]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[11]),
        .O(\mem[0][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][12]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[12]),
        .O(\mem[0][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][13]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[13]),
        .O(\mem[0][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][14]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[14]),
        .O(\mem[0][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][15]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[15]),
        .O(\mem[0][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][1]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[1]),
        .O(\mem[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][2]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[2]),
        .O(\mem[0][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][3]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[3]),
        .O(\mem[0][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][4]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[4]),
        .O(\mem[0][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][5]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[5]),
        .O(\mem[0][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][6]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[6]),
        .O(\mem[0][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][7]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[7]),
        .O(\mem[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][8]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[8]),
        .O(\mem[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \mem[0][9]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .I4(regC[9]),
        .O(\mem[0][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[1][15]_i_1 
       (.I0(write_addrC[0]),
        .I1(write_addrC[2]),
        .I2(write_addrC[1]),
        .I3(wr_en),
        .O(\mem[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[2][15]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .O(\mem[2][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \mem[3][15]_i_1 
       (.I0(write_addrC[2]),
        .I1(write_addrC[0]),
        .I2(write_addrC[1]),
        .I3(wr_en),
        .O(\mem[3][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[4][15]_i_1 
       (.I0(write_addrC[2]),
        .I1(write_addrC[0]),
        .I2(write_addrC[1]),
        .I3(wr_en),
        .O(\mem[4][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \mem[5][15]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .O(\mem[5][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \mem[6][15]_i_1 
       (.I0(write_addrC[0]),
        .I1(write_addrC[2]),
        .I2(write_addrC[1]),
        .I3(wr_en),
        .O(\mem[6][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \mem[7][15]_i_1 
       (.I0(write_addrC[1]),
        .I1(write_addrC[0]),
        .I2(write_addrC[2]),
        .I3(wr_en),
        .O(\mem[7][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][0]_i_1_n_0 ),
        .Q(\mem_reg[0] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][10] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][10]_i_1_n_0 ),
        .Q(\mem_reg[0] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][11] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][11]_i_1_n_0 ),
        .Q(\mem_reg[0] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][12] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][12]_i_1_n_0 ),
        .Q(\mem_reg[0] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][13] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][13]_i_1_n_0 ),
        .Q(\mem_reg[0] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][14] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][14]_i_1_n_0 ),
        .Q(\mem_reg[0] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][15] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][15]_i_1_n_0 ),
        .Q(\mem_reg[0] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][1]_i_1_n_0 ),
        .Q(\mem_reg[0] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][2]_i_1_n_0 ),
        .Q(\mem_reg[0] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][3]_i_1_n_0 ),
        .Q(\mem_reg[0] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][4]_i_1_n_0 ),
        .Q(\mem_reg[0] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][5]_i_1_n_0 ),
        .Q(\mem_reg[0] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][6]_i_1_n_0 ),
        .Q(\mem_reg[0] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][7]_i_1_n_0 ),
        .Q(\mem_reg[0] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][8]_i_1_n_0 ),
        .Q(\mem_reg[0] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][9] 
       (.C(clk),
        .CE(\mem[0]_0 ),
        .D(\mem[0][9]_i_1_n_0 ),
        .Q(\mem_reg[0] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[1] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][10] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[1] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][11] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[1] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][12] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[1] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][13] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[1] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][14] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[1] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][15] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[1] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[1] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[1] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[1] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[1] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[1] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[1] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[1] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[1] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][9] 
       (.C(clk),
        .CE(\mem[1][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[1] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[2] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][10] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[2] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][11] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[2] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][12] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[2] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][13] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[2] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][14] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[2] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][15] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[2] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[2] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[2] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[2] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[2] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[2] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[2] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[2] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[2] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][9] 
       (.C(clk),
        .CE(\mem[2][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[2] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[3] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][10] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[3] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][11] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[3] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][12] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[3] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][13] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[3] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][14] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[3] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][15] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[3] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[3] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[3] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[3] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[3] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[3] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[3] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[3] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[3] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][9] 
       (.C(clk),
        .CE(\mem[3][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[3] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[4] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][10] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[4] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][11] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[4] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][12] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[4] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][13] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[4] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][14] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[4] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][15] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[4] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[4] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[4] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[4] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[4] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[4] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[4] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[4] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[4] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][9] 
       (.C(clk),
        .CE(\mem[4][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[4] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[5] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][10] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[5] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][11] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[5] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][12] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[5] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][13] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[5] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][14] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[5] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][15] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[5] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[5] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[5] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[5] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[5] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[5] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[5] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[5] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[5] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][9] 
       (.C(clk),
        .CE(\mem[5][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[5] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[6] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][10] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[6] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][11] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[6] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][12] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[6] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][13] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[6] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][14] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[6] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][15] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[6] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[6] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[6] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[6] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[6] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[6] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[6] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[6] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[6] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][9] 
       (.C(clk),
        .CE(\mem[6][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[6] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[0]),
        .Q(\mem_reg[7] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][10] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[10]),
        .Q(\mem_reg[7] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][11] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[11]),
        .Q(\mem_reg[7] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][12] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[12]),
        .Q(\mem_reg[7] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][13] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[13]),
        .Q(\mem_reg[7] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][14] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[14]),
        .Q(\mem_reg[7] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][15] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[15]),
        .Q(\mem_reg[7] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[1]),
        .Q(\mem_reg[7] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[2]),
        .Q(\mem_reg[7] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[3]),
        .Q(\mem_reg[7] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[4]),
        .Q(\mem_reg[7] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[5]),
        .Q(\mem_reg[7] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[6]),
        .Q(\mem_reg[7] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[7]),
        .Q(\mem_reg[7] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[8]),
        .Q(\mem_reg[7] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][9] 
       (.C(clk),
        .CE(\mem[7][15]_i_1_n_0 ),
        .D(regC[9]),
        .Q(\mem_reg[7] [9]),
        .R(rst));
  MUXF7 \outvalue[0]_INST_0 
       (.I0(\outvalue[0]_INST_0_i_1_n_0 ),
        .I1(\outvalue[0]_INST_0_i_2_n_0 ),
        .O(outvalue[0]),
        .S(inr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [0]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [0]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [10]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [10]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [11]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [11]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [12]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [12]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [13]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [13]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [14]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [14]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [15]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [15]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [1]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [1]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [2]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [2]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [3]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [3]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [4]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [4]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [5]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [5]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [6]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [6]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [7]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [7]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [8]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [8]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outvalue[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(inr[1]),
        .I3(\mem_reg[1] [9]),
        .I4(inr[0]),
        .I5(\mem_reg[0] [9]),
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
  MUXF7 \regA[0]_INST_0 
       (.I0(\regA[0]_INST_0_i_1_n_0 ),
        .I1(\regA[0]_INST_0_i_2_n_0 ),
        .O(regA[0]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [0]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [0]),
        .O(\regA[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[0]_INST_0_i_2 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [0]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [0]),
        .O(\regA[0]_INST_0_i_2_n_0 ));
  MUXF7 \regA[10]_INST_0 
       (.I0(\regA[10]_INST_0_i_1_n_0 ),
        .I1(\regA[10]_INST_0_i_2_n_0 ),
        .O(regA[10]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [10]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [10]),
        .O(\regA[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[10]_INST_0_i_2 
       (.I0(\mem_reg[7] [10]),
        .I1(\mem_reg[6] [10]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [10]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [10]),
        .O(\regA[10]_INST_0_i_2_n_0 ));
  MUXF7 \regA[11]_INST_0 
       (.I0(\regA[11]_INST_0_i_1_n_0 ),
        .I1(\regA[11]_INST_0_i_2_n_0 ),
        .O(regA[11]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [11]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [11]),
        .O(\regA[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[11]_INST_0_i_2 
       (.I0(\mem_reg[7] [11]),
        .I1(\mem_reg[6] [11]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [11]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [11]),
        .O(\regA[11]_INST_0_i_2_n_0 ));
  MUXF7 \regA[12]_INST_0 
       (.I0(\regA[12]_INST_0_i_1_n_0 ),
        .I1(\regA[12]_INST_0_i_2_n_0 ),
        .O(regA[12]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [12]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [12]),
        .O(\regA[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[12]_INST_0_i_2 
       (.I0(\mem_reg[7] [12]),
        .I1(\mem_reg[6] [12]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [12]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [12]),
        .O(\regA[12]_INST_0_i_2_n_0 ));
  MUXF7 \regA[13]_INST_0 
       (.I0(\regA[13]_INST_0_i_1_n_0 ),
        .I1(\regA[13]_INST_0_i_2_n_0 ),
        .O(regA[13]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [13]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [13]),
        .O(\regA[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[13]_INST_0_i_2 
       (.I0(\mem_reg[7] [13]),
        .I1(\mem_reg[6] [13]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [13]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [13]),
        .O(\regA[13]_INST_0_i_2_n_0 ));
  MUXF7 \regA[14]_INST_0 
       (.I0(\regA[14]_INST_0_i_1_n_0 ),
        .I1(\regA[14]_INST_0_i_2_n_0 ),
        .O(regA[14]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [14]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [14]),
        .O(\regA[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[14]_INST_0_i_2 
       (.I0(\mem_reg[7] [14]),
        .I1(\mem_reg[6] [14]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [14]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [14]),
        .O(\regA[14]_INST_0_i_2_n_0 ));
  MUXF7 \regA[15]_INST_0 
       (.I0(\regA[15]_INST_0_i_1_n_0 ),
        .I1(\regA[15]_INST_0_i_2_n_0 ),
        .O(regA[15]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [15]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [15]),
        .O(\regA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[15]_INST_0_i_2 
       (.I0(\mem_reg[7] [15]),
        .I1(\mem_reg[6] [15]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [15]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [15]),
        .O(\regA[15]_INST_0_i_2_n_0 ));
  MUXF7 \regA[1]_INST_0 
       (.I0(\regA[1]_INST_0_i_1_n_0 ),
        .I1(\regA[1]_INST_0_i_2_n_0 ),
        .O(regA[1]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [1]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [1]),
        .O(\regA[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[1]_INST_0_i_2 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [1]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [1]),
        .O(\regA[1]_INST_0_i_2_n_0 ));
  MUXF7 \regA[2]_INST_0 
       (.I0(\regA[2]_INST_0_i_1_n_0 ),
        .I1(\regA[2]_INST_0_i_2_n_0 ),
        .O(regA[2]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [2]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [2]),
        .O(\regA[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[2]_INST_0_i_2 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [2]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [2]),
        .O(\regA[2]_INST_0_i_2_n_0 ));
  MUXF7 \regA[3]_INST_0 
       (.I0(\regA[3]_INST_0_i_1_n_0 ),
        .I1(\regA[3]_INST_0_i_2_n_0 ),
        .O(regA[3]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [3]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [3]),
        .O(\regA[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[3]_INST_0_i_2 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [3]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [3]),
        .O(\regA[3]_INST_0_i_2_n_0 ));
  MUXF7 \regA[4]_INST_0 
       (.I0(\regA[4]_INST_0_i_1_n_0 ),
        .I1(\regA[4]_INST_0_i_2_n_0 ),
        .O(regA[4]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [4]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [4]),
        .O(\regA[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[4]_INST_0_i_2 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [4]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [4]),
        .O(\regA[4]_INST_0_i_2_n_0 ));
  MUXF7 \regA[5]_INST_0 
       (.I0(\regA[5]_INST_0_i_1_n_0 ),
        .I1(\regA[5]_INST_0_i_2_n_0 ),
        .O(regA[5]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [5]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [5]),
        .O(\regA[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[5]_INST_0_i_2 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [5]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [5]),
        .O(\regA[5]_INST_0_i_2_n_0 ));
  MUXF7 \regA[6]_INST_0 
       (.I0(\regA[6]_INST_0_i_1_n_0 ),
        .I1(\regA[6]_INST_0_i_2_n_0 ),
        .O(regA[6]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [6]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [6]),
        .O(\regA[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[6]_INST_0_i_2 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [6]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [6]),
        .O(\regA[6]_INST_0_i_2_n_0 ));
  MUXF7 \regA[7]_INST_0 
       (.I0(\regA[7]_INST_0_i_1_n_0 ),
        .I1(\regA[7]_INST_0_i_2_n_0 ),
        .O(regA[7]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [7]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [7]),
        .O(\regA[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[7]_INST_0_i_2 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [7]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [7]),
        .O(\regA[7]_INST_0_i_2_n_0 ));
  MUXF7 \regA[8]_INST_0 
       (.I0(\regA[8]_INST_0_i_1_n_0 ),
        .I1(\regA[8]_INST_0_i_2_n_0 ),
        .O(regA[8]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [8]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [8]),
        .O(\regA[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[8]_INST_0_i_2 
       (.I0(\mem_reg[7] [8]),
        .I1(\mem_reg[6] [8]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [8]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [8]),
        .O(\regA[8]_INST_0_i_2_n_0 ));
  MUXF7 \regA[9]_INST_0 
       (.I0(\regA[9]_INST_0_i_1_n_0 ),
        .I1(\regA[9]_INST_0_i_2_n_0 ),
        .O(regA[9]),
        .S(read_addrA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[1] [9]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[0] [9]),
        .O(\regA[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regA[9]_INST_0_i_2 
       (.I0(\mem_reg[7] [9]),
        .I1(\mem_reg[6] [9]),
        .I2(read_addrA[1]),
        .I3(\mem_reg[5] [9]),
        .I4(read_addrA[0]),
        .I5(\mem_reg[4] [9]),
        .O(\regA[9]_INST_0_i_2_n_0 ));
  MUXF7 \regB[0]_INST_0 
       (.I0(\regB[0]_INST_0_i_1_n_0 ),
        .I1(\regB[0]_INST_0_i_2_n_0 ),
        .O(regB[0]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[0]_INST_0_i_1 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [0]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [0]),
        .O(\regB[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[0]_INST_0_i_2 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [0]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [0]),
        .O(\regB[0]_INST_0_i_2_n_0 ));
  MUXF7 \regB[10]_INST_0 
       (.I0(\regB[10]_INST_0_i_1_n_0 ),
        .I1(\regB[10]_INST_0_i_2_n_0 ),
        .O(regB[10]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[10]_INST_0_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [10]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [10]),
        .O(\regB[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[10]_INST_0_i_2 
       (.I0(\mem_reg[7] [10]),
        .I1(\mem_reg[6] [10]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [10]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [10]),
        .O(\regB[10]_INST_0_i_2_n_0 ));
  MUXF7 \regB[11]_INST_0 
       (.I0(\regB[11]_INST_0_i_1_n_0 ),
        .I1(\regB[11]_INST_0_i_2_n_0 ),
        .O(regB[11]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[11]_INST_0_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [11]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [11]),
        .O(\regB[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[11]_INST_0_i_2 
       (.I0(\mem_reg[7] [11]),
        .I1(\mem_reg[6] [11]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [11]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [11]),
        .O(\regB[11]_INST_0_i_2_n_0 ));
  MUXF7 \regB[12]_INST_0 
       (.I0(\regB[12]_INST_0_i_1_n_0 ),
        .I1(\regB[12]_INST_0_i_2_n_0 ),
        .O(regB[12]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[12]_INST_0_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [12]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [12]),
        .O(\regB[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[12]_INST_0_i_2 
       (.I0(\mem_reg[7] [12]),
        .I1(\mem_reg[6] [12]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [12]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [12]),
        .O(\regB[12]_INST_0_i_2_n_0 ));
  MUXF7 \regB[13]_INST_0 
       (.I0(\regB[13]_INST_0_i_1_n_0 ),
        .I1(\regB[13]_INST_0_i_2_n_0 ),
        .O(regB[13]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[13]_INST_0_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [13]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [13]),
        .O(\regB[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[13]_INST_0_i_2 
       (.I0(\mem_reg[7] [13]),
        .I1(\mem_reg[6] [13]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [13]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [13]),
        .O(\regB[13]_INST_0_i_2_n_0 ));
  MUXF7 \regB[14]_INST_0 
       (.I0(\regB[14]_INST_0_i_1_n_0 ),
        .I1(\regB[14]_INST_0_i_2_n_0 ),
        .O(regB[14]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[14]_INST_0_i_1 
       (.I0(\mem_reg[3] [14]),
        .I1(\mem_reg[2] [14]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [14]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [14]),
        .O(\regB[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[14]_INST_0_i_2 
       (.I0(\mem_reg[7] [14]),
        .I1(\mem_reg[6] [14]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [14]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [14]),
        .O(\regB[14]_INST_0_i_2_n_0 ));
  MUXF7 \regB[15]_INST_0 
       (.I0(\regB[15]_INST_0_i_1_n_0 ),
        .I1(\regB[15]_INST_0_i_2_n_0 ),
        .O(regB[15]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[15]_INST_0_i_1 
       (.I0(\mem_reg[3] [15]),
        .I1(\mem_reg[2] [15]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [15]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [15]),
        .O(\regB[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[15]_INST_0_i_2 
       (.I0(\mem_reg[7] [15]),
        .I1(\mem_reg[6] [15]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [15]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [15]),
        .O(\regB[15]_INST_0_i_2_n_0 ));
  MUXF7 \regB[1]_INST_0 
       (.I0(\regB[1]_INST_0_i_1_n_0 ),
        .I1(\regB[1]_INST_0_i_2_n_0 ),
        .O(regB[1]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[1]_INST_0_i_1 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [1]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [1]),
        .O(\regB[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[1]_INST_0_i_2 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [1]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [1]),
        .O(\regB[1]_INST_0_i_2_n_0 ));
  MUXF7 \regB[2]_INST_0 
       (.I0(\regB[2]_INST_0_i_1_n_0 ),
        .I1(\regB[2]_INST_0_i_2_n_0 ),
        .O(regB[2]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[2]_INST_0_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [2]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [2]),
        .O(\regB[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[2]_INST_0_i_2 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [2]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [2]),
        .O(\regB[2]_INST_0_i_2_n_0 ));
  MUXF7 \regB[3]_INST_0 
       (.I0(\regB[3]_INST_0_i_1_n_0 ),
        .I1(\regB[3]_INST_0_i_2_n_0 ),
        .O(regB[3]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[3]_INST_0_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [3]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [3]),
        .O(\regB[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[3]_INST_0_i_2 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [3]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [3]),
        .O(\regB[3]_INST_0_i_2_n_0 ));
  MUXF7 \regB[4]_INST_0 
       (.I0(\regB[4]_INST_0_i_1_n_0 ),
        .I1(\regB[4]_INST_0_i_2_n_0 ),
        .O(regB[4]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[4]_INST_0_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [4]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [4]),
        .O(\regB[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[4]_INST_0_i_2 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [4]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [4]),
        .O(\regB[4]_INST_0_i_2_n_0 ));
  MUXF7 \regB[5]_INST_0 
       (.I0(\regB[5]_INST_0_i_1_n_0 ),
        .I1(\regB[5]_INST_0_i_2_n_0 ),
        .O(regB[5]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[5]_INST_0_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [5]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [5]),
        .O(\regB[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[5]_INST_0_i_2 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [5]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [5]),
        .O(\regB[5]_INST_0_i_2_n_0 ));
  MUXF7 \regB[6]_INST_0 
       (.I0(\regB[6]_INST_0_i_1_n_0 ),
        .I1(\regB[6]_INST_0_i_2_n_0 ),
        .O(regB[6]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[6]_INST_0_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [6]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [6]),
        .O(\regB[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[6]_INST_0_i_2 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [6]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [6]),
        .O(\regB[6]_INST_0_i_2_n_0 ));
  MUXF7 \regB[7]_INST_0 
       (.I0(\regB[7]_INST_0_i_1_n_0 ),
        .I1(\regB[7]_INST_0_i_2_n_0 ),
        .O(regB[7]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[7]_INST_0_i_1 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [7]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [7]),
        .O(\regB[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[7]_INST_0_i_2 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [7]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [7]),
        .O(\regB[7]_INST_0_i_2_n_0 ));
  MUXF7 \regB[8]_INST_0 
       (.I0(\regB[8]_INST_0_i_1_n_0 ),
        .I1(\regB[8]_INST_0_i_2_n_0 ),
        .O(regB[8]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[8]_INST_0_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [8]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [8]),
        .O(\regB[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[8]_INST_0_i_2 
       (.I0(\mem_reg[7] [8]),
        .I1(\mem_reg[6] [8]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [8]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [8]),
        .O(\regB[8]_INST_0_i_2_n_0 ));
  MUXF7 \regB[9]_INST_0 
       (.I0(\regB[9]_INST_0_i_1_n_0 ),
        .I1(\regB[9]_INST_0_i_2_n_0 ),
        .O(regB[9]),
        .S(read_addrB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[9]_INST_0_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[1] [9]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[0] [9]),
        .O(\regB[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regB[9]_INST_0_i_2 
       (.I0(\mem_reg[7] [9]),
        .I1(\mem_reg[6] [9]),
        .I2(read_addrB[1]),
        .I3(\mem_reg[5] [9]),
        .I4(read_addrB[0]),
        .I5(\mem_reg[4] [9]),
        .O(\regB[9]_INST_0_i_2_n_0 ));
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
