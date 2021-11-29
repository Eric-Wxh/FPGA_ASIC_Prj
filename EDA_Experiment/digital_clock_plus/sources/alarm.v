`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/11/21 09:56:02
// Design Name:
// Module Name: alarm
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


module alarm(
    input sys_clk,
    input rst_n,
    input hour_set_pre,                 //调时
    input min_set_pre,                  //调分
    input confirm_cancel_pre,           //设置/取消闹钟
    input [31:0] cnt_24,                //实时计时数据，用于和设置闹钟进行比较，从而触发闹铃
    input mode_alarm,                   //闹钟设置模式，mode_alarm = 1时按键有效，可以对闹钟进行设置
    input mode_timer,                   //计时模式，高有效
    input disp_mode_timer,              //计时模式下的显示模式
    output [31:0] disp_alarm,           //显示设置闹钟的时刻
    output alarm_indicator,             //通过led灯指示闹钟是否开启
    output beep_out
    );
    
    alarm_set alarm_set_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .hour_set_pre(hour_set_pre),
        .min_set_pre(min_set_pre),
        .confirm_cancel_pre(confirm_cancel_pre),
        .mode_alarm(mode_alarm),
        .disp_alarm(disp_alarm),
        .alarm_indicator(alarm_indicator)
    );

    alarm_beep alarm_beep_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .disp_alarm(disp_alarm),
        .cnt_24(cnt_24),
        .alarm_indicator(alarm_indicator),
        .mode_timer(mode_timer),
        .cancel_pre(confirm_cancel_pre),
        .disp_mode_timer(disp_mode_timer),
        .beep_out(beep_out)
    );
endmodule
