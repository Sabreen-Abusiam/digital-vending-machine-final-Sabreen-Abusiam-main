// ex20.v - 2:4 and 3:8 Decoders
// WHAT TO DO: Create a decoder that converts binary input to one-hot output (one line active).
// Decoders are used to select specific products or memory locations in the vending machine.
module ex20(


    // 2:4 Decoder
    input  [1:0] A2,
    output [3:0] Y2,
    // 3:8 Decoder
    input  [2:0] A3,
    output [7:0] Y3
);

    // 2:4 Decoder (one-hot)
    assign Y2 = (A2 == 2'b00) ? 4'b0001 :
                (A2 == 2'b01) ? 4'b0010 :
                (A2 == 2'b10) ? 4'b0100 :
                                4'b1000;

    // 3:8 Decoder (one-hot)
    assign Y3 = (A3 == 3'b000) ? 8'b00000001 :
                (A3 == 3'b001) ? 8'b00000010 :
                (A3 == 3'b010) ? 8'b00000100 :
                (A3 == 3'b011) ? 8'b00001000 :
                (A3 == 3'b100) ? 8'b00010000 :
                (A3 == 3'b101) ? 8'b00100000 :
                (A3 == 3'b110) ? 8'b01000000 :
                                 8'b10000000;

endmodule

