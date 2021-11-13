`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 18:40:01
// Design Name: 
// Module Name: drive_74hc595
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


module drive_74hc595 #(Width = 16)      //数据位宽为16位
(
    input sys_clk,                  //系统时钟
    input rst_n,                    //系统异步复位
    input [Width-1:0] data_in,      //待发送数据
    input send_en,
    output reg rclk,                //锁存时钟
    output srclr_n,                 //移位寄存器清零
    output reg srclk,               //移位寄存器时钟
    output data_ser,                //串行输出
    output reg store_done
    );
    reg [3:0] state_c;
    reg [3:0] state_n;
    
    parameter IDLE = 4'b0001;
    parameter LOAD = 4'b0010;
    parameter WAIT = 4'b0100;
    parameter STORE = 4'b1000;

    reg load_en;            //载数使能
    reg shift_en;           //移位使能
    reg [3:0] cnt_div;      //分频计数器
    reg [3:0] cnt_bit;      //传送数据位数计数器, 需要根据位宽进行修改
    reg [Width-1:0] data_in_reg;      //输入数据缓存

    reg [2:0] cnt_store;        //控制锁存时钟高电平的持续时间
    //reg store_done;


    assign srclr_n = 1'b1;      //移位寄存器清零无效

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
                    if (send_en)
                        state_n = LOAD;

                    else
                        state_n = IDLE;
                end

                LOAD: state_n = WAIT;

                WAIT: begin
                    if (5 == cnt_div && Width-1 == cnt_bit)     //当发送完所有的数据后，进入数据锁存状态
                        state_n = STORE;

                    else
                        state_n = WAIT;
                end
                STORE: begin
                    if (store_done)
                        state_n = IDLE;

                    else
                        state_n = STORE;
                end
                default: state_n = IDLE;
            endcase
        end
    end

    //输出逻辑
    always @(*) begin
        case (state_c)
            IDLE: begin
                load_en = 0;
                shift_en = 0;
            end

            LOAD: begin
                load_en = 1;
                shift_en = 0;
            end

            WAIT: begin
                load_en = 0;
                shift_en = 1;
            end

            STORE: begin
                load_en = 0;
                shift_en = 0;
            end
            default: begin
                load_en = 0;
                shift_en = 0;
            end
        endcase
    end

//-------------------------------<LOAD状态: 加载数据>---------------------------------------//
    //加载输入数据控制，用于稳定输入
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            data_in_reg <= 8'h00;

        else if (load_en)
            data_in_reg <= data_in;

        else
            data_in_reg <= data_in_reg;
    end

//-------------------------------<WAIT状态: 数据移位>---------------------------------------//
    //分频计数器
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_div <= 0;

        else if (shift_en) begin
            if (9 <= cnt_div)
                cnt_div <= 0;

            else
                cnt_div <= cnt_div + 1;
        end

        else
            cnt_div <= 0;
    end

    //数据位数计数器控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_bit <= 0;

        else if (shift_en) begin
            if (5 == cnt_div) begin
                if (Width-1 == cnt_bit)
                    cnt_bit <= 0;

                else
                    cnt_bit <= cnt_bit + 1;
            end

            else
                cnt_bit <= cnt_bit;
        end

        else
            cnt_bit <= 0;
    end

    //数据分时输出, 要根据位宽进行修改
    assign data_ser = data_in_reg[Width-1-cnt_bit];

    //移位寄存器时钟输出控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            srclk <= 0;

        else if (shift_en) begin
            if (5 >= cnt_div && 1 <= cnt_div)
                srclk <= 1;

            else
                srclk <= 0;
        end

        else
            srclk <= 0;
    end

//-------------------------------<STORE状态: 锁存发送数据>---------------------------------------//
    //锁存数据
    always @(*) begin
        if (state_c == STORE)
            rclk = 1;

        else
            rclk = 0;
    end

    //锁存时钟高电平持续时间控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt_store <= 0;
            store_done <= 0;
        end

        else if (state_c == STORE) begin
            if (cnt_store == 7) begin
                cnt_store <= 0;
                store_done <= 1;
            end

            else begin
                cnt_store <= cnt_store + 1;
                store_done <= 0;
            end 
        end

        else begin
            cnt_store <= 0;
            store_done <= 0;
        end
    end
endmodule
