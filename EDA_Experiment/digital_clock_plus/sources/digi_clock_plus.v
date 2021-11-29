`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 08:59:17
// Design Name: 
// Module Name: digi_clock_plus
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: SW1和SW0为拨码开关，控制工作模式;
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digi_clock_plus(
    input sys_clk,
    input rst_n,
    input [3:0] key,
    input SW1,
    input SW0,
    //数码管驱动输出管脚
    output data_ser,
    output rclk,
    output srclk,
    //LED指示灯
    output alarm_indicator,
    output sta_sto_indicator,
    output his_rd_indicator,
    output full_indicator,
    //板载数码管
    output [3:0] dig,
    output [7:0] seg,
    //蜂鸣器
    output beep_en,
    output buzzer_out
    );
    wire [3:0] key_flag;                //按键消抖后的按键按下标志
    wire clk_100Hz;                     //100Hz时钟，仅用于stopwatch
    wire mode_timer;                    //正常计时模式
    wire mode_stopwatch;                //跑表模式
    wire mode_alarm;                    //闹钟模式
    wire [31:0] data_timer;             //正常计时模式输出数据
    wire [31:0] data_stopwatch;         //跑表数据
    wire [31:0] disp_alarm;             //闹钟数据
    wire [31:0] cnt_24;
    wire disp_mode_timer;
    wire [4:0] num_order;
    wire [7:0] bcd_out;

    clk_div clk_div_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .clk_100Hz(clk_100Hz),
        .clk_1Hz()
    );

    mode_ctrl mode_ctrl_inst (
        .SW1(SW1),
        .SW0(SW0),
        .mode_timer(mode_timer),
        .mode_stopwatch(mode_stopwatch),
        .mode_alarm(mode_alarm)
    );

    disp_ctrl disp_ctrl_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_timer(data_timer),
        .data_stopwatch(data_stopwatch),
        .disp_alarm(disp_alarm),
        .mode_timer(mode_timer),
        .mode_stopwatch(mode_stopwatch),
        .mode_alarm(mode_alarm),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    timer_adj timer_adj_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .set_hour_pre(key_flag[3]),
        .set_min_pre(key_flag[2]),
        .confirm_pre(key_flag[1]),
        .disp_switch(key_flag[0]),
        .mode_timer(mode_timer),
        .cnt_24(cnt_24),
        .disp_mode(disp_mode_timer),
        .data_timer(data_timer)
    );

    stopwatch stopwatch_inst (
        .sys_clk(sys_clk),
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .sta_sto_his_flag_pre(key_flag[3]),
        .clr_flag_pre(key_flag[2]),
        .store_flag_pre(key_flag[1]),
        .read_flag_pre(key_flag[0]),
        .mode_stopwatch(mode_stopwatch),
        .data_stopwatch(data_stopwatch),
        .sta_sto_indicator(sta_sto_indicator),
        .his_rd_indicator(his_rd_indicator),
        .full_indicator(full_indicator),
        .num_order(num_order)
    );

    alarm alarm_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .hour_set_pre(key_flag[3]),
        .min_set_pre(key_flag[2]),
        .confirm_cancel_pre(key_flag[1]),
        .cnt_24(cnt_24),
        .mode_alarm(mode_alarm),
        .mode_timer(mode_timer),
        .disp_mode_timer(disp_mode_timer),
        .disp_alarm(disp_alarm),
        .alarm_indicator(alarm_indicator),
        .beep_out(beep_en)
    );

    binary_2_bcd binary_2_bcd_inst (
        .disp_en(mode_stopwatch),
        .binary_in(num_order),
        .bcd_out(bcd_out)
    );

    seg_disp2 seg_disp_2_inst (
        .clk(sys_clk),
        .data_in(bcd_out),
        .dig(dig),
        .seg(seg)
    );

    pwm_buzzer buzzer_drive_inst (
        .clk(sys_clk),
        .rst_n(beep_en),
        .buzzer(buzzer_out)
    );

    //为适配basys2开发板，这里按键输入信号需要取反
    key_filter key_3_filter (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(~key[3]),
        .key_out(),
        .key_p_flag(key_flag[3]),
        .key_r_flag()
    );

    key_filter key_2_filter (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(~key[2]),
        .key_out(),
        .key_p_flag(key_flag[2]),
        .key_r_flag()
    );

    key_filter key_1_filter (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(~key[1]),
        .key_out(),
        .key_p_flag(key_flag[1]),
        .key_r_flag()
    );

    key_filter key_0_filter (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(~key[0]),
        .key_out(),
        .key_p_flag(key_flag[0]),
        .key_r_flag()
    );
endmodule
