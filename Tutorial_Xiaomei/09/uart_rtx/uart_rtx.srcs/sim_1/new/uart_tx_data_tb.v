`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 00:41:08
// Design Name: 
// Module Name: uart_tx_data_tb
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


module uart_tx_data_tb();
// uart_tx_data Parameters

// uart_tx_data Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   [31:0]  data                         = 32'h24589b3f ;
reg   trans_go                             = 0 ;

// uart_tx_data Outputs
wire  data_tx                              ;
wire  tx_done                              ;


always #10 clk = ~clk;


uart_tx_data u_uart_tx_data (
    .clk                     ( clk                   ),
    .rst_n                   ( rst_n                 ),
    .baud_set                ( 3'b100                ),
    .data                    ( data      [31:0] ),
    .trans_go                ( trans_go              ),

    .data_tx                 ( data_tx               ),
    .tx_done                 ( tx_done               )
);

initial
begin
    #201;

    rst_n = 1;
    #200;
    trans_go = 1;
    #20;

    trans_go = 0;
    @(posedge tx_done);         //这个地方一定要在tx_done的脉冲完了之后再将trans_go拉高
    data = 32'h12345678;
    trans_go = 1;
    #21;

    trans_go = 0;
    #500000;
    $stop;  
end

endmodule
