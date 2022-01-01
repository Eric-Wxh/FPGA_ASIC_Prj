`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 11:36:26
// Design Name: 
// Module Name: fifo_sync0
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


module fifo_sync0 #(
    parameter Width_data = 8,
              Width_addr = 3,               //数据深度设置为256
              Depth      = 8
    )
    (
    input sys_clk,
    input srst,                                     //同步复位
    //write
    input fifo_wr_en,                               //写使能信号
    input [Width_data-1:0] fifo_wr_data,            //写入数据
    output reg fifo_full,                           //满指示
    output reg fifo_wr_err,                         //写入错误指示
    //read
    input fifo_rd_en,                               //读使能信号
    output reg [Width_data-1:0] fifo_rd_data,       //读出数据
    output reg fifo_empty,                          //空指示
    output reg fifo_rd_err                          //读出错误指示
    );
    reg [Width_addr-1:0] mem_wr_addr;               //写指针
    reg [Width_addr-1:0] mem_rd_addr;               //读指针
    reg [Width_data-1:0] mem [Depth-1:0];           //存储单元
    integer i;                                      //临时变量，用于迭代
    reg [Width_addr:0] fifo_cnt;                    //FIFO内存储数据数量统计

    //-----------------------------------<数据写入>-----------------------------------//
    //写指针的控制
    always @(posedge sys_clk) begin
        if (srst)
            mem_wr_addr <= 0;

        else if (fifo_wr_en) begin
            if (!fifo_full)
                mem_wr_addr <= mem_wr_addr + 1;

            else
                mem_wr_addr <= mem_wr_addr;
        end

        else
            mem_wr_addr <= mem_wr_addr;
    end

    //写入数据
    always @(posedge sys_clk) begin
        if (srst) begin
            for (i = 0; i < Depth; i = i+1) begin
                mem[i] <= 0;
            end
        end

        else if (fifo_wr_en) begin
            if (!fifo_full)
                mem[mem_wr_addr] <= fifo_wr_data;

            else begin
                for (i = 0; i < Depth; i = i+1) begin
                    mem[i] <= mem[i];
                end
            end
        end

        else begin
            for (i = 0; i < Depth; i = i+1) begin
                mem[i] <= mem[i];
            end
        end
    end

    //-----------------------------------<数据读出>-----------------------------------//
    //读指针控制
    always @(posedge sys_clk) begin
        if (srst)
            mem_rd_addr <= 0;

        else if (fifo_rd_en) begin
            if (!fifo_empty)
                mem_rd_addr <= mem_rd_addr + 1;

            else
                mem_rd_addr <= mem_rd_addr;
        end

        else
            mem_rd_addr <= mem_rd_addr;
    end

    //数据读取
    always @(posedge sys_clk) begin
        if (srst)
            fifo_rd_data <= 0;

        else if (fifo_rd_en) begin
            if (!fifo_empty)
                fifo_rd_data <= mem[mem_rd_addr];

            else
                fifo_rd_data <= fifo_rd_data;
        end

        else
            fifo_rd_data <= fifo_rd_data;
    end

    //-----------------------------------<FIFO满/空判定>-----------------------------------//
    //FIFO存储数据内存占用记录
    always @(posedge sys_clk) begin
        if (srst)
            fifo_cnt <= 0;

        else if (fifo_wr_en) begin
            if (fifo_rd_en)
                fifo_cnt <= fifo_cnt;

            else if (fifo_cnt[Width_addr])
                fifo_cnt <= Depth;

            else
                fifo_cnt <= fifo_cnt + 1;
        end

        else if (fifo_rd_en) begin
            if (fifo_wr_en)
                fifo_cnt <= fifo_cnt;
                
            else if (fifo_cnt == 0)
                fifo_cnt <= 0;

            else
                fifo_cnt <= fifo_cnt - 1;
        end

        else
            fifo_cnt <= fifo_cnt;
    end

    //FIFO空满指示信号控制,此处加入了寄存器，优化了组合逻辑，从而既不延迟节拍，又能消除毛刺
    always @(posedge sys_clk) begin
        if (srst)
            {fifo_full,fifo_empty} <= 2'b00;

        else if (fifo_cnt[Width_addr]) begin
            if (fifo_rd_en && ~(fifo_wr_en))
                {fifo_full,fifo_empty} <= 2'b00;
    
            else
                {fifo_full,fifo_empty} <= 2'b10;
        end

        else if (fifo_cnt == Depth-1) begin
            if (fifo_wr_en && ~(fifo_rd_en))
                {fifo_full,fifo_empty} <= 2'b10;
    
            else
                {fifo_full,fifo_empty} <= 2'b00;
        end

        else if (fifo_cnt == 0) begin
            if (fifo_wr_en && ~(fifo_rd_en))
                {fifo_full,fifo_empty} <= 2'b00;

            else
                {fifo_full,fifo_empty} <= 2'b01;
        end

        else if (fifo_cnt == 1) begin
            if (fifo_rd_en && ~(fifo_wr_en))
                {fifo_full,fifo_empty} <= 2'b01;
    
            else
                {fifo_full,fifo_empty} <= 2'b00;
        end

        else
            {fifo_full,fifo_empty} <= 2'b00;
    end

    //-----------------------------------<FIFO读写错误指示>-----------------------------------//
    always @(posedge sys_clk) begin
        if (srst)
            {fifo_wr_err,fifo_rd_err} <= 2'b00;

        else if (fifo_full) begin
            if (fifo_wr_en)
                {fifo_wr_err,fifo_rd_err} <= 2'b10;

            else
                {fifo_wr_err,fifo_rd_err} <= 2'b00;
        end

        else if (fifo_empty) begin
            if (fifo_rd_en)
                {fifo_wr_err,fifo_rd_err} <= 2'b01;

            else
                {fifo_wr_err,fifo_rd_err} <= 2'b00;
        end

        else
            {fifo_wr_err,fifo_rd_err} <= 2'b00;
    end
endmodule
