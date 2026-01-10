// ex12.v - POS form for payment check
// WHAT TO DO: Express the same logic function as Product of Sums (AND of ORs).
// You'll see that the same function can be written in different but equivalent ways.
module ex12(
    input A,
    input B,
    input C,
    output F
);

    assign F = (A | B | C) & (~A | B | ~C);

endmodule

