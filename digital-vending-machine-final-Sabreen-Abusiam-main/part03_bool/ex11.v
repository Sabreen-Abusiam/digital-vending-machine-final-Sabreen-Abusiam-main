// ex11.v - SOP form for payment check
// WHAT TO DO: Express a logic function as Sum of Products (OR of ANDs).
// This teaches you one standard way to write Boolean expressions used in digital design.
module ex11(

    input A,
    input B,
    input C,
    output F
);

    assign F = (~A & ~B & C) | (~A & B & C);

  // F = A'B'C + A'BC = A'C(B' + B) = A'C

endmodule

