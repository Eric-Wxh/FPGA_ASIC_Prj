`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 22:19:20
// Design Name: 
// Module Name: counter_1h_tb
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


module counter_1h_tb();
    reg clk_100Hz;
    reg rst_n;
    reg count_en;
    wire [31:0] data_1h;

    counter_1h uut(
        .clk_100Hz(clk_100Hz),
        .rst_n(rst_n),
        .count_en(count_en),
        .data_1h(data_1h)
    );

    always #10 clk_100Hz = ~clk_100Hz;

    initial begin
        clk_100Hz = 0;
        rst_n = 0;
        count_en = 0;

        #201;
        rst_n = 1;

        #300;
        count_en = 1;

        #5000000;
        count_en = 0;

        #10000;
        count_en = 1;

        #5000000;
        rst_n = 0;

        #2000;
        rst_n = 1;

        #5000;
        $stop;
    end
endmodule
