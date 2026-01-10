// ex19.v - 2:1 and 4:1 Multiplexers
// WHAT TO DO: Build a multiplexer (MUX) that selects one input from multiple options.
// MUXes are like digital switches - select signals choose which input passes to output.
module ex19(

    input  [3:0] D,     // data inputs
    input  [1:0] sel,   // select
    output        Y     // output
);

    // 4:1 MUX
    assign Y = (sel == 2'b00) ? D[0] :
               (sel == 2'b01) ? D[1] :
               (sel == 2'b10) ? D[2] :
                                D[3];

endmodule