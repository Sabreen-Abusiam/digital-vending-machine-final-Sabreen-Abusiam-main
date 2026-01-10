// ex10.v - Comparison circuit (paid >= price)
// WHAT TO DO: Build a comparator that checks if the customer paid enough for their product.
// This circuit outputs true when paid amount is greater than or equal to the price.
module ex10(
    input  [4:0] paid,
    input  [3:0] price,
    output        is_sufficient
);

    assign is_sufficient = (paid >= price);

endmodule
 

