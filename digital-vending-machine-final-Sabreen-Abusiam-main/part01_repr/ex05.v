// ex05.v - 5-bit accumulator representation
// WHAT TO DO: Learn why we need 5 bits to store amounts up to 31 NIS in the vending machine.
// This exercise introduces overflow detection - what happens when the amount is too large.
module ex05(
    input  [4:0] amount,
    output [4:0] stored_amount,
    output       overflow
);
    assign stored_amount = amount;
    assign overflow = 1'b0;
endmodule



