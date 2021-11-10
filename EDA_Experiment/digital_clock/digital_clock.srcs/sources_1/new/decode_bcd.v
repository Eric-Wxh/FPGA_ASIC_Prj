module decode_bcd (
    input [3:0] data_in,
    output reg [7:0] seg
);
    always @(*) begin
        case (data_in)
            4'd0: seg = 8'h03;          //0
            4'd1: seg = 8'h9f;          //1
            4'd2: seg = 8'h25;          //2
            4'd3: seg = 8'h0d;          //3
            4'd4: seg = 8'h99;          //4
            4'd5: seg = 8'h49;          //5
            4'd6: seg = 8'h41;          //6
            4'd7: seg = 8'h1f;          //7
            4'd8: seg = 8'h01;          //8
            4'd9: seg = 8'h09;          //9
            4'ha: seg = 8'hfd;          //-
            default: seg = 8'hff;       //无显示
        endcase
    end
    
endmodule