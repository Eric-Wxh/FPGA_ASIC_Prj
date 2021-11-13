`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 15:34:25
// Design Name: 
// Module Name: count_led_4_tb
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


module count_led_4_tb();
    reg sys_clk;
    reg rst_n;
    reg [31:0] time_set;
    reg [7:0] ctrl;
    wire led;

    count_led_4 uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .time_set(time_set),
        .ctrl(ctrl),
        .led(led)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        time_set = 50000;
        ctrl = 8'b01011001;
        #101;

        rst_n = 1;

        #40000000;
        $stop;
    end
endmodule
