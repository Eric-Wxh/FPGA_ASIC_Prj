`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 20:28:14
// Design Name: 
// Module Name: counter_1h
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


module counter_1h(
    input sys_clk,
    input clk_100Hz,
    input rst_n,
    input clr_flag,
    input count_en,
    output [31:0] data_1h
    );
    wire carry_1s;
    wire carry_1min;
    wire carry_1h;

    reg carry_1s_reg;
    reg carry_1min_reg;

    assign {data_1h[23:20],data_1h[11:8]} = 8'haa;      //从右到左第2位数码管和第5位数码管显示'-'

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            {carry_1min_reg,carry_1s_reg} <= 2'b00;

        else
            {carry_1min_reg,carry_1s_reg} <= {carry_1min,carry_1s};
    end

    count_1s counter_1s_inst(
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .clr_flag(clr_flag),
        .en(count_en),
        .cnt_sec(data_1h[7:0]),
        .carry_1s(carry_1s)
    );

    counter_bcd_60 counter_60s_inst(
        .clk(~carry_1s_reg),
        .rst_n(rst_n),
        .clr_flag(clr_flag),
        .en(count_en),
        .cnt_60(data_1h[19:12]),
        .carry_60(carry_1min)
    );

    counter_bcd_60 counter_60min_inst(
        .clk(~carry_1min_reg),
        .rst_n(rst_n),
        .clr_flag(clr_flag),
        .en(count_en),
        .cnt_60(data_1h[31:24]),
        .carry_60(carry_1h)
    );
endmodule
