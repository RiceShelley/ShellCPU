`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 07:16:25 PM
// Design Name: 
// Module Name: programmer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module programmer # (
        parameter READ_CMD = 0,
        WRITE_PROG_MEM_CMD = 255,
        WRITE_DATA_MEM_CMD = 254,
        
        PROG_MODE_SET_HIGH = 253,
        PROG_MODE_SET_LOW = 252,
        CPU_CLK_EN_SET_HIGH = 251,
        CPU_CLK_EN_SET_LOW = 250,
        PC_RST_SET_HIGH = 249,
        PC_RST_SET_LOW = 248
    )(
        input clk,
        input rx_ready,
        input tx_ready,
        input [7:0] rx_data,
        output reg [7:0] tx_buff = 0,
        output reg tx_start_trans = 0,
        output reg [15:0] addr = 0,
        output reg [15:0] dout = 0,
        input [7:0] din,
        output reg prog_mem_wr = 0,
        output reg data_mem_wr = 0,
        output reg prog_mode = 0,
        output reg cpu_clk_en = 1,
        output reg cpu_rst = 0
    );
    
    localparam
    WAIT_FOR_CMD = 0,
    GET_ADDR0 = 1,
    GET_ADDR1 = 2,
    WRITE0 = 3,
    WRITE1 = 4,
    READ = 5,
    DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC = 6;
    
    reg [7:0] delay_cnt = 0;
    
    reg [2:0] state = 0;
    
    reg [7:0] cmd = 0;
    
    reg [1:0] rx_ready_buff = 0;
    wire posedge_rx_ready = (rx_ready_buff == 2'b01);
    always @(posedge clk) begin
        rx_ready_buff <= {rx_ready_buff[0], rx_ready};
    end
    
    always @(posedge clk) begin
    
        case (state)
            WAIT_FOR_CMD:
            begin
                if (posedge_rx_ready) begin
                    if (rx_data == PROG_MODE_SET_HIGH) begin
                        prog_mode <= 1;
                    end else if (rx_data == PROG_MODE_SET_LOW) begin
                        prog_mode <= 0;
                    end else if (rx_data == CPU_CLK_EN_SET_HIGH) begin
                        cpu_clk_en <= 1;
                    end else if (rx_data == CPU_CLK_EN_SET_LOW) begin
                        cpu_clk_en <= 0;
                    end else if (rx_data == PC_RST_SET_HIGH) begin
                        cpu_rst <= 1;
                    end else if (rx_data == PC_RST_SET_LOW) begin
                        cpu_rst <= 0;
                    end else begin
                        cmd <= rx_data;
                        state <= GET_ADDR0;
                        prog_mem_wr <= 0;
                        data_mem_wr <= 0;
                        tx_start_trans <= 0;
                    end
                end else begin
                    state <= WAIT_FOR_CMD;
                end
            end
            GET_ADDR0:
            begin
                if (posedge_rx_ready) begin
                    addr[7:0] <= rx_data;
                    state <= GET_ADDR1;
                end else begin
                    state <= state;
                end
            end
            GET_ADDR1:
            begin
                if (posedge_rx_ready) begin
                    addr[15:8] <= rx_data;
                    if (cmd == READ_CMD) begin
                        state <= READ;
                    end else if (cmd == WRITE_PROG_MEM_CMD || cmd == WRITE_DATA_MEM_CMD) begin
                        state <= WRITE0;
                    end else begin
                        // Unkown cmd -> Default to a read
                        state <= READ;
                    end
                end else begin
                    state <= state;
                end
            end
            WRITE0:
            begin
                if (posedge_rx_ready) begin
                    dout[7:0] <= rx_data;
                    state <= WRITE1;
                end else begin
                    state <= state;
                end
            end
            WRITE1:
            begin
                if (posedge_rx_ready) begin
                    dout[15:8] <= rx_data;
                    if (cmd == WRITE_PROG_MEM_CMD) begin
                        prog_mem_wr <= 1;
                    end else begin
                        data_mem_wr <= 1;
                    end
                    delay_cnt <= 0;
                    state <= DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC;
                end else begin
                    state <= state;
                end
            end
            DELAY_FOR_CPU_CLK_DOMAIN_DATA_SYNC:
            begin
                // programmer on 100Mhz clk domain
                // delay so that data can be syncronized to CPU clk domain
                if (delay_cnt == 8'd250) begin
                    state <= WAIT_FOR_CMD;
                    prog_mem_wr <= 0;
                    data_mem_wr <= 0;
                end else begin 
                    delay_cnt <= delay_cnt + 1;
                end
            end
            READ:
            begin
                if (tx_ready) begin
                    tx_buff <= din;
                    tx_start_trans <= 1;
                    state <= WAIT_FOR_CMD;
                end else begin
                    state <= state;
                end
            end
        endcase
    
    end
    
endmodule