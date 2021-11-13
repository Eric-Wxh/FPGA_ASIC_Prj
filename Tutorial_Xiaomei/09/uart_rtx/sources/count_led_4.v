`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 15:18:46
// Design Name: 
// Module Name: count_led_4
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


module count_led_4(
    input sys_clk,      //50MHz时钟
    input rst_n,
    input [31:0] time_set,      //设置每个单位时间的长度, t = time_set*20(ns)
    input [7:0] ctrl,       //设置8个单位中每个单位的亮灭模式
    output led
    );
    reg [31:0] cnt0;
    reg [2:0] cnt1;

    //单位时间计时
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt0 <= 0;

        else if (cnt0 >= time_set - 1)
            cnt0 <= 0;

        else
            cnt0 <= cnt0 + 1;
    end

    //
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt1 <= 0;

        else if (cnt0 >= time_set - 1) begin
            cnt1 <= cnt1 + 1;
        end

        else
            cnt1 <= cnt1;
    end

    assign led = ctrl[cnt1];
endmodule
