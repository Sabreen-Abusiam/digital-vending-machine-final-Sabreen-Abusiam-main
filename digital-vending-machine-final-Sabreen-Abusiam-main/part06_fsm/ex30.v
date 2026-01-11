// ex30.v - FSM state encoding (binary vs one-hot)
// WHAT TO DO: Learn two different ways to encode states - binary (fewer bits) and one-hot (faster).
// This shows you design tradeoffs between circuit size and speed.
module ex30(
  input  clk,
  input  rst,
  input  next_state,
  output reg [3:0] state_binary,
  output reg [3:0] state_onehot
);

  reg [1:0] s;
  wire [1:0] s_next = next_state ? (s + 2'd1) : s;

  always @(posedge clk) begin
    if (rst) begin
      s <= 2'd0;
      state_binary <= 4'd0;
      state_onehot <= 4'b0001;
    end else begin
      s <= s_next;
      state_binary <= {2'b00, s_next};
      state_onehot <= (4'b0001 << s_next);
    end
  end

endmodule
