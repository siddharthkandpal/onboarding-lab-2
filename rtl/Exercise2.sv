/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);
  reg XORD_BITS;

  always @(posedge) begin
    if (!nReset) 
      out <= init;
    else
    XORD_BITS <= ((init[1] ^ init[3] ^ init[4] ^ init[6]) & 1);
    out <= ((init >> 1)|(XORD_BITS << 15));
  end
endmodule
