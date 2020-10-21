// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 17:37:47 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CTRL_UNIT_0_0_sim_netlist.v
// Design      : design_1_CTRL_UNIT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CTRL_UNIT_0_0,CTRL_UNIT,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CTRL_UNIT,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (instruction,
    dest_addr,
    regA_addr,
    regB_addr,
    alu_op,
    reg_file_input_sel,
    reg_file_wr,
    pc_ld_en,
    pc_en,
    data_mem_wr,
    cmp_status_wr,
    ri_imm,
    imm,
    alu_input_sel,
    pc_load_sel,
    cmp_eq,
    cmp_ne,
    cmp_gt,
    cmp_lt,
    stack_ld,
    dec_stack,
    inc_stack,
    stack_wr,
    ri_imm_format_sel);
  input [15:0]instruction;
  output [2:0]dest_addr;
  output [2:0]regA_addr;
  output [2:0]regB_addr;
  output [3:0]alu_op;
  output [1:0]reg_file_input_sel;
  output reg_file_wr;
  output pc_ld_en;
  output pc_en;
  output data_mem_wr;
  output cmp_status_wr;
  output [5:0]ri_imm;
  output [10:0]imm;
  output alu_input_sel;
  output pc_load_sel;
  input cmp_eq;
  input cmp_ne;
  input cmp_gt;
  input cmp_lt;
  output stack_ld;
  output dec_stack;
  output inc_stack;
  output stack_wr;
  output ri_imm_format_sel;

  wire alu_input_sel;
  wire [3:0]alu_op;
  wire cmp_eq;
  wire cmp_gt;
  wire cmp_lt;
  wire cmp_ne;
  wire cmp_status_wr;
  wire cmp_status_wr_INST_0_i_1_n_0;
  wire data_mem_wr;
  wire inc_stack;
  wire [15:0]instruction;
  wire pc_en;
  wire pc_ld_en;
  wire pc_ld_en_INST_0_i_1_n_0;
  wire pc_load_sel;
  wire [2:0]regA_addr;
  wire [2:0]regB_addr;
  wire [1:0]reg_file_input_sel;
  wire reg_file_wr;
  wire reg_file_wr_INST_0_i_1_n_0;
  wire stack_ld;
  wire stack_ld_INST_0_i_1_n_0;
  wire stack_wr;

  assign dec_stack = stack_wr;
  assign dest_addr[2:0] = instruction[8:6];
  assign imm[10:0] = instruction[10:0];
  assign ri_imm[5:0] = instruction[5:0];
  assign ri_imm_format_sel = instruction[15];
  LUT3 #(
    .INIT(8'hF4)) 
    alu_input_sel_INST_0
       (.I0(instruction[10]),
        .I1(instruction[12]),
        .I2(instruction[13]),
        .O(alu_input_sel));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[0]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[9]),
        .O(alu_op[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[1]_INST_0 
       (.I0(instruction[10]),
        .I1(instruction[15]),
        .O(alu_op[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[2]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[11]),
        .O(alu_op[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \alu_op[3]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[12]),
        .I2(instruction[10]),
        .O(alu_op[3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    cmp_status_wr_INST_0
       (.I0(instruction[12]),
        .I1(instruction[15]),
        .I2(cmp_status_wr_INST_0_i_1_n_0),
        .I3(instruction[9]),
        .I4(instruction[10]),
        .I5(instruction[11]),
        .O(cmp_status_wr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmp_status_wr_INST_0_i_1
       (.I0(instruction[14]),
        .I1(instruction[13]),
        .O(cmp_status_wr_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    data_mem_wr_INST_0
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[13]),
        .O(data_mem_wr));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    inc_stack_INST_0
       (.I0(instruction[13]),
        .I1(instruction[15]),
        .I2(instruction[10]),
        .I3(instruction[11]),
        .I4(instruction[9]),
        .I5(stack_ld_INST_0_i_1_n_0),
        .O(inc_stack));
  LUT4 #(
    .INIT(16'hFF8A)) 
    pc_en_INST_0
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(pc_ld_en_INST_0_i_1_n_0),
        .I3(instruction[15]),
        .O(pc_en));
  LUT4 #(
    .INIT(16'h004A)) 
    pc_ld_en_INST_0
       (.I0(instruction[14]),
        .I1(pc_ld_en_INST_0_i_1_n_0),
        .I2(instruction[13]),
        .I3(instruction[15]),
        .O(pc_ld_en));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pc_ld_en_INST_0_i_1
       (.I0(cmp_lt),
        .I1(cmp_ne),
        .I2(instruction[11]),
        .I3(cmp_gt),
        .I4(instruction[12]),
        .I5(cmp_eq),
        .O(pc_ld_en_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pc_load_sel_INST_0
       (.I0(instruction[14]),
        .O(pc_load_sel));
  LUT6 #(
    .INIT(64'hAC00AACCAC00CACC)) 
    \regA_addr[0]_INST_0 
       (.I0(instruction[6]),
        .I1(instruction[3]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[13]),
        .I5(instruction[12]),
        .O(regA_addr[0]));
  LUT6 #(
    .INIT(64'hAC00AACCAC00CACC)) 
    \regA_addr[1]_INST_0 
       (.I0(instruction[7]),
        .I1(instruction[4]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[13]),
        .I5(instruction[12]),
        .O(regA_addr[1]));
  LUT6 #(
    .INIT(64'hAC00AACCAC00CACC)) 
    \regA_addr[2]_INST_0 
       (.I0(instruction[8]),
        .I1(instruction[5]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[13]),
        .I5(instruction[12]),
        .O(regA_addr[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \regB_addr[0]_INST_0 
       (.I0(instruction[0]),
        .I1(instruction[14]),
        .I2(instruction[12]),
        .I3(instruction[3]),
        .O(regB_addr[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \regB_addr[1]_INST_0 
       (.I0(instruction[1]),
        .I1(instruction[14]),
        .I2(instruction[12]),
        .I3(instruction[4]),
        .O(regB_addr[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \regB_addr[2]_INST_0 
       (.I0(instruction[2]),
        .I1(instruction[14]),
        .I2(instruction[12]),
        .I3(instruction[5]),
        .O(regB_addr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_file_input_sel[0]_INST_0 
       (.I0(instruction[13]),
        .I1(instruction[15]),
        .O(reg_file_input_sel[0]));
  LUT3 #(
    .INIT(8'h84)) 
    \reg_file_input_sel[1]_INST_0 
       (.I0(instruction[15]),
        .I1(instruction[14]),
        .I2(instruction[13]),
        .O(reg_file_input_sel[1]));
  LUT6 #(
    .INIT(64'h0FF0A0F08FF0F0F0)) 
    reg_file_wr_INST_0
       (.I0(reg_file_wr_INST_0_i_1_n_0),
        .I1(instruction[9]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[13]),
        .I5(instruction[12]),
        .O(reg_file_wr));
  LUT2 #(
    .INIT(4'h1)) 
    reg_file_wr_INST_0_i_1
       (.I0(instruction[10]),
        .I1(instruction[11]),
        .O(reg_file_wr_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    stack_ld_INST_0
       (.I0(stack_ld_INST_0_i_1_n_0),
        .I1(instruction[13]),
        .I2(instruction[15]),
        .I3(instruction[9]),
        .I4(instruction[10]),
        .I5(instruction[11]),
        .O(stack_ld));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stack_ld_INST_0_i_1
       (.I0(instruction[14]),
        .I1(instruction[12]),
        .O(stack_ld_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stack_wr_INST_0
       (.I0(instruction[13]),
        .I1(instruction[15]),
        .I2(instruction[10]),
        .I3(instruction[11]),
        .I4(instruction[9]),
        .I5(stack_ld_INST_0_i_1_n_0),
        .O(stack_wr));
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
