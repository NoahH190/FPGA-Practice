module up_down_counter(
  input             clk, 
  input             reset, 
  input             up_down, 
  input             load, 
  input      [3:0]  data, 
  output reg [3:0]  count
);
  // your code here

  always @(posedge clk or reset or load)
    if(reset)
      count <= 4'b0000;
    else if(load)
      count <= data;
    else 
      if(up_down)
        count <= count + 1;
      else if(!up_down)
        count <= count - 1;

endmodule