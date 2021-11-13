`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/31 20:36:54
// Design Name: 
// Module Name: seg_ex_drive_tb
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


module seg_ex_drive_tb();
    reg sys_clk;
    reg rst_n;
    reg [31:0] data_in;
    wire data_ser;
    wire rclk;
    wire srclk;

    seg_ex_drive uut (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        data_in = 32'h12345678;
        
        #101;
        rst_n = 1;

        #50000;
        data_in = 128'h87654321;
    end
endmodule
