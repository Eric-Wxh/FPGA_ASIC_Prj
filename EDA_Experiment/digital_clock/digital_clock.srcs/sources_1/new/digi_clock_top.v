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
    input key_sta_sto,
    input key_rst,
    input key_store,
    input key_read,
    output data_ser,            //595驱动数据数据输出
    output rclk,                //锁存时钟输出
    output srclk,               //移位寄存时钟输出
    output [1:0] led            //led[0]亮代表正在计时，led[1]亮代表读取数据
    );
    wire clk_100Hz;             //分频后的100Hz时钟信号
    wire rst_n;                 //消抖后的复位信号
    wire sta_sto_flag;          //开始/停止按键按下标志
    wire store_flag;            //存储按键按下的标志
    wire read_flag;             //读取按键按下的标志
    wire cnt_en;                //计时使能信号
    wire mode;                  //显示模式，mode=0时表示显示实时时间; mode=1时表示显示历史时刻

    wire [31:0] data_rt;        //实时时间
    wire [31:0] data_his;       //存储的历史时间

    assign led = {mode,cnt_en};

    clk_div clk_div_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .clk_100Hz(clk_100Hz)
    );

    counter_enable counter_enable_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_in(sta_sto_flag),
        .mode(mode),
        .en(cnt_en)
    );

    counter_1h counter_1h_inst(
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .count_en(cnt_en),
        .data_1h(data_rt)
    );

    disp_ctrl disp_ctrl_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_rt(data_rt),
        .data_his(data_his),
        .mode(mode),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    data_store_read data_store_read_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .sta_sto_flag(sta_sto_flag),
        .store_flag(store_flag),
        .read_flag(read_flag),
        .data_in(data_rt),
        .store_data_disp(data_his),
        .disp_mode(mode)
    );

    key_filter key_filter_sta_sto (
        .sys_clk(sys_clk),
        .rst_n(1'b1),
        .key(key_sta_sto),                     //如果要用Zynq, 按键输入信号无需取反; 如果用Basys2, 按键输入需要取反
        .key_out(),
        .key_p_flag(sta_sto_flag),
        .key_r_flag()
    );

    key_filter key_filter_rst (
        .sys_clk(sys_clk),
        .rst_n(1'b1),
        .key(key_rst),                     //如果要用Zynq, 按键输入信号无需取反; 如果用Basys2, 按键输入需要取反
        .key_out(rst_n),
        .key_p_flag(),
        .key_r_flag()
    );

    key_filter key_filter_store (
        .sys_clk(sys_clk),
        .rst_n(1'b1),
        .key(key_store),                     //如果要用Zynq, 按键输入信号无需取反; 如果用Basys2, 按键输入需要取反
        .key_out(),
        .key_p_flag(store_flag),
        .key_r_flag()
    );

    key_filter key_filter_read (
        .sys_clk(sys_clk),
        .rst_n(1'b1),
        .key(key_read),                     //如果要用Zynq, 按键输入信号无需取反; 如果用Basys2, 按键输入需要取反
        .key_out(),
        .key_p_flag(read_flag),
        .key_r_flag()
    );
endmodule
