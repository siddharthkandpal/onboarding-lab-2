/**
  @brief An asynchronous mux/decoder

  @input sel   input select
  @input cs    chip select

  @input alpha alpha input
  @input beta  beta input
  @input gamma gamma input

  @output out output
*/
module Exercise4 (
    input [1:0] sel,
    input cs,

    input [7:0] alpha,
    input [7:0] beta,
    input [7:0] gamma,

    output logic [7:0] out
);
  
  always @(*) begin
    casez({cs,sel[1:0]}) 
      {1'b0, 2'bzz} : begin
        out = 0;
      end
      {1'b1, 2'b00} : begin
        out = alpha;
      end
      {1'b1, 2'b01} : begin
        out = beta;
      end
      {1'b1, 2'b10} : begin
        out = gamma;
      end
      {1'b1, 2'b11} : begin
        out = 0;
      end
    endcase
  end
  
endmodule
