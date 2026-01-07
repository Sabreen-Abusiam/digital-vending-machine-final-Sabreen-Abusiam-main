\
// ex03.v - Hexadecimal to binary conversions
// WHAT TO DO: Understand that hex and binary are just different ways to write the same number.
// This exercise demonstrates that 4-bit values can be written as hex (0-F) or binary (0000-1111).
module ex03(
input  [3:0] hex_value,
output [3:0] binary_value
);

assign binary_value = hex_value;



endmodule
