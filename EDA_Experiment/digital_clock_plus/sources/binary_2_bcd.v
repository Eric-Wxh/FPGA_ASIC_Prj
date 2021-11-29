`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:37:08 11/24/2021 
// Design Name: 
// Module Name:    binary_2_bcd 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 0~15二进制数转BCD码
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binary_2_bcd(
    input disp_en,              //显示使能，在跑表模式下，可以显示存储数据的编号
    input [4:0] binary_in,
    output reg [7:0] bcd_out
    );
    always @(*) begin
        if (disp_en) begin
            case (binary_in)
                5'b00000: bcd_out = 8'h00;
                5'b00001: bcd_out = 8'h01;
                5'b00010: bcd_out = 8'h02;
                5'b00011: bcd_out = 8'h03;
                5'b00100: bcd_out = 8'h04;
                5'b00101: bcd_out = 8'h05;
                5'b00110: bcd_out = 8'h06;
                5'b00111: bcd_out = 8'h07;
                5'b01000: bcd_out = 8'h08;
                5'b01001: bcd_out = 8'h09;
                5'b01010: bcd_out = 8'h10;
                5'b01011: bcd_out = 8'h11;
                5'b01100: bcd_out = 8'h12;
                5'b01101: bcd_out = 8'h13;
                5'b01110: bcd_out = 8'h14;
                5'b01111: bcd_out = 8'h15;
                5'b10000: bcd_out = 8'h16;
                default: bcd_out = 8'hff;
            endcase
        end

        else
            bcd_out = 8'hff;
    end

endmodule
