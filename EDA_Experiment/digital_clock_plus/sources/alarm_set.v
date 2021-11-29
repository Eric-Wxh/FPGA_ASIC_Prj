`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/21 10:36:59
// Design Name: 
// Module Name: alarm_set
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


module alarm_set(
    input sys_clk,
    input rst_n,
    input hour_set_pre,
    input min_set_pre,
    input confirm_cancel_pre,
    input mode_alarm,
    output [31:0] disp_alarm,
    output reg alarm_indicator
    );
    reg hour_set;
    reg min_set;
    reg confirm_cancel;
    reg [7:0] data_hour;
    reg [7:0] data_min;

    //当mode_alarm = 1时，可通过按键设置闹钟时间
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            {hour_set,min_set,confirm_cancel} <= 3'b000;

        else if (mode_alarm)
            {hour_set,min_set,confirm_cancel} <= {hour_set_pre,min_set_pre,confirm_cancel_pre};

        else
            {hour_set,min_set,confirm_cancel} <= 3'b000;
    end

    //-----------------------------------------<设置闹钟时刻>-----------------------------------------//
    //调分
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            data_min <= 8'h00;
        end

        else if (min_set) begin
            if (data_min[3:0] >= 9) begin
                if (data_min[7:4] >= 5)
                    data_min <= 0;

                else begin
                    data_min[7:4] <= data_min[7:4] + 1;
                    data_min[3:0] <= 0;
                end
            end

            else
                data_min <= data_min + 1;
        end

        else
            data_min <= data_min;
    end

    //调时
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            data_hour <= 0;

        else if (hour_set) begin
            if (data_hour >= 8'h23)
                data_hour <= 0;

            else if (data_hour[3:0] >= 9) begin
                data_hour[3:0] <= 0;
                data_hour[7:4] <= data_hour[7:4] + 1;
            end

            else
                data_hour <= data_hour + 1;
        end

        else
            data_hour <= data_hour;
    end

    assign disp_alarm = {data_hour,4'ha,data_min,4'ha,8'h00};

    //确认或取消闹钟设置
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            alarm_indicator <= 0;

        else if (confirm_cancel)
            alarm_indicator <= ~alarm_indicator;

        else
            alarm_indicator <= alarm_indicator;
    end
endmodule
