module clock_div2(
  input       clk,
  input       reset,
  output reg  clk_out
);
  // your code here

  integer i;

  always @(posedge clk or posedge reset)
    if(reset) begin
      clk_out <= 0;
      i <= 0;
    end
    else begin 
      if(i % 2 == 0)
        clk_out <= 1;
      else 
        clk_out <= 0;      
      i <= i + 1;
    end 
endmodule