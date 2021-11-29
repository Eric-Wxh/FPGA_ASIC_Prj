`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/21 18:47:50
// Design Name: 
// Module Name: mode_ctrl
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


module mode_ctrl(
    input SW1,
    input SW0,
    output reg mode_timer,
    output reg mode_stopwatch,
    output reg mode_alarm
    );
    always @(*) begin
        case ({SW1,SW0})
            2'b00: {mode_timer,mode_stopwatch,mode_alarm} = 3'b100;
            2'b01: {mode_timer,mode_stopwatch,mode_alarm} = 3'b010;
            2'b10: {mode_timer,mode_stopwatch,mode_alarm} = 3'b001;
            2'b11: {mode_timer,mode_stopwatch,mode_alarm} = 3'b010;
            default: {mode_timer,mode_stopwatch,mode_alarm} = 3'b100;
        endcase
    end
endmodule
