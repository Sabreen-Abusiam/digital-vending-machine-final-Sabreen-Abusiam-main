// ex06.v - Binary Addition (Adding Two Coins)
// This demonstrates multi-bit signals and arithmetic operations

module ex06(
  input  [3:0] coin1,
  input  [3:0] coin2,
  output [4:0] sum
);

  assign sum = coin1 + coin2;

endmodule
