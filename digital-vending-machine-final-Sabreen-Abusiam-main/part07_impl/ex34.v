// ex34.v - Change calculator FSM
// WHAT TO DO: Implement a sequential circuit that calculates and stores the change to return.
// This uses a register to hold the change value (paid - price) until it's dispensed.
module ex34(
    input  clk,
    input  rst,
    input  calculate,
    input  [4:0] paid,
    input  [3:0] price,
    output reg [4:0] change
);

always @(posedge clk) begin
    if (rst) begin
        change <= 5'd0;
    end else if (calculate) begin
        if (paid >= {1'b0, price})
            change <= paid - {1'b0, price};
        else
            change <= 5'd0;
    end
end

endmodule