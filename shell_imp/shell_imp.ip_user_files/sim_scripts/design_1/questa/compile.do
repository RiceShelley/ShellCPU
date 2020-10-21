vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_CTRL_UNIT_0_0/sim/design_1_CTRL_UNIT_0_0.vhd" \
"../../../bd/design_1/ip/design_1_reg_file_0_0/sim/design_1_reg_file_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ALU_0_0/sim/design_1_ALU_0_0.vhd" \
"../../../bd/design_1/ip/design_1_prog_mem_0_0/sim/design_1_prog_mem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_prog_cnt_reg_0_0/sim/design_1_prog_cnt_reg_0_0.vhd" \
"../../../bd/design_1/ip/design_1_data_mem_0_0/sim/design_1_data_mem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ALU_CTRL_0_0/sim/design_1_ALU_CTRL_0_0.vhd" \
"../../../bd/design_1/ip/design_1_reg_file_input_mux_0_0/sim/design_1_reg_file_input_mux_0_0.vhd" \
"../../../bd/design_1/ip/design_1_cmp_status_reg_0_0/sim/design_1_cmp_status_reg_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ri_imm_ext_0_0/sim/design_1_ri_imm_ext_0_0.vhd" \
"../../../bd/design_1/ip/design_1_alu_input_mux_0_0/sim/design_1_alu_input_mux_0_0.vhd" \
"../../../bd/design_1/ip/design_1_imm_ext_0_0/sim/design_1_imm_ext_0_0.vhd" \
"../../../bd/design_1/ip/design_1_pc_load_mux_0_0/sim/design_1_pc_load_mux_0_0.vhd" \
"../../../bd/design_1/ip/design_1_adder_0_0/sim/design_1_adder_0_0.vhd" \
"../../../bd/design_1/ip/design_1_adder_1_0/sim/design_1_adder_1_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_stack_ptr_reg_0_0/sim/design_1_stack_ptr_reg_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ri_imm_upper_concat_0_0/sim/design_1_ri_imm_upper_concat_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ri_imm_format_mux_0_0/sim/design_1_ri_imm_format_mux_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_programmer_0_0/sim/design_1_programmer_0_0.vhd" \
"../../../bd/design_1/ip/design_1_uart_0_2/sim/design_1_uart_0_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_and_gate_0_0/sim/design_1_and_gate_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_0/sim/design_1_sync_extern_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_word_0_0/sim/design_1_sync_word_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_word_1_0/sim/design_1_sync_word_1_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_1/sim/design_1_sync_extern_0_1.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_1_0/sim/design_1_sync_extern_1_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_2/sim/design_1_sync_extern_0_2.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

