// ex13.v - Boolean axioms (Identity, Null, Idempotent)
// WHAT TO DO: Learn the basic rules of Boolean algebra (A OR 0 = A, A AND 1 = A, etc.).
// These fundamental laws help you simplify complex logic circuits.
module ex13(
    input  A,
    output F1, F2, F3, F4
);

    assign F1 = A | 1'b0;
    assign F2 = A & 1'b1;
    assign F3 = A | 1'b1;
    assign F4 = A & 1'b0;

endmodule

