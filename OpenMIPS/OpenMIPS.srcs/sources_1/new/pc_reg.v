`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 20:42:32
// Design Name: 
// Module Name: pc_reg
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
`include "defines.vh"       //每个设计源文件中要使用头文件的定义，需要包含头文件

//PC模块的作用是给出指令地址
module pc_reg(
    input rst,                          //复位信号，宏定义中定义为高有效
    input clk,                          //时钟信号
    output reg [`InstAddrBus] pc,       //要读取的指令地址;要使用头文件中定义的常量，需要在名称前面加" ` "
    output reg ce                       //指令存储器使能信号
    );

    always @(posedge clk) begin
        if (rst == `RstEnable)
            ce <= `ChipDisable;

        else
            ce <= `ChipEnable;
    end
    
    always @(posedge clk) begin
        if(ce == `ChipDisable)
            pc <= 32'h0000_0000;

        else
            pc <= pc + 32'd4;
    end
endmodule
