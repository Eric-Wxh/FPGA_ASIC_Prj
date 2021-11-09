`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 13:35:37
// Design Name: 
// Module Name: key_test_0
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


module key_test_0(
    input sys_clk,
    input rst_n,
    input key,
    output reg led
    );
    wire key_r_flag;

    key_filter key_filter_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key(key),
        .key_out(),
        .key_p_flag(),
        .key_r_flag(key_r_flag)
    );

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            led <= 0;

        else if (key_r_flag)
            led <= ~led;

        else
            led <= led;
    end
endmodule
