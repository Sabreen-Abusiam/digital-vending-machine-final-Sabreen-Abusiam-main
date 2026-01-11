// ex25.v - Register with load and clear
// WHAT TO DO: Combine load (enable) and clear (reset) controls in one register.
// This gives you full control over when to store new values and when to reset to zero.
module ex25(
    input        clk,
    input        load,
    input        clear,
    input  [4:0] d,
    output reg [4:0] q
);

    initial q = 5'b00000;

    always @(posedge clk) begin
        if (clear)
            q <= 5'b00000;
        else if (load)
            q <= d;
        else
            q <= q;   // hold value
    end

endmodule

