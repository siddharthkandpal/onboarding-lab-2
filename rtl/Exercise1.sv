/**
  @brief A simple ALU-like module

  @input op   opcode for the operation to perform
  @input a    input to calculation
  @input b    input to calulation
  @output out result of calculation
*/
module Exercise1 (
    input  [1:0] op,
    input  [7:0] a,
    input  [7:0] b,
    output logic [7:0] out
);

  always @(*) begin
    case(op)
      2'b00: out = ( a + b );
      2'b01: out = ( a - b );
      2'b10: out = ( a & b );
      2'b11: out = (a | b );
    endcase
  end     
  
endmodule
