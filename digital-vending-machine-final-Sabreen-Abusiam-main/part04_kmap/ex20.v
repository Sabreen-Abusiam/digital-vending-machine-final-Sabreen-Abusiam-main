// ex20.v - 2:4 and 3:8 Decoders
// WHAT TO DO: Create a decoder that converts binary input to one-hot output (one line active).
// Decoders are used to select specific products or memory locations in the vending machine.
module ex20(
    input  [2:0] in,
    input        en,
    output [7:0] out
);

    assign out = en ? (8'b00000001 << in) : 8'b00000000;

endmodule

