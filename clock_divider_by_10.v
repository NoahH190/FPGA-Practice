module clock_div10(
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
      if (19 <= i) begin
        clk_out <= 0;
        i <= 0;
      end
      else if(10 <= i && i < 20) begin
        clk_out <= 1;
        i <= i + 1;
      end 
      else begin 
        clk_out <= 0;     
        i <= i + 1;
      end
    end 
endmodule