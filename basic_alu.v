module basic_alu (A, B, op, alu_out);
  input [3:0] A, B;               // 4 bits signals
  input [2:0] op;                 // 3 bits signals
  output reg [3:0] alu_out;
  always@(*)                      //behavioural level modeling
  begin
    case(op)                     // Different Operations for different cases 
      3'b000: alu_out = A+B;
      3'b001: alu_out = A-B;
      3'b010: alu_out = A&B;
      3'b011: alu_out = A|B;
      3'b100: alu_out = ~A;
      3'b101: alu_out = ~B;
      3'b110: alu_out = A^B;
      3'b111: alu_out = A~^B;
      default: alu_out = 0;
    endcase
  end
endmodule
