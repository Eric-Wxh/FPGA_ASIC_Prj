// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Oct 11 14:32:15 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Electronic_Design/Project/Digital_Design/Tutorial_Xiaomei/09/uart_rtx/uart_rtx.sim/sim_1/synth/func/xsim/uart_tx_data_tb_func_synth.v
// Design      : uart_tx_data
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_tx_byte
   (rst_n,
    data_tx_OBUF,
    tx_done_reg_0,
    tx_done_reg_1,
    tx_done_reg_2,
    \data_cnt_reg[2] ,
    D,
    tx_done_reg_3,
    CLK,
    Q,
    \data_cnt_reg[2]_0 ,
    \data_cnt_reg[2]_1 ,
    \data_cnt_reg[2]_2 ,
    \data_byte_reg_reg[7]_0 ,
    rst_n_IBUF,
    send_go,
    baud_set_IBUF);
  output rst_n;
  output data_tx_OBUF;
  output tx_done_reg_0;
  output tx_done_reg_1;
  output tx_done_reg_2;
  output \data_cnt_reg[2] ;
  output [0:0]D;
  output tx_done_reg_3;
  input CLK;
  input [1:0]Q;
  input \data_cnt_reg[2]_0 ;
  input \data_cnt_reg[2]_1 ;
  input \data_cnt_reg[2]_2 ;
  input [31:0]\data_byte_reg_reg[7]_0 ;
  input rst_n_IBUF;
  input send_go;
  input [2:0]baud_set_IBUF;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state_c[1]_i_3_n_0 ;
  wire [1:0]Q;
  wire [2:0]baud_set_IBUF;
  wire [15:0]bps_cnt;
  wire [15:1]bps_cnt0;
  wire bps_cnt0_carry__0_n_0;
  wire bps_cnt0_carry__0_n_1;
  wire bps_cnt0_carry__0_n_2;
  wire bps_cnt0_carry__0_n_3;
  wire bps_cnt0_carry__1_n_0;
  wire bps_cnt0_carry__1_n_1;
  wire bps_cnt0_carry__1_n_2;
  wire bps_cnt0_carry__1_n_3;
  wire bps_cnt0_carry__2_n_2;
  wire bps_cnt0_carry__2_n_3;
  wire bps_cnt0_carry_n_0;
  wire bps_cnt0_carry_n_1;
  wire bps_cnt0_carry_n_2;
  wire bps_cnt0_carry_n_3;
  wire [12:1]bps_cnt_max;
  wire \byte_cnt[0]_i_1_n_0 ;
  wire \byte_cnt[1]_i_1_n_0 ;
  wire \byte_cnt[2]_i_1_n_0 ;
  wire \byte_cnt[3]_i_1_n_0 ;
  wire \byte_cnt[3]_i_2_n_0 ;
  wire \byte_cnt_reg_n_0_[0] ;
  wire \byte_cnt_reg_n_0_[1] ;
  wire \byte_cnt_reg_n_0_[2] ;
  wire \byte_cnt_reg_n_0_[3] ;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [7:0]data_byte;
  wire [31:0]\data_byte_reg_reg[7]_0 ;
  wire \data_byte_reg_reg_n_0_[0] ;
  wire \data_cnt_reg[2] ;
  wire \data_cnt_reg[2]_0 ;
  wire \data_cnt_reg[2]_1 ;
  wire \data_cnt_reg[2]_2 ;
  wire data_tx_OBUF;
  wire [15:0]p_0_in;
  wire [12:1]p_1_in;
  wire [7:0]p_1_out;
  wire rst_n;
  wire rst_n_IBUF;
  wire send_en1_carry__0_i_1_n_0;
  wire send_en1_carry__0_i_2_n_0;
  wire send_en1_carry__0_n_2;
  wire send_en1_carry__0_n_3;
  wire send_en1_carry_i_1_n_0;
  wire send_en1_carry_i_2_n_0;
  wire send_en1_carry_i_3_n_0;
  wire send_en1_carry_i_4_n_0;
  wire send_en1_carry_n_0;
  wire send_en1_carry_n_1;
  wire send_en1_carry_n_2;
  wire send_en1_carry_n_3;
  wire send_en_i_1_n_0;
  wire send_en_i_2_n_0;
  wire send_en_reg_n_0;
  wire send_go;
  wire tx_done_byte;
  wire tx_done_i_1__0_n_0;
  wire tx_done_reg_0;
  wire tx_done_reg_1;
  wire tx_done_reg_2;
  wire tx_done_reg_3;
  wire uart_tx;
  wire uart_tx_i_2_n_0;
  wire uart_tx_i_3_n_0;
  wire uart_tx_i_4_n_0;
  wire [3:2]NLW_bps_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_bps_cnt0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_send_en1_carry_O_UNCONNECTED;
  wire [3:2]NLW_send_en1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_send_en1_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0A800000)) 
    \FSM_sequential_state_c[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(send_go),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_state_c[1]_i_3_n_0 ),
        .O(D));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_c[1]_i_2 
       (.I0(rst_n_IBUF),
        .O(rst_n));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \FSM_sequential_state_c[1]_i_3 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(Q[0]),
        .I2(\data_cnt_reg[2]_1 ),
        .I3(tx_done_byte),
        .I4(\data_cnt_reg[2]_2 ),
        .O(\FSM_sequential_state_c[1]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bps_cnt0_carry
       (.CI(1'b0),
        .CO({bps_cnt0_carry_n_0,bps_cnt0_carry_n_1,bps_cnt0_carry_n_2,bps_cnt0_carry_n_3}),
        .CYINIT(bps_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[4:1]),
        .S(bps_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bps_cnt0_carry__0
       (.CI(bps_cnt0_carry_n_0),
        .CO({bps_cnt0_carry__0_n_0,bps_cnt0_carry__0_n_1,bps_cnt0_carry__0_n_2,bps_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[8:5]),
        .S(bps_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bps_cnt0_carry__1
       (.CI(bps_cnt0_carry__0_n_0),
        .CO({bps_cnt0_carry__1_n_0,bps_cnt0_carry__1_n_1,bps_cnt0_carry__1_n_2,bps_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bps_cnt0[12:9]),
        .S(bps_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bps_cnt0_carry__2
       (.CI(bps_cnt0_carry__1_n_0),
        .CO({NLW_bps_cnt0_carry__2_CO_UNCONNECTED[3:2],bps_cnt0_carry__2_n_2,bps_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bps_cnt0_carry__2_O_UNCONNECTED[3],bps_cnt0[15:13]}),
        .S({1'b0,bps_cnt[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bps_cnt[0]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[10]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[11]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[12]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[13]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[14]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[15]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[1]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[2]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[3]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[4]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[5]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[6]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[7]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[8]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bps_cnt[9]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(bps_cnt0[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hC9)) 
    \bps_cnt_max[12]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \bps_cnt_max[1]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    \bps_cnt_max[2]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[1]),
        .I2(baud_set_IBUF[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \bps_cnt_max[5]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    \bps_cnt_max[6]_i_1 
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bps_cnt_max[7]_i_1 
       (.I0(baud_set_IBUF[2]),
        .I1(baud_set_IBUF[0]),
        .I2(baud_set_IBUF[1]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
       (.C(CLK),
        .CE(rst_n_IBUF),
        .D(p_1_in[12]),
        .PRE(rst_n),
        .Q(bps_cnt_max[12]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[1] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .D(p_1_in[1]),
        .PRE(rst_n),
        .Q(bps_cnt_max[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[2] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .D(p_1_in[2]),
        .PRE(rst_n),
        .Q(bps_cnt_max[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[3] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .CLR(rst_n),
        .D(p_1_in[3]),
        .Q(bps_cnt_max[3]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[4] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .D(p_1_in[4]),
        .PRE(rst_n),
        .Q(bps_cnt_max[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[5] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .CLR(rst_n),
        .D(p_1_in[5]),
        .Q(bps_cnt_max[5]));
  FDPE #(
    .INIT(1'b1)) 
    \bps_cnt_max_reg[6] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .D(p_1_in[6]),
        .PRE(rst_n),
        .Q(bps_cnt_max[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[7] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .CLR(rst_n),
        .D(p_1_in[7]),
        .Q(bps_cnt_max[7]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[8] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .CLR(rst_n),
        .D(p_1_in[8]),
        .Q(bps_cnt_max[8]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_max_reg[9] 
       (.C(CLK),
        .CE(rst_n_IBUF),
        .CLR(rst_n),
        .D(p_1_in[9]),
        .Q(bps_cnt_max[9]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[0]),
        .Q(bps_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[10]),
        .Q(bps_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[11]),
        .Q(bps_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[12]),
        .Q(bps_cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[13]),
        .Q(bps_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[14]),
        .Q(bps_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[15]),
        .Q(bps_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[1]),
        .Q(bps_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[2]),
        .Q(bps_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[3]),
        .Q(bps_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[4]),
        .Q(bps_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[5]),
        .Q(bps_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[6]),
        .Q(bps_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[7]),
        .Q(bps_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[8]),
        .Q(bps_cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \bps_cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in[9]),
        .Q(bps_cnt[9]));
  LUT6 #(
    .INIT(64'h2222AAAA22222AAA)) 
    \byte_cnt[0]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(send_en1_carry__0_n_2),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .I3(\byte_cnt_reg_n_0_[3] ),
        .I4(\byte_cnt_reg_n_0_[0] ),
        .I5(\byte_cnt_reg_n_0_[2] ),
        .O(\byte_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA8A0000000000)) 
    \byte_cnt[1]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[3] ),
        .I3(\byte_cnt_reg_n_0_[1] ),
        .I4(\byte_cnt_reg_n_0_[0] ),
        .I5(send_en1_carry__0_n_2),
        .O(\byte_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28880000)) 
    \byte_cnt[2]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .I4(send_en1_carry__0_n_2),
        .O(\byte_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555557)) 
    \byte_cnt[3]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(\byte_cnt_reg_n_0_[2] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .I4(\byte_cnt_reg_n_0_[1] ),
        .I5(send_en1_carry__0_n_2),
        .O(\byte_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28A080A000000000)) 
    \byte_cnt[3]_i_2 
       (.I0(send_en_reg_n_0),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[3] ),
        .I3(\byte_cnt_reg_n_0_[1] ),
        .I4(\byte_cnt_reg_n_0_[0] ),
        .I5(send_en1_carry__0_n_2),
        .O(\byte_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(CLK),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\byte_cnt[0]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(CLK),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\byte_cnt[1]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(CLK),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\byte_cnt[2]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(CLK),
        .CE(\byte_cnt[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\byte_cnt[3]_i_2_n_0 ),
        .Q(\byte_cnt_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[0]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[0]),
        .O(p_1_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[0]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [8]),
        .I1(\data_byte_reg_reg[7]_0 [0]),
        .I2(\data_byte_reg_reg[7]_0 [24]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [16]),
        .O(data_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[1]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[1]),
        .O(p_1_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[1]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [9]),
        .I1(\data_byte_reg_reg[7]_0 [1]),
        .I2(\data_byte_reg_reg[7]_0 [25]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [17]),
        .O(data_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[2]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[2]),
        .O(p_1_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[2]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [10]),
        .I1(\data_byte_reg_reg[7]_0 [2]),
        .I2(\data_byte_reg_reg[7]_0 [26]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [18]),
        .O(data_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[3]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[3]),
        .O(p_1_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[3]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [11]),
        .I1(\data_byte_reg_reg[7]_0 [3]),
        .I2(\data_byte_reg_reg[7]_0 [27]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [19]),
        .O(data_byte[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[4]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[4]),
        .O(p_1_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[4]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [12]),
        .I1(\data_byte_reg_reg[7]_0 [4]),
        .I2(\data_byte_reg_reg[7]_0 [28]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [20]),
        .O(data_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[5]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[5]),
        .O(p_1_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[5]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [13]),
        .I1(\data_byte_reg_reg[7]_0 [5]),
        .I2(\data_byte_reg_reg[7]_0 [29]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [21]),
        .O(data_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[6]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[6]),
        .O(p_1_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[6]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [14]),
        .I1(\data_byte_reg_reg[7]_0 [6]),
        .I2(\data_byte_reg_reg[7]_0 [30]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [22]),
        .O(data_byte[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_byte_reg[7]_i_1 
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(data_byte[7]),
        .O(p_1_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_byte_reg[7]_i_2 
       (.I0(\data_byte_reg_reg[7]_0 [15]),
        .I1(\data_byte_reg_reg[7]_0 [7]),
        .I2(\data_byte_reg_reg[7]_0 [31]),
        .I3(\data_cnt_reg[2]_2 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_byte_reg_reg[7]_0 [23]),
        .O(data_byte[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[0]),
        .Q(\data_byte_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7] 
       (.C(CLK),
        .CE(send_go),
        .CLR(rst_n),
        .D(p_1_out[7]),
        .Q(data7));
  LUT6 #(
    .INIT(64'h1055202010102020)) 
    \data_cnt[0]_i_1 
       (.I0(tx_done_byte),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\data_cnt_reg[2]_0 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_cnt_reg[2]_2 ),
        .O(tx_done_reg_2));
  LUT6 #(
    .INIT(64'h1055303020200000)) 
    \data_cnt[1]_i_1 
       (.I0(tx_done_byte),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\data_cnt_reg[2]_0 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_cnt_reg[2]_2 ),
        .O(tx_done_reg_1));
  LUT6 #(
    .INIT(64'h1000300030003000)) 
    \data_cnt[2]_i_1 
       (.I0(tx_done_byte),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\data_cnt_reg[2]_0 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_cnt_reg[2]_2 ),
        .O(tx_done_reg_0));
  CARRY4 send_en1_carry
       (.CI(1'b0),
        .CO({send_en1_carry_n_0,send_en1_carry_n_1,send_en1_carry_n_2,send_en1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_send_en1_carry_O_UNCONNECTED[3:0]),
        .S({send_en1_carry_i_1_n_0,send_en1_carry_i_2_n_0,send_en1_carry_i_3_n_0,send_en1_carry_i_4_n_0}));
  CARRY4 send_en1_carry__0
       (.CI(send_en1_carry_n_0),
        .CO({NLW_send_en1_carry__0_CO_UNCONNECTED[3:2],send_en1_carry__0_n_2,send_en1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_send_en1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,send_en1_carry__0_i_1_n_0,send_en1_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    send_en1_carry__0_i_1
       (.I0(bps_cnt[15]),
        .O(send_en1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    send_en1_carry__0_i_2
       (.I0(bps_cnt[12]),
        .I1(bps_cnt_max[12]),
        .I2(bps_cnt[14]),
        .I3(bps_cnt[13]),
        .O(send_en1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    send_en1_carry_i_1
       (.I0(bps_cnt[9]),
        .I1(bps_cnt_max[9]),
        .I2(bps_cnt_max[3]),
        .I3(bps_cnt[11]),
        .I4(bps_cnt_max[2]),
        .I5(bps_cnt[10]),
        .O(send_en1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    send_en1_carry_i_2
       (.I0(bps_cnt[6]),
        .I1(bps_cnt_max[6]),
        .I2(bps_cnt_max[8]),
        .I3(bps_cnt[8]),
        .I4(bps_cnt_max[7]),
        .I5(bps_cnt[7]),
        .O(send_en1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    send_en1_carry_i_3
       (.I0(bps_cnt[3]),
        .I1(bps_cnt_max[3]),
        .I2(bps_cnt_max[5]),
        .I3(bps_cnt[5]),
        .I4(bps_cnt_max[4]),
        .I5(bps_cnt[4]),
        .O(send_en1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h82000082)) 
    send_en1_carry_i_4
       (.I0(bps_cnt[0]),
        .I1(bps_cnt_max[2]),
        .I2(bps_cnt[2]),
        .I3(bps_cnt_max[1]),
        .I4(bps_cnt[1]),
        .O(send_en1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFCCCCDCCC)) 
    send_en_i_1
       (.I0(send_en1_carry__0_n_2),
        .I1(send_go),
        .I2(\byte_cnt_reg_n_0_[3] ),
        .I3(\byte_cnt_reg_n_0_[1] ),
        .I4(send_en_i_2_n_0),
        .I5(send_en_reg_n_0),
        .O(send_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    send_en_i_2
       (.I0(\byte_cnt_reg_n_0_[2] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .O(send_en_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    send_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(send_en_i_1_n_0),
        .Q(send_en_reg_n_0));
  LUT6 #(
    .INIT(64'h3800383838383838)) 
    send_go_i_1
       (.I0(tx_done_byte),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\data_cnt_reg[2]_0 ),
        .I4(\data_cnt_reg[2]_1 ),
        .I5(\data_cnt_reg[2]_2 ),
        .O(tx_done_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    tx_done_i_1
       (.I0(\data_cnt_reg[2]_0 ),
        .I1(tx_done_byte),
        .I2(\data_cnt_reg[2]_2 ),
        .I3(\data_cnt_reg[2]_1 ),
        .O(\data_cnt_reg[2] ));
  LUT5 #(
    .INIT(32'h10000000)) 
    tx_done_i_1__0
       (.I0(\byte_cnt_reg_n_0_[0] ),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[3] ),
        .I3(\byte_cnt_reg_n_0_[1] ),
        .I4(send_en1_carry__0_n_2),
        .O(tx_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(tx_done_i_1__0_n_0),
        .Q(tx_done_byte));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    uart_tx_i_2
       (.I0(uart_tx_i_4_n_0),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(data1),
        .I3(\data_byte_reg_reg_n_0_[0] ),
        .I4(\byte_cnt_reg_n_0_[1] ),
        .I5(\byte_cnt_reg_n_0_[0] ),
        .O(uart_tx_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFF2)) 
    uart_tx_i_3
       (.I0(data6),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .I4(data7),
        .O(uart_tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_tx_i_4
       (.I0(data5),
        .I1(data4),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .I3(data3),
        .I4(\byte_cnt_reg_n_0_[0] ),
        .I5(data2),
        .O(uart_tx_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    uart_tx_reg
       (.C(CLK),
        .CE(1'b1),
        .D(uart_tx),
        .PRE(rst_n),
        .Q(data_tx_OBUF));
  MUXF7 uart_tx_reg_i_1
       (.I0(uart_tx_i_2_n_0),
        .I1(uart_tx_i_3_n_0),
        .O(uart_tx),
        .S(\byte_cnt_reg_n_0_[3] ));
endmodule

(* IDLE = "2'b00" *) (* LOAD = "2'b01" *) (* SEND = "2'b11" *) 
(* NotValidForBitStream *)
module uart_tx_data
   (clk,
    rst_n,
    baud_set,
    trans_go,
    data,
    data_tx,
    tx_done);
  input clk;
  input rst_n;
  input [2:0]baud_set;
  input trans_go;
  input [31:0]data;
  output data_tx;
  output tx_done;

  wire \FSM_sequential_state_c[0]_i_1_n_0 ;
  wire [2:0]baud_set;
  wire [2:0]baud_set_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data;
  wire [31:0]data_IBUF;
  wire \data_cnt_reg_n_0_[0] ;
  wire \data_cnt_reg_n_0_[1] ;
  wire \data_cnt_reg_n_0_[2] ;
  wire \data_reg[31]_i_1_n_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[10] ;
  wire \data_reg_reg_n_0_[11] ;
  wire \data_reg_reg_n_0_[12] ;
  wire \data_reg_reg_n_0_[13] ;
  wire \data_reg_reg_n_0_[14] ;
  wire \data_reg_reg_n_0_[15] ;
  wire \data_reg_reg_n_0_[16] ;
  wire \data_reg_reg_n_0_[17] ;
  wire \data_reg_reg_n_0_[18] ;
  wire \data_reg_reg_n_0_[19] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[20] ;
  wire \data_reg_reg_n_0_[21] ;
  wire \data_reg_reg_n_0_[22] ;
  wire \data_reg_reg_n_0_[23] ;
  wire \data_reg_reg_n_0_[24] ;
  wire \data_reg_reg_n_0_[25] ;
  wire \data_reg_reg_n_0_[26] ;
  wire \data_reg_reg_n_0_[27] ;
  wire \data_reg_reg_n_0_[28] ;
  wire \data_reg_reg_n_0_[29] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[30] ;
  wire \data_reg_reg_n_0_[31] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire \data_reg_reg_n_0_[8] ;
  wire \data_reg_reg_n_0_[9] ;
  wire data_tx;
  wire data_tx_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire send_go;
  wire [1:0]state_c;
  wire trans_go;
  wire trans_go_IBUF;
  wire tx_done;
  wire tx_done_OBUF;
  wire u_uart_tx_byte_n_0;
  wire u_uart_tx_byte_n_2;
  wire u_uart_tx_byte_n_3;
  wire u_uart_tx_byte_n_4;
  wire u_uart_tx_byte_n_5;
  wire u_uart_tx_byte_n_6;
  wire u_uart_tx_byte_n_7;

  LUT5 #(
    .INIT(32'h00404440)) 
    \FSM_sequential_state_c[0]_i_1 
       (.I0(state_c[1]),
        .I1(rst_n_IBUF),
        .I2(trans_go_IBUF),
        .I3(state_c[0]),
        .I4(send_go),
        .O(\FSM_sequential_state_c[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:01,SEND:10,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(\FSM_sequential_state_c[0]_i_1_n_0 ),
        .Q(state_c[0]));
  (* FSM_ENCODED_STATES = "LOAD:01,SEND:10,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_c_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_6),
        .Q(state_c[1]));
  IBUF \baud_set_IBUF[0]_inst 
       (.I(baud_set[0]),
        .O(baud_set_IBUF[0]));
  IBUF \baud_set_IBUF[1]_inst 
       (.I(baud_set[1]),
        .O(baud_set_IBUF[1]));
  IBUF \baud_set_IBUF[2]_inst 
       (.I(baud_set[2]),
        .O(baud_set_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[10]_inst 
       (.I(data[10]),
        .O(data_IBUF[10]));
  IBUF \data_IBUF[11]_inst 
       (.I(data[11]),
        .O(data_IBUF[11]));
  IBUF \data_IBUF[12]_inst 
       (.I(data[12]),
        .O(data_IBUF[12]));
  IBUF \data_IBUF[13]_inst 
       (.I(data[13]),
        .O(data_IBUF[13]));
  IBUF \data_IBUF[14]_inst 
       (.I(data[14]),
        .O(data_IBUF[14]));
  IBUF \data_IBUF[15]_inst 
       (.I(data[15]),
        .O(data_IBUF[15]));
  IBUF \data_IBUF[16]_inst 
       (.I(data[16]),
        .O(data_IBUF[16]));
  IBUF \data_IBUF[17]_inst 
       (.I(data[17]),
        .O(data_IBUF[17]));
  IBUF \data_IBUF[18]_inst 
       (.I(data[18]),
        .O(data_IBUF[18]));
  IBUF \data_IBUF[19]_inst 
       (.I(data[19]),
        .O(data_IBUF[19]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[20]_inst 
       (.I(data[20]),
        .O(data_IBUF[20]));
  IBUF \data_IBUF[21]_inst 
       (.I(data[21]),
        .O(data_IBUF[21]));
  IBUF \data_IBUF[22]_inst 
       (.I(data[22]),
        .O(data_IBUF[22]));
  IBUF \data_IBUF[23]_inst 
       (.I(data[23]),
        .O(data_IBUF[23]));
  IBUF \data_IBUF[24]_inst 
       (.I(data[24]),
        .O(data_IBUF[24]));
  IBUF \data_IBUF[25]_inst 
       (.I(data[25]),
        .O(data_IBUF[25]));
  IBUF \data_IBUF[26]_inst 
       (.I(data[26]),
        .O(data_IBUF[26]));
  IBUF \data_IBUF[27]_inst 
       (.I(data[27]),
        .O(data_IBUF[27]));
  IBUF \data_IBUF[28]_inst 
       (.I(data[28]),
        .O(data_IBUF[28]));
  IBUF \data_IBUF[29]_inst 
       (.I(data[29]),
        .O(data_IBUF[29]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[30]_inst 
       (.I(data[30]),
        .O(data_IBUF[30]));
  IBUF \data_IBUF[31]_inst 
       (.I(data[31]),
        .O(data_IBUF[31]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  IBUF \data_IBUF[8]_inst 
       (.I(data[8]),
        .O(data_IBUF[8]));
  IBUF \data_IBUF[9]_inst 
       (.I(data[9]),
        .O(data_IBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_4),
        .Q(\data_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_3),
        .Q(\data_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_2),
        .Q(\data_cnt_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[31]_i_1 
       (.I0(state_c[0]),
        .I1(state_c[1]),
        .O(\data_reg[31]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[0]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[10]),
        .Q(\data_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[11]),
        .Q(\data_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[12]),
        .Q(\data_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[13]),
        .Q(\data_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[14]),
        .Q(\data_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[15]),
        .Q(\data_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[16]),
        .Q(\data_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[17]),
        .Q(\data_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[18]),
        .Q(\data_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[19]),
        .Q(\data_reg_reg_n_0_[19] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[1]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[20]),
        .Q(\data_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[21]),
        .Q(\data_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[22]),
        .Q(\data_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[23]),
        .Q(\data_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[24]),
        .Q(\data_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[25]),
        .Q(\data_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[26]),
        .Q(\data_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[27]),
        .Q(\data_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[28]),
        .Q(\data_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[29]),
        .Q(\data_reg_reg_n_0_[29] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[2]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[30]),
        .Q(\data_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[31]),
        .Q(\data_reg_reg_n_0_[31] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[3]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[4]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[5]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[6]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(data_IBUF[7]),
        .PRE(u_uart_tx_byte_n_0),
        .Q(\data_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[8]),
        .Q(\data_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_reg[31]_i_1_n_0 ),
        .CLR(u_uart_tx_byte_n_0),
        .D(data_IBUF[9]),
        .Q(\data_reg_reg_n_0_[9] ));
  OBUF data_tx_OBUF_inst
       (.I(data_tx_OBUF),
        .O(data_tx));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    send_go_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_7),
        .Q(send_go));
  IBUF trans_go_IBUF_inst
       (.I(trans_go),
        .O(trans_go_IBUF));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(u_uart_tx_byte_n_0),
        .D(u_uart_tx_byte_n_5),
        .Q(tx_done_OBUF));
  uart_tx_byte u_uart_tx_byte
       (.CLK(clk_IBUF_BUFG),
        .D(u_uart_tx_byte_n_6),
        .Q(state_c),
        .baud_set_IBUF(baud_set_IBUF),
        .\data_byte_reg_reg[7]_0 ({\data_reg_reg_n_0_[31] ,\data_reg_reg_n_0_[30] ,\data_reg_reg_n_0_[29] ,\data_reg_reg_n_0_[28] ,\data_reg_reg_n_0_[27] ,\data_reg_reg_n_0_[26] ,\data_reg_reg_n_0_[25] ,\data_reg_reg_n_0_[24] ,\data_reg_reg_n_0_[23] ,\data_reg_reg_n_0_[22] ,\data_reg_reg_n_0_[21] ,\data_reg_reg_n_0_[20] ,\data_reg_reg_n_0_[19] ,\data_reg_reg_n_0_[18] ,\data_reg_reg_n_0_[17] ,\data_reg_reg_n_0_[16] ,\data_reg_reg_n_0_[15] ,\data_reg_reg_n_0_[14] ,\data_reg_reg_n_0_[13] ,\data_reg_reg_n_0_[12] ,\data_reg_reg_n_0_[11] ,\data_reg_reg_n_0_[10] ,\data_reg_reg_n_0_[9] ,\data_reg_reg_n_0_[8] ,\data_reg_reg_n_0_[7] ,\data_reg_reg_n_0_[6] ,\data_reg_reg_n_0_[5] ,\data_reg_reg_n_0_[4] ,\data_reg_reg_n_0_[3] ,\data_reg_reg_n_0_[2] ,\data_reg_reg_n_0_[1] ,\data_reg_reg_n_0_[0] }),
        .\data_cnt_reg[2] (u_uart_tx_byte_n_5),
        .\data_cnt_reg[2]_0 (\data_cnt_reg_n_0_[2] ),
        .\data_cnt_reg[2]_1 (\data_cnt_reg_n_0_[0] ),
        .\data_cnt_reg[2]_2 (\data_cnt_reg_n_0_[1] ),
        .data_tx_OBUF(data_tx_OBUF),
        .rst_n(u_uart_tx_byte_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .send_go(send_go),
        .tx_done_reg_0(u_uart_tx_byte_n_2),
        .tx_done_reg_1(u_uart_tx_byte_n_3),
        .tx_done_reg_2(u_uart_tx_byte_n_4),
        .tx_done_reg_3(u_uart_tx_byte_n_7));
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
