// ex48.v - ROM for product prices
// WHAT TO DO: Create Read-Only Memory that stores fixed product prices.
// ROM is perfect for constant data that never changes, like price lists.
module ex48(
    input  [1:0] addr,
    output reg [3:0] price
);

always @(*) begin
    case (addr)
        2'd0: price = 4'd5;
        2'd1: price = 4'd10;
        2'd2: price = 4'd15;
        default: price = 4'd0;
    endcase
end

endmodule