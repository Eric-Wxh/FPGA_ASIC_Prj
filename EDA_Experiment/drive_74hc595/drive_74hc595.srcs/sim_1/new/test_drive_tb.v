`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 20:39:49
// Design Name: 
// Module Name: test_drive_tb
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


module test_drive_tb();
    reg sys_clk;
    reg rst_n;
    wire rclk;
    wire srclr_n;
    wire srclk;
    wire data_ser;

    test_drive uut (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .rclk(rclk),
        .srclr_n(srclr_n),
        .srclk(srclk),
        .data_ser(data_ser),
        .store_done()
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        #101;

        rst_n = 1;
        #100000;

        $stop;
    end
endmodule
