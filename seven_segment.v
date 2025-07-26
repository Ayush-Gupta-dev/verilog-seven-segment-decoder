module seven_segment(
    input [3:0] binary_in,
    output reg [6:0] seg_out   // a b c d e f g
);

always @(*) begin
    case (binary_in)
        4'd0: seg_out = 7'b1111110;
        4'd1: seg_out = 7'b0110000;
        4'd2: seg_out = 7'b1101101;
        4'd3: seg_out = 7'b1111001;
        4'd4: seg_out = 7'b0110011;
        4'd5: seg_out = 7'b1011011;
        4'd6: seg_out = 7'b1011111;
        4'd7: seg_out = 7'b1110000;
        4'd8: seg_out = 7'b1111111;
        4'd9: seg_out = 7'b1111011;
        default: seg_out = 7'b0000001; // dash (-)
    endcase
end

endmodule
