`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 17:04:18
// Design Name: 
// Module Name: disp_ctrl
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


module disp_ctrl(
    input sys_clk,
    input rst_n,
    input [31:0] data_timer,
    input [31:0] data_stopwatch,
    input [31:0] disp_alarm,
    input mode_timer,
    input mode_stopwatch,
    input mode_alarm,
    output data_ser,
    output rclk,
    output srclk
    );
    reg [31:0] data_sel;

    seg_ex_drive seg_ex_drive_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(data_sel),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclk(srclk)
    );

    always @(*) begin
        case ({mode_timer,mode_stopwatch,mode_alarm})
            3'b100: data_sel <= data_timer;
            3'b010: data_sel <= data_stopwatch;
            3'b001: data_sel <= disp_alarm;
            default: data_sel <= data_timer;
        endcase
    end
endmodule
