// ex37.v - Full adder
// WHAT TO DO: Extend the half adder to include a carry input for chaining multiple adders.
// Full adders can be cascaded to create adders of any bit width.
module ex37(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

assign sum  = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);

endmodule