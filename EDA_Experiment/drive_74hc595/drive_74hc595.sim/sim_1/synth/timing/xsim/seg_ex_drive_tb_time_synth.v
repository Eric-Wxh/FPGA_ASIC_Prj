// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Nov  1 10:51:13 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Electronic_Design/Project/Digital_Design/EDA_theory/drive_74hc595/drive_74hc595.sim/sim_1/synth/timing/xsim/seg_ex_drive_tb_time_synth.v
// Design      : seg_ex_drive
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module drive_74hc595
   (rst_n,
    srclk_OBUF,
    \cnt_data_reg[0] ,
    \state_c_reg[2]_0 ,
    \cnt_data_reg[0]_0 ,
    rclk_OBUF,
    D,
    data_ser_OBUF,
    sys_clk_IBUF_BUFG,
    \cnt_data_reg[2] ,
    \cnt_data_reg[2]_0 ,
    Q,
    \cnt_data_reg[2]_1 ,
    \cnt_data_reg[2]_2 ,
    \cnt_data_reg[0]_1 ,
    rst_n_IBUF,
    \data_in_reg_reg[7]_i_2_0 ,
    \data_in_reg_reg[7]_i_2_1 ,
    \data_in_reg_reg[7]_i_2_2 ,
    \data_in_reg_reg[7]_i_2_3 ,
    \data_in_reg_reg[7]_i_2_4 ,
    \data_in_reg_reg[7]_i_2_5 ,
    \data_in_reg_reg[7]_i_2_6 ,
    \data_in_reg_reg[7]_i_2_7 );
  output rst_n;
  output srclk_OBUF;
  output \cnt_data_reg[0] ;
  output \state_c_reg[2]_0 ;
  output \cnt_data_reg[0]_0 ;
  output rclk_OBUF;
  output [1:0]D;
  output data_ser_OBUF;
  input sys_clk_IBUF_BUFG;
  input \cnt_data_reg[2] ;
  input \cnt_data_reg[2]_0 ;
  input [2:0]Q;
  input \cnt_data_reg[2]_1 ;
  input \cnt_data_reg[2]_2 ;
  input \cnt_data_reg[0]_1 ;
  input rst_n_IBUF;
  input [3:0]\data_in_reg_reg[7]_i_2_0 ;
  input [3:0]\data_in_reg_reg[7]_i_2_1 ;
  input [3:0]\data_in_reg_reg[7]_i_2_2 ;
  input [3:0]\data_in_reg_reg[7]_i_2_3 ;
  input [3:0]\data_in_reg_reg[7]_i_2_4 ;
  input [3:0]\data_in_reg_reg[7]_i_2_5 ;
  input [3:0]\data_in_reg_reg[7]_i_2_6 ;
  input [3:0]\data_in_reg_reg[7]_i_2_7 ;

  wire [1:0]D;
  wire [2:0]Q;
  wire cnt_bit;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[3]_i_2_n_0 ;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire \cnt_bit_reg_n_0_[3] ;
  wire \cnt_data_reg[0] ;
  wire \cnt_data_reg[0]_0 ;
  wire \cnt_data_reg[0]_1 ;
  wire \cnt_data_reg[2] ;
  wire \cnt_data_reg[2]_0 ;
  wire \cnt_data_reg[2]_1 ;
  wire \cnt_data_reg[2]_2 ;
  wire [3:0]cnt_div;
  wire \cnt_div[0]_i_1_n_0 ;
  wire \cnt_div[1]_i_1_n_0 ;
  wire \cnt_div[2]_i_1_n_0 ;
  wire \cnt_div[3]_i_1_n_0 ;
  wire [2:0]cnt_store;
  wire \cnt_store[2]_i_2_n_0 ;
  wire \cnt_store_reg_n_0_[0] ;
  wire \cnt_store_reg_n_0_[1] ;
  wire \cnt_store_reg_n_0_[2] ;
  wire data0;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire [11:8]data_disp;
  wire \data_in_reg[12]_i_1_n_0 ;
  wire \data_in_reg[13]_i_1_n_0 ;
  wire \data_in_reg[14]_i_1_n_0 ;
  wire \data_in_reg[15]_i_2_n_0 ;
  wire \data_in_reg[1]_i_1_n_0 ;
  wire \data_in_reg[7]_i_10_n_0 ;
  wire \data_in_reg[7]_i_11_n_0 ;
  wire \data_in_reg[7]_i_12_n_0 ;
  wire \data_in_reg[7]_i_13_n_0 ;
  wire \data_in_reg[7]_i_6_n_0 ;
  wire \data_in_reg[7]_i_7_n_0 ;
  wire \data_in_reg[7]_i_8_n_0 ;
  wire \data_in_reg[7]_i_9_n_0 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_0 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_1 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_2 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_3 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_4 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_5 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_6 ;
  wire [3:0]\data_in_reg_reg[7]_i_2_7 ;
  wire \data_in_reg_reg_n_0_[0] ;
  wire [3:0]data_sel;
  wire data_ser_OBUF;
  wire data_ser_OBUF_inst_i_2_n_0;
  wire data_ser_OBUF_inst_i_3_n_0;
  wire data_ser_OBUF_inst_i_4_n_0;
  wire data_ser_OBUF_inst_i_5_n_0;
  wire data_ser_OBUF_inst_i_6_n_0;
  wire data_ser_OBUF_inst_i_7_n_0;
  wire [7:2]\decode_inst/seg ;
  wire load_en;
  wire rclk_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire send_en;
  wire shift_en__3;
  wire srclk_OBUF;
  wire srclk_i_1_n_0;
  wire [3:0]state_c;
  wire \state_c[3]_i_3_n_0 ;
  wire \state_c[3]_i_4_n_0 ;
  wire \state_c[3]_i_5_n_0 ;
  wire \state_c_reg[2]_0 ;
  wire [3:0]state_n__0;
  wire state_n_n_0;
  wire store_done;
  wire store_done_i_1_n_0;
  wire sys_clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_bit[0]_i_1 
       (.I0(shift_en__3),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_bit[1]_i_1 
       (.I0(shift_en__3),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cnt_bit[2]_i_1 
       (.I0(shift_en__3),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h57555555)) 
    \cnt_bit[3]_i_1 
       (.I0(shift_en__3),
        .I1(cnt_div[1]),
        .I2(cnt_div[3]),
        .I3(cnt_div[2]),
        .I4(cnt_div[0]),
        .O(cnt_bit));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cnt_bit[3]_i_2 
       (.I0(shift_en__3),
        .I1(\cnt_bit_reg_n_0_[3] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_bit),
        .CLR(rst_n),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_bit),
        .CLR(rst_n),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_bit),
        .CLR(rst_n),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_bit),
        .CLR(rst_n),
        .D(\cnt_bit[3]_i_2_n_0 ),
        .Q(\cnt_bit_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000C00000040)) 
    \cnt_data[0]_i_1 
       (.I0(\cnt_data_reg[0]_1 ),
        .I1(Q[2]),
        .I2(store_done),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\cnt_data_reg[2] ),
        .O(\state_c_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h4C008000)) 
    \cnt_data[1]_i_1 
       (.I0(\cnt_data_reg[2] ),
        .I1(Q[2]),
        .I2(store_done),
        .I3(\cnt_data_reg[2]_1 ),
        .I4(\cnt_data_reg[2]_0 ),
        .O(\cnt_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h70F0000080000000)) 
    \cnt_data[2]_i_1 
       (.I0(\cnt_data_reg[2] ),
        .I1(\cnt_data_reg[2]_0 ),
        .I2(Q[2]),
        .I3(store_done),
        .I4(\cnt_data_reg[2]_1 ),
        .I5(\cnt_data_reg[2]_2 ),
        .O(\cnt_data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02020222)) 
    \cnt_div[0]_i_1 
       (.I0(shift_en__3),
        .I1(cnt_div[0]),
        .I2(cnt_div[3]),
        .I3(cnt_div[2]),
        .I4(cnt_div[1]),
        .O(\cnt_div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cnt_div[1]_i_1 
       (.I0(shift_en__3),
        .I1(cnt_div[3]),
        .I2(cnt_div[0]),
        .I3(cnt_div[1]),
        .O(\cnt_div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02202020)) 
    \cnt_div[2]_i_1 
       (.I0(shift_en__3),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[0]),
        .I4(cnt_div[1]),
        .O(\cnt_div[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \cnt_div[3]_i_1 
       (.I0(shift_en__3),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[0]),
        .I4(cnt_div[1]),
        .O(\cnt_div[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \cnt_div[3]_i_2 
       (.I0(state_c[3]),
        .I1(state_c[0]),
        .I2(state_c[2]),
        .I3(state_c[1]),
        .O(shift_en__3));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_div[0]_i_1_n_0 ),
        .Q(cnt_div[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_div[1]_i_1_n_0 ),
        .Q(cnt_div[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_div[2]_i_1_n_0 ),
        .Q(cnt_div[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_div[3]_i_1_n_0 ),
        .Q(cnt_div[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cnt_store[0]_i_1 
       (.I0(\cnt_store_reg_n_0_[0] ),
        .I1(\cnt_store[2]_i_2_n_0 ),
        .O(cnt_store[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cnt_store[1]_i_1 
       (.I0(\cnt_store_reg_n_0_[1] ),
        .I1(\cnt_store_reg_n_0_[0] ),
        .I2(\cnt_store[2]_i_2_n_0 ),
        .O(cnt_store[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cnt_store[2]_i_1 
       (.I0(\cnt_store_reg_n_0_[1] ),
        .I1(\cnt_store_reg_n_0_[0] ),
        .I2(\cnt_store_reg_n_0_[2] ),
        .I3(\cnt_store[2]_i_2_n_0 ),
        .O(cnt_store[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \cnt_store[2]_i_2 
       (.I0(state_c[0]),
        .I1(state_c[1]),
        .I2(state_c[3]),
        .I3(state_c[2]),
        .O(\cnt_store[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_store[0]),
        .Q(\cnt_store_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_store[1]),
        .Q(\cnt_store_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_store[2]),
        .Q(\cnt_store_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \data_in_reg[10]_i_1 
       (.I0(\cnt_data_reg[2]_2 ),
        .I1(\cnt_data_reg[2]_0 ),
        .I2(\cnt_data_reg[2] ),
        .O(data_disp[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \data_in_reg[11]_i_1 
       (.I0(\cnt_data_reg[2]_2 ),
        .I1(\cnt_data_reg[2] ),
        .I2(\cnt_data_reg[2]_0 ),
        .O(data_disp[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_in_reg[12]_i_1 
       (.I0(\cnt_data_reg[2] ),
        .I1(\cnt_data_reg[2]_0 ),
        .I2(\cnt_data_reg[2]_2 ),
        .O(\data_in_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \data_in_reg[13]_i_1 
       (.I0(\cnt_data_reg[2] ),
        .I1(\cnt_data_reg[2]_0 ),
        .I2(\cnt_data_reg[2]_2 ),
        .O(\data_in_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \data_in_reg[14]_i_1 
       (.I0(\cnt_data_reg[2]_0 ),
        .I1(\cnt_data_reg[2] ),
        .I2(\cnt_data_reg[2]_2 ),
        .O(\data_in_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \data_in_reg[15]_i_1 
       (.I0(state_c[3]),
        .I1(state_c[2]),
        .I2(state_c[1]),
        .I3(state_c[0]),
        .O(load_en));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \data_in_reg[15]_i_2 
       (.I0(\cnt_data_reg[2] ),
        .I1(\cnt_data_reg[2]_0 ),
        .I2(\cnt_data_reg[2]_2 ),
        .O(\data_in_reg[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0091)) 
    \data_in_reg[1]_i_1 
       (.I0(data_sel[1]),
        .I1(data_sel[2]),
        .I2(data_sel[0]),
        .I3(data_sel[3]),
        .O(\data_in_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB98)) 
    \data_in_reg[2]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[2]),
        .I2(data_sel[0]),
        .I3(data_sel[1]),
        .O(\decode_inst/seg [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \data_in_reg[3]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[1]),
        .I2(data_sel[2]),
        .I3(data_sel[0]),
        .O(\decode_inst/seg [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA9C)) 
    \data_in_reg[4]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[2]),
        .I2(data_sel[0]),
        .I3(data_sel[1]),
        .O(\decode_inst/seg [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \data_in_reg[5]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[0]),
        .I2(data_sel[1]),
        .I3(data_sel[2]),
        .O(\decode_inst/seg [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAEC8)) 
    \data_in_reg[6]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[2]),
        .I2(data_sel[0]),
        .I3(data_sel[1]),
        .O(\decode_inst/seg [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \data_in_reg[7]_i_1 
       (.I0(data_sel[3]),
        .I1(data_sel[2]),
        .I2(data_sel[0]),
        .I3(data_sel[1]),
        .O(\decode_inst/seg [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_10 
       (.I0(\data_in_reg_reg[7]_i_2_0 [0]),
        .I1(\data_in_reg_reg[7]_i_2_1 [0]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_2 [0]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_3 [0]),
        .O(\data_in_reg[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_11 
       (.I0(\data_in_reg_reg[7]_i_2_4 [0]),
        .I1(\data_in_reg_reg[7]_i_2_5 [0]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_6 [0]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_7 [0]),
        .O(\data_in_reg[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_12 
       (.I0(\data_in_reg_reg[7]_i_2_0 [1]),
        .I1(\data_in_reg_reg[7]_i_2_1 [1]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_2 [1]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_3 [1]),
        .O(\data_in_reg[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_13 
       (.I0(\data_in_reg_reg[7]_i_2_4 [1]),
        .I1(\data_in_reg_reg[7]_i_2_5 [1]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_6 [1]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_7 [1]),
        .O(\data_in_reg[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_6 
       (.I0(\data_in_reg_reg[7]_i_2_0 [3]),
        .I1(\data_in_reg_reg[7]_i_2_1 [3]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_2 [3]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_3 [3]),
        .O(\data_in_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_7 
       (.I0(\data_in_reg_reg[7]_i_2_4 [3]),
        .I1(\data_in_reg_reg[7]_i_2_5 [3]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_6 [3]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_7 [3]),
        .O(\data_in_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_8 
       (.I0(\data_in_reg_reg[7]_i_2_0 [2]),
        .I1(\data_in_reg_reg[7]_i_2_1 [2]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_2 [2]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_3 [2]),
        .O(\data_in_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_in_reg[7]_i_9 
       (.I0(\data_in_reg_reg[7]_i_2_4 [2]),
        .I1(\data_in_reg_reg[7]_i_2_5 [2]),
        .I2(\cnt_data_reg[2]_0 ),
        .I3(\data_in_reg_reg[7]_i_2_6 [2]),
        .I4(\cnt_data_reg[2] ),
        .I5(\data_in_reg_reg[7]_i_2_7 [2]),
        .O(\data_in_reg[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_in_reg[8]_i_1 
       (.I0(\cnt_data_reg[2]_2 ),
        .I1(\cnt_data_reg[2] ),
        .I2(\cnt_data_reg[2]_0 ),
        .O(data_disp[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \data_in_reg[9]_i_1 
       (.I0(\cnt_data_reg[2]_2 ),
        .I1(\cnt_data_reg[2] ),
        .I2(\cnt_data_reg[2]_0 ),
        .O(data_disp[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(1'b1),
        .Q(\data_in_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(data_disp[10]),
        .Q(data11));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(data_disp[11]),
        .Q(data12));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\data_in_reg[12]_i_1_n_0 ),
        .Q(data13));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\data_in_reg[13]_i_1_n_0 ),
        .Q(data14));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\data_in_reg[14]_i_1_n_0 ),
        .Q(data15));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\data_in_reg[15]_i_2_n_0 ),
        .Q(data0));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\data_in_reg[1]_i_1_n_0 ),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [2]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [3]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [4]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [5]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [6]),
        .Q(data7));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(\decode_inst/seg [7]),
        .Q(data8));
  MUXF7 \data_in_reg_reg[7]_i_2 
       (.I0(\data_in_reg[7]_i_6_n_0 ),
        .I1(\data_in_reg[7]_i_7_n_0 ),
        .O(data_sel[3]),
        .S(\cnt_data_reg[2]_2 ));
  MUXF7 \data_in_reg_reg[7]_i_3 
       (.I0(\data_in_reg[7]_i_8_n_0 ),
        .I1(\data_in_reg[7]_i_9_n_0 ),
        .O(data_sel[2]),
        .S(\cnt_data_reg[2]_2 ));
  MUXF7 \data_in_reg_reg[7]_i_4 
       (.I0(\data_in_reg[7]_i_10_n_0 ),
        .I1(\data_in_reg[7]_i_11_n_0 ),
        .O(data_sel[0]),
        .S(\cnt_data_reg[2]_2 ));
  MUXF7 \data_in_reg_reg[7]_i_5 
       (.I0(\data_in_reg[7]_i_12_n_0 ),
        .I1(\data_in_reg[7]_i_13_n_0 ),
        .O(data_sel[1]),
        .S(\cnt_data_reg[2]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(data_disp[8]),
        .Q(data9));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(load_en),
        .CLR(rst_n),
        .D(data_disp[9]),
        .Q(data10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    data_ser_OBUF_inst_i_1
       (.I0(data_ser_OBUF_inst_i_2_n_0),
        .I1(data_ser_OBUF_inst_i_3_n_0),
        .I2(data_ser_OBUF_inst_i_4_n_0),
        .I3(data_ser_OBUF_inst_i_5_n_0),
        .I4(data_ser_OBUF_inst_i_6_n_0),
        .I5(data_ser_OBUF_inst_i_7_n_0),
        .O(data_ser_OBUF));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    data_ser_OBUF_inst_i_2
       (.I0(\data_in_reg_reg_n_0_[0] ),
        .I1(data0),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(data3),
        .I5(data2),
        .O(data_ser_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    data_ser_OBUF_inst_i_3
       (.I0(data5),
        .I1(data4),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(data7),
        .I5(data6),
        .O(data_ser_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    data_ser_OBUF_inst_i_4
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .O(data_ser_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    data_ser_OBUF_inst_i_5
       (.I0(data9),
        .I1(data8),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(data11),
        .I5(data10),
        .O(data_ser_OBUF_inst_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    data_ser_OBUF_inst_i_6
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .O(data_ser_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    data_ser_OBUF_inst_i_7
       (.I0(data13),
        .I1(data12),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(data15),
        .I5(data14),
        .O(data_ser_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rclk_OBUF_inst_i_1
       (.I0(state_c[0]),
        .I1(state_c[2]),
        .I2(state_c[3]),
        .I3(state_c[1]),
        .O(rclk_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00002A28)) 
    srclk_i_1
       (.I0(shift_en__3),
        .I1(cnt_div[2]),
        .I2(cnt_div[1]),
        .I3(cnt_div[0]),
        .I4(cnt_div[3]),
        .O(srclk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    srclk_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(srclk_i_1_n_0),
        .Q(srclk_OBUF));
  LUT6 #(
    .INIT(64'hFF757575FFFFFFFF)) 
    \state_c[0]_i_1 
       (.I0(state_n_n_0),
        .I1(send_en),
        .I2(state_c[0]),
        .I3(store_done),
        .I4(state_c[3]),
        .I5(rst_n_IBUF),
        .O(state_n__0[0]));
  LUT6 #(
    .INIT(64'hEDE9E9E9FFFFFFFF)) 
    \state_c[0]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(store_done),
        .I4(\cnt_data_reg[0]_1 ),
        .I5(rst_n_IBUF),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \state_c[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(send_en));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \state_c[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(state_c[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(state_n_n_0),
        .O(state_n__0[1]));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \state_c[2]_i_1 
       (.I0(rst_n_IBUF),
        .I1(state_c[1]),
        .I2(\state_c[3]_i_3_n_0 ),
        .I3(\state_c[3]_i_4_n_0 ),
        .I4(state_c[2]),
        .I5(state_n_n_0),
        .O(state_n__0[2]));
  LUT6 #(
    .INIT(64'h0000000002228888)) 
    \state_c[2]_i_1__0 
       (.I0(rst_n_IBUF),
        .I1(Q[1]),
        .I2(\cnt_data_reg[0]_1 ),
        .I3(store_done),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAA020000000000)) 
    \state_c[3]_i_1 
       (.I0(rst_n_IBUF),
        .I1(\state_c[3]_i_3_n_0 ),
        .I2(\state_c[3]_i_4_n_0 ),
        .I3(state_c[2]),
        .I4(\state_c[3]_i_5_n_0 ),
        .I5(state_n_n_0),
        .O(state_n__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \state_c[3]_i_2 
       (.I0(rst_n_IBUF),
        .O(rst_n));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \state_c[3]_i_3 
       (.I0(cnt_div[0]),
        .I1(cnt_div[2]),
        .I2(cnt_div[3]),
        .I3(cnt_div[1]),
        .O(\state_c[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state_c[3]_i_4 
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .O(\state_c[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_c[3]_i_5 
       (.I0(state_c[3]),
        .I1(store_done),
        .O(\state_c[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_c_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_n__0[0]),
        .PRE(rst_n),
        .Q(state_c[0]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state_n__0[1]),
        .Q(state_c[1]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state_n__0[2]),
        .Q(state_c[2]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state_n__0[3]),
        .Q(state_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    state_n
       (.I0(state_c[0]),
        .I1(state_c[1]),
        .I2(state_c[2]),
        .I3(state_c[3]),
        .O(state_n_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    store_done_i_1
       (.I0(\cnt_store_reg_n_0_[2] ),
        .I1(\cnt_store_reg_n_0_[0] ),
        .I2(\cnt_store_reg_n_0_[1] ),
        .I3(\cnt_store[2]_i_2_n_0 ),
        .O(store_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    store_done_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(store_done_i_1_n_0),
        .Q(store_done));
endmodule

(* IDLE = "3'b001" *) (* LOAD = "3'b010" *) (* SEND = "3'b100" *) 
(* NotValidForBitStream *)
module seg_ex_drive
   (sys_clk,
    rst_n,
    data_in,
    data_ser,
    rclk,
    srclk);
  input sys_clk;
  input rst_n;
  input [31:0]data_in;
  output data_ser;
  output rclk;
  output srclk;

  wire \cnt_data[2]_i_2_n_0 ;
  wire \cnt_data_reg_n_0_[0] ;
  wire \cnt_data_reg_n_0_[1] ;
  wire \cnt_data_reg_n_0_[2] ;
  wire [31:0]data_in;
  wire [31:0]data_in_IBUF;
  wire data_in_reg;
  wire [3:0]\data_in_reg_reg[0] ;
  wire [3:0]\data_in_reg_reg[1] ;
  wire [3:0]\data_in_reg_reg[2] ;
  wire [3:0]\data_in_reg_reg[3] ;
  wire [3:0]\data_in_reg_reg[4] ;
  wire [3:0]\data_in_reg_reg[5] ;
  wire [3:0]\data_in_reg_reg[6] ;
  wire [3:0]\data_in_reg_reg[7] ;
  wire data_ser;
  wire data_ser_OBUF;
  wire drive_inst_n_0;
  wire drive_inst_n_2;
  wire drive_inst_n_3;
  wire drive_inst_n_4;
  wire rclk;
  wire rclk_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire srclk;
  wire srclk_OBUF;
  wire [2:0]state_c;
  wire \state_c[2]_i_2_n_0 ;
  wire [2:0]state_n;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("seg_ex_drive_tb_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_data[2]_i_2 
       (.I0(state_c[1]),
        .I1(state_c[0]),
        .O(\cnt_data[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_data_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(drive_inst_n_0),
        .D(drive_inst_n_3),
        .Q(\cnt_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_data_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(drive_inst_n_0),
        .D(drive_inst_n_4),
        .Q(\cnt_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_data_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(drive_inst_n_0),
        .D(drive_inst_n_2),
        .Q(\cnt_data_reg_n_0_[2] ));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[10]_inst 
       (.I(data_in[10]),
        .O(data_in_IBUF[10]));
  IBUF \data_in_IBUF[11]_inst 
       (.I(data_in[11]),
        .O(data_in_IBUF[11]));
  IBUF \data_in_IBUF[12]_inst 
       (.I(data_in[12]),
        .O(data_in_IBUF[12]));
  IBUF \data_in_IBUF[13]_inst 
       (.I(data_in[13]),
        .O(data_in_IBUF[13]));
  IBUF \data_in_IBUF[14]_inst 
       (.I(data_in[14]),
        .O(data_in_IBUF[14]));
  IBUF \data_in_IBUF[15]_inst 
       (.I(data_in[15]),
        .O(data_in_IBUF[15]));
  IBUF \data_in_IBUF[16]_inst 
       (.I(data_in[16]),
        .O(data_in_IBUF[16]));
  IBUF \data_in_IBUF[17]_inst 
       (.I(data_in[17]),
        .O(data_in_IBUF[17]));
  IBUF \data_in_IBUF[18]_inst 
       (.I(data_in[18]),
        .O(data_in_IBUF[18]));
  IBUF \data_in_IBUF[19]_inst 
       (.I(data_in[19]),
        .O(data_in_IBUF[19]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[20]_inst 
       (.I(data_in[20]),
        .O(data_in_IBUF[20]));
  IBUF \data_in_IBUF[21]_inst 
       (.I(data_in[21]),
        .O(data_in_IBUF[21]));
  IBUF \data_in_IBUF[22]_inst 
       (.I(data_in[22]),
        .O(data_in_IBUF[22]));
  IBUF \data_in_IBUF[23]_inst 
       (.I(data_in[23]),
        .O(data_in_IBUF[23]));
  IBUF \data_in_IBUF[24]_inst 
       (.I(data_in[24]),
        .O(data_in_IBUF[24]));
  IBUF \data_in_IBUF[25]_inst 
       (.I(data_in[25]),
        .O(data_in_IBUF[25]));
  IBUF \data_in_IBUF[26]_inst 
       (.I(data_in[26]),
        .O(data_in_IBUF[26]));
  IBUF \data_in_IBUF[27]_inst 
       (.I(data_in[27]),
        .O(data_in_IBUF[27]));
  IBUF \data_in_IBUF[28]_inst 
       (.I(data_in[28]),
        .O(data_in_IBUF[28]));
  IBUF \data_in_IBUF[29]_inst 
       (.I(data_in[29]),
        .O(data_in_IBUF[29]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[30]_inst 
       (.I(data_in[30]),
        .O(data_in_IBUF[30]));
  IBUF \data_in_IBUF[31]_inst 
       (.I(data_in[31]),
        .O(data_in_IBUF[31]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  IBUF \data_in_IBUF[8]_inst 
       (.I(data_in[8]),
        .O(data_in_IBUF[8]));
  IBUF \data_in_IBUF[9]_inst 
       (.I(data_in[9]),
        .O(data_in_IBUF[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_in_reg[0][3]_i_1 
       (.I0(state_c[1]),
        .I1(state_c[2]),
        .I2(state_c[0]),
        .O(data_in_reg));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[0]),
        .Q(\data_in_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[1]),
        .Q(\data_in_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[2]),
        .Q(\data_in_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[3]),
        .Q(\data_in_reg_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[4]),
        .Q(\data_in_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[5]),
        .Q(\data_in_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[6]),
        .Q(\data_in_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[1][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[7]),
        .Q(\data_in_reg_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[8]),
        .Q(\data_in_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[9]),
        .Q(\data_in_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[10]),
        .Q(\data_in_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[2][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[11]),
        .Q(\data_in_reg_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[12]),
        .Q(\data_in_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[13]),
        .Q(\data_in_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[14]),
        .Q(\data_in_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[3][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[15]),
        .Q(\data_in_reg_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[16]),
        .Q(\data_in_reg_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[17]),
        .Q(\data_in_reg_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[18]),
        .Q(\data_in_reg_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[4][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[19]),
        .Q(\data_in_reg_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[20]),
        .Q(\data_in_reg_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[21]),
        .Q(\data_in_reg_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[22]),
        .Q(\data_in_reg_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[5][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[23]),
        .Q(\data_in_reg_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[24]),
        .Q(\data_in_reg_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[25]),
        .Q(\data_in_reg_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[26]),
        .Q(\data_in_reg_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[6][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[27]),
        .Q(\data_in_reg_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7][0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[28]),
        .Q(\data_in_reg_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7][1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[29]),
        .Q(\data_in_reg_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7][2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[30]),
        .Q(\data_in_reg_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[7][3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(data_in_reg),
        .CLR(drive_inst_n_0),
        .D(data_in_IBUF[31]),
        .Q(\data_in_reg_reg[7] [3]));
  OBUF data_ser_OBUF_inst
       (.I(data_ser_OBUF),
        .O(data_ser));
  drive_74hc595 drive_inst
       (.D({state_n[2],state_n[0]}),
        .Q(state_c),
        .\cnt_data_reg[0] (drive_inst_n_2),
        .\cnt_data_reg[0]_0 (drive_inst_n_4),
        .\cnt_data_reg[0]_1 (\state_c[2]_i_2_n_0 ),
        .\cnt_data_reg[2] (\cnt_data_reg_n_0_[0] ),
        .\cnt_data_reg[2]_0 (\cnt_data_reg_n_0_[1] ),
        .\cnt_data_reg[2]_1 (\cnt_data[2]_i_2_n_0 ),
        .\cnt_data_reg[2]_2 (\cnt_data_reg_n_0_[2] ),
        .\data_in_reg_reg[7]_i_2_0 (\data_in_reg_reg[3] ),
        .\data_in_reg_reg[7]_i_2_1 (\data_in_reg_reg[2] ),
        .\data_in_reg_reg[7]_i_2_2 (\data_in_reg_reg[1] ),
        .\data_in_reg_reg[7]_i_2_3 (\data_in_reg_reg[0] ),
        .\data_in_reg_reg[7]_i_2_4 (\data_in_reg_reg[7] ),
        .\data_in_reg_reg[7]_i_2_5 (\data_in_reg_reg[6] ),
        .\data_in_reg_reg[7]_i_2_6 (\data_in_reg_reg[5] ),
        .\data_in_reg_reg[7]_i_2_7 (\data_in_reg_reg[4] ),
        .data_ser_OBUF(data_ser_OBUF),
        .rclk_OBUF(rclk_OBUF),
        .rst_n(drive_inst_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .srclk_OBUF(srclk_OBUF),
        .\state_c_reg[2]_0 (drive_inst_n_3),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  OBUF rclk_OBUF_inst
       (.I(rclk_OBUF),
        .O(rclk));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF srclk_OBUF_inst
       (.I(srclk_OBUF),
        .O(srclk));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \state_c[1]_i_1__0 
       (.I0(rst_n_IBUF),
        .I1(state_c[1]),
        .I2(state_c[2]),
        .I3(state_c[0]),
        .O(state_n[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \state_c[2]_i_2 
       (.I0(\cnt_data_reg_n_0_[1] ),
        .I1(\cnt_data_reg_n_0_[2] ),
        .I2(\cnt_data_reg_n_0_[0] ),
        .O(\state_c[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:010,SEND:100,IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_c_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_n[0]),
        .PRE(drive_inst_n_0),
        .Q(state_c[0]));
  (* FSM_ENCODED_STATES = "LOAD:010,SEND:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(drive_inst_n_0),
        .D(state_n[1]),
        .Q(state_c[1]));
  (* FSM_ENCODED_STATES = "LOAD:010,SEND:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(drive_inst_n_0),
        .D(state_n[2]),
        .Q(state_c[2]));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
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
