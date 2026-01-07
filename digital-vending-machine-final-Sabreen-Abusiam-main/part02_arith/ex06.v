// ex06.v - Binary Addition (Adding Two Coins)
// This demonstrates multi-bit signals and arithmetic operations

module ex06(
    input  [3:0] coin_a,
    input  [3:0] coin_b,
    output [4:0] sum
);

assign sum = coin_a + coin_b;

endmodule
