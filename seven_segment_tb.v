`timescale 1ns/1ps
module seven_segment_tb;

reg [3:0] binary_in;
wire [6:0] seg_out;

seven_segment uut (
    .binary_in(binary_in),
    .seg_out(seg_out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, seven_segment_tb);

    for (binary_in = 0; binary_in < 10; binary_in = binary_in + 1) begin
        #10;
    end

    $finish;
end

endmodule
