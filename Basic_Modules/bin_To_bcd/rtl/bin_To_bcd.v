/*
 * @Author: Eric Wong 
 * @Date: 2022-01-02 10:59:06 
 * @Last Modified by: Eric Wong
 * @Last Modified time: 2022-01-02 11:14:12
 */
//use the combinational logic
module bin_To_bcd #(
    parameter bin_Width = 8,
    parameter bcd_Width = 12                //represent 3 digits of the Decimal
    ) 
    (
        input   [bin_Width-1:0] bin,        //binary input
        output  [bcd_Width-1:0] bcd         //bcd output
    );
    integer i;                              //index
    reg [bin_Width-1:0] bin_temp;
    reg [3:0] bcd_one;
    reg [3:0] bcd_ten;
    reg [3:0] bcd_hundred;

    always @(*) begin
        bin_temp = bin;
        bcd_one = 4'h0;
        bcd_ten = 4'h0;
        bcd_hundred = 4'h0;
        //shift for bin_Width times
        for (i = 0; i < bin_Width; i = i+1) begin
            //shift
            {bcd_hundred,bcd_ten,bcd_one,bin_temp} = {bcd_hundred,bcd_ten,bcd_one,bin_temp} << 1;

            //if any of the bcd digit > 4, then plus 3 on that digit
            if (i < 7) begin
                if (bcd_one > 4) begin
                    bcd_one = bcd_one + 4'h3;
                end
                else begin
                    bcd_one = bcd_one;
                end

                if (bcd_ten > 4) begin
                    bcd_ten = bcd_ten + 4'h3;
                end
                else begin
                    bcd_ten = bcd_ten;
                end

                if (bcd_hundred > 4) begin
                    bcd_hundred = bcd_hundred + 4'h3;
                end
                else begin
                    bcd_hundred = bcd_hundred;
                end
            end
            else begin
                bcd_one = bcd_one;
                bcd_ten = bcd_ten;
                bcd_hundred = bcd_hundred;
            end
        end
    end

    assign bcd = {bcd_hundred,bcd_ten,bcd_one};
endmodule