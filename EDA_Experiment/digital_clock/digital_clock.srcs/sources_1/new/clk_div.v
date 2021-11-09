`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 19:09:25
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
    input sys_clk,
    input rst_n,
    output reg clk_100Hz
    );
    reg [18:0] cnt;
    parameter MCNT = 249999;

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt <= 0;

        else if (cnt >= MCNT-1)
            cnt <= 0;

        else
            cnt <= cnt + 1;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            clk_100Hz <= 0;

        else if (cnt >= MCNT-1)
            clk_100Hz <= ~clk_100Hz;

        else
            clk_100Hz <= clk_100Hz;
    end
endmodule
