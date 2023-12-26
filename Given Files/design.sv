
module dff (clk, reset,
  d, q, qb);
  
//write required parts here
  

  reg        q;

//write required parts here
  

  always @(posedge clk or posedge reset)
  begin
    if (reset) begin
      q <= 1'b1;
    end else begin
      q <= d;
    end
  end
endmodule