`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 20:22:19
// Design Name: 
// Module Name: timer_adj
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 在mode_timer高有效时，按键有效。disp_switch按键用于切换显示模式
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module timer_adj(
    input sys_clk,
    input rst_n,
    input set_hour_pre,
    input set_min_pre,
    input confirm_pre,
    input disp_switch,
    input mode_timer,
    output [31:0] cnt_24,           //将其引出的目的是送入闹钟设置模块进行比较
    output disp_mode,
    output [31:0] data_timer
    );
    wire [7:0] hour_load;
    wire [7:0] min_load;

    //disp_mode = 0时，显示当前计时数据；disp_mode = 1时，显示预加载数据
    assign data_timer = disp_mode ? {hour_load,4'ha,min_load,4'ha,8'h00} : cnt_24;

    time_set time_set_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .set_hour_pre(set_hour_pre),
        .set_min_pre(set_min_pre),
        .mode_timer(mode_timer),
        .disp_mode(disp_mode),
        .hour_load(hour_load),
        .min_load(min_load)
    );

    counter_24h counter_24h_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .load_pre(confirm_pre),
        .hour_load(hour_load),
        .min_load(min_load),
        .disp_mode(disp_mode),
        .mode_timer(mode_timer),
        .cnt_24(cnt_24)
    );

    counter_enable key_enable_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_in(disp_switch),
        .mode(~mode_timer),
        .en(disp_mode)
    );
endmodule
