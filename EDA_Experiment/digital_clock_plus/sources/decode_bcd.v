module decode_bcd (
    input [3:0] data_in,
    output reg [7:0] seg        //对于74HC595驱动的数码管，高位为dp,低位为a
);
    always @(*) begin
        case (data_in)
            4'd0: seg = 8'hc0;          //0,a~g: 8'h03
            4'd1: seg = 8'hf9;          //1,a~g: 8'h9f
            4'd2: seg = 8'ha4;          //2,a~g: 8'h25
            4'd3: seg = 8'hb0;          //3,a~g: 8'h0d
            4'd4: seg = 8'h99;          //4,a~g: 8'h99
            4'd5: seg = 8'h92;          //5,a~g: 8'h49
            4'd6: seg = 8'h82;          //6,a~g: 8'h41
            4'd7: seg = 8'hf8;          //7,a~g: 8'h1f
            4'd8: seg = 8'h80;          //8,a~g: 8'h01
            4'd9: seg = 8'h90;          //9,a~g: 8'h09
            4'ha: seg = 8'hbf;          //-,a~g: 8'hfd
            default: seg = 8'hff;       //无显示: 8'hff
        endcase
    end
    
endmodule