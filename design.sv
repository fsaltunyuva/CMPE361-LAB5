module dff (clk, reset,
  d, q, qb);
  
  input clk;
  input reset;
  input d;
  output q;
  output qb;
  
  reg        q;

  //Assigning qb as inverted q because the EPWave given in lab file states so
  assign qb = ~q;

  always @(posedge clk or posedge reset)
  begin
    if (reset) begin
      q <= 1'b1;
    end else begin
      q <= d;
    end
  end
endmodule