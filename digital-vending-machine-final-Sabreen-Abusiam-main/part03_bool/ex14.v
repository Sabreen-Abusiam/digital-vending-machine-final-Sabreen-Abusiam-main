// ex14.v - Boolean theorems (De Morgan's, Absorption)
// WHAT TO DO: Apply De Morgan's theorem to convert between AND/OR operations with NOT.
// This powerful theorem lets you transform logic expressions to find simpler implementations.
module ex14(
  input  A,
  input  B,
  input  C,
  output F1,
  output F2,
  output F3
);

  // F1 = ~(A & B) | C   (De Morgan idea: ~(A&B) = ~A | ~B)
  assign F1 = ~(A & B) | C;

  // F2 = ~(A & B) & ~C
  assign F2 = ~(A & B) & ~C;

  // Absorption / simplification:
  // A&B + A&~B = A*(B + ~B) = A*1 = A
  assign F3 = A;

endmodule

