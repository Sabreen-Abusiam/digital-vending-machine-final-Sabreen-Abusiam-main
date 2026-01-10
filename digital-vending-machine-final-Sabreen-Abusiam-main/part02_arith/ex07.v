// ex07.v - Binary subtraction for change
// WHAT TO DO: Implement subtraction to calculate change (money paid minus product price).
// This is essential for the vending machine to return the correct change to customers.
module ex07(
  input  [4:0] paid,
  input  [3:0] price,
  output [4:0] change
);

  assign change = paid - price;

endmodule