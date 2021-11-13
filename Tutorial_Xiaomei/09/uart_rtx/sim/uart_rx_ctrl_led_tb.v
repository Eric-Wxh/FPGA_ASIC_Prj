`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 20:36:53
// Design Name: 
// Module Name: uart_rx_ctrl_led_tb
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


module uart_rx_ctrl_led_tb();
    reg sys_clk;
    reg rst_n;
    reg uart_rx;
    wire led;
    wire rx_done;

    uart_rx_ctrl_led uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .baud_set(3'b100),
        .uart_rx(uart_rx),
        .led(led),
        .rx_done(rx_done)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        uart_rx = 1;
        #101;

        rst_n = 1;

        uart_tx_byte(8'h5a);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h86);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h50);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'hC3);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h00);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h00);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'hab);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'hea);
        @(posedge rx_done);
        #5000;
        #10000000;



        uart_tx_byte(8'h5a);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h86);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h88);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h13);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h00);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h00);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'h5a);
        @(posedge rx_done);
        #5000;

        uart_tx_byte(8'hea);
        @(posedge rx_done);
        #5000;
    end

    task uart_tx_byte;
        input [7:0] tx_data;
        begin
            uart_rx = 1;
            #100;

            uart_rx = 0;
            #8681;

            uart_rx = tx_data[0];
            #8681;

            uart_rx = tx_data[1];
            #8681;

            uart_rx = tx_data[2];
            #8681;

            uart_rx = tx_data[3];
            #8681;

            uart_rx = tx_data[4];
            #8681;

            uart_rx = tx_data[5];
            #8681;

            uart_rx = tx_data[6];
            #8681;

            uart_rx = tx_data[7];
            #8681;

            uart_rx = 1;
            #8000;
        end
    endtask
endmodule
