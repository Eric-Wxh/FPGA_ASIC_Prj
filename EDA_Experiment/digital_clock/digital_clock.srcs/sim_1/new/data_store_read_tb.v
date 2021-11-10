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
    reg sta_sto_flag;
    reg store_flag;
    reg read_flag;
    reg [31:0] data_in;
    wire [31:0] store_data_disp;
    wire disp_mode;

    data_store_read uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .sta_sto_flag(sta_sto_flag),
        .store_flag(store_flag),
        .read_flag(read_flag),
        .data_in(data_in),
        .store_data_disp(store_data_disp),
        .disp_mode(disp_mode)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        rst_n = 0;
        sys_clk = 0;
        sta_sto_flag = 0;
        store_flag = 0;
        read_flag = 0;
        data_in = 32'h89_f_13_f_46;

        #101;
        rst_n = 1;

        store_flag = 1;
        #20;
        store_flag = 0;

        #1000;
        store_flag = 1;
        #20;
        store_flag = 0;

        #1000;
        data_in = 32'h76_f_52_f_65;
        store_flag = 1;
        #20;
        store_flag = 0;

        #1000;
        store_flag = 1;
        #20;
        store_flag = 0;

        #1000;
        data_in = 32'h53_f_38_f_29;
        store_flag = 1;
        #20;
        store_flag = 0;

        #200;
        //按下读取按键
        read_flag = 1;
        #20;
        read_flag = 0;

        //通过按开始/停止按键来控制显示的数据
        #20;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        sta_sto_flag = 1;
        #20;
        sta_sto_flag = 0;

        #1000;
        $stop;
    end
endmodule
