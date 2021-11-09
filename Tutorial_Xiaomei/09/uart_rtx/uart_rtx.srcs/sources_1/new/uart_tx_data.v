`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 15:15:47
// Design Name: 
// Module Name: uart_tx_data
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


module uart_tx_data(
    input clk,
    input rst_n,
    input [2:0] baud_set,
    input trans_go,
    input [31:0] data,
    output data_tx,
    output reg tx_done
    );

    reg send_go;                //单位数据发送请求信号
    reg [1:0] state_c;          //当前状态
    reg [1:0] state_n;          //下一状态
    reg [2:0] data_cnt;         //控制输出的数据字节数
    reg [31:0] data_reg;        //数据寄存
    reg [7:0] data_byte;
    wire tx_done_byte;

    parameter IDLE = 2'b00;
    parameter LOAD = 2'b01;
    parameter SEND = 2'b11;

    uart_tx_byte u_uart_tx_byte(
        .clk(clk),
        .data_byte(data_byte),
        .baud_set(baud_set),
        .rst_n(rst_n),
        .send_go(send_go),
        .uart_tx(data_tx),
        .tx_done(tx_done_byte),
        .uart_state(),
        .byte_cnt()
    );

    //状态同步
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            state_c <= IDLE;

        else
            state_c <= state_n;
    end

    //状态转移
    always @(*) begin
        if(!rst_n)
            state_n = 0;

        else begin
            case (state_c)
                IDLE: begin
                    if(trans_go)
                        state_n = LOAD;

                    else
                        state_n = IDLE;
                end

                LOAD: begin
                    if(send_go)
                        state_n = SEND;

                    else
                        state_n = LOAD;
                end

                SEND: begin
                    if(tx_done_byte) begin
                        if(data_cnt == 2'b11)
                            state_n = IDLE;

                        else
                            state_n = SEND;
                    end   
                    
                    else
                        state_n = SEND;
                end

                default: state_n = IDLE;
            endcase
        end
    end

    //send_go控制
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            send_go <= 0;

        else if(data_cnt == 2'b11)
            send_go <= 0;

        else if(state_c == LOAD)
            send_go <= 1;

        else if(state_c == SEND) begin
            if(tx_done_byte)
                send_go <= 1;

            else
                send_go <= 0;
        end
        
        else
            send_go <= 0;
    end

    //控制数据输出字节数data_cnt
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            data_cnt <= 2'b00;

        else if(data_cnt == 2'b11) begin
            if(tx_done_byte)
                data_cnt <= 2'b00;

            else
                data_cnt <= 2'b11;
        end

        else if(state_c == SEND) begin
            if(tx_done_byte)
                data_cnt <= data_cnt + 1;

            else 
                data_cnt <= data_cnt;
        end

        else
            data_cnt <= 2'b00;
    end

    //载入数据
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            data_reg <= 8'hFF;

        else if(state_c == LOAD)
            data_reg <= data;

        else
            data_reg <= data_reg;
    end

    //将32位数据分时输出
    always @(*) begin
        case (data_cnt)
            3'b000: data_byte <= data_reg[7:0];
            3'b001: data_byte <= data_reg[15:8];
            3'b010: data_byte <= data_reg[23:16];
            3'b011: data_byte <= data_reg[31:24];
            default: data_byte <= 8'hFF;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            tx_done <= 0;

        else if(data_cnt == 2'b11) begin
            if(tx_done_byte)
                tx_done <= 1;

            else
                tx_done <= 0;
        end
        
        else
            tx_done <= 0;
    end
endmodule
