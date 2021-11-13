`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 20:40:53
// Design Name: 
// Module Name: count_1s
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


module count_1s(
    input clk_100Hz,
    input rst_n,
    input en,
    output reg [7:0] cnt_sec,
    output reg carry_1s
    );
    reg carry_100ms;

    //最低位计时
    always @(posedge clk_100Hz or negedge rst_n) begin
        if (!rst_n)
            cnt_sec[3:0] <= 0;
        
        else if (en) begin
            if (cnt_sec[3:0] >= 9)
                cnt_sec[3:0] <= 0;

            else
                cnt_sec[3:0] <= cnt_sec[3:0] + 1;
        end

        else
            cnt_sec[3:0] <= cnt_sec[3:0];
    end

    //最低位进位
    always @(*) begin
        if (!rst_n)
            carry_100ms = 0;

        else if (9 == cnt_sec[3:0])
            carry_100ms = 1;

        else
            carry_100ms = 0;
    end

    //高位计时
    always @(posedge clk_100Hz or negedge rst_n) begin
        if (!rst_n)
            cnt_sec[7:4] <= 0;

        else if (en) begin
            if (1 == carry_100ms) begin
                if (9 <= cnt_sec[7:4])
                    cnt_sec[7:4] <= 0;
                else
                    cnt_sec[7:4] <= cnt_sec[7:4] + 1;
            end

            else
                cnt_sec[7:4] <= cnt_sec[7:4];
        end

        else
            cnt_sec[7:4] <= cnt_sec[7:4];
    end

    //进位输出
    always @(*) begin
        if (!rst_n)
            carry_1s = 0;

        else if (cnt_sec == 8'h99)
            carry_1s = 1;

        else
            carry_1s = 0;
    end
endmodule
