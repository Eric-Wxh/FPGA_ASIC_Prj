// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Oct 20 22:03:42 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Electronic_Design/Project/Digital_Design/Tutorial_Xiaomei/09/uart_rtx/uart_rtx.sim/sim_1/synth/timing/xsim/uart_rx_ctrl_led_tb_time_synth.v
// Design      : uart_rx_ctrl_led
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module count_led_4
   (cnt1,
    CLK,
    \cnt1_reg[2]_0 ,
    Q,
    S,
    cnt01_carry_i_2_0,
    cnt01_carry__0_i_4_0,
    cnt01_carry__0_i_2_0,
    cnt01_carry__1_i_4_0,
    cnt01_carry__1_i_2_0,
    cnt01_carry__2_i_4_0,
    cnt01_carry__2_i_2_0);
  output [2:0]cnt1;
  input CLK;
  input \cnt1_reg[2]_0 ;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]cnt01_carry_i_2_0;
  input [3:0]cnt01_carry__0_i_4_0;
  input [3:0]cnt01_carry__0_i_2_0;
  input [3:0]cnt01_carry__1_i_4_0;
  input [3:0]cnt01_carry__1_i_2_0;
  input [3:0]cnt01_carry__2_i_4_0;
  input [2:0]cnt01_carry__2_i_2_0;

  wire CLK;
  wire [30:0]Q;
  wire [3:0]S;
  wire cnt01_carry__0_i_1_n_0;
  wire [3:0]cnt01_carry__0_i_2_0;
  wire cnt01_carry__0_i_2_n_0;
  wire cnt01_carry__0_i_3_n_0;
  wire [3:0]cnt01_carry__0_i_4_0;
  wire cnt01_carry__0_i_4_n_0;
  wire cnt01_carry__0_i_5_n_0;
  wire cnt01_carry__0_i_6_n_0;
  wire cnt01_carry__0_i_7_n_0;
  wire cnt01_carry__0_i_8_n_0;
  wire cnt01_carry__0_n_0;
  wire cnt01_carry__0_n_1;
  wire cnt01_carry__0_n_2;
  wire cnt01_carry__0_n_3;
  wire cnt01_carry__1_i_1_n_0;
  wire [3:0]cnt01_carry__1_i_2_0;
  wire cnt01_carry__1_i_2_n_0;
  wire cnt01_carry__1_i_3_n_0;
  wire [3:0]cnt01_carry__1_i_4_0;
  wire cnt01_carry__1_i_4_n_0;
  wire cnt01_carry__1_i_5_n_0;
  wire cnt01_carry__1_i_6_n_0;
  wire cnt01_carry__1_i_7_n_0;
  wire cnt01_carry__1_i_8_n_0;
  wire cnt01_carry__1_n_0;
  wire cnt01_carry__1_n_1;
  wire cnt01_carry__1_n_2;
  wire cnt01_carry__1_n_3;
  wire cnt01_carry__2_i_1_n_0;
  wire [2:0]cnt01_carry__2_i_2_0;
  wire cnt01_carry__2_i_2_n_0;
  wire cnt01_carry__2_i_3_n_0;
  wire [3:0]cnt01_carry__2_i_4_0;
  wire cnt01_carry__2_i_4_n_0;
  wire cnt01_carry__2_i_5_n_0;
  wire cnt01_carry__2_i_6_n_0;
  wire cnt01_carry__2_i_7_n_0;
  wire cnt01_carry__2_i_8_n_0;
  wire cnt01_carry__2_n_1;
  wire cnt01_carry__2_n_2;
  wire cnt01_carry__2_n_3;
  wire cnt01_carry__3_n_7;
  wire cnt01_carry_i_1_n_0;
  wire [3:0]cnt01_carry_i_2_0;
  wire cnt01_carry_i_2_n_0;
  wire cnt01_carry_i_3_n_0;
  wire cnt01_carry_i_4_n_0;
  wire cnt01_carry_i_5_n_0;
  wire cnt01_carry_i_6_n_0;
  wire cnt01_carry_i_7_n_0;
  wire cnt01_carry_i_8_n_0;
  wire cnt01_carry_n_0;
  wire cnt01_carry_n_1;
  wire cnt01_carry_n_2;
  wire cnt01_carry_n_3;
  wire [31:1]cnt02;
  wire cnt02_carry__0_n_0;
  wire cnt02_carry__0_n_1;
  wire cnt02_carry__0_n_2;
  wire cnt02_carry__0_n_3;
  wire cnt02_carry__1_n_0;
  wire cnt02_carry__1_n_1;
  wire cnt02_carry__1_n_2;
  wire cnt02_carry__1_n_3;
  wire cnt02_carry__2_n_0;
  wire cnt02_carry__2_n_1;
  wire cnt02_carry__2_n_2;
  wire cnt02_carry__2_n_3;
  wire cnt02_carry__3_n_0;
  wire cnt02_carry__3_n_1;
  wire cnt02_carry__3_n_2;
  wire cnt02_carry__3_n_3;
  wire cnt02_carry__4_n_0;
  wire cnt02_carry__4_n_1;
  wire cnt02_carry__4_n_2;
  wire cnt02_carry__4_n_3;
  wire cnt02_carry__5_n_0;
  wire cnt02_carry__5_n_1;
  wire cnt02_carry__5_n_2;
  wire cnt02_carry__5_n_3;
  wire cnt02_carry__6_n_2;
  wire cnt02_carry__6_n_3;
  wire cnt02_carry_n_0;
  wire cnt02_carry_n_1;
  wire cnt02_carry_n_2;
  wire cnt02_carry_n_3;
  wire \cnt0[0]_i_2_n_0 ;
  wire \cnt0[0]_i_3_n_0 ;
  wire \cnt0[0]_i_4_n_0 ;
  wire \cnt0[0]_i_5_n_0 ;
  wire \cnt0[12]_i_2_n_0 ;
  wire \cnt0[12]_i_3_n_0 ;
  wire \cnt0[12]_i_4_n_0 ;
  wire \cnt0[12]_i_5_n_0 ;
  wire \cnt0[16]_i_2_n_0 ;
  wire \cnt0[16]_i_3_n_0 ;
  wire \cnt0[16]_i_4_n_0 ;
  wire \cnt0[16]_i_5_n_0 ;
  wire \cnt0[20]_i_2_n_0 ;
  wire \cnt0[20]_i_3_n_0 ;
  wire \cnt0[20]_i_4_n_0 ;
  wire \cnt0[20]_i_5_n_0 ;
  wire \cnt0[24]_i_2_n_0 ;
  wire \cnt0[24]_i_3_n_0 ;
  wire \cnt0[24]_i_4_n_0 ;
  wire \cnt0[24]_i_5_n_0 ;
  wire \cnt0[28]_i_2_n_0 ;
  wire \cnt0[28]_i_3_n_0 ;
  wire \cnt0[28]_i_4_n_0 ;
  wire \cnt0[28]_i_5_n_0 ;
  wire \cnt0[4]_i_2_n_0 ;
  wire \cnt0[4]_i_3_n_0 ;
  wire \cnt0[4]_i_4_n_0 ;
  wire \cnt0[4]_i_5_n_0 ;
  wire \cnt0[8]_i_2_n_0 ;
  wire \cnt0[8]_i_3_n_0 ;
  wire \cnt0[8]_i_4_n_0 ;
  wire \cnt0[8]_i_5_n_0 ;
  wire [31:0]cnt0_reg;
  wire \cnt0_reg[0]_i_1_n_0 ;
  wire \cnt0_reg[0]_i_1_n_1 ;
  wire \cnt0_reg[0]_i_1_n_2 ;
  wire \cnt0_reg[0]_i_1_n_3 ;
  wire \cnt0_reg[0]_i_1_n_4 ;
  wire \cnt0_reg[0]_i_1_n_5 ;
  wire \cnt0_reg[0]_i_1_n_6 ;
  wire \cnt0_reg[0]_i_1_n_7 ;
  wire \cnt0_reg[12]_i_1_n_0 ;
  wire \cnt0_reg[12]_i_1_n_1 ;
  wire \cnt0_reg[12]_i_1_n_2 ;
  wire \cnt0_reg[12]_i_1_n_3 ;
  wire \cnt0_reg[12]_i_1_n_4 ;
  wire \cnt0_reg[12]_i_1_n_5 ;
  wire \cnt0_reg[12]_i_1_n_6 ;
  wire \cnt0_reg[12]_i_1_n_7 ;
  wire \cnt0_reg[16]_i_1_n_0 ;
  wire \cnt0_reg[16]_i_1_n_1 ;
  wire \cnt0_reg[16]_i_1_n_2 ;
  wire \cnt0_reg[16]_i_1_n_3 ;
  wire \cnt0_reg[16]_i_1_n_4 ;
  wire \cnt0_reg[16]_i_1_n_5 ;
  wire \cnt0_reg[16]_i_1_n_6 ;
  wire \cnt0_reg[16]_i_1_n_7 ;
  wire \cnt0_reg[20]_i_1_n_0 ;
  wire \cnt0_reg[20]_i_1_n_1 ;
  wire \cnt0_reg[20]_i_1_n_2 ;
  wire \cnt0_reg[20]_i_1_n_3 ;
  wire \cnt0_reg[20]_i_1_n_4 ;
  wire \cnt0_reg[20]_i_1_n_5 ;
  wire \cnt0_reg[20]_i_1_n_6 ;
  wire \cnt0_reg[20]_i_1_n_7 ;
  wire \cnt0_reg[24]_i_1_n_0 ;
  wire \cnt0_reg[24]_i_1_n_1 ;
  wire \cnt0_reg[24]_i_1_n_2 ;
  wire \cnt0_reg[24]_i_1_n_3 ;
  wire \cnt0_reg[24]_i_1_n_4 ;
  wire \cnt0_reg[24]_i_1_n_5 ;
  wire \cnt0_reg[24]_i_1_n_6 ;
  wire \cnt0_reg[24]_i_1_n_7 ;
  wire \cnt0_reg[28]_i_1_n_1 ;
  wire \cnt0_reg[28]_i_1_n_2 ;
  wire \cnt0_reg[28]_i_1_n_3 ;
  wire \cnt0_reg[28]_i_1_n_4 ;
  wire \cnt0_reg[28]_i_1_n_5 ;
  wire \cnt0_reg[28]_i_1_n_6 ;
  wire \cnt0_reg[28]_i_1_n_7 ;
  wire \cnt0_reg[4]_i_1_n_0 ;
  wire \cnt0_reg[4]_i_1_n_1 ;
  wire \cnt0_reg[4]_i_1_n_2 ;
  wire \cnt0_reg[4]_i_1_n_3 ;
  wire \cnt0_reg[4]_i_1_n_4 ;
  wire \cnt0_reg[4]_i_1_n_5 ;
  wire \cnt0_reg[4]_i_1_n_6 ;
  wire \cnt0_reg[4]_i_1_n_7 ;
  wire \cnt0_reg[8]_i_1_n_0 ;
  wire \cnt0_reg[8]_i_1_n_1 ;
  wire \cnt0_reg[8]_i_1_n_2 ;
  wire \cnt0_reg[8]_i_1_n_3 ;
  wire \cnt0_reg[8]_i_1_n_4 ;
  wire \cnt0_reg[8]_i_1_n_5 ;
  wire \cnt0_reg[8]_i_1_n_6 ;
  wire \cnt0_reg[8]_i_1_n_7 ;
  wire [2:0]cnt1;
  wire \cnt1[0]_i_1_n_0 ;
  wire \cnt1[1]_i_1_n_0 ;
  wire \cnt1[2]_i_1_n_0 ;
  wire \cnt1_reg[2]_0 ;
  wire load;
  wire [3:0]NLW_cnt01_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt01_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_cnt01_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_cnt01_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_cnt01_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_cnt02_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt02_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_cnt0_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 cnt01_carry
       (.CI(1'b0),
        .CO({cnt01_carry_n_0,cnt01_carry_n_1,cnt01_carry_n_2,cnt01_carry_n_3}),
        .CYINIT(1'b1),
        .DI({cnt01_carry_i_1_n_0,cnt01_carry_i_2_n_0,cnt01_carry_i_3_n_0,cnt01_carry_i_4_n_0}),
        .O(NLW_cnt01_carry_O_UNCONNECTED[3:0]),
        .S({cnt01_carry_i_5_n_0,cnt01_carry_i_6_n_0,cnt01_carry_i_7_n_0,cnt01_carry_i_8_n_0}));
  CARRY4 cnt01_carry__0
       (.CI(cnt01_carry_n_0),
        .CO({cnt01_carry__0_n_0,cnt01_carry__0_n_1,cnt01_carry__0_n_2,cnt01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt01_carry__0_i_1_n_0,cnt01_carry__0_i_2_n_0,cnt01_carry__0_i_3_n_0,cnt01_carry__0_i_4_n_0}),
        .O(NLW_cnt01_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt01_carry__0_i_5_n_0,cnt01_carry__0_i_6_n_0,cnt01_carry__0_i_7_n_0,cnt01_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__0_i_1
       (.I0(cnt0_reg[15]),
        .I1(cnt02[15]),
        .I2(cnt0_reg[14]),
        .I3(cnt02[14]),
        .O(cnt01_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__0_i_2
       (.I0(cnt0_reg[13]),
        .I1(cnt02[13]),
        .I2(cnt0_reg[12]),
        .I3(cnt02[12]),
        .O(cnt01_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__0_i_3
       (.I0(cnt0_reg[11]),
        .I1(cnt02[11]),
        .I2(cnt0_reg[10]),
        .I3(cnt02[10]),
        .O(cnt01_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__0_i_4
       (.I0(cnt0_reg[9]),
        .I1(cnt02[9]),
        .I2(cnt0_reg[8]),
        .I3(cnt02[8]),
        .O(cnt01_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__0_i_5
       (.I0(cnt02[15]),
        .I1(cnt0_reg[15]),
        .I2(cnt02[14]),
        .I3(cnt0_reg[14]),
        .O(cnt01_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__0_i_6
       (.I0(cnt02[13]),
        .I1(cnt0_reg[13]),
        .I2(cnt02[12]),
        .I3(cnt0_reg[12]),
        .O(cnt01_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__0_i_7
       (.I0(cnt02[11]),
        .I1(cnt0_reg[11]),
        .I2(cnt02[10]),
        .I3(cnt0_reg[10]),
        .O(cnt01_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__0_i_8
       (.I0(cnt02[9]),
        .I1(cnt0_reg[9]),
        .I2(cnt02[8]),
        .I3(cnt0_reg[8]),
        .O(cnt01_carry__0_i_8_n_0));
  CARRY4 cnt01_carry__1
       (.CI(cnt01_carry__0_n_0),
        .CO({cnt01_carry__1_n_0,cnt01_carry__1_n_1,cnt01_carry__1_n_2,cnt01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt01_carry__1_i_1_n_0,cnt01_carry__1_i_2_n_0,cnt01_carry__1_i_3_n_0,cnt01_carry__1_i_4_n_0}),
        .O(NLW_cnt01_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt01_carry__1_i_5_n_0,cnt01_carry__1_i_6_n_0,cnt01_carry__1_i_7_n_0,cnt01_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__1_i_1
       (.I0(cnt0_reg[23]),
        .I1(cnt02[23]),
        .I2(cnt0_reg[22]),
        .I3(cnt02[22]),
        .O(cnt01_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__1_i_2
       (.I0(cnt0_reg[21]),
        .I1(cnt02[21]),
        .I2(cnt0_reg[20]),
        .I3(cnt02[20]),
        .O(cnt01_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__1_i_3
       (.I0(cnt0_reg[19]),
        .I1(cnt02[19]),
        .I2(cnt0_reg[18]),
        .I3(cnt02[18]),
        .O(cnt01_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__1_i_4
       (.I0(cnt0_reg[17]),
        .I1(cnt02[17]),
        .I2(cnt0_reg[16]),
        .I3(cnt02[16]),
        .O(cnt01_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__1_i_5
       (.I0(cnt02[23]),
        .I1(cnt0_reg[23]),
        .I2(cnt02[22]),
        .I3(cnt0_reg[22]),
        .O(cnt01_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__1_i_6
       (.I0(cnt02[21]),
        .I1(cnt0_reg[21]),
        .I2(cnt02[20]),
        .I3(cnt0_reg[20]),
        .O(cnt01_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__1_i_7
       (.I0(cnt02[19]),
        .I1(cnt0_reg[19]),
        .I2(cnt02[18]),
        .I3(cnt0_reg[18]),
        .O(cnt01_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__1_i_8
       (.I0(cnt02[17]),
        .I1(cnt0_reg[17]),
        .I2(cnt02[16]),
        .I3(cnt0_reg[16]),
        .O(cnt01_carry__1_i_8_n_0));
  CARRY4 cnt01_carry__2
       (.CI(cnt01_carry__1_n_0),
        .CO({load,cnt01_carry__2_n_1,cnt01_carry__2_n_2,cnt01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt01_carry__2_i_1_n_0,cnt01_carry__2_i_2_n_0,cnt01_carry__2_i_3_n_0,cnt01_carry__2_i_4_n_0}),
        .O(NLW_cnt01_carry__2_O_UNCONNECTED[3:0]),
        .S({cnt01_carry__2_i_5_n_0,cnt01_carry__2_i_6_n_0,cnt01_carry__2_i_7_n_0,cnt01_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__2_i_1
       (.I0(cnt0_reg[31]),
        .I1(cnt02[31]),
        .I2(cnt0_reg[30]),
        .I3(cnt02[30]),
        .O(cnt01_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__2_i_2
       (.I0(cnt0_reg[29]),
        .I1(cnt02[29]),
        .I2(cnt0_reg[28]),
        .I3(cnt02[28]),
        .O(cnt01_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__2_i_3
       (.I0(cnt0_reg[27]),
        .I1(cnt02[27]),
        .I2(cnt0_reg[26]),
        .I3(cnt02[26]),
        .O(cnt01_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry__2_i_4
       (.I0(cnt0_reg[25]),
        .I1(cnt02[25]),
        .I2(cnt0_reg[24]),
        .I3(cnt02[24]),
        .O(cnt01_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__2_i_5
       (.I0(cnt02[31]),
        .I1(cnt0_reg[31]),
        .I2(cnt02[30]),
        .I3(cnt0_reg[30]),
        .O(cnt01_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__2_i_6
       (.I0(cnt02[29]),
        .I1(cnt0_reg[29]),
        .I2(cnt02[28]),
        .I3(cnt0_reg[28]),
        .O(cnt01_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__2_i_7
       (.I0(cnt02[27]),
        .I1(cnt0_reg[27]),
        .I2(cnt02[26]),
        .I3(cnt0_reg[26]),
        .O(cnt01_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry__2_i_8
       (.I0(cnt02[25]),
        .I1(cnt0_reg[25]),
        .I2(cnt02[24]),
        .I3(cnt0_reg[24]),
        .O(cnt01_carry__2_i_8_n_0));
  CARRY4 cnt01_carry__3
       (.CI(load),
        .CO(NLW_cnt01_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt01_carry__3_O_UNCONNECTED[3:1],cnt01_carry__3_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry_i_1
       (.I0(cnt0_reg[7]),
        .I1(cnt02[7]),
        .I2(cnt0_reg[6]),
        .I3(cnt02[6]),
        .O(cnt01_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry_i_2
       (.I0(cnt0_reg[5]),
        .I1(cnt02[5]),
        .I2(cnt0_reg[4]),
        .I3(cnt02[4]),
        .O(cnt01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt01_carry_i_3
       (.I0(cnt0_reg[3]),
        .I1(cnt02[3]),
        .I2(cnt0_reg[2]),
        .I3(cnt02[2]),
        .O(cnt01_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    cnt01_carry_i_4
       (.I0(cnt0_reg[1]),
        .I1(cnt02[1]),
        .I2(cnt0_reg[0]),
        .I3(Q[0]),
        .O(cnt01_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry_i_5
       (.I0(cnt02[7]),
        .I1(cnt0_reg[7]),
        .I2(cnt02[6]),
        .I3(cnt0_reg[6]),
        .O(cnt01_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry_i_6
       (.I0(cnt02[5]),
        .I1(cnt0_reg[5]),
        .I2(cnt02[4]),
        .I3(cnt0_reg[4]),
        .O(cnt01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt01_carry_i_7
       (.I0(cnt02[3]),
        .I1(cnt0_reg[3]),
        .I2(cnt02[2]),
        .I3(cnt0_reg[2]),
        .O(cnt01_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    cnt01_carry_i_8
       (.I0(cnt0_reg[0]),
        .I1(Q[0]),
        .I2(cnt02[1]),
        .I3(cnt0_reg[1]),
        .O(cnt01_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry
       (.CI(1'b0),
        .CO({cnt02_carry_n_0,cnt02_carry_n_1,cnt02_carry_n_2,cnt02_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(cnt02[4:1]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__0
       (.CI(cnt02_carry_n_0),
        .CO({cnt02_carry__0_n_0,cnt02_carry__0_n_1,cnt02_carry__0_n_2,cnt02_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(cnt02[8:5]),
        .S(cnt01_carry_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__1
       (.CI(cnt02_carry__0_n_0),
        .CO({cnt02_carry__1_n_0,cnt02_carry__1_n_1,cnt02_carry__1_n_2,cnt02_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(cnt02[12:9]),
        .S(cnt01_carry__0_i_4_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__2
       (.CI(cnt02_carry__1_n_0),
        .CO({cnt02_carry__2_n_0,cnt02_carry__2_n_1,cnt02_carry__2_n_2,cnt02_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(cnt02[16:13]),
        .S(cnt01_carry__0_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__3
       (.CI(cnt02_carry__2_n_0),
        .CO({cnt02_carry__3_n_0,cnt02_carry__3_n_1,cnt02_carry__3_n_2,cnt02_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(cnt02[20:17]),
        .S(cnt01_carry__1_i_4_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__4
       (.CI(cnt02_carry__3_n_0),
        .CO({cnt02_carry__4_n_0,cnt02_carry__4_n_1,cnt02_carry__4_n_2,cnt02_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(cnt02[24:21]),
        .S(cnt01_carry__1_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__5
       (.CI(cnt02_carry__4_n_0),
        .CO({cnt02_carry__5_n_0,cnt02_carry__5_n_1,cnt02_carry__5_n_2,cnt02_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(cnt02[28:25]),
        .S(cnt01_carry__2_i_4_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt02_carry__6
       (.CI(cnt02_carry__5_n_0),
        .CO({NLW_cnt02_carry__6_CO_UNCONNECTED[3:2],cnt02_carry__6_n_2,cnt02_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_cnt02_carry__6_O_UNCONNECTED[3],cnt02[31:29]}),
        .S({1'b0,cnt01_carry__2_i_2_0}));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[0]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[3]),
        .O(\cnt0[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[0]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[2]),
        .O(\cnt0[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[0]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[1]),
        .O(\cnt0[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt0[0]_i_5 
       (.I0(cnt0_reg[0]),
        .I1(cnt01_carry__3_n_7),
        .O(\cnt0[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[12]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[15]),
        .O(\cnt0[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[12]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[14]),
        .O(\cnt0[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[12]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[13]),
        .O(\cnt0[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[12]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[12]),
        .O(\cnt0[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[16]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[19]),
        .O(\cnt0[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[16]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[18]),
        .O(\cnt0[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[16]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[17]),
        .O(\cnt0[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[16]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[16]),
        .O(\cnt0[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[20]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[23]),
        .O(\cnt0[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[20]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[22]),
        .O(\cnt0[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[20]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[21]),
        .O(\cnt0[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[20]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[20]),
        .O(\cnt0[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[24]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[27]),
        .O(\cnt0[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[24]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[26]),
        .O(\cnt0[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[24]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[25]),
        .O(\cnt0[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[24]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[24]),
        .O(\cnt0[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[28]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[31]),
        .O(\cnt0[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[28]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[30]),
        .O(\cnt0[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[28]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[29]),
        .O(\cnt0[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[28]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[28]),
        .O(\cnt0[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[4]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[7]),
        .O(\cnt0[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[4]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[6]),
        .O(\cnt0[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[4]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[5]),
        .O(\cnt0[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[4]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[4]),
        .O(\cnt0[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[8]_i_2 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[11]),
        .O(\cnt0[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[8]_i_3 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[10]),
        .O(\cnt0[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[8]_i_4 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[9]),
        .O(\cnt0[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt0[8]_i_5 
       (.I0(cnt01_carry__3_n_7),
        .I1(cnt0_reg[8]),
        .O(\cnt0[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[0]_i_1_n_7 ),
        .Q(cnt0_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt0_reg[0]_i_1_n_0 ,\cnt0_reg[0]_i_1_n_1 ,\cnt0_reg[0]_i_1_n_2 ,\cnt0_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt01_carry__3_n_7}),
        .O({\cnt0_reg[0]_i_1_n_4 ,\cnt0_reg[0]_i_1_n_5 ,\cnt0_reg[0]_i_1_n_6 ,\cnt0_reg[0]_i_1_n_7 }),
        .S({\cnt0[0]_i_2_n_0 ,\cnt0[0]_i_3_n_0 ,\cnt0[0]_i_4_n_0 ,\cnt0[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[8]_i_1_n_5 ),
        .Q(cnt0_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[8]_i_1_n_4 ),
        .Q(cnt0_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[12]_i_1_n_7 ),
        .Q(cnt0_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[12]_i_1 
       (.CI(\cnt0_reg[8]_i_1_n_0 ),
        .CO({\cnt0_reg[12]_i_1_n_0 ,\cnt0_reg[12]_i_1_n_1 ,\cnt0_reg[12]_i_1_n_2 ,\cnt0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[12]_i_1_n_4 ,\cnt0_reg[12]_i_1_n_5 ,\cnt0_reg[12]_i_1_n_6 ,\cnt0_reg[12]_i_1_n_7 }),
        .S({\cnt0[12]_i_2_n_0 ,\cnt0[12]_i_3_n_0 ,\cnt0[12]_i_4_n_0 ,\cnt0[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[12]_i_1_n_6 ),
        .Q(cnt0_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[12]_i_1_n_5 ),
        .Q(cnt0_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[12]_i_1_n_4 ),
        .Q(cnt0_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[16]_i_1_n_7 ),
        .Q(cnt0_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[16]_i_1 
       (.CI(\cnt0_reg[12]_i_1_n_0 ),
        .CO({\cnt0_reg[16]_i_1_n_0 ,\cnt0_reg[16]_i_1_n_1 ,\cnt0_reg[16]_i_1_n_2 ,\cnt0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[16]_i_1_n_4 ,\cnt0_reg[16]_i_1_n_5 ,\cnt0_reg[16]_i_1_n_6 ,\cnt0_reg[16]_i_1_n_7 }),
        .S({\cnt0[16]_i_2_n_0 ,\cnt0[16]_i_3_n_0 ,\cnt0[16]_i_4_n_0 ,\cnt0[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[16]_i_1_n_6 ),
        .Q(cnt0_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[16]_i_1_n_5 ),
        .Q(cnt0_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[16]_i_1_n_4 ),
        .Q(cnt0_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[0]_i_1_n_6 ),
        .Q(cnt0_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[20]_i_1_n_7 ),
        .Q(cnt0_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[20]_i_1 
       (.CI(\cnt0_reg[16]_i_1_n_0 ),
        .CO({\cnt0_reg[20]_i_1_n_0 ,\cnt0_reg[20]_i_1_n_1 ,\cnt0_reg[20]_i_1_n_2 ,\cnt0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[20]_i_1_n_4 ,\cnt0_reg[20]_i_1_n_5 ,\cnt0_reg[20]_i_1_n_6 ,\cnt0_reg[20]_i_1_n_7 }),
        .S({\cnt0[20]_i_2_n_0 ,\cnt0[20]_i_3_n_0 ,\cnt0[20]_i_4_n_0 ,\cnt0[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[20]_i_1_n_6 ),
        .Q(cnt0_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[20]_i_1_n_5 ),
        .Q(cnt0_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[20]_i_1_n_4 ),
        .Q(cnt0_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[24]_i_1_n_7 ),
        .Q(cnt0_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[24]_i_1 
       (.CI(\cnt0_reg[20]_i_1_n_0 ),
        .CO({\cnt0_reg[24]_i_1_n_0 ,\cnt0_reg[24]_i_1_n_1 ,\cnt0_reg[24]_i_1_n_2 ,\cnt0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[24]_i_1_n_4 ,\cnt0_reg[24]_i_1_n_5 ,\cnt0_reg[24]_i_1_n_6 ,\cnt0_reg[24]_i_1_n_7 }),
        .S({\cnt0[24]_i_2_n_0 ,\cnt0[24]_i_3_n_0 ,\cnt0[24]_i_4_n_0 ,\cnt0[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[24]_i_1_n_6 ),
        .Q(cnt0_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[24]_i_1_n_5 ),
        .Q(cnt0_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[24]_i_1_n_4 ),
        .Q(cnt0_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[28]_i_1_n_7 ),
        .Q(cnt0_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[28]_i_1 
       (.CI(\cnt0_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt0_reg[28]_i_1_CO_UNCONNECTED [3],\cnt0_reg[28]_i_1_n_1 ,\cnt0_reg[28]_i_1_n_2 ,\cnt0_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[28]_i_1_n_4 ,\cnt0_reg[28]_i_1_n_5 ,\cnt0_reg[28]_i_1_n_6 ,\cnt0_reg[28]_i_1_n_7 }),
        .S({\cnt0[28]_i_2_n_0 ,\cnt0[28]_i_3_n_0 ,\cnt0[28]_i_4_n_0 ,\cnt0[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[28]_i_1_n_6 ),
        .Q(cnt0_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[0]_i_1_n_5 ),
        .Q(cnt0_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[28]_i_1_n_5 ),
        .Q(cnt0_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[28]_i_1_n_4 ),
        .Q(cnt0_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[0]_i_1_n_4 ),
        .Q(cnt0_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[4]_i_1_n_7 ),
        .Q(cnt0_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[4]_i_1 
       (.CI(\cnt0_reg[0]_i_1_n_0 ),
        .CO({\cnt0_reg[4]_i_1_n_0 ,\cnt0_reg[4]_i_1_n_1 ,\cnt0_reg[4]_i_1_n_2 ,\cnt0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[4]_i_1_n_4 ,\cnt0_reg[4]_i_1_n_5 ,\cnt0_reg[4]_i_1_n_6 ,\cnt0_reg[4]_i_1_n_7 }),
        .S({\cnt0[4]_i_2_n_0 ,\cnt0[4]_i_3_n_0 ,\cnt0[4]_i_4_n_0 ,\cnt0[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[4]_i_1_n_6 ),
        .Q(cnt0_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[4]_i_1_n_5 ),
        .Q(cnt0_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[4]_i_1_n_4 ),
        .Q(cnt0_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[8]_i_1_n_7 ),
        .Q(cnt0_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt0_reg[8]_i_1 
       (.CI(\cnt0_reg[4]_i_1_n_0 ),
        .CO({\cnt0_reg[8]_i_1_n_0 ,\cnt0_reg[8]_i_1_n_1 ,\cnt0_reg[8]_i_1_n_2 ,\cnt0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[8]_i_1_n_4 ,\cnt0_reg[8]_i_1_n_5 ,\cnt0_reg[8]_i_1_n_6 ,\cnt0_reg[8]_i_1_n_7 }),
        .S({\cnt0[8]_i_2_n_0 ,\cnt0[8]_i_3_n_0 ,\cnt0[8]_i_4_n_0 ,\cnt0[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt0_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt0_reg[8]_i_1_n_6 ),
        .Q(cnt0_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt1[0]_i_1 
       (.I0(load),
        .I1(cnt1[0]),
        .O(\cnt1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt1[1]_i_1 
       (.I0(cnt1[0]),
        .I1(load),
        .I2(cnt1[1]),
        .O(\cnt1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt1[2]_i_1 
       (.I0(cnt1[0]),
        .I1(cnt1[1]),
        .I2(load),
        .I3(cnt1[2]),
        .O(\cnt1[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt1[0]_i_1_n_0 ),
        .Q(cnt1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt1[1]_i_1_n_0 ),
        .Q(cnt1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt1_reg[2]_0 ),
        .D(\cnt1[2]_i_1_n_0 ),
        .Q(cnt1[2]));
endmodule

module uart_cmd_0
   (\time_set_reg[31]_0 ,
    Q,
    \time_set_reg[28]_0 ,
    \time_set_reg[24]_0 ,
    \time_set_reg[20]_0 ,
    \time_set_reg[16]_0 ,
    \time_set_reg[12]_0 ,
    \time_set_reg[8]_0 ,
    S,
    rst_n,
    led_OBUF,
    rst_n_IBUF,
    E,
    \rx_data_reg_reg[7][7]_0 ,
    CLK,
    cnt1);
  output [2:0]\time_set_reg[31]_0 ;
  output [30:0]Q;
  output [3:0]\time_set_reg[28]_0 ;
  output [3:0]\time_set_reg[24]_0 ;
  output [3:0]\time_set_reg[20]_0 ;
  output [3:0]\time_set_reg[16]_0 ;
  output [3:0]\time_set_reg[12]_0 ;
  output [3:0]\time_set_reg[8]_0 ;
  output [3:0]S;
  output rst_n;
  output led_OBUF;
  input rst_n_IBUF;
  input [0:0]E;
  input [7:0]\rx_data_reg_reg[7][7]_0 ;
  input CLK;
  input [2:0]cnt1;

  wire CLK;
  wire [0:0]E;
  wire [30:0]Q;
  wire [3:0]S;
  wire [2:0]cnt1;
  wire [7:0]ctrl;
  wire led_OBUF;
  wire led_OBUF_inst_i_2_n_0;
  wire led_OBUF_inst_i_3_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]\rx_data_reg_reg[2] ;
  wire [7:0]\rx_data_reg_reg[3] ;
  wire [7:0]\rx_data_reg_reg[4] ;
  wire [7:0]\rx_data_reg_reg[5] ;
  wire [7:0]\rx_data_reg_reg[6] ;
  wire [7:0]\rx_data_reg_reg[7][7]_0 ;
  wire \rx_data_reg_reg_n_0_[0][0] ;
  wire \rx_data_reg_reg_n_0_[0][1] ;
  wire \rx_data_reg_reg_n_0_[0][2] ;
  wire \rx_data_reg_reg_n_0_[0][3] ;
  wire \rx_data_reg_reg_n_0_[0][4] ;
  wire \rx_data_reg_reg_n_0_[0][5] ;
  wire \rx_data_reg_reg_n_0_[0][6] ;
  wire \rx_data_reg_reg_n_0_[0][7] ;
  wire \rx_data_reg_reg_n_0_[1][0] ;
  wire \rx_data_reg_reg_n_0_[1][1] ;
  wire \rx_data_reg_reg_n_0_[1][2] ;
  wire \rx_data_reg_reg_n_0_[1][3] ;
  wire \rx_data_reg_reg_n_0_[1][4] ;
  wire \rx_data_reg_reg_n_0_[1][5] ;
  wire \rx_data_reg_reg_n_0_[1][6] ;
  wire \rx_data_reg_reg_n_0_[1][7] ;
  wire \rx_data_reg_reg_n_0_[7][0] ;
  wire \rx_data_reg_reg_n_0_[7][1] ;
  wire \rx_data_reg_reg_n_0_[7][2] ;
  wire \rx_data_reg_reg_n_0_[7][3] ;
  wire \rx_data_reg_reg_n_0_[7][4] ;
  wire \rx_data_reg_reg_n_0_[7][5] ;
  wire \rx_data_reg_reg_n_0_[7][6] ;
  wire \rx_data_reg_reg_n_0_[7][7] ;
  wire [31:31]time_set;
  wire \time_set[31]_i_1_n_0 ;
  wire \time_set[31]_i_2_n_0 ;
  wire \time_set[31]_i_3_n_0 ;
  wire \time_set[31]_i_4_n_0 ;
  wire \time_set[31]_i_5_n_0 ;
  wire [3:0]\time_set_reg[12]_0 ;
  wire [3:0]\time_set_reg[16]_0 ;
  wire [3:0]\time_set_reg[20]_0 ;
  wire [3:0]\time_set_reg[24]_0 ;
  wire [3:0]\time_set_reg[28]_0 ;
  wire [2:0]\time_set_reg[31]_0 ;
  wire [3:0]\time_set_reg[8]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__0_i_1
       (.I0(Q[8]),
        .O(\time_set_reg[8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__0_i_2
       (.I0(Q[7]),
        .O(\time_set_reg[8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__0_i_3
       (.I0(Q[6]),
        .O(\time_set_reg[8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__0_i_4
       (.I0(Q[5]),
        .O(\time_set_reg[8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__1_i_1
       (.I0(Q[12]),
        .O(\time_set_reg[12]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__1_i_2
       (.I0(Q[11]),
        .O(\time_set_reg[12]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__1_i_3
       (.I0(Q[10]),
        .O(\time_set_reg[12]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__1_i_4
       (.I0(Q[9]),
        .O(\time_set_reg[12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__2_i_1
       (.I0(Q[16]),
        .O(\time_set_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__2_i_2
       (.I0(Q[15]),
        .O(\time_set_reg[16]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__2_i_3
       (.I0(Q[14]),
        .O(\time_set_reg[16]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__2_i_4
       (.I0(Q[13]),
        .O(\time_set_reg[16]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__3_i_1
       (.I0(Q[20]),
        .O(\time_set_reg[20]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__3_i_2
       (.I0(Q[19]),
        .O(\time_set_reg[20]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__3_i_3
       (.I0(Q[18]),
        .O(\time_set_reg[20]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__3_i_4
       (.I0(Q[17]),
        .O(\time_set_reg[20]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__4_i_1
       (.I0(Q[24]),
        .O(\time_set_reg[24]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__4_i_2
       (.I0(Q[23]),
        .O(\time_set_reg[24]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__4_i_3
       (.I0(Q[22]),
        .O(\time_set_reg[24]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__4_i_4
       (.I0(Q[21]),
        .O(\time_set_reg[24]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__5_i_1
       (.I0(Q[28]),
        .O(\time_set_reg[28]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__5_i_2
       (.I0(Q[27]),
        .O(\time_set_reg[28]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__5_i_3
       (.I0(Q[26]),
        .O(\time_set_reg[28]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__5_i_4
       (.I0(Q[25]),
        .O(\time_set_reg[28]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__6_i_1
       (.I0(time_set),
        .O(\time_set_reg[31]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__6_i_2
       (.I0(Q[30]),
        .O(\time_set_reg[31]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry__6_i_3
       (.I0(Q[29]),
        .O(\time_set_reg[31]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry_i_1
       (.I0(Q[4]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry_i_2
       (.I0(Q[3]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry_i_3
       (.I0(Q[2]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt02_carry_i_4
       (.I0(Q[1]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[0] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [0]),
        .Q(ctrl[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[1] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [1]),
        .Q(ctrl[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[2] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [2]),
        .Q(ctrl[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[3] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [3]),
        .Q(ctrl[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[4] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [4]),
        .Q(ctrl[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[5] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [5]),
        .Q(ctrl[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[6] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [6]),
        .Q(ctrl[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ctrl_reg[7] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [7]),
        .Q(ctrl[7]));
  MUXF7 led_OBUF_inst_i_1
       (.I0(led_OBUF_inst_i_2_n_0),
        .I1(led_OBUF_inst_i_3_n_0),
        .O(led_OBUF),
        .S(cnt1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_OBUF_inst_i_2
       (.I0(ctrl[3]),
        .I1(ctrl[2]),
        .I2(cnt1[1]),
        .I3(ctrl[1]),
        .I4(cnt1[0]),
        .I5(ctrl[0]),
        .O(led_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_OBUF_inst_i_3
       (.I0(ctrl[7]),
        .I1(ctrl[6]),
        .I2(cnt1[1]),
        .I3(ctrl[5]),
        .I4(cnt1[0]),
        .I5(ctrl[4]),
        .O(led_OBUF_inst_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][0] ),
        .Q(\rx_data_reg_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][1] ),
        .Q(\rx_data_reg_reg_n_0_[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][2] ),
        .Q(\rx_data_reg_reg_n_0_[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][3] ),
        .Q(\rx_data_reg_reg_n_0_[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][4] ),
        .Q(\rx_data_reg_reg_n_0_[0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][5] ),
        .Q(\rx_data_reg_reg_n_0_[0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][6] ),
        .Q(\rx_data_reg_reg_n_0_[0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[1][7] ),
        .Q(\rx_data_reg_reg_n_0_[0][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [0]),
        .Q(\rx_data_reg_reg_n_0_[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [1]),
        .Q(\rx_data_reg_reg_n_0_[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [2]),
        .Q(\rx_data_reg_reg_n_0_[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [3]),
        .Q(\rx_data_reg_reg_n_0_[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [4]),
        .Q(\rx_data_reg_reg_n_0_[1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [5]),
        .Q(\rx_data_reg_reg_n_0_[1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [6]),
        .Q(\rx_data_reg_reg_n_0_[1][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [7]),
        .Q(\rx_data_reg_reg_n_0_[1][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [0]),
        .Q(\rx_data_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [1]),
        .Q(\rx_data_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [2]),
        .Q(\rx_data_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [3]),
        .Q(\rx_data_reg_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [4]),
        .Q(\rx_data_reg_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [5]),
        .Q(\rx_data_reg_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [6]),
        .Q(\rx_data_reg_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [7]),
        .Q(\rx_data_reg_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [0]),
        .Q(\rx_data_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [1]),
        .Q(\rx_data_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [2]),
        .Q(\rx_data_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [3]),
        .Q(\rx_data_reg_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [4]),
        .Q(\rx_data_reg_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [5]),
        .Q(\rx_data_reg_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [6]),
        .Q(\rx_data_reg_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [7]),
        .Q(\rx_data_reg_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [0]),
        .Q(\rx_data_reg_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [1]),
        .Q(\rx_data_reg_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [2]),
        .Q(\rx_data_reg_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [3]),
        .Q(\rx_data_reg_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [4]),
        .Q(\rx_data_reg_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [5]),
        .Q(\rx_data_reg_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [6]),
        .Q(\rx_data_reg_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [7]),
        .Q(\rx_data_reg_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [0]),
        .Q(\rx_data_reg_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [1]),
        .Q(\rx_data_reg_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [2]),
        .Q(\rx_data_reg_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [3]),
        .Q(\rx_data_reg_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [4]),
        .Q(\rx_data_reg_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [5]),
        .Q(\rx_data_reg_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [6]),
        .Q(\rx_data_reg_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[6] [7]),
        .Q(\rx_data_reg_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][0] ),
        .Q(\rx_data_reg_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][1] ),
        .Q(\rx_data_reg_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][2] ),
        .Q(\rx_data_reg_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][3] ),
        .Q(\rx_data_reg_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][4] ),
        .Q(\rx_data_reg_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][5] ),
        .Q(\rx_data_reg_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][6] ),
        .Q(\rx_data_reg_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg_n_0_[7][7] ),
        .Q(\rx_data_reg_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [0]),
        .Q(\rx_data_reg_reg_n_0_[7][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [1]),
        .Q(\rx_data_reg_reg_n_0_[7][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [2]),
        .Q(\rx_data_reg_reg_n_0_[7][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [3]),
        .Q(\rx_data_reg_reg_n_0_[7][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [4]),
        .Q(\rx_data_reg_reg_n_0_[7][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [5]),
        .Q(\rx_data_reg_reg_n_0_[7][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [6]),
        .Q(\rx_data_reg_reg_n_0_[7][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7][7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[7][7]_0 [7]),
        .Q(\rx_data_reg_reg_n_0_[7][7] ));
  LUT1 #(
    .INIT(2'h1)) 
    state_c_i_2
       (.I0(rst_n_IBUF),
        .O(rst_n));
  LUT4 #(
    .INIT(16'h8000)) 
    \time_set[31]_i_1 
       (.I0(\time_set[31]_i_2_n_0 ),
        .I1(\time_set[31]_i_3_n_0 ),
        .I2(\time_set[31]_i_4_n_0 ),
        .I3(\time_set[31]_i_5_n_0 ),
        .O(\time_set[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \time_set[31]_i_2 
       (.I0(\rx_data_reg_reg_n_0_[7][6] ),
        .I1(\rx_data_reg_reg_n_0_[7][7] ),
        .I2(\rx_data_reg_reg_n_0_[7][5] ),
        .I3(\rx_data_reg_reg_n_0_[7][4] ),
        .I4(\rx_data_reg_reg_n_0_[1][0] ),
        .I5(\rx_data_reg_reg_n_0_[1][1] ),
        .O(\time_set[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \time_set[31]_i_3 
       (.I0(\rx_data_reg_reg_n_0_[0][3] ),
        .I1(\rx_data_reg_reg_n_0_[0][2] ),
        .I2(\rx_data_reg_reg_n_0_[0][1] ),
        .I3(\rx_data_reg_reg_n_0_[0][0] ),
        .I4(\rx_data_reg_reg_n_0_[0][5] ),
        .I5(\rx_data_reg_reg_n_0_[0][4] ),
        .O(\time_set[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \time_set[31]_i_4 
       (.I0(\rx_data_reg_reg_n_0_[7][1] ),
        .I1(\rx_data_reg_reg_n_0_[7][0] ),
        .I2(\rx_data_reg_reg_n_0_[0][6] ),
        .I3(\rx_data_reg_reg_n_0_[0][7] ),
        .I4(\rx_data_reg_reg_n_0_[7][2] ),
        .I5(\rx_data_reg_reg_n_0_[7][3] ),
        .O(\time_set[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \time_set[31]_i_5 
       (.I0(\rx_data_reg_reg_n_0_[1][4] ),
        .I1(\rx_data_reg_reg_n_0_[1][5] ),
        .I2(\rx_data_reg_reg_n_0_[1][2] ),
        .I3(\rx_data_reg_reg_n_0_[1][3] ),
        .I4(\rx_data_reg_reg_n_0_[1][6] ),
        .I5(\rx_data_reg_reg_n_0_[1][7] ),
        .O(\time_set[31]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[0] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[10] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [2]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[11] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [3]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[12] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [4]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[13] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [5]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[14] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [6]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[15] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [7]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[16] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [0]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[17] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [1]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[18] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [2]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[19] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [3]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[1] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[20] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [4]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[21] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [5]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[22] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [6]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[23] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[4] [7]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[24] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [0]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[25] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [1]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[26] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [2]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[27] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [3]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[28] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [4]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[29] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [5]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[2] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[30] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [6]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[31] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[5] [7]),
        .Q(time_set));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[3] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[4] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[5] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[6] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[7] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[2] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[8] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [0]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \time_set_reg[9] 
       (.C(CLK),
        .CE(\time_set[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\rx_data_reg_reg[3] [1]),
        .Q(Q[9]));
endmodule

module uart_rx_byte
   (E,
    Q,
    CLK,
    \data_byte_reg[0]_0 ,
    rst_n_IBUF,
    baud_set_IBUF,
    D);
  output [0:0]E;
  output [7:0]Q;
  input CLK;
  input \data_byte_reg[0]_0 ;
  input rst_n_IBUF;
  input [2:0]baud_set_IBUF;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]baud_set_IBUF;
  wire clk_samp;
  wire clk_samp0;
  wire clk_samp0_carry_i_1_n_0;
  wire clk_samp0_carry_i_2_n_0;
  wire clk_samp0_carry_i_3_n_0;
  wire clk_samp0_carry_n_2;
  wire clk_samp0_carry_n_3;
  wire \data_byte_reg[0][0]_i_1_n_0 ;
  wire \data_byte_reg[0][1]_i_1_n_0 ;
  wire \data_byte_reg[0][1]_i_2_n_0 ;
  wire \data_byte_reg[0][2]_i_1_n_0 ;
  wire \data_byte_reg[0][2]_i_2_n_0 ;
  wire \data_byte_reg[0][2]_i_3_n_0 ;
  wire \data_byte_reg[0]_0 ;
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
  wire [8:0]p_0_in;
  wire p_0_in_0;
  wire [7:1]p_1_in;
  wire [7:0]pulse_cnt;
  wire \pulse_cnt[0]_i_1_n_0 ;
  wire \pulse_cnt[7]_i_1_n_0 ;
  wire rst_n_IBUF;
  wire rx_done;
  wire [8:0]samp_cnt;
  wire samp_cnt1;
  wire samp_cnt1_carry_i_1_n_0;
  wire samp_cnt1_carry_i_2_n_0;
  wire samp_cnt1_carry_i_3_n_0;
  wire samp_cnt1_carry_n_2;
  wire samp_cnt1_carry_n_3;
  wire \samp_cnt[5]_i_2_n_0 ;
  wire \samp_cnt[8]_i_2_n_0 ;
  wire state_c;
  wire state_c_i_3_n_0;
  wire state_c_i_4_n_0;
  wire state_c_i_5_n_0;
  wire state_n0_out;
  wire state_n1_carry_i_1_n_0;
  wire state_n1_carry_i_2_n_0;
  wire state_n1_carry_i_3_n_0;
  wire state_n1_carry_n_1;
  wire state_n1_carry_n_2;
  wire state_n1_carry_n_3;
  wire \uart_rx_reg_reg_n_0_[0] ;
  wire [3:3]NLW_clk_samp0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_clk_samp0_carry_O_UNCONNECTED;
  wire [3:3]NLW_samp_cnt1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_samp_cnt1_carry_O_UNCONNECTED;
  wire [3:3]NLW_state_n1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_state_n1_carry_O_UNCONNECTED;

  CARRY4 clk_samp0_carry
       (.CI(1'b0),
        .CO({NLW_clk_samp0_carry_CO_UNCONNECTED[3],clk_samp0,clk_samp0_carry_n_2,clk_samp0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_samp0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,clk_samp0_carry_i_1_n_0,clk_samp0_carry_i_2_n_0,clk_samp0_carry_i_3_n_0}));
  LUT6 #(
    .INIT(64'h000C000300090204)) 
    clk_samp0_carry_i_1
       (.I0(baud_set_IBUF[0]),
        .I1(baud_set_IBUF[2]),
        .I2(samp_cnt[8]),
        .I3(samp_cnt[6]),
        .I4(samp_cnt[7]),
        .I5(baud_set_IBUF[1]),
        .O(clk_samp0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h10080108000C0024)) 
    clk_samp0_carry_i_2
       (.I0(baud_set_IBUF[2]),
        .I1(samp_cnt[5]),
        .I2(samp_cnt[3]),
        .I3(samp_cnt[4]),
        .I4(baud_set_IBUF[1]),
        .I5(baud_set_IBUF[0]),
        .O(clk_samp0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0404048004011004)) 
    clk_samp0_carry_i_3
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[0]),
        .I5(baud_set_IBUF[1]),
        .O(clk_samp0_carry_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_samp_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(clk_samp0),
        .Q(clk_samp));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[0] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[0] [2]),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFD000200)) 
    \data_byte_reg[0][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(state_c),
        .I4(\data_byte_reg_reg[0] [0]),
        .O(\data_byte_reg[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7000000080000)) 
    \data_byte_reg[0][1]_i_1 
       (.I0(\data_byte_reg_reg[0] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(pulse_cnt[5]),
        .I3(pulse_cnt[6]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[0] [1]),
        .O(\data_byte_reg[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_byte_reg[0][1]_i_2 
       (.I0(pulse_cnt[7]),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(pulse_cnt[4]),
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
       (.I0(pulse_cnt[7]),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(pulse_cnt[4]),
        .I3(pulse_cnt[5]),
        .I4(pulse_cnt[6]),
        .I5(state_c),
        .O(\data_byte_reg[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008008888008000)) 
    \data_byte_reg[0][2]_i_3 
       (.I0(p_0_in_0),
        .I1(clk_samp),
        .I2(pulse_cnt[0]),
        .I3(pulse_cnt[2]),
        .I4(pulse_cnt[1]),
        .I5(pulse_cnt[3]),
        .O(\data_byte_reg[0][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[1] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[1] [2]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'hFFDF000000200000)) 
    \data_byte_reg[1][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(pulse_cnt[6]),
        .I2(pulse_cnt[5]),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[1] [0]),
        .O(\data_byte_reg[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[1][1]_i_1 
       (.I0(\data_byte_reg_reg[1] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[1][1]_i_2_n_0 ),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[1] [1]),
        .O(\data_byte_reg[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[1][1]_i_2 
       (.I0(pulse_cnt[5]),
        .I1(pulse_cnt[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[1][2]_i_2 
       (.I0(\data_byte_reg[0][2]_i_3_n_0 ),
        .I1(pulse_cnt[7]),
        .O(\data_byte_reg[1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_byte_reg[1][2]_i_3 
       (.I0(pulse_cnt[6]),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[4]),
        .O(\data_byte_reg[1][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[2] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[2] [2]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7000800)) 
    \data_byte_reg[2][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(state_c),
        .I4(\data_byte_reg_reg[2] [0]),
        .O(\data_byte_reg[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[2][1]_i_1 
       (.I0(\data_byte_reg_reg[2] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(pulse_cnt[5]),
        .I3(pulse_cnt[6]),
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
       (.I0(pulse_cnt[7]),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(pulse_cnt[4]),
        .I3(pulse_cnt[5]),
        .I4(pulse_cnt[6]),
        .I5(state_c),
        .O(\data_byte_reg[2][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[3] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[3] [2]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'hFFDF000000200000)) 
    \data_byte_reg[3][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [0]),
        .O(\data_byte_reg[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[3][1]_i_1 
       (.I0(\data_byte_reg_reg[3] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[3][2]_i_3_n_0 ),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [1]),
        .O(\data_byte_reg[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF000000400000)) 
    \data_byte_reg[3][2]_i_1 
       (.I0(\data_byte_reg[3][2]_i_2_n_0 ),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[3][2]_i_3_n_0 ),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[3] [2]),
        .O(\data_byte_reg[3][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_byte_reg[3][2]_i_2 
       (.I0(\data_byte_reg_reg[3] [0]),
        .I1(\data_byte_reg_reg[3] [1]),
        .O(\data_byte_reg[3][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_byte_reg[3][2]_i_3 
       (.I0(pulse_cnt[6]),
        .I1(pulse_cnt[5]),
        .O(\data_byte_reg[3][2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[4] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[4] [2]),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF7000800)) 
    \data_byte_reg[4][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(pulse_cnt[6]),
        .I2(pulse_cnt[5]),
        .I3(state_c),
        .I4(\data_byte_reg_reg[4] [0]),
        .O(\data_byte_reg[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[4][1]_i_1 
       (.I0(\data_byte_reg_reg[4] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(pulse_cnt[6]),
        .I3(pulse_cnt[5]),
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
       (.I0(pulse_cnt[7]),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(pulse_cnt[4]),
        .I3(pulse_cnt[6]),
        .I4(pulse_cnt[5]),
        .I5(state_c),
        .O(\data_byte_reg[4][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[5] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[5] [2]),
        .Q(Q[5]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[5][0]_i_1 
       (.I0(\data_byte_reg[1][2]_i_2_n_0 ),
        .I1(pulse_cnt[6]),
        .I2(pulse_cnt[5]),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[5] [0]),
        .O(\data_byte_reg[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \data_byte_reg[5][1]_i_1 
       (.I0(\data_byte_reg_reg[5] [0]),
        .I1(\data_byte_reg[1][2]_i_2_n_0 ),
        .I2(\data_byte_reg[5][1]_i_2_n_0 ),
        .I3(pulse_cnt[4]),
        .I4(state_c),
        .I5(\data_byte_reg_reg[5] [1]),
        .O(\data_byte_reg[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_byte_reg[5][1]_i_2 
       (.I0(pulse_cnt[5]),
        .I1(pulse_cnt[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_byte_reg[5][2]_i_2 
       (.I0(pulse_cnt[6]),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[4]),
        .O(\data_byte_reg[5][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[6] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[6] [2]),
        .Q(Q[6]));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \data_byte_reg[6][0]_i_1 
       (.I0(\data_byte_reg[0][1]_i_2_n_0 ),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(state_c),
        .I4(\data_byte_reg_reg[6] [0]),
        .O(\data_byte_reg[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \data_byte_reg[6][1]_i_1 
       (.I0(\data_byte_reg_reg[6] [0]),
        .I1(\data_byte_reg[0][1]_i_2_n_0 ),
        .I2(pulse_cnt[5]),
        .I3(pulse_cnt[6]),
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
       (.I0(pulse_cnt[7]),
        .I1(\data_byte_reg[0][2]_i_3_n_0 ),
        .I2(pulse_cnt[4]),
        .I3(pulse_cnt[5]),
        .I4(pulse_cnt[6]),
        .I5(state_c),
        .O(\data_byte_reg[6][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg[7] 
       (.C(CLK),
        .CE(rx_done),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg_reg[7] [2]),
        .Q(Q[7]));
  LUT3 #(
    .INIT(8'h38)) 
    \data_byte_reg[7][0]_i_1 
       (.I0(state_c),
        .I1(\data_byte_reg[7][2]_i_2_n_0 ),
        .I2(\data_byte_reg_reg[7] [0]),
        .O(\data_byte_reg[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \data_byte_reg[7][1]_i_1 
       (.I0(\data_byte_reg_reg[7] [0]),
        .I1(state_c),
        .I2(\data_byte_reg[7][2]_i_2_n_0 ),
        .I3(\data_byte_reg_reg[7] [1]),
        .O(\data_byte_reg[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(pulse_cnt[7]),
        .I4(pulse_cnt[4]),
        .I5(state_c),
        .O(\data_byte_reg[7][2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[0][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[0][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[0][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[1][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[1][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[1][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[1][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[2][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[2][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[2][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[3][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[3][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[3][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[3][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[4][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[4][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[4][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[4][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[5][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[5][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[5][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[5][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[6][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[6][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[6][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[6][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[7][0]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[7][1]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_byte_reg_reg[7][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_reg[7][2]_i_1_n_0 ),
        .Q(\data_byte_reg_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pulse_cnt[0]_i_1 
       (.I0(state_c),
        .I1(pulse_cnt[0]),
        .O(\pulse_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \pulse_cnt[1]_i_1 
       (.I0(pulse_cnt[0]),
        .I1(state_c),
        .I2(pulse_cnt[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \pulse_cnt[2]_i_1 
       (.I0(pulse_cnt[0]),
        .I1(pulse_cnt[1]),
        .I2(state_c),
        .I3(pulse_cnt[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \pulse_cnt[3]_i_1 
       (.I0(pulse_cnt[1]),
        .I1(pulse_cnt[0]),
        .I2(pulse_cnt[2]),
        .I3(state_c),
        .I4(pulse_cnt[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \pulse_cnt[4]_i_1 
       (.I0(pulse_cnt[2]),
        .I1(pulse_cnt[0]),
        .I2(pulse_cnt[1]),
        .I3(pulse_cnt[3]),
        .I4(state_c),
        .I5(pulse_cnt[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h90908090)) 
    \pulse_cnt[5]_i_1 
       (.I0(state_c_i_4_n_0),
        .I1(pulse_cnt[5]),
        .I2(state_c),
        .I3(pulse_cnt[7]),
        .I4(pulse_cnt[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \pulse_cnt[6]_i_1 
       (.I0(state_c_i_4_n_0),
        .I1(pulse_cnt[5]),
        .I2(state_c),
        .I3(pulse_cnt[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[7]_i_1 
       (.I0(state_n1_carry_n_1),
        .I1(state_c),
        .O(\pulse_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA0A02880)) 
    \pulse_cnt[7]_i_2 
       (.I0(state_c),
        .I1(pulse_cnt[6]),
        .I2(pulse_cnt[7]),
        .I3(pulse_cnt[5]),
        .I4(state_c_i_4_n_0),
        .O(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[0] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\pulse_cnt[0]_i_1_n_0 ),
        .Q(pulse_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[1] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[1]),
        .Q(pulse_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[2] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[2]),
        .Q(pulse_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[3] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[3]),
        .Q(pulse_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[4] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[4]),
        .Q(pulse_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[5] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[5]),
        .Q(pulse_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[6] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[6]),
        .Q(pulse_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[7] 
       (.C(CLK),
        .CE(\pulse_cnt[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[7]),
        .Q(pulse_cnt[7]));
  LUT5 #(
    .INIT(32'h01000000)) 
    rx_done_i_1
       (.I0(state_c_i_4_n_0),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[6]),
        .I3(pulse_cnt[7]),
        .I4(state_n1_carry_n_1),
        .O(rx_done));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(rx_done),
        .Q(E));
  CARRY4 samp_cnt1_carry
       (.CI(1'b0),
        .CO({NLW_samp_cnt1_carry_CO_UNCONNECTED[3],samp_cnt1,samp_cnt1_carry_n_2,samp_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_samp_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,samp_cnt1_carry_i_1_n_0,samp_cnt1_carry_i_2_n_0,samp_cnt1_carry_i_3_n_0}));
  LUT6 #(
    .INIT(64'h4400400400140120)) 
    samp_cnt1_carry_i_1
       (.I0(samp_cnt[7]),
        .I1(samp_cnt[6]),
        .I2(baud_set_IBUF[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(samp_cnt[8]),
        .O(samp_cnt1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003090000420009)) 
    samp_cnt1_carry_i_2
       (.I0(baud_set_IBUF[1]),
        .I1(samp_cnt[4]),
        .I2(samp_cnt[3]),
        .I3(samp_cnt[5]),
        .I4(baud_set_IBUF[2]),
        .I5(baud_set_IBUF[0]),
        .O(samp_cnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2020200420010420)) 
    samp_cnt1_carry_i_3
       (.I0(samp_cnt[2]),
        .I1(samp_cnt[1]),
        .I2(samp_cnt[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(baud_set_IBUF[0]),
        .O(samp_cnt1_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \samp_cnt[0]_i_1 
       (.I0(samp_cnt1),
        .I1(state_c),
        .I2(samp_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \samp_cnt[1]_i_1 
       (.I0(state_c),
        .I1(samp_cnt1),
        .I2(samp_cnt[0]),
        .I3(samp_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \samp_cnt[2]_i_1 
       (.I0(state_c),
        .I1(samp_cnt1),
        .I2(samp_cnt[1]),
        .I3(samp_cnt[0]),
        .I4(samp_cnt[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \samp_cnt[3]_i_1 
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h0B000400)) 
    \samp_cnt[4]_i_1 
       (.I0(\samp_cnt[5]_i_2_n_0 ),
        .I1(samp_cnt[3]),
        .I2(samp_cnt1),
        .I3(state_c),
        .I4(samp_cnt[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \samp_cnt[5]_i_1 
       (.I0(samp_cnt[3]),
        .I1(\samp_cnt[5]_i_2_n_0 ),
        .I2(samp_cnt[4]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \samp_cnt[5]_i_2 
       (.I0(samp_cnt[1]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[2]),
        .O(\samp_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \samp_cnt[6]_i_1 
       (.I0(\samp_cnt[8]_i_2_n_0 ),
        .I1(samp_cnt1),
        .I2(state_c),
        .I3(samp_cnt[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \samp_cnt[7]_i_1 
       (.I0(\samp_cnt[8]_i_2_n_0 ),
        .I1(samp_cnt[6]),
        .I2(samp_cnt1),
        .I3(state_c),
        .I4(samp_cnt[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \samp_cnt[8]_i_1 
       (.I0(samp_cnt[6]),
        .I1(\samp_cnt[8]_i_2_n_0 ),
        .I2(samp_cnt[7]),
        .I3(samp_cnt1),
        .I4(state_c),
        .I5(samp_cnt[8]),
        .O(p_0_in[8]));
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
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(samp_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(samp_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(samp_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(samp_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(samp_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(samp_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(samp_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(samp_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \samp_cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_0_in[8]),
        .Q(samp_cnt[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD000000)) 
    state_c_i_1
       (.I0(state_n1_carry_n_1),
        .I1(state_c_i_3_n_0),
        .I2(state_c_i_4_n_0),
        .I3(rst_n_IBUF),
        .I4(state_c),
        .I5(state_c_i_5_n_0),
        .O(state_n0_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    state_c_i_3
       (.I0(pulse_cnt[7]),
        .I1(pulse_cnt[6]),
        .I2(pulse_cnt[5]),
        .O(state_c_i_3_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    state_c_i_4
       (.I0(pulse_cnt[3]),
        .I1(pulse_cnt[1]),
        .I2(pulse_cnt[0]),
        .I3(pulse_cnt[2]),
        .I4(pulse_cnt[4]),
        .O(state_c_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    state_c_i_5
       (.I0(state_c),
        .I1(rst_n_IBUF),
        .I2(\uart_rx_reg_reg_n_0_[0] ),
        .I3(p_0_in_0),
        .O(state_c_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_c_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(state_n0_out),
        .Q(state_c));
  CARRY4 state_n1_carry
       (.CI(1'b0),
        .CO({NLW_state_n1_carry_CO_UNCONNECTED[3],state_n1_carry_n_1,state_n1_carry_n_2,state_n1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_n1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,state_n1_carry_i_1_n_0,state_n1_carry_i_2_n_0,state_n1_carry_i_3_n_0}));
  LUT6 #(
    .INIT(64'h4400400400140120)) 
    state_n1_carry_i_1
       (.I0(samp_cnt[7]),
        .I1(samp_cnt[6]),
        .I2(baud_set_IBUF[0]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(samp_cnt[8]),
        .O(state_n1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003090000420021)) 
    state_n1_carry_i_2
       (.I0(baud_set_IBUF[1]),
        .I1(samp_cnt[4]),
        .I2(samp_cnt[3]),
        .I3(samp_cnt[5]),
        .I4(baud_set_IBUF[2]),
        .I5(baud_set_IBUF[0]),
        .O(state_n1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0202020402800402)) 
    state_n1_carry_i_3
       (.I0(samp_cnt[2]),
        .I1(samp_cnt[0]),
        .I2(samp_cnt[1]),
        .I3(baud_set_IBUF[2]),
        .I4(baud_set_IBUF[1]),
        .I5(baud_set_IBUF[0]),
        .O(state_n1_carry_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \uart_rx_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(D),
        .Q(\uart_rx_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_rx_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\uart_rx_reg_reg_n_0_[0] ),
        .Q(p_0_in_0));
endmodule

(* NotValidForBitStream *)
module uart_rx_ctrl_led
   (sys_clk,
    rst_n,
    baud_set,
    uart_rx,
    led,
    rx_done);
  input sys_clk;
  input rst_n;
  input [2:0]baud_set;
  input uart_rx;
  output led;
  output rx_done;

  wire [2:0]baud_set;
  wire [2:0]baud_set_IBUF;
  wire [2:0]cnt1;
  wire [7:0]data_byte;
  wire led;
  wire led_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_done;
  wire rx_done_OBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire [30:0]time_set;
  wire uart_cmd_inst1_n_0;
  wire uart_cmd_inst1_n_1;
  wire uart_cmd_inst1_n_2;
  wire uart_cmd_inst1_n_34;
  wire uart_cmd_inst1_n_35;
  wire uart_cmd_inst1_n_36;
  wire uart_cmd_inst1_n_37;
  wire uart_cmd_inst1_n_38;
  wire uart_cmd_inst1_n_39;
  wire uart_cmd_inst1_n_40;
  wire uart_cmd_inst1_n_41;
  wire uart_cmd_inst1_n_42;
  wire uart_cmd_inst1_n_43;
  wire uart_cmd_inst1_n_44;
  wire uart_cmd_inst1_n_45;
  wire uart_cmd_inst1_n_46;
  wire uart_cmd_inst1_n_47;
  wire uart_cmd_inst1_n_48;
  wire uart_cmd_inst1_n_49;
  wire uart_cmd_inst1_n_50;
  wire uart_cmd_inst1_n_51;
  wire uart_cmd_inst1_n_52;
  wire uart_cmd_inst1_n_53;
  wire uart_cmd_inst1_n_54;
  wire uart_cmd_inst1_n_55;
  wire uart_cmd_inst1_n_56;
  wire uart_cmd_inst1_n_57;
  wire uart_cmd_inst1_n_58;
  wire uart_cmd_inst1_n_59;
  wire uart_cmd_inst1_n_60;
  wire uart_cmd_inst1_n_61;
  wire uart_cmd_inst1_n_62;
  wire uart_rx;
  wire uart_rx_IBUF;

initial begin
 $sdf_annotate("uart_rx_ctrl_led_tb_time_synth.sdf",,,,"tool_control");
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
  count_led_4 count_led_inst2
       (.CLK(sys_clk_IBUF_BUFG),
        .Q(time_set),
        .S({uart_cmd_inst1_n_58,uart_cmd_inst1_n_59,uart_cmd_inst1_n_60,uart_cmd_inst1_n_61}),
        .cnt01_carry__0_i_2_0({uart_cmd_inst1_n_46,uart_cmd_inst1_n_47,uart_cmd_inst1_n_48,uart_cmd_inst1_n_49}),
        .cnt01_carry__0_i_4_0({uart_cmd_inst1_n_50,uart_cmd_inst1_n_51,uart_cmd_inst1_n_52,uart_cmd_inst1_n_53}),
        .cnt01_carry__1_i_2_0({uart_cmd_inst1_n_38,uart_cmd_inst1_n_39,uart_cmd_inst1_n_40,uart_cmd_inst1_n_41}),
        .cnt01_carry__1_i_4_0({uart_cmd_inst1_n_42,uart_cmd_inst1_n_43,uart_cmd_inst1_n_44,uart_cmd_inst1_n_45}),
        .cnt01_carry__2_i_2_0({uart_cmd_inst1_n_0,uart_cmd_inst1_n_1,uart_cmd_inst1_n_2}),
        .cnt01_carry__2_i_4_0({uart_cmd_inst1_n_34,uart_cmd_inst1_n_35,uart_cmd_inst1_n_36,uart_cmd_inst1_n_37}),
        .cnt01_carry_i_2_0({uart_cmd_inst1_n_54,uart_cmd_inst1_n_55,uart_cmd_inst1_n_56,uart_cmd_inst1_n_57}),
        .cnt1(cnt1),
        .\cnt1_reg[2]_0 (uart_cmd_inst1_n_62));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  uart_cmd_0 uart_cmd_inst1
       (.CLK(sys_clk_IBUF_BUFG),
        .E(rx_done_OBUF),
        .Q(time_set),
        .S({uart_cmd_inst1_n_58,uart_cmd_inst1_n_59,uart_cmd_inst1_n_60,uart_cmd_inst1_n_61}),
        .cnt1(cnt1),
        .led_OBUF(led_OBUF),
        .rst_n(uart_cmd_inst1_n_62),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg_reg[7][7]_0 (data_byte),
        .\time_set_reg[12]_0 ({uart_cmd_inst1_n_50,uart_cmd_inst1_n_51,uart_cmd_inst1_n_52,uart_cmd_inst1_n_53}),
        .\time_set_reg[16]_0 ({uart_cmd_inst1_n_46,uart_cmd_inst1_n_47,uart_cmd_inst1_n_48,uart_cmd_inst1_n_49}),
        .\time_set_reg[20]_0 ({uart_cmd_inst1_n_42,uart_cmd_inst1_n_43,uart_cmd_inst1_n_44,uart_cmd_inst1_n_45}),
        .\time_set_reg[24]_0 ({uart_cmd_inst1_n_38,uart_cmd_inst1_n_39,uart_cmd_inst1_n_40,uart_cmd_inst1_n_41}),
        .\time_set_reg[28]_0 ({uart_cmd_inst1_n_34,uart_cmd_inst1_n_35,uart_cmd_inst1_n_36,uart_cmd_inst1_n_37}),
        .\time_set_reg[31]_0 ({uart_cmd_inst1_n_0,uart_cmd_inst1_n_1,uart_cmd_inst1_n_2}),
        .\time_set_reg[8]_0 ({uart_cmd_inst1_n_54,uart_cmd_inst1_n_55,uart_cmd_inst1_n_56,uart_cmd_inst1_n_57}));
  IBUF uart_rx_IBUF_inst
       (.I(uart_rx),
        .O(uart_rx_IBUF));
  uart_rx_byte uart_rx_byte_inst0
       (.CLK(sys_clk_IBUF_BUFG),
        .D(uart_rx_IBUF),
        .E(rx_done_OBUF),
        .Q(data_byte),
        .baud_set_IBUF(baud_set_IBUF),
        .\data_byte_reg[0]_0 (uart_cmd_inst1_n_62),
        .rst_n_IBUF(rst_n_IBUF));
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
