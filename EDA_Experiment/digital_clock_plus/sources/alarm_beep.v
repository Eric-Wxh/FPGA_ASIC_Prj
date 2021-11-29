`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/21 12:23:23
// Design Name: 
// Module Name: alarm_beep
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


module alarm_beep(
    input sys_clk,
    input rst_n,
    input [31:0] disp_alarm,
    input [31:0] cnt_24,
    input alarm_indicator,          //闹钟开启的指示
    input mode_timer,               //正常计时模式，高有效
    input cancel_pre,               //取消按键
    input disp_mode_timer,          //计时模式下的显示模式，当显示实时时间时，按键可以进行取消闹铃的控制
    output reg beep_out
    );
    reg beep_ctrl;                          //控制信号，控制闹铃
    reg [2:0] state_c;
    reg [2:0] state_n;
    parameter IDLE = 3'b001;
    parameter STATE_BEEP = 3'b010;
    parameter STATE_CANCEL = 3'b100;
    reg [25:0] cnt_sec;                     //用于计时1s
    reg [5:0] cnt_min;                      //用于计时1min
    parameter MCNT0 = 50000000;             //计时1s
    //parameter MCNT0 = 5;
    reg cancel;                             //取消指示信号，仅当在计时模式中的显示实时时间模式时，按下key[1]可以取消当次闹铃

    //-----------------------------------------<闹钟有效与按键有效控制>-----------------------------------------//
    //闹铃控制信号有效判定
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            beep_ctrl <= 0;

        else if (alarm_indicator) begin
            if (disp_alarm == cnt_24)
                beep_ctrl <= 1;

            else
                beep_ctrl <= 0;
        end

        else
            beep_ctrl <= 0;
    end

    //cancel信号控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cancel <= 0;

        else if (mode_timer && ~(disp_mode_timer))
            cancel <= cancel_pre;

        else
            cancel <= 0;
    end

    //-----------------------------------------<闹铃开启与关闭控制>-----------------------------------------//
    //状态同步
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            state_c <= IDLE;

        else
            state_c <= state_n;
    end

    //状态转移
    always @(*) begin
        if (!rst_n)
            state_n = IDLE;

        else begin
            case (state_c)
                IDLE: begin
                    if (beep_ctrl)
                        state_n = STATE_BEEP;

                    else
                        state_n = IDLE;
                end

                STATE_BEEP: begin
                    if (cancel && cnt_min <= 59)
                        state_n = STATE_CANCEL;

                    else if (cnt_min >= 59 && cnt_sec >= MCNT0-1)
                        state_n = IDLE;

                    else
                        state_n = STATE_BEEP;
                end

                STATE_CANCEL: begin
                    if (cnt_min >= 59 && cnt_sec >= MCNT0-1)
                        state_n = IDLE;

                    else
                        state_n = STATE_CANCEL;
                end

                default: state_n = IDLE;
            endcase
        end
    end

    //秒计数器cnt_sec控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_sec <= 0;

        else if (state_c == IDLE)
            cnt_sec <= 0;

        else if (cnt_sec >= MCNT0 - 1)
            cnt_sec <= 0;

        else
            cnt_sec <= cnt_sec + 1;
    end

    //分计数器cnt_min控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_min <= 0;

        else if (state_c == IDLE)
            cnt_min <= 0;

        else if (cnt_sec >= MCNT0-1) begin
            if (cnt_min >= 59)
                cnt_min <= 0;

            else
                cnt_min <= cnt_min + 1;
        end

        else
            cnt_min <= cnt_min;
    end

    //蜂鸣器控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            beep_out <= 0;

        else if (state_c == STATE_BEEP)
            beep_out <= 1;

        else
            beep_out <= 0;
    end
endmodule
