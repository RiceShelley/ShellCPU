`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 10:20:34 PM
// Design Name: 
// Module Name: clk_div
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


module clk_div(
        input clk_in,
        output clk_out
    );
    
    reg [12:0] cnt = 0;
    
    assign clk_out = cnt[12];
    
    always @(posedge clk_in) begin
        cnt <= cnt + 1;
    end
    
endmodule
