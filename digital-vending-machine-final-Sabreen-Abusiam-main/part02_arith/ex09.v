// ex09.v - Overflow detection in addition
// WHAT TO DO: Detect when adding two numbers produces a result too large to fit in 5 bits.
// Overflow detection prevents errors when accumulating coins in the vending machine.

module ex09(
    input  [4:0] a,
    input  [4:0] b,
    output [4:0] sum,
    output        overflow
);

    wire [5:0] full_sum;

    assign full_sum = a + b;
    assign sum      = full_sum[4:0];
    assign overflow = full_sum[5];

endmodule
