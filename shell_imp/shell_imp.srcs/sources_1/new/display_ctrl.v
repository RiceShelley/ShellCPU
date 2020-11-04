`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 10:13:50 PM
// Design Name: 
// Module Name: display_ctrl
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

module display_ctrl(
    input clk,
    input [15:0] pc_in,
    input [15:0] data,
    output reg [31:0] data_out
    );
    
    always @(posedge clk) begin
        data_out <= {data, pc_in};
    end
endmodule
