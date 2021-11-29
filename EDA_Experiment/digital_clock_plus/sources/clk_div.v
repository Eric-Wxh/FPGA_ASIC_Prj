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
    output reg clk_100Hz,
    output reg clk_1Hz
    );
    reg [18:0] cnt0;
    reg [24:0] cnt1;
    parameter MCNT0 = 250000;
    //parameter MCNT0 = 25;
    parameter MCNT1 = 25000000;

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt0 <= 0;

        else if (cnt0 >= MCNT0-1)
            cnt0 <= 0;

        else
            cnt0 <= cnt0 + 1;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            clk_100Hz <= 0;

        else if (cnt0 >= MCNT0-1)
            clk_100Hz <= ~clk_100Hz;

        else
            clk_100Hz <= clk_100Hz;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt1 <= 0;

        else if (cnt1 >= MCNT1 -1)
            cnt1 <= 0;

        else
            cnt1 <= cnt1 + 1;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            clk_1Hz <= 0;

        else if (cnt1 >= MCNT1 - 1)
            clk_1Hz <= ~clk_1Hz;

        else
            clk_1Hz <= clk_1Hz;
    end
endmodule
