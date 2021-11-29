`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:44 11/24/2021 
// Design Name: 
// Module Name:    seg_disp2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seg_disp2(
    input clk,
    input [7:0] data_in,
    output reg [3:0] dig,
    output reg [7:0] seg
    );
    reg [14:0] cnt;
    reg [1:0] sel;          //数据选择信号，用于选择BCD码数据
    reg [3:0] data_sel;     //分时选择输入的BCD码数据中的4位
    reg clk_div;

    //计数器
    always @(posedge clk) begin
        if (cnt >= 24999)
            cnt <= 0;

        else
            cnt <= cnt + 1;
    end

    //时钟分频
    always @(posedge clk) begin
        if (cnt >= 24999)
            clk_div <= ~clk_div;

        else
            clk_div <= clk_div;
    end

    //数据选择段计数
    always @(posedge clk_div) begin
        if (sel == 2'b01)
            sel <= 2'b00;

        else
            sel <= sel + 1;
    end

    //数据选择
    always @(*) begin
        case (sel)
            2'b00: data_sel = data_in[3:0];
            2'b01: data_sel = data_in[7:4];
            //2'b10: data_sel = data_in[11:8];
            default: data_sel = 4'h0;
        endcase
    end

    //位选控制，低电平有效
    always @(*) begin
        case (sel)
            2'b00: dig <= 4'b1110;
            2'b01: dig <= 4'b1101;
            //2'b10: dig <= 4'b1011; 
            default: dig <= 4'b1111;
        endcase
    end

    //段选控制，低电平点亮，从高到低为a~dp
    always @(*) begin
        case (data_sel)
            4'h0: seg = 8'h03;
            4'h1: seg = 8'h9f;
            4'h2: seg = 8'h25;
            4'h3: seg = 8'h0d;
            4'h4: seg = 8'h99;
            4'h5: seg = 8'h49;
            4'h6: seg = 8'h41;
            4'h7: seg = 8'h1f;
            4'h8: seg = 8'h01;
            4'h9: seg = 8'h09;
            default: seg = 8'hff;
        endcase
    end

endmodule
