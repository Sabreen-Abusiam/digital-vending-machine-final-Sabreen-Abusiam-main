// ex36.v - Half adder
// WHAT TO DO: Build the simplest adding circuit - adds two 1-bit numbers with sum and carry.
// This is the fundamental building block for all multi-bit adders.
module ex36(
    input a,
    input b,
    output sum,
    output carry
);

assign sum = a ^ b;
assign carry = a & b;

endmodule