`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Eric Wong
// 
// Create Date: 2021/10/13 18:07:34
// Design Name: 
// Module Name: uart_rx_byte
// Project Name: 
// Target Devices: 
// Tool Versions: Vivado 2021.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_rx_byte(
    input sys_clk,
    input rst_n,
    input [2:0] baud_set,
    input uart_rx,
    output reg [7:0] data_byte,
    output reg rx_done
    );
    reg clk_samp;       //采样时钟
    reg [8:0] samp_cnt_max;        //采样周期确定
    reg [8:0] samp_cnt;        //采样时钟计数器

    reg [1:0] uart_rx_reg;      //对异步信号uart_rx插入两个寄存器
    wire rx_sta;        //下降沿检测，下降沿到来时开始接收数据

    reg state_c,state_n;        //当前状态与下一状态
    parameter IDLE = 1'b0;      //空闲状态
    parameter RECEIVE = 1'b1;   //接收状态

    reg [7:0] pulse_cnt;        //采样脉冲采样次数记录
    reg [2:0] data_byte_reg[7:0];       //记录每位数据位采集到1的次数，采集中间六个点
    reg [2:0] STA_BIT_reg;      //记录起始位采集到1的次数
    reg [2:0] STO_BIT_reg;      //记录停止位采集到1的次数
    reg STA_BIT;        //起始位数据
    reg STO_BIT;        //停止位数据

    //波特率设置
    always @(*) begin       //bps_cnt_max = 50M/(baud_rate*16) - 1
        case (baud_set)
            3'd0: samp_cnt_max = 325;    //baud_rate = 9600
            3'd1: samp_cnt_max = 162;    //baud_rate = 19200
            3'd2: samp_cnt_max = 80;     //baud_rate = 38400
            3'd3: samp_cnt_max = 53;     //baud_rate = 57600
            3'd4: samp_cnt_max = 26;     //baud_rate = 115200
            default: samp_cnt_max = 325;
        endcase
    end

    //采样时钟计数器计数
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            samp_cnt <= 0;

        else if (state_c == RECEIVE) begin
            if(samp_cnt == samp_cnt_max)
                samp_cnt <= 0;

            else
                samp_cnt <= samp_cnt + 1;
        end

        else
            samp_cnt <= 0;
    end

    //采样时钟分频
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            clk_samp <= 0;

        else if (samp_cnt == samp_cnt_max/2 - 1)    //保证能在中间位置采样
            clk_samp <= 1;

        else
            clk_samp <= 0;
    end

    //异步信号处理
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n)
            uart_rx_reg <=  2'b00;

        else begin
            uart_rx_reg[0] <= uart_rx;
            uart_rx_reg[1] <= uart_rx_reg[0];
        end 
    end

    assign rx_sta = uart_rx_reg[1] & ~uart_rx_reg[0];      //下降沿检测,高位寄存器代表先前时刻的值，低位代表高位后一时钟的值

    //状态同步
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n)
            state_c <= 0;

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
                    if (rx_sta)
                        state_n = RECEIVE;

                    else
                        state_n = IDLE;
                end
                RECEIVE: begin
                    if (pulse_cnt == 159) begin
                        if(samp_cnt == samp_cnt_max - 1)
                            state_n = IDLE;

                        else
                            state_n = RECEIVE;
                    end
                    
                    else
                        state_n = RECEIVE;
                end

                default: state_n = IDLE;
            endcase
        end
    end

    //采样次数记录
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            pulse_cnt <= 0;

        else if (state_c == RECEIVE) begin
            if (samp_cnt == samp_cnt_max - 1) begin
                if(pulse_cnt == 159)
                    pulse_cnt <= 0;

                else
                    pulse_cnt <= pulse_cnt + 1;
            end

            else
                pulse_cnt <= pulse_cnt;
        end

        else
            pulse_cnt <= 0;
    end

    //记录起始位，数据位，停止位采集到1的次数，用于判定发送的数据值
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            STA_BIT_reg <= 0;
            data_byte_reg[0] <= 0;
            data_byte_reg[1] <= 0;
            data_byte_reg[2] <= 0;
            data_byte_reg[3] <= 0;
            data_byte_reg[4] <= 0;
            data_byte_reg[5] <= 0;
            data_byte_reg[6] <= 0;
            data_byte_reg[7] <= 0;
            STO_BIT_reg <= 0;
        end

        else if(state_c == RECEIVE) begin
            if(clk_samp) begin
                if(uart_rx_reg[1] == 1) begin
                    case (pulse_cnt)
                        5,6,7,8,9,10: STA_BIT_reg <= STA_BIT_reg + 1;
                        21,22,23,24,25,26: data_byte_reg[0] <= data_byte_reg[0] + 1;
                        37,38,39,40,41,42: data_byte_reg[1] <= data_byte_reg[1] + 1;
                        53,54,55,56,57,58: data_byte_reg[2] <= data_byte_reg[2] + 1;
                        69,70,71,72,73,74: data_byte_reg[3] <= data_byte_reg[3] + 1;
                        85,86,87,88,89,90: data_byte_reg[4] <= data_byte_reg[4] + 1;
                        101,102,103,104,105,106: data_byte_reg[5] <= data_byte_reg[5] + 1;
                        117,118,119,120,121,122: data_byte_reg[6] <= data_byte_reg[6] + 1;
                        133,134,135,136,137,138: data_byte_reg[7] <= data_byte_reg[7] + 1;
                        149,150,151,152,153,154: STO_BIT_reg <= STO_BIT_reg + 1;
                        default: ;
                    endcase
                end

                else begin
                    data_byte_reg[0] <= data_byte_reg[0];
                    data_byte_reg[1] <= data_byte_reg[1];
                    data_byte_reg[2] <= data_byte_reg[2];
                    data_byte_reg[3] <= data_byte_reg[3];
                    data_byte_reg[4] <= data_byte_reg[4];
                    data_byte_reg[5] <= data_byte_reg[5];
                    data_byte_reg[6] <= data_byte_reg[6];
                    data_byte_reg[7] <= data_byte_reg[7];
                end
            end
        end
        

        else begin
            STA_BIT_reg <= 0;
            data_byte_reg[0] <= 0;
            data_byte_reg[1] <= 0;
            data_byte_reg[2] <= 0;
            data_byte_reg[3] <= 0;
            data_byte_reg[4] <= 0;
            data_byte_reg[5] <= 0;
            data_byte_reg[6] <= 0;
            data_byte_reg[7] <= 0;
            STO_BIT_reg <= 0;
        end
    end

    //起始位，数据位，停止位判定
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            STA_BIT <= 0;
            data_byte <= 8'h00;
            STO_BIT <= 0;
        end

        else if (pulse_cnt == 159) begin        //采集到1的次数大于等于4，认为采集到1
            if (samp_cnt == samp_cnt_max - 1) begin
                STA_BIT <= STA_BIT_reg[2];
                data_byte[0] <= data_byte_reg[0][2];
                data_byte[1] <= data_byte_reg[1][2];
                data_byte[2] <= data_byte_reg[2][2];
                data_byte[3] <= data_byte_reg[3][2];
                data_byte[4] <= data_byte_reg[4][2];
                data_byte[5] <= data_byte_reg[5][2];
                data_byte[6] <= data_byte_reg[6][2];
                data_byte[7] <= data_byte_reg[7][2];
                STO_BIT <= STO_BIT_reg[2];
            end
        end

        else begin
            STA_BIT <= STA_BIT;
            data_byte[0] <= data_byte[0];
            data_byte[1] <= data_byte[1];
            data_byte[2] <= data_byte[2];
            data_byte[3] <= data_byte[3];
            data_byte[4] <= data_byte[4];
            data_byte[5] <= data_byte[5];
            data_byte[6] <= data_byte[6];
            data_byte[7] <= data_byte[7];
            STO_BIT <= STO_BIT;
        end
    end

    //当所有数据发完时，rx_done = 1
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            rx_done <= 0;

        else if (pulse_cnt == 159) begin
            if (samp_cnt == samp_cnt_max - 1)
                rx_done <= 1;

            else
                rx_done <= 0;
        end

        else
            rx_done <= 0;
    end

endmodule
