`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 15:52:54
// Design Name: 
// Module Name: uart_rx_ctrl_led
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


module uart_rx_ctrl_led(
    input sys_clk,
    input rst_n,
    input [2:0] baud_set,
    input uart_rx,
    output led,
    output rx_done
    );
    wire [7:0] rx_data;
    //wire rx_done;
    wire [31:0] time_set;
    wire [7:0] ctrl;

    uart_rx_byte uart_rx_byte_inst0(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .baud_set(baud_set),
        .uart_rx(uart_rx),
        .data_byte(rx_data),
        .rx_done(rx_done)
    );

    uart_cmd_0 uart_cmd_inst1(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .rx_data(rx_data),
        .rx_done(rx_done),
        .time_set(time_set),
        .ctrl(ctrl)
    );

    count_led_4 count_led_inst2(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .time_set(time_set),
        .ctrl(ctrl),
        .led(led)
    );
endmodule
