vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_prog_mem_0_0/sim/design_1_prog_mem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_data_mem_0_0/sim/design_1_data_mem_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ip/design_1_programmer_0_0/sim/design_1_programmer_0_0.vhd" \
"../../../bd/design_1/ip/design_1_uart_0_2/sim/design_1_uart_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shell_imp.srcs/sources_1/bd/design_1/ipshared/85a3" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_and_gate_0_0/sim/design_1_and_gate_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_0/sim/design_1_sync_extern_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_word_0_0/sim/design_1_sync_word_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_word_1_0/sim/design_1_sync_word_1_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_1/sim/design_1_sync_extern_0_1.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_1_0/sim/design_1_sync_extern_1_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_2/sim/design_1_sync_extern_0_2.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_3/sim/design_1_sync_extern_0_3.vhd" \
"../../../bd/design_1/ip/design_1_shell_cpu_top_0_0/sim/design_1_shell_cpu_top_0_0.vhd" \
"../../../bd/design_1/ip/design_1_uart_controller_0_0/sim/design_1_uart_controller_0_0.vhd" \
"../../../bd/design_1/ip/design_1_uart_0_0/sim/design_1_uart_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_0_4/sim/design_1_sync_extern_0_4.vhd" \
"../../../bd/design_1/ip/design_1_sync_byte_0_0/sim/design_1_sync_byte_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_1_1/sim/design_1_sync_extern_1_1.vhd" \
"../../../bd/design_1/ip/design_1_sync_byte_1_0/sim/design_1_sync_byte_1_0.vhd" \
"../../../bd/design_1/ip/design_1_sync_extern_2_0/sim/design_1_sync_extern_2_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

