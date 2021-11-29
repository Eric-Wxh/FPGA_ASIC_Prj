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
    input sta_sto_flag,
    input store_flag,                    //控制存储按键
    input read_flag,                     //控制读取按键
    input [31:0] data_in,               //待读取的实时时刻
    output [31:0] store_data_disp,
    output reg [4:0] num_order,         //显示数据的编号
    output full_indicator,
    output reg disp_mode                //显示模式选择，选择显示当前计时值和历史计时值
    );
    reg [31:0] data_reg[15:0];          //存储16位数据
    reg [4:0] store_cnt;                //记录存储数据的个数

    reg [4:0] read_cnt;                 //选择查看的数据

    //--------------------------------<数据存储>----------------------------------//
    //按键按下时，存储数据
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin                       //清空数据
            data_reg[0] <= 32'h00a00a00;
            data_reg[1] <= 32'h00a00a00;
            data_reg[2] <= 32'h00a00a00;
            data_reg[3] <= 32'h00a00a00;
            data_reg[4] <= 32'h00a00a00;
            data_reg[5] <= 32'h00a00a00;
            data_reg[6] <= 32'h00a00a00;
            data_reg[7] <= 32'h00a00a00;
            data_reg[8] <= 32'h00a00a00;
            data_reg[9] <= 32'h00a00a00;
            data_reg[10] <= 32'h00a00a00;
            data_reg[11] <= 32'h00a00a00;
            data_reg[12] <= 32'h00a00a00;
            data_reg[13] <= 32'h00a00a00;
            data_reg[14] <= 32'h00a00a00;
            data_reg[15] <= 32'h00a00a00;
        end

        else if (!disp_mode) begin
            if (store_flag) begin               //按下存储按键，若存取了16组数据以上，则停止存取
                if (store_cnt < 16) begin
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

                else begin
                    data_reg[0] <= data_reg[0];
                    data_reg[1] <= data_reg[1];
                    data_reg[2] <= data_reg[2];
                    data_reg[3] <= data_reg[3];
                    data_reg[4] <= data_reg[4];
                    data_reg[5] <= data_reg[5];
                    data_reg[6] <= data_reg[6];
                    data_reg[7] <= data_reg[7];
                    data_reg[8] <= data_reg[8];
                    data_reg[9] <= data_reg[9];
                    data_reg[10] <= data_reg[10];
                    data_reg[11] <= data_reg[11];
                    data_reg[12] <= data_reg[12];
                    data_reg[13] <= data_reg[13];
                    data_reg[14] <= data_reg[14];
                    data_reg[15] <= data_reg[15];
                end
            end

            else begin
                data_reg[0] <= data_reg[0];
                data_reg[1] <= data_reg[1];
                data_reg[2] <= data_reg[2];
                data_reg[3] <= data_reg[3];
                data_reg[4] <= data_reg[4];
                data_reg[5] <= data_reg[5];
                data_reg[6] <= data_reg[6];
                data_reg[7] <= data_reg[7];
                data_reg[8] <= data_reg[8];
                data_reg[9] <= data_reg[9];
                data_reg[10] <= data_reg[10];
                data_reg[11] <= data_reg[11];
                data_reg[12] <= data_reg[12];
                data_reg[13] <= data_reg[13];
                data_reg[14] <= data_reg[14];
                data_reg[15] <= data_reg[15];
            end
        end
    end

    //按键按下时，记录存储的数据的个数
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            store_cnt <= 0;

        else if (store_flag) begin
            if (16 <= store_cnt)
                store_cnt <= 16;

            else
                store_cnt <= store_cnt + 1;
        end

        else
            store_cnt <= store_cnt;
    end

    assign full_indicator = (store_cnt == 16) ? 1'b1 : 1'b0;

    //--------------------------------<数据读取>----------------------------------//
    assign store_data_disp = data_reg[read_cnt[3:0]];

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            read_cnt <= 15;

        else if (disp_mode) begin                       //当disp_mode=1时，可以选择查看历史数据
            if (sta_sto_flag) begin              //当按下开始/停止按键时，按照顺序显示历史数据
                if (read_cnt >= 15) begin
                    if (store_cnt == 0)
                        read_cnt <= 15;
                    
                    else
                        read_cnt <= 16 - store_cnt;
                end

                else
                    read_cnt <= read_cnt + 1;
            end

            else
                read_cnt <= read_cnt;
        end

        else
            read_cnt <= read_cnt;
    end

    //读取按键，可以控制显示模式
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            disp_mode <= 0;

        else if (read_flag)
            disp_mode <= ~disp_mode;

        else
            disp_mode <= disp_mode;
    end

    //数据编号的显示控制
    always @(*) begin
        if (store_cnt >= 16)
            num_order = read_cnt + 1;

        else
            num_order = read_cnt - (5'd15 - store_cnt);
    end
endmodule