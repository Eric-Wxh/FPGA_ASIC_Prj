// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Oct 10 20:27:51 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Electronic_Design/Project/Digital_Design/Tutorial_Xiaomei/09/uart_rtx/uart_rtx.sim/sim_1/impl/func/xsim/uart_tx_byte_tb_func_impl.v
// Design      : uart_tx_byte
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "f177974d" *) (* STA = "1'b0" *) (* STO = "1'b1" *) 
(* NotValidForBitStream *)
module uart_tx_byte
   (clk,
    data_byte,
    baud_set,
    rst_n,
    send_go,
    uart_tx,
    tx_done,
    uart_state,
    byte_cnt);
  input clk;
  input [7:0]data_byte;
  input [2:0]baud_set;
  input rst_n;
  input send_go;
  output uart_tx;
  output tx_done;
  output uart_state;
  output [3:0]byte_cnt;

  wire [2:0]baud_set;
  wire [2:0]baud_set_IBUF;
  wire [15:0]bps_cnt;
  wire [15:1]bps_cnt0;
  wire \bps_cnt[15]_i_10_n_0 ;
  wire \bps_cnt[15]_i_5_n_0 ;
  wire \bps_cnt[15]_i_6_n_0 ;
  wire \bps_cnt[15]_i_7_n_0 ;
  wire \bps_cnt[15]_i_8_n_0 ;
  wire \bps_cnt[15]_i_9_n_0 ;
  wire [12:1]bps_cnt_max;
  wire \bps_cnt_max[12]_i_2_n_0 ;
  wire \bps_cnt_reg[12]_i_2_n_0 ;
  wire \bps_cnt_reg[15]_i_2_n_2 ;
  wire \bps_cnt_reg[15]_i_4_n_0 ;
  wire \bps_cnt_reg[4]_i_2_n_0 ;
  wire \bps_cnt_reg[8]_i_2_n_0 ;
  wire [3:0]byte_cnt;
  wire \byte_cnt[0]_i_1_n_0 ;
  wire \byte_cnt[1]_i_1_n_0 ;
  wire \byte_cnt[2]_i_1_n_0 ;
  wire \byte_cnt[3]_i_1_n_0 ;
  wire \byte_cnt[3]_i_2_n_0 ;
  wire [3:0]byte_cnt_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [7:0]data_byte;
  wire [7:0]data_byte_IBUF;
  wire \data_byte_reg_reg_n_0_[0] ;
  wire [15:0]p_0_in;
  wire [12:1]p_1_in;
  wire rst_n;
  wire rst_n_IBUF;
  wire send_en;
  wire send_en_i_1_n_0;
  wire send_en_reg_n_0;
  wire send_go;
  wire send_go_IBUF;
  wire tx_done;
  wire tx_done_OBUF;
  wire tx_done_i_1_n_0;
  wire uart_state;
  wire uart_state_OBUF;
  wire uart_tx;
  wire uart_tx_OBUF;
  wire uart_tx_i_2_n_0;
  wire uart_tx_i_3_n_0;
  wire uart_tx_i_4_n_0;
  wire uart_tx_reg_i_1_n_0;
  wire [2:0]\NLW_bps_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_bps_cnt_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_bps_cnt_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_bps_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bps_cnt_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_bps_cnt_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_bps_cnt_reg[15]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_bps_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_bps_cnt_reg[8]_i_2_CO_UNCONNECTED ;

  IBUF \baud_set_IBUF[0]_inst 
       (.I(baud_set[0]),
        .O(baud_set_IBUF[0]));
  IBUF \baud_set_IBUF[1]_inst 
       (.I(baud_set[1]),
        .O(baud_set_IBUF[1]));
  IBUF \baud_set_IBUF[2]_inst 
       (.I(baud_set[2]),
        .O(baud_set_IBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bps_cnt[0]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[10]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[11]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[12]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[13]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[14]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[14]),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[15]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[15]),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h82000082)) 
    \bps_cnt[15]_i_10 
       (.I0(bps_cnt[0]),
        .I1(bps_cnt_max[2]),
        .I2(bps_cnt[2]),
        .I3(bps_cnt_max[1]),
        .I4(bps_cnt[1]),
        .O(\bps_cnt[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bps_cnt[15]_i_5 
       (.I0(bps_cnt[15]),
        .O(\bps_cnt[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \bps_cnt[15]_i_6 
       (.I0(bps_cnt[12]),
        .I1(bps_cnt_max[12]),
        .I2(bps_cnt[14]),
        .I3(bps_cnt[13]),
        .O(\bps_cnt[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bps_cnt[15]_i_7 
       (.I0(bps_cnt[9]),
        .I1(bps_cnt_max[9]),
        .I2(bps_cnt_max[3]),
        .I3(bps_cnt[11]),
        .I4(bps_cnt_max[2]),
        .I5(bps_cnt[10]),
        .O(\bps_cnt[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bps_cnt[15]_i_8 
       (.I0(bps_cnt[6]),
        .I1(bps_cnt_max[6]),
        .I2(bps_cnt_max[8]),
        .I3(bps_cnt[8]),
        .I4(bps_cnt_max[7]),
        .I5(bps_cnt[7]),
        .O(\bps_cnt[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bps_cnt[15]_i_9 
       (.I0(bps_cnt[3]),
        .I1(bps_cnt_max[3]),
        .I2(bps_cnt_max[5]),
        .I3(bps_cnt[5]),
        .I4(bps_cnt_max[4]),
        .I5(bps_cnt[4]),
        .O(\bps_cnt[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[1]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[2]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[3]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[4]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[5]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[6]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[7]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[8]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[9]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(bps_cnt0[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hC9)) 
    \bps_cnt_max[12]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \bps_cnt_max[12]_i_2 
       (.I0(rst_n_IBUF),
        .O(\bps_cnt_max[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \bps_cnt_max[1]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    \bps_cnt_max[2]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[1]),
        .I2(baud_set_IBUF[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bps_cnt_max[3]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \bps_cnt_max[4]_i_1 
       (.I0(baud_set_IBUF[2]),
        .I1(baud_set_IBUF[0]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \bps_cnt_max[5]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    \bps_cnt_max[6]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bps_cnt_max[7]_i_1 
       (.I0(baud_set_IBUF[2]),
        .I1(baud_set_IBUF[0]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \bps_cnt_max[8]_i_1 
       (.I0(baud_set_IBUF[1]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[0]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \bps_cnt_max[9]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .O(p_1_in[9]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(p_1_in[12]),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(bps_cnt_max[12]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(p_1_in[1]),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(bps_cnt_max[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(p_1_in[2]),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(bps_cnt_max[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(bps_cnt_max[3]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(p_1_in[4]),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(bps_cnt_max[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(bps_cnt_max[5]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(p_1_in[6]),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(bps_cnt_max[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(bps_cnt_max[7]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(bps_cnt_max[8]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(bps_cnt_max[9]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(bps_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(bps_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(bps_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(bps_cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[12]_i_2 
       (.CI(\bps_cnt_reg[8]_i_2_n_0 ),
        .CO({\bps_cnt_reg[12]_i_2_n_0 ,\NLW_bps_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[12:9]),
        .S(bps_cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(bps_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(bps_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(bps_cnt[15]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[15]_i_2 
       (.CI(\bps_cnt_reg[15]_i_4_n_0 ),
        .CO({\NLW_bps_cnt_reg[15]_i_2_CO_UNCONNECTED [3:2],\bps_cnt_reg[15]_i_2_n_2 ,\NLW_bps_cnt_reg[15]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bps_cnt_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\bps_cnt[15]_i_5_n_0 ,\bps_cnt[15]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[15]_i_3 
       (.CI(\bps_cnt_reg[12]_i_2_n_0 ),
        .CO(\NLW_bps_cnt_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bps_cnt_reg[15]_i_3_O_UNCONNECTED [3],bps_cnt0[15:13]}),
        .S({1'b0,bps_cnt[15:13]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[15]_i_4 
       (.CI(1'b0),
        .CO({\bps_cnt_reg[15]_i_4_n_0 ,\NLW_bps_cnt_reg[15]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bps_cnt_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({\bps_cnt[15]_i_7_n_0 ,\bps_cnt[15]_i_8_n_0 ,\bps_cnt[15]_i_9_n_0 ,\bps_cnt[15]_i_10_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(bps_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(bps_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(bps_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(bps_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bps_cnt_reg[4]_i_2_n_0 ,\NLW_bps_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(bps_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[4:1]),
        .S(bps_cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(bps_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(bps_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(bps_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(bps_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \bps_cnt_reg[8]_i_2 
       (.CI(\bps_cnt_reg[4]_i_2_n_0 ),
        .CO({\bps_cnt_reg[8]_i_2_n_0 ,\NLW_bps_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[8:5]),
        .S(bps_cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(bps_cnt[9]));
  LUT6 #(
    .INIT(64'h2222AAAA22222AAA)) 
    \byte_cnt[0]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(byte_cnt_OBUF[1]),
        .I3(byte_cnt_OBUF[3]),
        .I4(byte_cnt_OBUF[0]),
        .I5(byte_cnt_OBUF[2]),
        .O(\byte_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA8A0000000000)) 
    \byte_cnt[1]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(byte_cnt_OBUF[2]),
        .I2(byte_cnt_OBUF[3]),
        .I3(byte_cnt_OBUF[1]),
        .I4(byte_cnt_OBUF[0]),
        .I5(\bps_cnt_reg[15]_i_2_n_2 ),
        .O(\byte_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28880000)) 
    \byte_cnt[2]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(byte_cnt_OBUF[2]),
        .I2(byte_cnt_OBUF[1]),
        .I3(byte_cnt_OBUF[0]),
        .I4(\bps_cnt_reg[15]_i_2_n_2 ),
        .O(\byte_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBF)) 
    \byte_cnt[3]_i_1 
       (.I0(\bps_cnt_reg[15]_i_2_n_2 ),
        .I1(send_en_reg_n_0),
        .I2(byte_cnt_OBUF[1]),
        .I3(byte_cnt_OBUF[0]),
        .I4(byte_cnt_OBUF[3]),
        .I5(byte_cnt_OBUF[2]),
        .O(\byte_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28A080A000000000)) 
    \byte_cnt[3]_i_2 
       (.I0(send_en_reg_n_0),
        .I1(byte_cnt_OBUF[2]),
        .I2(byte_cnt_OBUF[3]),
        .I3(byte_cnt_OBUF[1]),
        .I4(byte_cnt_OBUF[0]),
        .I5(\bps_cnt_reg[15]_i_2_n_2 ),
        .O(\byte_cnt[3]_i_2_n_0 ));
  OBUF \byte_cnt_OBUF[0]_inst 
       (.I(byte_cnt_OBUF[0]),
        .O(byte_cnt[0]));
  OBUF \byte_cnt_OBUF[1]_inst 
       (.I(byte_cnt_OBUF[1]),
        .O(byte_cnt[1]));
  OBUF \byte_cnt_OBUF[2]_inst 
       (.I(byte_cnt_OBUF[2]),
        .O(byte_cnt[2]));
  OBUF \byte_cnt_OBUF[3]_inst 
       (.I(byte_cnt_OBUF[3]),
        .O(byte_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(\byte_cnt[0]_i_1_n_0 ),
        .Q(byte_cnt_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(\byte_cnt[1]_i_1_n_0 ),
        .Q(byte_cnt_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(\byte_cnt[2]_i_1_n_0 ),
        .Q(byte_cnt_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(\byte_cnt[3]_i_2_n_0 ),
        .Q(byte_cnt_OBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_byte_IBUF[0]_inst 
       (.I(data_byte[0]),
        .O(data_byte_IBUF[0]));
  IBUF \data_byte_IBUF[1]_inst 
       (.I(data_byte[1]),
        .O(data_byte_IBUF[1]));
  IBUF \data_byte_IBUF[2]_inst 
       (.I(data_byte[2]),
        .O(data_byte_IBUF[2]));
  IBUF \data_byte_IBUF[3]_inst 
       (.I(data_byte[3]),
        .O(data_byte_IBUF[3]));
  IBUF \data_byte_IBUF[4]_inst 
       (.I(data_byte[4]),
        .O(data_byte_IBUF[4]));
  IBUF \data_byte_IBUF[5]_inst 
       (.I(data_byte[5]),
        .O(data_byte_IBUF[5]));
  IBUF \data_byte_IBUF[6]_inst 
       (.I(data_byte[6]),
        .O(data_byte_IBUF[6]));
  IBUF \data_byte_IBUF[7]_inst 
       (.I(data_byte[7]),
        .O(data_byte_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[0]),
        .Q(\data_byte_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(send_go_IBUF),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(data_byte_IBUF[7]),
        .Q(data7));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    send_en_i_1
       (.I0(send_go_IBUF),
        .I1(\bps_cnt_reg[15]_i_2_n_2 ),
        .I2(send_en),
        .I3(send_en_reg_n_0),
        .O(send_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    send_en_i_2
       (.I0(send_go_IBUF),
        .I1(byte_cnt_OBUF[3]),
        .I2(byte_cnt_OBUF[1]),
        .I3(byte_cnt_OBUF[0]),
        .I4(byte_cnt_OBUF[2]),
        .O(send_en));
  FDCE #(
    .INIT(1'b0)) 
    send_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(send_en_i_1_n_0),
        .Q(send_en_reg_n_0));
  IBUF send_go_IBUF_inst
       (.I(send_go),
        .O(send_go_IBUF));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  LUT5 #(
    .INIT(32'h10000000)) 
    tx_done_i_1
       (.I0(byte_cnt_OBUF[2]),
        .I1(byte_cnt_OBUF[0]),
        .I2(byte_cnt_OBUF[3]),
        .I3(byte_cnt_OBUF[1]),
        .I4(\bps_cnt_reg[15]_i_2_n_2 ),
        .O(tx_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_OBUF));
  OBUF uart_state_OBUF_inst
       (.I(uart_state_OBUF),
        .O(uart_state));
  FDCE #(
    .INIT(1'b0)) 
    uart_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\bps_cnt_max[12]_i_2_n_0 ),
        .D(send_en_reg_n_0),
        .Q(uart_state_OBUF));
  OBUF uart_tx_OBUF_inst
       (.I(uart_tx_OBUF),
        .O(uart_tx));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    uart_tx_i_2
       (.I0(uart_tx_i_4_n_0),
        .I1(byte_cnt_OBUF[2]),
        .I2(data1),
        .I3(\data_byte_reg_reg_n_0_[0] ),
        .I4(byte_cnt_OBUF[1]),
        .I5(byte_cnt_OBUF[0]),
        .O(uart_tx_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    uart_tx_i_3
       (.I0(data6),
        .I1(byte_cnt_OBUF[0]),
        .I2(byte_cnt_OBUF[1]),
        .I3(byte_cnt_OBUF[2]),
        .I4(data7),
        .O(uart_tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_tx_i_4
       (.I0(data5),
        .I1(data4),
        .I2(byte_cnt_OBUF[1]),
        .I3(data3),
        .I4(byte_cnt_OBUF[0]),
        .I5(data2),
        .O(uart_tx_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    uart_tx_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_reg_i_1_n_0),
        .PRE(\bps_cnt_max[12]_i_2_n_0 ),
        .Q(uart_tx_OBUF));
  MUXF7 uart_tx_reg_i_1
       (.I0(uart_tx_i_2_n_0),
        .I1(uart_tx_i_3_n_0),
        .O(uart_tx_reg_i_1_n_0),
        .S(byte_cnt_OBUF[3]));
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
