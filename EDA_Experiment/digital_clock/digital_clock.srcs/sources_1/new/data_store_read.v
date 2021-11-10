`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 11:18:02
// Design Name: 
// Module Name: digi_clock_top
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

module data_store_read(
    input sys_clk,
    input rst_n,
    input key_store,                    //控制存储按键
    input key_read,                     //控制读取按键
    input [31:0] data_in,
    output [31:0] store_data_disp
);
    reg [31:0] data_reg[15:0];          //存储16位数据
    reg [4:0] store_cnt;                //记录存储数据的个数

    //--------------------------------<数据存储>----------------------------------//
    //按键按下时，存储数据
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin                       //清空数据
            data_reg[0] <= 32'h00000000;
            data_reg[1] <= 32'h00000000;
            data_reg[2] <= 32'h00000000;
            data_reg[3] <= 32'h00000000;
            data_reg[4] <= 32'h00000000;
            data_reg[5] <= 32'h00000000;
            data_reg[6] <= 32'h00000000;
            data_reg[7] <= 32'h00000000;
            data_reg[8] <= 32'h00000000;
            data_reg[9] <= 32'h00000000;
            data_reg[10] <= 32'h00000000;
            data_reg[11] <= 32'h00000000;
            data_reg[12] <= 32'h00000000;
            data_reg[13] <= 32'h00000000;
            data_reg[14] <= 32'h00000000;
            data_reg[15] <= 32'h00000000;
        end

        else if (key_store) begin               //按下存储按键，若存取了16组数据以上，则停止存取
            if (store_cnt < 16)
            data_reg[0] <= data_reg[1];
            data_reg[1] <= data_reg[2];
            data_reg[2] <= data_reg[3];
            data_reg[3] <= data_reg[4];
            data_reg[4] <= data_reg[5];
            data_reg[5] <= data_reg[6];
            data_reg[6] <= data_reg[7];
            data_reg[7] <= data_reg[8];
            data_reg[8] <= data_reg[9];
            data_reg[9] <= data_reg[10];
            data_reg[10] <= data_reg[11];
            data_reg[11] <= data_reg[12];
            data_reg[12] <= data_reg[13];
            data_reg[13] <= data_reg[14];
            data_reg[14] <= data_reg[15];
            data_reg[15] <= data_in;
        end
    end

    //按键按下时，记录存储的数据的个数
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            store_cnt <= 0;

        else if (key_store) begin
            if (16 <= store_cnt)
                store_cnt <= 16;

            else
                store_cnt <= store_cnt + 1;
        end

        else
            store_cnt <= store_cnt;
    end

    //--------------------------------<数据读取>----------------------------------//
    
endmodule