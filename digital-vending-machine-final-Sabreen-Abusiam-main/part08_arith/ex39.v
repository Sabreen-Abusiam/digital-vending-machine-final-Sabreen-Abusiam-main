// ex39.v - 5-bit subtractor for change
// WHAT TO DO: Build a subtractor circuit to calculate change (paid - price).
// Subtraction can be implemented using addition with 2's complement.
module ex39(
    input  [4:0] a,
    input  [4:0] b,
    output [4:0] diff,
    output       borrow
);

wire [5:0] tmp;

assign tmp    = {1'b0, a} + {1'b0, ~b} + 6'd1;
assign diff   = tmp[4:0];
assign borrow = ~tmp[5];

endmodule