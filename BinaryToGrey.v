module binary_to_gray(
  input   [3:0]   bin, 
  output  [3:0]   gray
);
  // your code here
  assign gray[3] = bin[3];
  
  always @(*) begin 
    for(i = 2; 0 < i; i - 1)
        assign gray[i] = bin[i+1] ^ bin[i];
  end
endmodule