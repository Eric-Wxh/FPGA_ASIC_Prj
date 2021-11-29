`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 20:56:49
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
    input sys_clk,
    input clk_100Hz,
    input rst_n,
    input sta_sto_his_flag_pre,
    input clr_flag_pre,
    input store_flag_pre,
    input read_flag_pre,
    input mode_stopwatch,               //当系统为跑表模式时，按键的该功能有效
    output reg [31:0] data_stopwatch,
    output sta_sto_indicator,           //开始/暂停指示，正在计时时高电平点亮
    output his_rd_indicator,
    output full_indicator,
    output [4:0] num_order              //显示数据的编号
    );
    reg sta_sto_his_flag;
    reg clr_flag;
    reg store_flag;
    reg read_flag;
    wire count_en;
    wire [31:0] data_rt;
    wire [31:0] data_his;
    wire disp_mode;             //disp_mode=0时，输出到数码管驱动的数据为当前计时值；如果disp_mode=1,为存储的时刻

    assign sta_sto_indicator = count_en;
    assign his_rd_indicator = disp_mode;

    //当mode_stopwatch = 1时，按键有效
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            {sta_sto_his_flag,clr_flag,store_flag,read_flag} <= 4'b0000;

        else if (mode_stopwatch)
            {sta_sto_his_flag,clr_flag,store_flag,read_flag} <= {sta_sto_his_flag_pre,clr_flag_pre,store_flag_pre,read_flag_pre};

        else
            {sta_sto_his_flag,clr_flag,store_flag,read_flag} <= 4'b0000;
    end

    counter_1h counter_1h_inst (
        .sys_clk(sys_clk),
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .clr_flag(clr_flag),
        .count_en(count_en),
        .data_1h(data_rt)
    );

    counter_enable counter_enable_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_in(sta_sto_his_flag),
        .mode(disp_mode),
        .en(count_en)
    );

    data_store_read data_store_read_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n & (~clr_flag)),
        .sta_sto_flag(sta_sto_his_flag),
        .store_flag(store_flag),
        .read_flag(read_flag),
        .data_in(data_rt),
        .store_data_disp(data_his),
        .full_indicator(full_indicator),
        .disp_mode(disp_mode),
        .num_order(num_order)
    );

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            data_stopwatch <= 32'd0;

        else if (disp_mode)
            data_stopwatch <= data_his;

        else
            data_stopwatch <= data_rt;
    end
endmodule
