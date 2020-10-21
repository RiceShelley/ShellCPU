// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:34:26 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_reg_file_input_mux_0_0_sim_netlist.v
// Design      : design_1_reg_file_input_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reg_file_input_mux_0_0,reg_file_input_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg_file_input_mux,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (output_reg,
    in_alu,
    data_mem,
    next_ins_addr,
    from_stack,
    sel);
  output [15:0]output_reg;
  input [15:0]in_alu;
  input [15:0]data_mem;
  input [15:0]next_ins_addr;
  input [15:0]from_stack;
  input [1:0]sel;

  wire [15:0]data_mem;
  wire [15:0]from_stack;
  wire [15:0]in_alu;
  wire [15:0]next_ins_addr;
  wire [15:0]output_reg;
  wire [1:0]sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file_input_mux U0
       (.data_mem(data_mem),
        .from_stack(from_stack),
        .in_alu(in_alu),
        .next_ins_addr(next_ins_addr),
        .output_reg(output_reg),
        .sel(sel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file_input_mux
   (output_reg,
    data_mem,
    in_alu,
    from_stack,
    sel,
    next_ins_addr);
  output [15:0]output_reg;
  input [15:0]data_mem;
  input [15:0]in_alu;
  input [15:0]from_stack;
  input [1:0]sel;
  input [15:0]next_ins_addr;

  wire [15:0]data_mem;
  wire [15:0]from_stack;
  wire [15:0]in_alu;
  wire [15:0]next_ins_addr;
  wire [15:0]output_reg;
  wire [1:0]sel;

  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[0]_INST_0 
       (.I0(data_mem[0]),
        .I1(in_alu[0]),
        .I2(from_stack[0]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[0]),
        .O(output_reg[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[10]_INST_0 
       (.I0(data_mem[10]),
        .I1(in_alu[10]),
        .I2(from_stack[10]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[10]),
        .O(output_reg[10]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[11]_INST_0 
       (.I0(data_mem[11]),
        .I1(in_alu[11]),
        .I2(from_stack[11]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[11]),
        .O(output_reg[11]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[12]_INST_0 
       (.I0(data_mem[12]),
        .I1(in_alu[12]),
        .I2(from_stack[12]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[12]),
        .O(output_reg[12]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[13]_INST_0 
       (.I0(data_mem[13]),
        .I1(in_alu[13]),
        .I2(from_stack[13]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[13]),
        .O(output_reg[13]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[14]_INST_0 
       (.I0(data_mem[14]),
        .I1(in_alu[14]),
        .I2(from_stack[14]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[14]),
        .O(output_reg[14]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[15]_INST_0 
       (.I0(data_mem[15]),
        .I1(in_alu[15]),
        .I2(from_stack[15]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[15]),
        .O(output_reg[15]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[1]_INST_0 
       (.I0(data_mem[1]),
        .I1(in_alu[1]),
        .I2(from_stack[1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[1]),
        .O(output_reg[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[2]_INST_0 
       (.I0(data_mem[2]),
        .I1(in_alu[2]),
        .I2(from_stack[2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[2]),
        .O(output_reg[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[3]_INST_0 
       (.I0(data_mem[3]),
        .I1(in_alu[3]),
        .I2(from_stack[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[3]),
        .O(output_reg[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[4]_INST_0 
       (.I0(data_mem[4]),
        .I1(in_alu[4]),
        .I2(from_stack[4]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[4]),
        .O(output_reg[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[5]_INST_0 
       (.I0(data_mem[5]),
        .I1(in_alu[5]),
        .I2(from_stack[5]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[5]),
        .O(output_reg[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[6]_INST_0 
       (.I0(data_mem[6]),
        .I1(in_alu[6]),
        .I2(from_stack[6]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[6]),
        .O(output_reg[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[7]_INST_0 
       (.I0(data_mem[7]),
        .I1(in_alu[7]),
        .I2(from_stack[7]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[7]),
        .O(output_reg[7]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[8]_INST_0 
       (.I0(data_mem[8]),
        .I1(in_alu[8]),
        .I2(from_stack[8]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[8]),
        .O(output_reg[8]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \output_reg[9]_INST_0 
       (.I0(data_mem[9]),
        .I1(in_alu[9]),
        .I2(from_stack[9]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(next_ins_addr[9]),
        .O(output_reg[9]));
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
