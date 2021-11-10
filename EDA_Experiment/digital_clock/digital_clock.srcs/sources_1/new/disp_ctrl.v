`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 17:04:18
// Design Name: 
// Module Name: disp_ctrl
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


module disp_ctrl(
    input sys_clk,
    input rst_n,
    input [31:0] data_rt,
    input [31:0] data_his,
    input mode,
    output data_ser,
    output rclk,
    output srclk
    );
    wire [31:0] data_sel;

    seg_ex_drive seg_ex_drive_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(data_sel),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    assign data_sel = mode ? data_his : data_rt;        //当mode=0时，显示实时时间，否则显示存储的历史时刻
endmodule
