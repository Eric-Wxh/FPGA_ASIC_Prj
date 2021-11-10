`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 09:46:57
// Design Name: 
// Module Name: key_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 按键抬起时为低电平，按下后为高电平
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module key_filter(
    input sys_clk,
    input rst_n,
    input key,
    output reg key_out,
    output reg key_p_flag,      //按键按下标志
    output reg key_r_flag       //按键释放标志
    );
    reg [1:0] key_reg;
    wire p_edge,n_edge;
    
    reg [19:0] cnt;
    reg [1:0] state_n;
    reg [1:0] state_c;
    parameter MCNT = 1000000;

    reg [1:0] key_out_reg;
    wire key_out_pedge, key_out_nedge;

    parameter IDLE = 2'b00;
    parameter P_FILTER = 2'b01;
    parameter WAIT_R = 2'b10;
    parameter R_FILTER = 2'b11;

    //按键状态寄存
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            key_reg <= 2'b00;

        else begin
            key_reg[0] <= key;
            key_reg[1] <= key_reg[0];
        end
    end

    //按键边沿检测
    assign p_edge = key_reg[0] & (~key_reg[1]);
    assign n_edge = (~key_reg[0]) & key_reg[1];

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
                    if (n_edge)
                        state_n = P_FILTER;
                    else
                        state_n = IDLE;
               end 

               P_FILTER: begin
                    if ((cnt >= MCNT-1) && (~p_edge))
                        state_n = WAIT_R;

                    else if ((cnt < MCNT - 1) && p_edge)
                        state_n = IDLE;

                    else
                        state_n = P_FILTER;
               end

               WAIT_R: begin
                    if (p_edge)
                        state_n = R_FILTER;

                    else
                        state_n = WAIT_R;
               end

               R_FILTER: begin
                    if ((cnt >= MCNT - 1) && (~n_edge))
                        state_n = IDLE;
                    
                    else if((cnt < MCNT - 1) && n_edge)
                        state_n = WAIT_R;

                    else
                        state_n = R_FILTER;
               end
               
               default: state_n = IDLE;
           endcase 
        end
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt <= 0;

        else if (state_c == IDLE || state_c == WAIT_R)
            cnt <= 0;

        else if (state_c == P_FILTER || state_c == R_FILTER) begin
            if (cnt >= MCNT - 1)
                cnt <= 0;

            else
                cnt <= cnt + 1;
        end

        else
            cnt <= 0;
    end

    always @(posedge sys_clk) begin
        case (state_c)
            IDLE: key_out <= 1'b1;
            P_FILTER: key_out <= 1'b1;
            WAIT_R: key_out <= 1'b0;
            R_FILTER: key_out <= 1'b0; 
            default: key_out <= 1'b1;
        endcase
    end

    always @(posedge sys_clk or negedge rst_n) begin    //没必要添加复位，复位反而会造成按键按下的误判
        if (!rst_n)
            key_out_reg <= 2'b11;

        else begin
            key_out_reg[0] <= key_out;
            key_out_reg[1] <= key_out_reg[0];
        end
    end

    assign key_out_pedge = key_out_reg[0] & (~key_out_reg[1]);
    assign key_out_nedge = (~key_out_reg[0]) & key_out_reg[1];

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            key_p_flag <= 1'b0;

        else if (key_out_nedge)
            key_p_flag <= 1'b1;

        else
            key_p_flag <= 1'b0;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            key_r_flag <= 1'b0;

        else if(key_out_pedge)
            key_r_flag <= 1'b1;

        else
            key_r_flag <= 1'b0;
    end
endmodule
