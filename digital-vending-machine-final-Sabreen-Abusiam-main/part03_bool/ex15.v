// ex15.v - Consensus theorem
// WHAT TO DO: Use the consensus theorem to eliminate redundant terms in Boolean expressions.
// This optimization reduces the number of gates needed in your circuit.
module ex15(
    input  A,
    input  B,
    input  C,
    output F
);

    assign F = (A & B) | (~A & C);

endmodule

