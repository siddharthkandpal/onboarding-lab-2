module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output logic[15:0] out
);
    reg [15:0] out1;
    logic [1:0] count;
    
always_comb
    case (a)
      0:    out1[7:0] = b[7:0];
      1: begin
            out1[7:4] = b[3:0];
            out1[3:0] = c[7:4];
      end
      2:    out1[7:0] = c[7:0];
      3: begin
            out1[7:6] = a[1:0];
            out1[5:3] = c[2:0];
            out1[2:0] = b[2:0];
      end
        4:  out1[15:8] = b[15:8];
        5: begin
            out1[15:12] = b[11:8];
            out1[11:8] =  c[15:12];
        end
        6:  out1[15:8] = c[15:8];
        7: begin
            out1[15:14] = a[3:2];
            out1[13:11] = c[10:8];
            out1[10:8]  = b[10:8];
        end
    endcase
    
    always @(posedge clk)
    if (!nReset) begin
        out   <= {out1[7:0],out1[15:8]}; //a_in = out1 7 downto 0; //b_in = out1 15 downto 8;
        count <= 0;
    end 
    else begin
      case (count)
          0: out <= {out[7:0], out[15:8]};
          1: out <= {out[7:0], out1[7:0]}; //a_in = out1 7 downto 0;
          2: out <= {out1[15:8], out[15:8]}; //b_in = out1 15 downto 8;
          3: out <= {out[3:0], out[7:4], out[11:8], out[15:12]};
      endcase
      count <= count + 1;
    end
  
endmodule
