// ex02.v - Binary representation of prices (4-bit)
// WHAT TO DO: Learn how to represent decimal numbers in binary using 4 bits.
// This exercise shows you how vending machine prices (0-15 NIS) are stored in hardware.
module ex02(
    input  [3:0] price_decimal,  // decimal price (0-15)
    output [3:0] price_binary     // binary representation
);

assign price_binary = price_decimal;

endmodule



