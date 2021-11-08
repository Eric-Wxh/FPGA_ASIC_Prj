// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Oct 30 21:13:47 2021
// Host        : DESKTOP-7DFRB05 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Electronic_Design/Project/Digital_Design/EDA_theory/drive_74hc595/drive_74hc595.sim/sim_1/synth/timing/xsim/test_drive_tb_time_synth.v
// Design      : test_drive
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module drive_74hc595
   (srclk,
    rclk_OBUF,
    data_ser_OBUF,
    sys_clk_IBUF_BUFG,
    rst_n_IBUF);
  output srclk;
  output rclk_OBUF;
  output data_ser_OBUF;
  input sys_clk_IBUF_BUFG;
  input rst_n_IBUF;

  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire [3:0]cnt_div;
  wire \cnt_div[0]_i_1_n_0 ;
  wire \cnt_div[1]_i_1_n_0 ;
  wire \cnt_div[2]_i_1_n_0 ;
  wire \cnt_div[3]_i_1_n_0 ;
  wire [2:0]cnt_store;
  wire \cnt_store_reg_n_0_[0] ;
  wire \cnt_store_reg_n_0_[1] ;
  wire \cnt_store_reg_n_0_[2] ;
  wire \data_in_reg[0]_i_1_n_0 ;
  wire \data_in_reg_reg_n_0_[0] ;
  wire data_ser_OBUF;
  wire rclk_OBUF;
  wire rst_n_IBUF;
  wire srclk;
  wire srclk_i_1_n_0;
  wire [3:0]state_c;
  wire \state_c[2]_i_2_n_0 ;
  wire \state_c[2]_i_3_n_0 ;
  wire \state_c[3]_i_2_n_0 ;
  wire \state_c[3]_i_3_n_0 ;
  wire \state_c[3]_i_4_n_0 ;
  wire \state_c[3]_i_5_n_0 ;
  wire [3:0]state_n;
  wire store_done;
  wire store_done_reg_n_0;
  wire sys_clk_IBUF_BUFG;

  LUT6 #(
    .INIT(64'h5555551500000040)) 
    \cnt_bit[0]_i_1 
       (.I0(\state_c[3]_i_5_n_0 ),
        .I1(cnt_div[0]),
        .I2(cnt_div[2]),
        .I3(cnt_div[3]),
        .I4(cnt_div[1]),
        .I5(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3102)) 
    \cnt_bit[1]_i_1 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\state_c[3]_i_5_n_0 ),
        .I2(\state_c[3]_i_3_n_0 ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F070008)) 
    \cnt_bit[2]_i_1 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\state_c[3]_i_5_n_0 ),
        .I3(\state_c[3]_i_3_n_0 ),
        .I4(\cnt_bit_reg_n_0_[2] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001000F)) 
    \cnt_div[0]_i_1 
       (.I0(cnt_div[1]),
        .I1(cnt_div[2]),
        .I2(\state_c[3]_i_5_n_0 ),
        .I3(cnt_div[0]),
        .I4(cnt_div[3]),
        .O(\cnt_div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \cnt_div[1]_i_1 
       (.I0(\state_c[3]_i_5_n_0 ),
        .I1(cnt_div[3]),
        .I2(cnt_div[1]),
        .I3(cnt_div[0]),
        .O(\cnt_div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01101010)) 
    \cnt_div[2]_i_1 
       (.I0(\state_c[3]_i_5_n_0 ),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[1]),
        .I4(cnt_div[0]),
        .O(\cnt_div[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000004)) 
    \cnt_div[3]_i_1 
       (.I0(\state_c[3]_i_5_n_0 ),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[1]),
        .I4(cnt_div[0]),
        .O(\cnt_div[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_div[0]_i_1_n_0 ),
        .Q(cnt_div[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_div[1]_i_1_n_0 ),
        .Q(cnt_div[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_div[2]_i_1_n_0 ),
        .Q(cnt_div[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_div_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\cnt_div[3]_i_1_n_0 ),
        .Q(cnt_div[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \cnt_store[0]_i_1 
       (.I0(state_c[0]),
        .I1(state_c[1]),
        .I2(state_c[3]),
        .I3(state_c[2]),
        .I4(\cnt_store_reg_n_0_[0] ),
        .O(cnt_store[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \cnt_store[1]_i_1 
       (.I0(\cnt_store_reg_n_0_[0] ),
        .I1(\cnt_store_reg_n_0_[1] ),
        .I2(rclk_OBUF),
        .O(cnt_store[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cnt_store[2]_i_1 
       (.I0(\cnt_store_reg_n_0_[1] ),
        .I1(\cnt_store_reg_n_0_[0] ),
        .I2(\cnt_store_reg_n_0_[2] ),
        .I3(rclk_OBUF),
        .O(cnt_store[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(cnt_store[0]),
        .Q(\cnt_store_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(cnt_store[1]),
        .Q(\cnt_store_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_store_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(cnt_store[2]),
        .Q(\cnt_store_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \data_in_reg[0]_i_1 
       (.I0(state_c[2]),
        .I1(state_c[3]),
        .I2(state_c[1]),
        .I3(state_c[0]),
        .I4(\data_in_reg_reg_n_0_[0] ),
        .O(\data_in_reg[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_reg_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(\data_in_reg[0]_i_1_n_0 ),
        .Q(\data_in_reg_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    data_ser_OBUF_inst_i_1
       (.I0(\data_in_reg_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .O(data_ser_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rclk_OBUF_inst_i_1
       (.I0(state_c[2]),
        .I1(state_c[3]),
        .I2(state_c[1]),
        .I3(state_c[0]),
        .O(rclk_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01110110)) 
    srclk_i_1
       (.I0(\state_c[3]_i_5_n_0 ),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[1]),
        .I4(cnt_div[0]),
        .O(srclk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    srclk_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(srclk_i_1_n_0),
        .Q(srclk));
  LUT6 #(
    .INIT(64'hFEEBFEE9FFFFFFFF)) 
    \state_c[0]_i_1 
       (.I0(state_c[3]),
        .I1(state_c[2]),
        .I2(state_c[1]),
        .I3(state_c[0]),
        .I4(store_done_reg_n_0),
        .I5(rst_n_IBUF),
        .O(state_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \state_c[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(state_c[0]),
        .I2(state_c[1]),
        .I3(state_c[3]),
        .I4(state_c[2]),
        .O(state_n[1]));
  LUT6 #(
    .INIT(64'h0EFF0E0E00000000)) 
    \state_c[2]_i_1 
       (.I0(\state_c[3]_i_3_n_0 ),
        .I1(\state_c[3]_i_4_n_0 ),
        .I2(\state_c[3]_i_5_n_0 ),
        .I3(\state_c[2]_i_2_n_0 ),
        .I4(\state_c[2]_i_3_n_0 ),
        .I5(rst_n_IBUF),
        .O(state_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_c[2]_i_2 
       (.I0(state_c[2]),
        .I1(state_c[3]),
        .O(\state_c[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_c[2]_i_3 
       (.I0(state_c[1]),
        .I1(state_c[0]),
        .O(\state_c[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22220000222F0000)) 
    \state_c[3]_i_1 
       (.I0(rclk_OBUF),
        .I1(store_done_reg_n_0),
        .I2(\state_c[3]_i_3_n_0 ),
        .I3(\state_c[3]_i_4_n_0 ),
        .I4(rst_n_IBUF),
        .I5(\state_c[3]_i_5_n_0 ),
        .O(state_n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \state_c[3]_i_2 
       (.I0(rst_n_IBUF),
        .O(\state_c[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \state_c[3]_i_3 
       (.I0(cnt_div[1]),
        .I1(cnt_div[3]),
        .I2(cnt_div[2]),
        .I3(cnt_div[0]),
        .O(\state_c[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state_c[3]_i_4 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .O(\state_c[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \state_c[3]_i_5 
       (.I0(state_c[2]),
        .I1(state_c[3]),
        .I2(state_c[1]),
        .I3(state_c[0]),
        .O(\state_c[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_c_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_n[0]),
        .PRE(\state_c[3]_i_2_n_0 ),
        .Q(state_c[0]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(state_n[1]),
        .Q(state_c[1]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(state_n[2]),
        .Q(state_c[2]));
  (* FSM_ENCODED_STATES = "LOAD:0010,WAIT:0100,STORE:1000,IDLE:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_c_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(state_n[3]),
        .Q(state_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    store_done_i_1
       (.I0(rclk_OBUF),
        .I1(\cnt_store_reg_n_0_[2] ),
        .I2(\cnt_store_reg_n_0_[0] ),
        .I3(\cnt_store_reg_n_0_[1] ),
        .O(store_done));
  FDCE #(
    .INIT(1'b0)) 
    store_done_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state_c[3]_i_2_n_0 ),
        .D(store_done),
        .Q(store_done_reg_n_0));
endmodule

(* NotValidForBitStream *)
module test_drive
   (sys_clk,
    rst_n,
    rclk,
    srclr_n,
    srclk,
    data_ser);
  input sys_clk;
  input rst_n;
  output rclk;
  output srclr_n;
  output srclk;
  output data_ser;

  wire data_ser;
  wire data_ser_OBUF;
  wire rclk;
  wire rclk_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire srclk;
  wire srclk_OBUF;
  wire srclr_n;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("test_drive_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF data_ser_OBUF_inst
       (.I(data_ser_OBUF),
        .O(data_ser));
  drive_74hc595 inst
       (.data_ser_OBUF(data_ser_OBUF),
        .rclk_OBUF(rclk_OBUF),
        .rst_n_IBUF(rst_n_IBUF),
        .srclk(srclk_OBUF),
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
  OBUF srclr_n_OBUF_inst
       (.I(1'b1),
        .O(srclr_n));
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
