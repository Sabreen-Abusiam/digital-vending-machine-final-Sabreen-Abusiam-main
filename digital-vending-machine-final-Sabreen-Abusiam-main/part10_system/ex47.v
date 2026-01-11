// ex47.v - RAM with read/write control
// WHAT TO DO: Add separate read and write enable signals for better memory control.
// This prevents accidental reads or writes by requiring explicit enable signals.
module ex47(
    input        clk,
    input        we,
    input        re,
    input  [1:0] addr,
    input  [3:0] data_in,
    output reg [3:0] data_out
);

    reg [3:0] mem [0:3];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= data_in;

        if (re)
            data_out <= mem[addr];
    end

endmodule