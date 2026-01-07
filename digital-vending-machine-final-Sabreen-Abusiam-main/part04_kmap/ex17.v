// ex17.v - 4-variable K-map
// WHAT TO DO: Implement a more complex function simplified from a 4-variable K-map.
// This shows how K-maps scale to handle more inputs while still minimizing logic.
module ex17(
    input A,
    input B,
    input C,
    input D,
    output F
);
assign F = (~B & ~D) | (~B & C) | (~A & ~C & D);

  // F = (~B&~D) | (~B&~C) | (~A&~C&D)

endmodule

