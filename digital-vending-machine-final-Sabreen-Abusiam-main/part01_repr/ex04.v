// ex04.v - Coin value representation
// WHAT TO DO: Create logic that validates if an inserted coin is legal (1, 5, or 10 NIS).
// This is your first decision-making circuit - it checks conditions and outputs valid/invalid.
module ex04(
    input  [3:0] coin_input,
    output        is_valid
);

assign is_valid = (coin_input == 4'd1) ||
                  (coin_input == 4'd5) ||
                  (coin_input == 4'd10);

endmodule
