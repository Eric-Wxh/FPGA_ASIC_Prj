`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 21:18:12
// Design Name: 
// Module Name: if_id
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

//IF/ID模块的作用是暂时保存取指阶段取得的指令，以及对应的指令地址，并在下一个时钟传递到译码阶段
module if_id(
    input rst,                          //复位信号,高有效
    input clk,                          //时钟信号
    input [`InstAddrBus] if_pc,         //取指阶段取得的指令对应的地址
    input [`InstBus] if_inst,           //取值阶段取得的指令
    output reg [`InstAddrBus] id_pc,    //译码阶段的指令对应的地址
    output reg [`InstBus] id_inst       //译码阶段的指令
    );

    //个人理解：每个时钟周期取一个指令地址和指令
    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            id_pc <= `ZeroWord;
            id_inst <= `ZeroWord;
        end

        else begin
            id_pc <= if_pc;
            id_inst <= if_inst;
        end
    end
endmodule
