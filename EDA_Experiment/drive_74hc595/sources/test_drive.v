`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 20:35:32
// Design Name: 
// Module Name: test_drive
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


module test_drive(
    input sys_clk,
    input rst_n,
    output rclk,
    //output srclr_n,
    output srclk,
    output data_ser
    );

    drive_74hc595 inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(16'h7fc0),
        .send_en(1'b1),
        .rclk(rclk),
        .srclr_n(),
        .srclk(srclk),
        .data_ser(data_ser)
    );
    ila_0 ila(
        .clk(sys_clk),
        .probe0(data_ser),
        .probe1(srclk),
        .probe2(rclk)
    );
endmodule
