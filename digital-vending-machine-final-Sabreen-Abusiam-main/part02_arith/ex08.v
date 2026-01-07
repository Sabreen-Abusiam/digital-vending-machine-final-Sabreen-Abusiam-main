// ex08.v - Signed number representation (2's complement)
// WHAT TO DO: Learn how negative numbers are represented in hardware using 2's complement.
// This teaches you how to negate a number and detect if a number is negative.
module ex08(
    input  signed [4:0] in_value,
    output signed [4:0] neg_value,
    output               is_negative
);

assign neg_value   = -in_value;
assign is_negative = in_value[4];

endmodule
