// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Oct 19 22:37:20 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Electronic_Design/Project/Digital_Design/Tutorial_Xiaomei/09/uart_rtx/uart_rtx.sim/sim_1/synth/timing/xsim/uart_rx_byte_tb_time_synth.v
// Design      : uart_rx_byte
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* IDLE = "1'b0" *) (* RECEIVE = "1'b1" *) 
(* NotValidForBitStream *)
module uart_rx_byte
   (sys_clk,
    rst_n,
    baud_set,
    uart_rx,
    data_byte,
    rx_done);
  input sys_clk;
  input rst_n;
  input [2:0]baud_set;
  input uart_rx;
  output [7:0]data_byte;
  output rx_done;

  wire [2:0]baud_set;
  wire [2:0]baud_set_IBUF;
  wire clk_samp;
  wire clk_samp0;
  wire clk_samp_i_2_n_0;
  wire clk_samp_i_3_n_0;
  wire clk_samp_i_4_n_0;
  wire clk_samp_reg_i_1_n_2;
  wire clk_samp_reg_i_1_n_3;
  wire [7:0]data_byte;
  wire \data_byte[7]_i_1_n_0 ;
  wire [7:0]data_byte_OBUF;
  wire \data_byte_reg[0][0]_i_1_n_0 ;
  wire \data_byte_reg[0][1]_i_1_n_0 ;
  wire \data_byte_reg[0][1]_i_2_n_0 ;
  wire \data_byte_reg[0][2]_i_1_n_0 ;
  wire \data_byte_reg[0][2]_i_2_n_0 ;
  wire \data_byte_reg[0][2]_i_3_n_0 ;
  wire \data_byte_reg[1][0]_i_1_n_0 ;
  wire \data_byte_reg[1][1]_i_1_n_0 ;
  wire \data_byte_reg[1][1]_i_2_n_0 ;
  wire \data_byte_reg[1][2]_i_1_n_0 ;
  wire \data_byte_reg[1][2]_i_2_n_0 ;
  wire \data_byte_reg[1][2]_i_3_n_0 ;
  wire \data_byte_reg[2][0]_i_1_n_0 ;
  wire \data_byte_reg[2][1]_i_1_n_0 ;
  wire \data_byte_reg[2][2]_i_1_n_0 ;
  wire \data_byte_reg[2][2]_i_2_n_0 ;
  wire \data_byte_reg[3][0]_i_1_n_0 ;
  wire \data_byte_reg[3][1]_i_1_n_0 ;
  wire \data_byte_reg[3][2]_i_1_n_0 ;
  wire \data_byte_reg[3][2]_i_2_n_0 ;
  wire \data_byte_reg[3][2]_i_3_n_0 ;
  wire \data_byte_reg[4][0]_i_1_n_0 ;
  wire \data_byte_reg[4][1]_i_1_n_0 ;
  wire \data_byte_reg[4][2]_i_1_n_0 ;
  wire \data_byte_reg[4][2]_i_2_n_0 ;
  wire \data_byte_reg[5][0]_i_1_n_0 ;
  wire \data_byte_reg[5][1]_i_1_n_0 ;
  wire \data_byte_reg[5][1]_i_2_n_0 ;
  wire \data_byte_reg[5][2]_i_1_n_0 ;
  wire \data_byte_reg[5][2]_i_2_n_0 ;
  wire \data_byte_reg[6][0]_i_1_n_0 ;
  wire \data_byte_reg[6][1]_i_1_n_0 ;
  wire \data_byte_reg[6][2]_i_1_n_0 ;
  wire \data_byte_reg[6][2]_i_2_n_0 ;
  wire \data_byte_reg[7][0]_i_1_n_0 ;
  wire \data_byte_reg[7][1]_i_1_n_0 ;
  wire \data_byte_reg[7][2]_i_1_n_0 ;
  wire \data_byte_reg[7][2]_i_2_n_0 ;
  wire [2:0]\data_byte_reg_reg[0] ;
  wire [2:0]\data_byte_reg_reg[1] ;
  wire [2:0]\data_byte_reg_reg[2] ;
  wire [2:0]\data_byte_reg_reg[3] ;
  wire [2:0]\data_byte_reg_reg[4] ;
  wire [2:0]\data_byte_reg_reg[5] ;
  wire [2:0]\data_byte_reg_reg[6] ;
  wire [2:0]\data_byte_reg_reg[7] ;
  wire p_0_in;
  wire [8:0]p_0_in__0;
  wire [7:0]pulse_cnt;
  wire \pulse_cnt[7]_i_3_n_0 ;
  wire \pulse_cnt[7]_i_4_n_0 ;
  wire \pulse_cnt[7]_i_5_n_0 ;
  wire \pulse_cnt_reg[7]_i_1_n_1 ;
  wire \pulse_cnt_reg[7]_i_1_n_2 ;
  wire \pulse_cnt_reg[7]_i_1_n_3 ;
  wire \pulse_cnt_reg_n_0_[0] ;
  wire \pulse_cnt_reg_n_0_[1] ;
  wire \pulse_cnt_reg_n_0_[2] ;
  wire \pulse_cnt_reg_n_0_[3] ;
  wire \pulse_cnt_reg_n_0_[4] ;
  wire \pulse_cnt_reg_n_0_[5] ;
  wire \pulse_cnt_reg_n_0_[6] ;
  wire \pulse_cnt_reg_n_0_[7] ;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_done;
  wire rx_done_OBUF;
  wire [8:0]samp_cnt;
  wire samp_cnt1;
  wire \samp_cnt[5]_i_2_n_0 ;
  wire \samp_cnt[8]_i_2_n_0 ;
  wire \samp_cnt[8]_i_4_n_0 ;
  wire \samp_cnt[8]_i_5_n_0 ;
  wire \samp_cnt[8]_i_6_n_0 ;
  wire \samp_cnt_reg[8]_i_3_n_2 ;
  wire \samp_cnt_reg[8]_i_3_n_3 ;
  wire state_c;
  wire state_c_i_2_n_0;
  wire state_c_i_3_n_0;
  wire state_c_i_4_n_0;
  wire state_c_i_5_n_0;
  wire state_n0_out;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire uart_rx;
  wire uart_rx_IBUF;
  wire \uart_rx_reg_reg_n_0_[0] ;
  wire [3:3]NLW_clk_samp_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_clk_samp_reg_i_1_O_UNCONNECTED;
  wire [3:3]\NLW_pulse_cnt_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pulse_cnt_reg[7]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_samp_cnt_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_samp_cnt_reg[8]_i_3_O_UNCONNECTED ;

initial begin
 $sdf_annotate("uart_rx_byte_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \baud_set_IBUF[0]_inst 
       (.I(baud_set[0]),
        .O(baud_set_IBUF[0]));
  IBUF \baud_set_IBUF[1]_inst 
       (.I(baud_set[1]),
        .O(baud_set_IBUF[1]));
  IBUF \baud_set_IBUF[2]_inst 
       (.I(baud_set[2]),
        .O(baud_set_IBUF[2]));
  LUT6 #(
    .INIT(64'h000C000300090204)) 
    clk_samp_i_2
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(samp_cnt[8]),
        .I3(samp_cnt[6]),
        .I4(samp_cnt[7]),
        .I5(baud_set_IBUF[1]),
        .O(clk_samp_i_2_n_0));
  LUT6 #(
    .INIT(64'h00200D0000040920)) 
    clk_samp_i_3
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(samp_cnt[4]),
        .I3(samp_cnt[5]),
        .I4(samp_cnt[3]),
        .I5(baud_set_IBUF[1]),
        .O(clk_samp_i_3_n_0));
  LUT6 #(
    .INIT(64'h0404048004011004)) 
    clk_samp_i_4
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[0]),
        .I5(baud_set_IBUF[1]),
        .O(clk_samp_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_samp_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(clk_samp0),
        .Q(clk_samp));
  CARRY4 clk_samp_reg_i_1
       (.CI(1'b0),
        .CO({NLW_clk_samp_reg_i_1_CO_UNCONNECTED[3],clk_samp0,clk_samp_reg_i_1_n_2,clk_samp_reg_i_1_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_samp_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,clk_samp_i_2_n_0,clk_samp_i_3_n_0,clk_samp_i_4_n_0}));
  LUT5 #(
    .INIT(32'h01000000)) 
    \data_byte[7]_i_1 
       (.I0(state_c_i_4_n_0),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(\pulse_cnt_reg_n_0_[7] ),
        .I4(\pulse_cnt_reg[7]_i_1_n_1 ),
        .O(\data_byte[7]_i_1_n_0 ));
  OBUF \data_byte_OBUF[0]_inst 
       (.I(data_byte_OBUF[0]),
        .O(data_byte[0]));
  OBUF \data_byte_OBUF[1]_inst 
       (.I(data_byte_OBUF[1]),
        .O(data_byte[1]));
  OBUF \data_byte_OBUF[2]_inst 
       (.I(data_byte_OBUF[2]),
        .O(data_byte[2]));
  OBUF \data_byte_OBUF[3]_inst 
       (.I(data_byte_OBUF[3]),
        .O(data_byte[3]));
  OBUF \data_byte_OBUF[4]_inst 
       (.I(data_byte_OBUF[4]),
        .O(data_byte[4]));
  OBUF \data_byte_OBUF[5]_inst 
       (.I(data_byte_OBUF[5]),
        .O(data_byte[5]));
  OBUF \data_byte_OBUF[6]_inst 
       (.I(data_byte_OBUF[6]),
        .O(data_byte[6]));
  OBUF \data_byte_OBUF[7]_inst 
       (.I(data_byte_OBUF[7]),
        .O(data_byte[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[0] [2]),
        .Q(data_byte_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFD000200)) 
    \data_byte_reg[0][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(state_c),
        .I4(\data_byte_reg_reg[0] [0]),
        .O(\data_byte_reg[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7000000080000)) 
    \data_byte_reg[0][1]_i_1 
       (.I0(\data_byte_reg_reg[0] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(\pulse_cnt_reg_n_0_[6] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[0] [1]),
        .O(\data_byte_reg[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_byte_reg[0][1]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .O(\data_byte_reg[0][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \data_byte_reg[0][2]_i_1 
       (.I0(\data_byte_reg_reg[0] [0]),
        .I1(\data_byte_reg_reg[0] [1]),
        .I2(state_c),
        .I3(\data_byte_reg[0][2]_i_2_n_0 ),
        .I4(\data_byte_reg_reg[0] [2]),
        .O(\data_byte_reg[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
    \data_byte_reg[0][2]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .I3(\pulse_cnt_reg_n_0_[5] ),
        .I4(\pulse_cnt_reg_n_0_[6] ),
        .I5(state_c),
        .O(\data_byte_reg[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008008888008000)) 
    \data_byte_reg[0][2]_i_3 
       (.I0(p_0_in),
        .I1(clk_samp),
        .I2(\pulse_cnt_reg_n_0_[0] ),
        .I3(\pulse_cnt_reg_n_0_[2] ),
        .I4(\pulse_cnt_reg_n_0_[1] ),
        .I5(\pulse_cnt_reg_n_0_[3] ),
        .O(\data_byte_reg[0][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[1] [2]),
        .Q(data_byte_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFDF000000200000)) 
    \data_byte_reg[1][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[1] [0]),
        .O(\data_byte_reg[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[1][1]_i_1 
       (.I0(\data_byte_reg_reg[1] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[1][1]_i_2_n_0 ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[1] [1]),
        .O(\data_byte_reg[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[1][1]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[5] ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .O(\data_byte_reg[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \data_byte_reg[1][2]_i_1 
       (.I0(\data_byte_reg_reg[1] [0]),
        .I1(\data_byte_reg_reg[1] [1]),
        .I2(\data_byte_reg[1][2]_i_2_n_0 ),
        .I3(\data_byte_reg[1][2]_i_3_n_0 ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[1] [2]),
        .O(\data_byte_reg[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[1][2]_i_2 
       (.I0(\data_byte_reg[0][2]_i_3_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[7] ),
        .O(\data_byte_reg[1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_byte_reg[1][2]_i_3 
       (.I0(\pulse_cnt_reg_n_0_[6] ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .O(\data_byte_reg[1][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[2] [2]),
        .Q(data_byte_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7000800)) 
    \data_byte_reg[2][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(state_c),
        .I4(\data_byte_reg_reg[2] [0]),
        .O(\data_byte_reg[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[2][1]_i_1 
       (.I0(\data_byte_reg_reg[2] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(\pulse_cnt_reg_n_0_[6] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[2] [1]),
        .O(\data_byte_reg[2][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \data_byte_reg[2][2]_i_1 
       (.I0(\data_byte_reg_reg[2] [0]),
        .I1(\data_byte_reg_reg[2] [1]),
        .I2(state_c),
        .I3(\data_byte_reg[2][2]_i_2_n_0 ),
        .I4(\data_byte_reg_reg[2] [2]),
        .O(\data_byte_reg[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \data_byte_reg[2][2]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .I3(\pulse_cnt_reg_n_0_[5] ),
        .I4(\pulse_cnt_reg_n_0_[6] ),
        .I5(state_c),
        .O(\data_byte_reg[2][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[3] [2]),
        .Q(data_byte_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFDF000000200000)) 
    \data_byte_reg[3][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [0]),
        .O(\data_byte_reg[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[3][1]_i_1 
       (.I0(\data_byte_reg_reg[3] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[3][2]_i_3_n_0 ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [1]),
        .O(\data_byte_reg[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF000000400000)) 
    \data_byte_reg[3][2]_i_1 
       (.I0(\data_byte_reg[3][2]_i_2_n_0 ),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[3][2]_i_3_n_0 ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [2]),
        .O(\data_byte_reg[3][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_byte_reg[3][2]_i_2 
       (.I0(\data_byte_reg_reg[3] [0]),
        .I1(\data_byte_reg_reg[3] [1]),
        .O(\data_byte_reg[3][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[3][2]_i_3 
       (.I0(\pulse_cnt_reg_n_0_[6] ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .O(\data_byte_reg[3][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[4] [2]),
        .Q(data_byte_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7000800)) 
    \data_byte_reg[4][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(state_c),
        .I4(\data_byte_reg_reg[4] [0]),
        .O(\data_byte_reg[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[4][1]_i_1 
       (.I0(\data_byte_reg_reg[4] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(\pulse_cnt_reg_n_0_[5] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[4] [1]),
        .O(\data_byte_reg[4][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \data_byte_reg[4][2]_i_1 
       (.I0(\data_byte_reg_reg[4] [0]),
        .I1(\data_byte_reg_reg[4] [1]),
        .I2(state_c),
        .I3(\data_byte_reg[4][2]_i_2_n_0 ),
        .I4(\data_byte_reg_reg[4] [2]),
        .O(\data_byte_reg[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \data_byte_reg[4][2]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .I3(\pulse_cnt_reg_n_0_[6] ),
        .I4(\pulse_cnt_reg_n_0_[5] ),
        .I5(state_c),
        .O(\data_byte_reg[4][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[5] [2]),
        .Q(data_byte_OBUF[5]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[5][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[5] [0]),
        .O(\data_byte_reg[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[5][1]_i_1 
       (.I0(\data_byte_reg_reg[5] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[5][1]_i_2_n_0 ),
        .I3(\pulse_cnt_reg_n_0_[4] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[5] [1]),
        .O(\data_byte_reg[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_byte_reg[5][1]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[5] ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .O(\data_byte_reg[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \data_byte_reg[5][2]_i_1 
       (.I0(\data_byte_reg_reg[5] [0]),
        .I1(\data_byte_reg_reg[5] [1]),
        .I2(\data_byte_reg[1][2]_i_2_n_0 ),
        .I3(\data_byte_reg[5][2]_i_2_n_0 ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[5] [2]),
        .O(\data_byte_reg[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_byte_reg[5][2]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[6] ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .O(\data_byte_reg[5][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[6] [2]),
        .Q(data_byte_OBUF[6]));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \data_byte_reg[6][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(state_c),
        .I4(\data_byte_reg_reg[6] [0]),
        .O(\data_byte_reg[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \data_byte_reg[6][1]_i_1 
       (.I0(\data_byte_reg_reg[6] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(\pulse_cnt_reg_n_0_[6] ),
        .I4(state_c),
        .I5(\data_byte_reg_reg[6] [1]),
        .O(\data_byte_reg[6][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \data_byte_reg[6][2]_i_1 
       (.I0(\data_byte_reg_reg[6] [0]),
        .I1(\data_byte_reg_reg[6] [1]),
        .I2(state_c),
        .I3(\data_byte_reg[6][2]_i_2_n_0 ),
        .I4(\data_byte_reg_reg[6] [2]),
        .O(\data_byte_reg[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \data_byte_reg[6][2]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(\pulse_cnt_reg_n_0_[4] ),
        .I3(\pulse_cnt_reg_n_0_[5] ),
        .I4(\pulse_cnt_reg_n_0_[6] ),
        .I5(state_c),
        .O(\data_byte_reg[6][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\data_byte[7]_i_1_n_0 ),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg_reg[7] [2]),
        .Q(data_byte_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \data_byte_reg[7][0]_i_1 
       (.I0(state_c),
        .I1(\data_byte_reg[7][2]_i_2_n_0 ),
        .I2(\data_byte_reg_reg[7] [0]),
        .O(\data_byte_reg[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \data_byte_reg[7][1]_i_1 
       (.I0(\data_byte_reg_reg[7] [0]),
        .I1(state_c),
        .I2(\data_byte_reg[7][2]_i_2_n_0 ),
        .I3(\data_byte_reg_reg[7] [1]),
        .O(\data_byte_reg[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \data_byte_reg[7][2]_i_1 
       (.I0(\data_byte_reg_reg[7] [0]),
        .I1(\data_byte_reg_reg[7] [1]),
        .I2(state_c),
        .I3(\data_byte_reg[7][2]_i_2_n_0 ),
        .I4(\data_byte_reg_reg[7] [2]),
        .O(\data_byte_reg[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    \data_byte_reg[7][2]_i_2 
       (.I0(\data_byte_reg[0][2]_i_3_n_0 ),
        .I1(\pulse_cnt_reg_n_0_[5] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(\pulse_cnt_reg_n_0_[7] ),
        .I4(\pulse_cnt_reg_n_0_[4] ),
        .I5(state_c),
        .O(\data_byte_reg[7][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[0][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[0][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[0][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[1][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[1][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[1][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[2][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[2][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[2][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[3][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[3][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[3][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[4][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[4][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[4][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[5][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[5][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[5][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[6][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[6][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[6][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[7][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[7][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte_reg[7][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_cnt[0]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[0] ),
        .O(pulse_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pulse_cnt[1]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[1] ),
        .I1(\pulse_cnt_reg_n_0_[0] ),
        .O(pulse_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pulse_cnt[2]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[1] ),
        .I1(\pulse_cnt_reg_n_0_[0] ),
        .I2(\pulse_cnt_reg_n_0_[2] ),
        .O(pulse_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pulse_cnt[3]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[2] ),
        .I1(\pulse_cnt_reg_n_0_[0] ),
        .I2(\pulse_cnt_reg_n_0_[1] ),
        .I3(\pulse_cnt_reg_n_0_[3] ),
        .O(pulse_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pulse_cnt[4]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[3] ),
        .I1(\pulse_cnt_reg_n_0_[1] ),
        .I2(\pulse_cnt_reg_n_0_[0] ),
        .I3(\pulse_cnt_reg_n_0_[2] ),
        .I4(\pulse_cnt_reg_n_0_[4] ),
        .O(pulse_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA51)) 
    \pulse_cnt[5]_i_1 
       (.I0(state_c_i_4_n_0),
        .I1(\pulse_cnt_reg_n_0_[7] ),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .I3(\pulse_cnt_reg_n_0_[5] ),
        .O(pulse_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \pulse_cnt[6]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[5] ),
        .I1(state_c_i_4_n_0),
        .I2(\pulse_cnt_reg_n_0_[6] ),
        .O(pulse_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA68)) 
    \pulse_cnt[7]_i_2 
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .I3(state_c_i_4_n_0),
        .O(pulse_cnt[7]));
  LUT6 #(
    .INIT(64'h4400400400140120)) 
    \pulse_cnt[7]_i_3 
       (.I0(samp_cnt[7]),
        .I1(samp_cnt[6]),
        .I2(baud_set_IBUF[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(samp_cnt[8]),
        .O(\pulse_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0003090000420021)) 
    \pulse_cnt[7]_i_4 
       (.I0(baud_set_IBUF[1]),
        .I1(samp_cnt[4]),
        .I2(samp_cnt[3]),
        .I3(samp_cnt[5]),
        .I4(baud_set_IBUF[2]),
        .I5(baud_set_IBUF[0]),
        .O(\pulse_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0202020402800402)) 
    \pulse_cnt[7]_i_5 
       (.I0(samp_cnt[2]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[1]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(baud_set_IBUF[0]),
        .O(\pulse_cnt[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[0]),
        .Q(\pulse_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[1]),
        .Q(\pulse_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[2]),
        .Q(\pulse_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[3]),
        .Q(\pulse_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[4]),
        .Q(\pulse_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[5]),
        .Q(\pulse_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[6]),
        .Q(\pulse_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\pulse_cnt_reg[7]_i_1_n_1 ),
        .CLR(state_c_i_2_n_0),
        .D(pulse_cnt[7]),
        .Q(\pulse_cnt_reg_n_0_[7] ));
  CARRY4 \pulse_cnt_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\NLW_pulse_cnt_reg[7]_i_1_CO_UNCONNECTED [3],\pulse_cnt_reg[7]_i_1_n_1 ,\pulse_cnt_reg[7]_i_1_n_2 ,\pulse_cnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pulse_cnt_reg[7]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\pulse_cnt[7]_i_3_n_0 ,\pulse_cnt[7]_i_4_n_0 ,\pulse_cnt[7]_i_5_n_0 }));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\data_byte[7]_i_1_n_0 ),
        .Q(rx_done_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \samp_cnt[0]_i_1 
       (.I0(samp_cnt1),
        .I1(state_c),
        .I2(samp_cnt[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \samp_cnt[1]_i_1 
       (.I0(state_c),
        .I1(samp_cnt1),
        .I2(samp_cnt[0]),
        .I3(samp_cnt[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \samp_cnt[2]_i_1 
       (.I0(state_c),
        .I1(samp_cnt1),
        .I2(samp_cnt[1]),
        .I3(samp_cnt[0]),
        .I4(samp_cnt[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \samp_cnt[3]_i_1 
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h0B000400)) 
    \samp_cnt[4]_i_1 
       (.I0(\samp_cnt[5]_i_2_n_0 ),
        .I1(samp_cnt[3]),
        .I2(samp_cnt1),
        .I3(state_c),
        .I4(samp_cnt[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \samp_cnt[5]_i_1 
       (.I0(samp_cnt[3]),
        .I1(\samp_cnt[5]_i_2_n_0 ),
        .I2(samp_cnt[4]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[5]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \samp_cnt[5]_i_2 
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .O(\samp_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \samp_cnt[6]_i_1 
       (.I0(\samp_cnt[8]_i_2_n_0 ),
        .I1(samp_cnt1),
        .I2(state_c),
        .I3(samp_cnt[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \samp_cnt[7]_i_1 
       (.I0(\samp_cnt[8]_i_2_n_0 ),
        .I1(samp_cnt[6]),
        .I2(samp_cnt1),
        .I3(state_c),
        .I4(samp_cnt[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \samp_cnt[8]_i_1 
       (.I0(samp_cnt[6]),
        .I1(\samp_cnt[8]_i_2_n_0 ),
        .I2(samp_cnt[7]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \samp_cnt[8]_i_2 
       (.I0(samp_cnt[4]),
        .I1(samp_cnt[2]),
        .I2(samp_cnt[0]),
        .I3(samp_cnt[1]),
        .I4(samp_cnt[3]),
        .I5(samp_cnt[5]),
        .O(\samp_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400400400140120)) 
    \samp_cnt[8]_i_4 
       (.I0(samp_cnt[7]),
        .I1(samp_cnt[6]),
        .I2(baud_set_IBUF[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(samp_cnt[8]),
        .O(\samp_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0003090000420009)) 
    \samp_cnt[8]_i_5 
       (.I0(baud_set_IBUF[1]),
        .I1(samp_cnt[4]),
        .I2(samp_cnt[3]),
        .I3(samp_cnt[5]),
        .I4(baud_set_IBUF[2]),
        .I5(baud_set_IBUF[0]),
        .O(\samp_cnt[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2020200420010420)) 
    \samp_cnt[8]_i_6 
       (.I0(samp_cnt[2]),
        .I1(samp_cnt[1]),
        .I2(samp_cnt[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(baud_set_IBUF[0]),
        .O(\samp_cnt[8]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(samp_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(samp_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(samp_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(samp_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(samp_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[5]),
        .Q(samp_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[6]),
        .Q(samp_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[7]),
        .Q(samp_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(p_0_in__0[8]),
        .Q(samp_cnt[8]));
  CARRY4 \samp_cnt_reg[8]_i_3 
       (.CI(1'b0),
        .CO({\NLW_samp_cnt_reg[8]_i_3_CO_UNCONNECTED [3],samp_cnt1,\samp_cnt_reg[8]_i_3_n_2 ,\samp_cnt_reg[8]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_samp_cnt_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\samp_cnt[8]_i_4_n_0 ,\samp_cnt[8]_i_5_n_0 ,\samp_cnt[8]_i_6_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD000000)) 
    state_c_i_1
       (.I0(\pulse_cnt_reg[7]_i_1_n_1 ),
        .I1(state_c_i_3_n_0),
        .I2(state_c_i_4_n_0),
        .I3(rst_n_IBUF),
        .I4(state_c),
        .I5(state_c_i_5_n_0),
        .O(state_n0_out));
  LUT1 #(
    .INIT(2'h1)) 
    state_c_i_2
       (.I0(rst_n_IBUF),
        .O(state_c_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    state_c_i_3
       (.I0(\pulse_cnt_reg_n_0_[7] ),
        .I1(\pulse_cnt_reg_n_0_[6] ),
        .I2(\pulse_cnt_reg_n_0_[5] ),
        .O(state_c_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    state_c_i_4
       (.I0(\pulse_cnt_reg_n_0_[3] ),
        .I1(\pulse_cnt_reg_n_0_[1] ),
        .I2(\pulse_cnt_reg_n_0_[0] ),
        .I3(\pulse_cnt_reg_n_0_[2] ),
        .I4(\pulse_cnt_reg_n_0_[4] ),
        .O(state_c_i_4_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    state_c_i_5
       (.I0(state_c),
        .I1(rst_n_IBUF),
        .I2(\uart_rx_reg_reg_n_0_[0] ),
        .I3(p_0_in),
        .O(state_c_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_c_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(state_n0_out),
        .Q(state_c));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF uart_rx_IBUF_inst
       (.I(uart_rx),
        .O(uart_rx_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \uart_rx_reg_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(uart_rx_IBUF),
        .Q(\uart_rx_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_rx_reg_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(state_c_i_2_n_0),
        .D(\uart_rx_reg_reg_n_0_[0] ),
        .Q(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
