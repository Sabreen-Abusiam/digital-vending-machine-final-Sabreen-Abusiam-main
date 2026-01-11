// ex46.v - Simple RAM (4 locations, 4-bit data)
// WHAT TO DO: Create your first Random Access Memory to store and retrieve data.
// RAM uses an address to select which location to read from or write to.
module ex46(
    input        clk,
    input        we,
    input  [1:0] addr,
    input  [3:0] data_in,
    output [3:0] data_out
);

    reg [3:0] mem [0:3];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= data_in;
    end

    assign data_out = mem[addr];

endmodule