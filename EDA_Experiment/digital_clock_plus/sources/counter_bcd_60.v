`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 21:22:18
// Design Name: 
// Module Name: counter_bcd_60
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


module counter_bcd_60(
    input clk,
    input rst_n,
    input clr_flag,
    input en,
    output reg [7:0] cnt_60,
    output reg carry_60
    );
    reg carry_10;
    
    //低位计数
    always @(posedge clk or negedge rst_n or posedge clr_flag) begin
        if (!rst_n)
            cnt_60[3:0] <= 0;

        else if (clr_flag)
            cnt_60[3:0] <= 0;

        else if (en) begin
            if (cnt_60[3:0] >= 9)
                cnt_60[3:0] <= 0;

            else
                cnt_60[3:0] <= cnt_60[3:0] + 1;
        end

        else
            cnt_60[3:0] <= cnt_60[3:0];
    end

    //低位进位
    always @(*) begin
        if (!rst_n)
            carry_10 = 0;

        else if (cnt_60[3:0] == 9)
            carry_10 = 1;

        else
            carry_10 = 0;
    end

    //高位计数
    always @(posedge clk or negedge rst_n or posedge clr_flag) begin
        if (!rst_n)
            cnt_60[7:4] <= 0;

        else if (clr_flag)
            cnt_60[7:4] <= 0;

        else if (en) begin
            if (carry_10) begin
                if (cnt_60[7:4] >= 5)
                    cnt_60[7:4] <= 0;

                else
                    cnt_60[7:4] <= cnt_60[7:4] + 1;
            end

            else
                cnt_60[7:4] <= cnt_60[7:4];
        end

        else
            cnt_60[7:4] <= cnt_60[7:4];
    end

    //
    always @(*) begin
        if (!rst_n)
            carry_60 = 0;

        else if (cnt_60 == 8'h59)
            carry_60 = 1;

        else
            carry_60 = 0;
    end
endmodule
