// ex07.v - Binary subtraction for change
// WHAT TO DO: Implement subtraction to calculate change (money paid minus product price).
// This is essential for the vending machine to return the correct change to customers.
module ex07(
    input  [4:0] money_paid,
    input  [4:0] product_price,
    output [4:0] change
);

assign change = money_paid - product_price;

endmodule
