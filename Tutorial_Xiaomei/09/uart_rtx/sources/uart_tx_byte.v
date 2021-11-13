`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 12:47:55
// Design Name: 
// Module Name: uart_rx_byte
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


module uart_tx_byte  (
    input clk,
    input [7:0] data_byte,
    input [2:0] baud_set,
    input rst_n,
    input send_go,
    output reg uart_tx,
    output reg tx_done,
    output reg uart_state,
    output reg [3:0] byte_cnt
    );

    reg [15:0] bps_cnt_max;     //波特率设置，bps_cnt_max = 50M/baud_rate - 1
    reg [15:0] bps_cnt;         //波特率计数分频，计满一次发送下一个数据
    //reg [3:0] byte_cnt;         //计数发送的位
    reg send_en;                //发送使能信号，通过send_go控制
    reg [7:0] data_byte_reg;    //将data_byte数据暂存，使发送的数据稳定

    parameter STA = 1'b0;       //数据起始位
    parameter STO = 1'b1;      //数据停止位

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_cnt_max <= 16'd5207;

        else begin
            case (baud_set)
                0: bps_cnt_max = 16'd5207;
                1: bps_cnt_max = 16'd2603;
                2: bps_cnt_max = 16'd1301;
                3: bps_cnt_max = 16'd867;
                4: bps_cnt_max = 16'd433;
                default: bps_cnt_max = 16'd5207;
            endcase
        end
    end

    //send_en发送使能信号控制
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            send_en <= 0;

        else if(send_go)
            send_en <= 1;

        else if(byte_cnt == 10) begin
            if(bps_cnt == bps_cnt_max)
                send_en <= 0;

            else
                send_en <= 1;
        end

        else
            send_en <= send_en;
    end

    //使能有效时，bps_cnt计数
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            bps_cnt <= 0;

        else if(send_en) begin
            if(bps_cnt == bps_cnt_max)
                bps_cnt <= 0;

            else
                bps_cnt <= bps_cnt + 1;
        end

        else
            bps_cnt <= 0;
    end

    //控制数据发送位
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            byte_cnt <= 0;

        else if(send_en) begin
            if(bps_cnt == bps_cnt_max) begin
                if(byte_cnt == 10)
                    byte_cnt <= 0;

                else if(byte_cnt == 0)
                    byte_cnt <= 1;
                
                else
                    byte_cnt <= byte_cnt + 1;
            end

            else if(byte_cnt == 0)
                byte_cnt <= 1;

            else
                byte_cnt <= byte_cnt;
        end

        else
            byte_cnt <= 0;
    end

    //当send_go有效时，载入数据
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            data_byte_reg <= 8'h00;

        else if(send_go)
            data_byte_reg <= data_byte;

        else
            data_byte_reg <= data_byte_reg;
    end

    //利用byte_cnt选择发送的数据位
    always @(posedge clk or negedge rst_n) begin        //很费解，不知为何如果这个地方用纯组合逻辑，就会有毛刺产生
        if(!rst_n)
            uart_tx = 1;

        else
            case (byte_cnt)
                4'd0: uart_tx = 1'b1;
                4'd1: uart_tx = STA;
                4'd2: uart_tx = data_byte_reg[0];
                4'd3: uart_tx = data_byte_reg[1];
                4'd4: uart_tx = data_byte_reg[2];
                4'd5: uart_tx = data_byte_reg[3];
                4'd6: uart_tx = data_byte_reg[4];
                4'd7: uart_tx = data_byte_reg[5];
                4'd8: uart_tx = data_byte_reg[6];
                4'd9: uart_tx = data_byte_reg[7];
                4'd10: uart_tx = STO;
                default: uart_tx = 1'b1;
            endcase
    end

    //发送完成标志tx_done
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx_done <= 0;

        else if(byte_cnt == 10) begin
            if(bps_cnt == bps_cnt_max)
                tx_done <= 1;

            else
                tx_done <= 0;
        end

        else
            tx_done <= 0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            uart_state <= 0;

        else if(send_en)
            uart_state <= 1;

        else
            uart_state <= 0;
    end
endmodule
