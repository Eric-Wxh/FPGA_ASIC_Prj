`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 21:02:37
// Design Name: 
// Module Name: counter_1s_tb
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


module counter_1s_tb();
    reg clk_100Hz;
    reg rst_n;
    reg en;
    wire [7:0] cnt_sec;
    wire carry_1s;

    
    count_1s uut(
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .en(en),
        .cnt_sec(cnt_sec),
        .carry_1s(carry_1s)
    );
    
    /*
    counter_bcd_60 uut(
        .clk(clk_100Hz),
        .rst_n(rst_n),
        .en(en),
        .cnt_60(cnt_sec),
        .carry_60(carry_1s)
    );
    */

    always #10 clk_100Hz = ~clk_100Hz;

    initial begin
        clk_100Hz = 0;
        rst_n = 0;
        en = 0;

        #101;
        rst_n = 1;

        #200;
        en = 1;

        #10500;
        en = 0;

        #10000;
        en = 1;

        #10000;
        $stop;
    end
endmodule
