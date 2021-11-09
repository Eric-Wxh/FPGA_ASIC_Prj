`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/03 14:06:02
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


module digi_clock_top(
    input sys_clk,
    input rst_n,
    output data_ser,            //595驱动数据数据输出
    output rclk,                //锁存时钟输出
    output srclk                //移位寄存时钟输出
    );
    clk_div clk_div_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .clk_100Hz()
    );

    counter_enable counter_enable_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_in(),
        .en()
    );

    seg_ex_drive disp_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    key_filter key_filter_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(),
        .key_out(),
        .key_p_flag(),
        .key_r_flag()
    );
endmodule
