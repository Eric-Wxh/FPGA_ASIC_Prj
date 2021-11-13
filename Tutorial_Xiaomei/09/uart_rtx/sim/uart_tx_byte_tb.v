`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 13:32:47
// Design Name: 
// Module Name: uart_tx_byte_tb
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


module uart_tx_byte_tb();
    reg clk;
    reg [7:0] data_byte;
    reg [2:0] baud_set;
    reg send_go;
    reg rst_n;
    wire uart_tx;
    wire tx_done;
    wire uart_state;
    wire [3:0] byte_cnt;

    uart_tx_byte uut(
        .clk(clk),
        .data_byte(data_byte),
        .baud_set(baud_set),
        .send_go(send_go),
        .rst_n(rst_n),
        .uart_tx(uart_tx),
        .tx_done(tx_done),
        .uart_state(uart_state),
        .byte_cnt(byte_cnt)
    );

    initial begin
        clk = 0;
        data_byte = 8'h5b;
        baud_set = 3'b000;      //波特率设置为9600 bps
        send_go = 1'b0;
        rst_n = 1'b0;
    end

    always #10 clk = ~clk;

    initial begin
        #201;

        rst_n = 1'b1;
        #120000;

        send_go = 1'b1;
        #120000;

        send_go = 1'b0;
        #1200000;

        data_byte = 8'hfc;
        #5000;
        send_go = 1'b1;
        #120000;

        send_go = 1'b0;
        #1200000;

        $stop;
    end
endmodule
