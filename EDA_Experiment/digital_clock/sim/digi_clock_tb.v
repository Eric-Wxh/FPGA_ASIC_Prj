`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 17:52:53
// Design Name: 
// Module Name: digi_clock_tb
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


module digi_clock_tb();
    reg sys_clk;
    reg key_sta_sto;
    reg key_rst;
    reg key_store;
    reg key_read;
    wire data_ser;
    wire rclk;
    wire srclk;
    wire [1:0] led;

    digi_clock_top uut(
        .sys_clk(sys_clk),
        .key_sta_sto(key_sta_sto),
        .key_rst(key_rst),
        .key_store(key_store),
        .key_read(key_read),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk),
        .led(led)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        {key_sta_sto,key_rst,key_store,key_read} = 4'b1111;
        sys_clk = 0;

        #101;
        key_rst = 0;
        #301;
        key_rst = 1;

        #300;

        key_sta_sto = 0;
        #201;
        key_sta_sto = 0;
    end
endmodule
