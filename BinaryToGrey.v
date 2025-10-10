//First module
module binary_to_gray(
  input   [3:0]   bin, 
  output  [3:0]   gray
);
  // your code here
  assign gray[0] = bin[1] ^ bin[0];
  assign gray[3:1] = bin[3:1];

  always @(*) begin 
    for(i = 3; 0 < i; i = i - 1)
        gray[0]

  end

endmodule