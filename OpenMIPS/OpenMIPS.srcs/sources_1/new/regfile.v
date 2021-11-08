`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 23:23:46
// Design Name: 
// Module Name: regfile
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
`include "defines.vh"

module regfile(
    input rst,
    input clk,

    //写端口
    input [`RegAddrBus] waddr,          //要写入的寄存器地址
    input [`RegBus] wdata,              //要写入的数据
    input we,                           //写使能信号

    //读端口1
    input [`RegAddrBus] raddr1,         //第一个读寄存器端口要读取的寄存器地址
    input re1,                          //第一个读寄存器端口读使能信号
    output reg [`RegBus] rdata1,        //第一个读寄存器端口输出的寄存器

    //读端口2
    input [`RegAddrBus] raddr2,         //第二个读寄存器端口要读取的寄存器地址
    input re2,                          //第二个读寄存器端口读使能信号
    output [`RegBus] rdata2             //第二个读寄存器端口输出的寄存器
    );

//-------------------------------------<定义32个32位寄存器>---------------------------------------//
    reg [`RegBus] regs [`RegNum-1:0];

//-------------------------------------------<写操作>--------------------------------------------//
    always @(posedge clk) begin
        if (rst == `RstDisable) begin
            if ((we == `WriteEnable) && (waddr != `RegNumLog2'h0))      //写使能&&写入地址不为0，此处由于MIPS架构规定$0的值只能为0
                regs[waddr] <= wdata;
        end
    end
endmodule
