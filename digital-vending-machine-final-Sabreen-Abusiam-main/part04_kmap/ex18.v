// ex18.v - K-map with don't cares
// WHAT TO DO: Use "don't care" conditions to achieve maximum simplification of logic.
// Don't cares represent inputs that will never occur, allowing even simpler circuits.
module ex18(
    input A,
    input B,
    input C,
    output F
);

assign F = C;
  // Simplified to: F = C

endmodule
