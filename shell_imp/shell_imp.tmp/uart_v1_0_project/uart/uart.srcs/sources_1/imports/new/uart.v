`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rice Shelley
// 
// Create Date: 03/13/2020 03:35:38 PM
// Design Name: UART controller for 115200 baud 
// Module Name: uart
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

/*
* <---------- SIGNAL Descriptions ---------->
* clk               <- 100MHz clk
* rx                <- recv data line RxD
* rx_data           <- 8 bit received data port
* rx_ready          <- goes high when data is ready to be read from rx_data port
* tx_buff           <- 8 bit data port of byte to be transmitted 
* tx_start_trans    <- initiates transmission of data on tx_buff port on rising edge
* tx                <- transsmit data line TxD
* tx_ready          <- Signal high when tx is ready to start a transmission
*/

module uart(
        input clk,
        input rx,
        output [7:0] rx_data,
        output reg rx_ready = 0,
        input[7:0] tx_buff,
        input tx_start_trans,
        output reg tx = 1,
        output tx_ready
    );
    
    // <----------- Generate baudrate clock -----------> 
    // baudrate = 115200
    // (100Mhz / baudrate) / 2 = period of baudrate = 433
    parameter clk_acc_limit = 9'd433;
    
    reg [8:0] clk_acc = 0;
    reg baud_clk = 0;
    reg baud_rst = 0;
    reg posedge_baud_clk = 0;
    
    // Generate baud
    always @(posedge clk) begin
        if (baud_rst) begin
            clk_acc = clk_acc_limit / 2;
        end else if (clk_acc == clk_acc_limit) begin
            clk_acc <= 0;
            baud_clk <= ~baud_clk;
            if (baud_clk == 0) begin
                posedge_baud_clk <= 1;
            end else begin
                posedge_baud_clk <= posedge_baud_clk;
            end
        end else begin
            clk_acc <= clk_acc + 1;
            posedge_baud_clk <= 0;
        end
    end
    
    // <----------- Receive byte -----------> 
    parameter 
    RX_START = 0,
    RX_RECV = 1,
    RX_STOP = 2,
    RX_IDLE = 3;
    
    reg [7:0] rx_buff = 8'd0;
    assign rx_data = rx_buff;
    reg [1:0] rx_state = RX_IDLE;
    reg [2:0] rx_pos = 0;
    
    // IF falling edge on rx then rx_start_recv signal high
    reg [1:0] rx_start_bit_buff = 0;
    always @(posedge clk) begin
        rx_start_bit_buff <= {rx_start_bit_buff[0], rx};
    end
    wire rx_start_recv = (rx_start_bit_buff == 2'b10);
    
    always @(posedge clk) begin
        case (rx_state)
            RX_START:
            begin
                baud_rst <= 0;
                if (posedge_baud_clk) begin
                    // if start bit zero begin receiving byte
                    if (rx == 0) begin
                        rx_state <= RX_RECV;
                        rx_pos <= 0;
                    end else begin
                        rx_state <= RX_IDLE;
                    end
                end else begin
                    rx_state <= rx_state;
                end
            end
            RX_RECV:
            begin
                if (posedge_baud_clk) begin
                    // If 8 bits have been received go to RX_STOP state
                    if (rx_pos == 3'd7) begin
                        rx_state <= RX_STOP;
                    end else begin
                        rx_state <= rx_state;
                    end
                    rx_buff[rx_pos] <= rx;
                    rx_pos <= rx_pos + 1;
                end else begin
                    rx_state <= rx_state;
                end
            end
            RX_STOP:
            begin
                if (posedge_baud_clk) begin
                    rx_state <= RX_IDLE;
                    rx_ready <= 1;
                end else begin
                    rx_state <= rx_state;
                end
            end
            RX_IDLE:
            begin
                // if falling edge on rx and in IDLE state start receiving transmission
                if (rx_start_recv) begin
                    rx_state <= RX_START;
                    baud_rst <= 1;
                    rx_ready <= 0;
                end else begin
                    rx_state <= RX_IDLE;
                end
            end
            default:
            begin
                rx_state <= RX_IDLE;
            end
        endcase
    end
    
    // <----------- Transmit byte ----------->
    // Tx states
    parameter 
    TX_START = 0,
    TX_TRANS = 1,
    TX_STOP = 2,
    TX_IDLE = 3;
    
    reg [1:0] tx_state = TX_IDLE;
    reg [2:0] tx_pos = 0;
    
    assign tx_ready = (tx_state == TX_IDLE);
    
    reg [1:0] trans_flag_buff = 0;
    always @(posedge baud_clk) begin
        trans_flag_buff <= {trans_flag_buff[0], tx_start_trans};
    end
    // If rising edge on transmit line and transmit is IDLE
    wire trans_flag_posedge = (trans_flag_buff == 2'b01 && tx_ready);
    
    always @(posedge baud_clk) begin
        case (tx_state)
            TX_START:
            begin
                tx <= 0;
                tx_pos <= 0;
                tx_state <= TX_TRANS;
            end
            TX_TRANS:
            begin
                tx <= tx_buff[tx_pos];
                if (tx_pos == 3'd7) begin
                    tx_state <= TX_STOP;
                end else begin
                    tx_pos <= tx_pos + 1;
                end
            end
            TX_STOP:
            begin
                tx <= 1;
                tx_state <= TX_IDLE;
            end
            TX_IDLE:
            begin
                if (trans_flag_posedge) begin
                    tx_state <= TX_START;
                end else begin
                    tx_state <= TX_IDLE;
                end
            end
            default:
            begin
                tx_state <= TX_IDLE;
            end            
        endcase
    end
endmodule
