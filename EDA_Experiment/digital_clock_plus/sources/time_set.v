`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 22:26:29
// Design Name: 
// Module Name: time_set
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


module time_set(
    input sys_clk,
    input rst_n,
    input set_hour_pre,             //消抖后的调时的按键
    input set_min_pre,              //消抖后的调分的按键
    input mode_timer,               //定时模式，mode_timer = 1时，按键有效
    input disp_mode,                //显示模式，disp_mode = 1时，显示调时数据，disp_mode = 0,显示实时数据;同时控制按键的模式
    output reg [7:0] hour_load,
    output reg [7:0] min_load
    );
    reg set_hour,set_min;

    //按键使能有效
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            {set_hour,set_min} <= 2'b00;

        else if (mode_timer && disp_mode)
            {set_hour,set_min} <= {set_hour_pre,set_min_pre};

        else
            {set_hour,set_min} <= 2'b00;
    end

    //-----------------------------------<调时调分>-----------------------------------//
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            min_load <= 8'h00;
        end

        else if (set_min) begin
            if (min_load[3:0] >= 9) begin
                if (min_load[7:4] >= 5)
                    min_load <= 0;

                else begin
                    min_load[7:4] <= min_load[7:4] + 1;
                    min_load[3:0] <= 0;
                end
            end

            else
                min_load <= min_load + 1;
        end

        else
            min_load <= min_load;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            hour_load <= 0;

        else if (set_hour) begin
            if (hour_load >= 8'h23)
                hour_load <= 0;

            else if (hour_load[3:0] >= 9) begin
                hour_load[3:0] <= 0;
                hour_load[7:4] <= hour_load[7:4] + 1;
            end

            else
                hour_load <= hour_load + 1;
        end

        else
            hour_load <= hour_load;
    end
endmodule
