`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/31 19:49:00
// Design Name: 
// Module Name: seg_ex_drive
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


module seg_ex_drive(
    input sys_clk,
    input rst_n,
    input [31:0] data_in,               //bcd码数据输入
    output data_ser,                    //595驱动数据输出
    output rclk,                        //锁存时钟输出
    output srclk                        //移位寄存时钟输出
    );
    reg [3:0] data_in_reg[7:0];         //将输入数据寄存
    reg [3:0] data_sel;                 //选择数据进行译码操作
    wire [7:0] data_decode;             //译码后数据
    reg [15:0] data_disp;               //用于显示的数据，包含段码和位码

    reg [2:0] state_c;
    reg [2:0] state_n;
    parameter IDLE = 3'b001;
    parameter LOAD = 3'b010;
    parameter SEND = 3'b100;

    reg send_en;       //在处于发送状态的时候拉高

    reg [2:0] cnt_data;
    wire store_done;

    drive_74hc595 drive_inst (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .data_in(data_disp),
        .send_en(send_en),
        .data_ser(data_ser),
        .rclk(rclk),
        .srclr_n(),
        .srclk(srclk),
        .store_done(store_done)
    );

    decode_bcd decode_inst (
        .data_in(data_sel),
        .seg(data_decode)
    );

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            state_c <= IDLE;
        
        else
            state_c <= state_n;
    end

    always @(*) begin
        if (!rst_n)
            state_n = IDLE;

        else
            case (state_c)
                IDLE: state_n = LOAD;
                LOAD: state_n = SEND;
                SEND: begin
                    if (store_done && cnt_data == 7)
                        state_n = IDLE;

                    else
                        state_n = SEND;
                end
                
                default: state_n = IDLE;
            endcase
    end

    always @(*) begin
        case (state_c)
            IDLE: send_en = 0;
            LOAD: send_en = 0;
            SEND: send_en = 1;
            default: send_en = 0;
        endcase
    end

//---------------------------<LOAD状态>---------------------------//
    //在LOAD状态下，数据寄存
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            data_in_reg[0] <= 4'h0;
            data_in_reg[1] <= 4'h0;
            data_in_reg[2] <= 4'h0;
            data_in_reg[3] <= 4'h0;
            data_in_reg[4] <= 4'h0;
            data_in_reg[5] <= 4'h0;
            data_in_reg[6] <= 4'h0;
            data_in_reg[7] <= 4'h0;
        end

        else if (state_c == LOAD) begin
            data_in_reg[0] <= data_in[3:0];
            data_in_reg[1] <= data_in[7:4];
            data_in_reg[2] <= data_in[11:8];
            data_in_reg[3] <= data_in[15:12];
            data_in_reg[4] <= data_in[19:16];
            data_in_reg[5] <= data_in[23:20];
            data_in_reg[6] <= data_in[27:24];
            data_in_reg[7] <= data_in[31:28];
        end

        else begin
            data_in_reg[0] <= data_in_reg[0];
            data_in_reg[1] <= data_in_reg[1];
            data_in_reg[2] <= data_in_reg[2];
            data_in_reg[3] <= data_in_reg[3];
            data_in_reg[4] <= data_in_reg[4];
            data_in_reg[5] <= data_in_reg[5];
            data_in_reg[6] <= data_in_reg[6];
            data_in_reg[7] <= data_in_reg[7];
        end
    end


//---------------------------<SEND状态>---------------------------//
    //数据选择计数器控制
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            cnt_data <= 0;

        else if (state_c == SEND) begin
            if (store_done) begin
                if (7 == cnt_data)
                    cnt_data <= 0;

                else
                    cnt_data <= cnt_data + 1;
            end

            else
                cnt_data <= cnt_data;
        end

        else
            cnt_data <= 0;
    end

    //数据选择，先发送低位的数据
    always @(*) begin
        case (cnt_data)
            3'd0: data_sel = data_in_reg[0];
            3'd1: data_sel = data_in_reg[1];
            3'd2: data_sel = data_in_reg[2];
            3'd3: data_sel = data_in_reg[3];
            3'd4: data_sel = data_in_reg[4];
            3'd5: data_sel = data_in_reg[5];
            3'd6: data_sel = data_in_reg[6];
            3'd7: data_sel = data_in_reg[7];
            default: data_sel = 16'd0;
        endcase
    end

    //译码输出,上板时还需测试数码管位的顺序是否正确，前8位是位码，最先发送的是低位数码管;段码dp~a为高到低
    always @(*) begin
        case (cnt_data)
            3'd0: data_disp = {data_decode,8'b0000_0001};
            3'd1: data_disp = {data_decode,8'b0000_0010};
            3'd2: data_disp = {data_decode,8'b0000_0100};
            3'd3: data_disp = {data_decode,8'b0000_1000};
            3'd4: data_disp = {data_decode,8'b0001_0000};
            3'd5: data_disp = {data_decode,8'b0010_0000};
            3'd6: data_disp = {data_decode,8'b0100_0000};
            3'd7: data_disp = {data_decode,8'b1000_0000};
            default: data_disp = 16'hff00;
        endcase
    end
endmodule
