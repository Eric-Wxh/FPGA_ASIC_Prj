`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 19:58:00
// Design Name: 
// Module Name: counter_enable
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


module counter_enable(
    input sys_clk,
    input rst_n,
    input key_in,
    input mode,
    output reg en
    );
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            en <= 0;

        else if (!mode) begin           //在计时模式，按开始/停止按键可以控制计时器的启停
            if (key_in)
                en <= ~en;

            else
                en <= en;
        end
            
        else
            en <= en;
    end
endmodule
