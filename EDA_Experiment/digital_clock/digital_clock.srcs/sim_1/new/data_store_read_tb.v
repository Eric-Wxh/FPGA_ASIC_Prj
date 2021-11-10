`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/10 15:56:31
// Design Name: 
// Module Name: data_store_read_tb
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


module data_store_read_tb();
    reg sys_clk;
    reg rst_n;
    reg key_sta_sto;
    reg key_store;
    reg key_read;
    reg [31:0] data_in;
    wire [31:0] store_data_disp;
    wire disp_mode;

    data_store_read uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .key_sta_sto(key_sta_sto),
        .key_store(key_store),
        .key_read(key_read),
        .data_in(data_in),
        .store_data_disp(store_data_disp),
        .disp_mode(disp_mode)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        rst_n = 0;
        sys_clk = 0;
        key_sta_sto = 0;
        key_store = 0;
        key_read = 0;
        data_in = 32'h89_f_13_f_46;

        #101;
        rst_n = 1;

        key_store = 1;
        #20;
        key_store = 0;

        #1000;
        key_store = 1;
        #20;
        key_store = 0;

        #1000;
        data_in = 32'h76_f_52_f_65;
        key_store = 1;
        #20;
        key_store = 0;

        #1000;
        key_store = 1;
        #20;
        key_store = 0;

        #1000;
        data_in = 32'h53_f_38_f_29;
        key_store = 1;
        #20;
        key_store = 0;

        #200;
        //按下读取按键
        key_read = 1;
        #20;
        key_read = 0;

        //通过按开始/停止按键来控制显示的数据
        #20;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        key_sta_sto = 1;
        #20;
        key_sta_sto = 0;

        #1000;
        $stop;
    end
endmodule
