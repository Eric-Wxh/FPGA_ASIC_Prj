`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 22:43:51
// Design Name: 
// Module Name: counter_24
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


module counter_24h(
    input sys_clk,
    input rst_n,
    input load_pre,                 //确认按键，在显示预载入时间时按下确认键即可加载该时刻
    input [7:0] hour_load,          //调时数据加载
    input [7:0] min_load,           //调分数据加载
    input mode_timer,   
    input disp_mode,                //显示模式，disp_mode = 1时，显示调时数据，disp_mode = 0,显示实时数据;同时控制按键的模式
    output reg [31:0] cnt_24
    );
    reg load_en;                //加载使能信号
    reg [25:0] cnt_1s;          //1s分频
    parameter MCNT = 50000000;
    //parameter MCNT = 50;

    //加载使能信号控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            load_en <= 0;
        
        else if (mode_timer && disp_mode)
            load_en <= load_pre;

        else
            load_en <= 0;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_1s <= 0;

        else if (cnt_1s >= MCNT - 1)
            cnt_1s <= 0;

        else
            cnt_1s <= cnt_1s + 1;
    end
    
    //计时
    //Attention: 位扩展时一定要指明每一个信号的位宽，若未指明，会自动扩位到32位，得到不想要的结果
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_24 <= 32'h00a00a00;         //全局复位时置为00:00:00

        else if (load_en)
            cnt_24 <= {hour_load,4'ha,min_load,4'ha,8'h00};     //调时到hour_load:min_load:00

        else if (cnt_1s >= MCNT - 1) begin
            if (cnt_24[7:0] >= 8'h59) begin             //59s
                if (cnt_24[19:12] >= 8'h59) begin       //59min
                    if (cnt_24[31:24] >= 8'h23)         //23h
                        cnt_24 <= 32'h00a00a00;

                    else if (cnt_24[31:24] == 8'h19)    //19h
                        cnt_24 <= 32'h20a00a00;

                    else if (cnt_24[31:24] == 8'h09)    //9h
                        cnt_24 <= 32'h10a00a00;

                    else        //其它情况下，+1h
                        cnt_24 <= {cnt_24[31:24]+8'h01,24'ha00a00};
                end

                else if (cnt_24[15:12] >= 9)        //满x9min,进位
                    cnt_24 <= {cnt_24[31:24],4'ha,cnt_24[19:16]+4'h1,4'h0,4'ha,8'h00};

                else        //其它情况下,+1min
                    cnt_24 <= {cnt_24[31:24],4'ha,cnt_24[19:16],cnt_24[15:12]+4'h1,4'ha,8'h00};
            end

            else if (cnt_24[3:0] >= 9)          //满x9s,进位
                cnt_24 <= {cnt_24[31:24],4'ha,cnt_24[19:12],4'ha,cnt_24[7:4]+4'h1,4'h0};

            else        //其它情况下，+1s
                cnt_24 <= cnt_24 + 32'h0000_0001;
        end

        else            //未满1s，值不变
            cnt_24 <= cnt_24;
    end
endmodule
