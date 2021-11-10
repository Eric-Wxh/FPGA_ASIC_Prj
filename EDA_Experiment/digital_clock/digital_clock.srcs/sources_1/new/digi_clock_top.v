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

    counter_1h counter_1h_inst(
        .clk_100Hz(),
        .rst_n(rst_n),
        .count_en(),
        .data_1h()
    );

    seg_ex_drive disp_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    data_store_read data_store_read_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_sta_sto(),
        .key_store(),
        .key_read(),
        .data_in(),
        .store_data_disp(),
        .disp_mode()
    );

    key_filter key_filter_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(),                     //如果要用Zynq, 按键输入信号无需取反; 如果用Basys2, 按键输入需要取反
        .key_out(),
        .key_p_flag(),
        .key_r_flag()
    );
endmodule
