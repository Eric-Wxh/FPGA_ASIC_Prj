`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 15:53:19
// Design Name: 
// Module Name: uart_cmd_0
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


module uart_cmd_0(
    input sys_clk,      //系统时钟
    input rst_n,        //系统复位
    input [7:0] rx_data,        //字节数据
    input rx_done,      //发送完成信号，发送完成后载入数据到寄存器组中
    output reg [31:0] time_set,     //M5, M4, M3, M2字段控制
    output reg [7:0] ctrl       //M6字段控制
    );
    reg [7:0] rx_data_reg[7:0];
    reg [2:0] cnt;      //移入数据计数

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt <= 0;

        else if (rx_done) begin
            if (cnt >= 7)
                cnt <= 0;

            else
                cnt <= cnt + 1;
        end

        else
            cnt <= cnt;
    end

    //
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n) begin
            rx_data_reg[0] <= 8'h00;
            rx_data_reg[1] <= 8'h00;
            rx_data_reg[2] <= 8'h00;
            rx_data_reg[3] <= 8'h00;
            rx_data_reg[4] <= 8'h00;
            rx_data_reg[5] <= 8'h00;
            rx_data_reg[6] <= 8'h00;
            rx_data_reg[7] <= 8'h00;
        end

        else if (rx_done) begin
            rx_data_reg[7] <= rx_data;
            rx_data_reg[6] <= rx_data_reg[7];
            rx_data_reg[5] <= rx_data_reg[6];
            rx_data_reg[4] <= rx_data_reg[5];
            rx_data_reg[3] <= rx_data_reg[4];
            rx_data_reg[2] <= rx_data_reg[3];
            rx_data_reg[1] <= rx_data_reg[2];
            rx_data_reg[0] <= rx_data_reg[1];
        end
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            time_set <= 0;
            ctrl <= 8'h00;
        end

        else if ((rx_data_reg[0] == 8'h5a) && (rx_data_reg[1] == 8'h86) && (rx_data_reg[7] == 8'hea)) begin
            time_set <= {rx_data_reg[5],rx_data_reg[4],rx_data_reg[3],rx_data_reg[2]};
            ctrl <= rx_data_reg[6];
        end

        else begin
            time_set <= time_set;
            ctrl <= ctrl;
        end     
    end
    
endmodule
