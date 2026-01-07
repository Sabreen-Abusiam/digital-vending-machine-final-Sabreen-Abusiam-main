// ex19.v - 2:1 and 4:1 Multiplexers
// WHAT TO DO: Build a multiplexer (MUX) that selects one input from multiple options.
// MUXes are like digital switches - select signals choose which input passes to output.
module ex19(
    // 2:1 MUX
    input D0,
    input D1,
    input S,
    output Y_2to1,

    // 4:1 MUX
    input D2,
    input D3,
    input [1:0] S4,
    output Y_4to1
);

    // 2:1 MUX
    assign Y_2to1 = S ? D1 : D0;

    // 4:1 MUX
    assign Y_4to1 = (S4 == 2'b00) ? D0 :
                    (S4 == 2'b01) ? D1 :
                    (S4 == 2'b10) ? D2 :
                                    D3;

endmodule

