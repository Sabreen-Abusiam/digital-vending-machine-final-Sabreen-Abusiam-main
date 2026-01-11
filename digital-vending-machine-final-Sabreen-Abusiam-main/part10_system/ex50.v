// ex50.v - Complete Vending Machine System (Final Integration)
// WHAT TO DO: Integrate ALL concepts into one complete working vending machine!
// This is your final project combining FSM, arithmetic, memory, and all skills you've learned.

// ALU module for arithmetic operations
`timescale 1ns/1ps

module alu_vending(
  input  wire [4:0] a,
  input  wire [4:0] b,
  input  wire [2:0] op,
  output reg  [4:0] result,
  output wire       greater_or_equal
);

  assign greater_or_equal = (a >= b);

  always @(*) begin
    case (op)
      3'b000: result = a + b;
      3'b001: result = a - b;
      3'b010: result = 5'd0;
      default: result = 5'd0;
    endcase
  end

endmodule


module ex50(
  input  wire       clk,
  input  wire       rst,
  input  wire [3:0] coin,
  input  wire       coin_insert,
  input  wire [1:0] product_sel,
  input  wire       dispense_req,
  output reg  [4:0] total,
  output reg  [4:0] change,
  output reg        dispense,
  output reg        error,
  output reg  [2:0] state
);

  localparam S_IDLE     = 3'd0;
  localparam S_ACCEPT   = 3'd1;
  localparam S_CHECK    = 3'd2;
  localparam S_DISPENSE = 3'd3;
  localparam S_ERROR    = 3'd4;

  reg [4:0] price;
  always @(*) begin
    case (product_sel)
      2'd0: price = 5'd5;
      2'd1: price = 5'd10;
      2'd2: price = 5'd15;
      2'd3: price = 5'd20;
      default: price = 5'd5;
    endcase
  end

  wire valid_coin = (coin == 4'd1) || (coin == 4'd5) || (coin == 4'd10);

  reg  [4:0] alu_a, alu_b;
  reg  [2:0] alu_op;
  wire [4:0] alu_result;
  wire       alu_greater_or_equal;

  alu_vending alu_uut(
    .a(alu_a),
    .b(alu_b),
    .op(alu_op),
    .result(alu_result),
    .greater_or_equal(alu_greater_or_equal)
  );

  reg [2:0] next_state;
  reg [4:0] next_total;
  reg [4:0] next_change;
  reg       next_error;

  always @(*) begin
    next_state  = state;
    next_total  = total;
    next_change = change;
    next_error  = error;

    dispense = 1'b0;

    alu_a  = total;
    alu_b  = 5'd0;
    alu_op = 3'b000;

    if (coin_insert && valid_coin)
      next_error = 1'b0;

    case (state)
      S_IDLE: begin
        next_change = 5'd0;
        if (coin_insert) begin
          if (valid_coin) begin
            next_state = S_ACCEPT;
          end else begin
            next_error = 1'b1;
            next_state = S_ERROR;
          end
        end
      end

      S_ACCEPT: begin
        alu_a  = total;
        alu_b  = {1'b0, coin};
        alu_op = 3'b000;
        next_total = alu_result;
        next_state = S_CHECK;
      end

      S_CHECK: begin
        if (coin_insert) begin
          if (valid_coin) begin
            next_state = S_ACCEPT;
          end else begin
            next_error = 1'b1;
            next_state = S_ERROR;
          end
        end else if (dispense_req) begin
          alu_a  = total;
          alu_b  = price;
          alu_op = 3'b010;
          if (alu_greater_or_equal) next_state = S_DISPENSE;
          else                      next_state = S_CHECK;
        end
      end

      S_DISPENSE: begin
        alu_a  = total;
        alu_b  = price;
        alu_op = 3'b001;
        next_change = alu_result;
        dispense    = 1'b1;
        next_total  = 5'd0;
        next_state  = S_IDLE;
      end

      S_ERROR: begin
        next_total  = 5'd0;
        next_change = 5'd0;
        next_state  = S_IDLE;
      end

      default: next_state = S_IDLE;
    endcase
  end

  always @(posedge clk) begin
    if (rst) begin
      state  <= S_IDLE;
      total  <= 5'd0;
      change <= 5'd0;
      error  <= 1'b0;
    end else begin
      state  <= next_state;
      total  <= next_total;
      change <= next_change;
      error  <= next_error;
    end
  end

endmodule