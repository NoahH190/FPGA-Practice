module binary_to_gray(
  input   [3:0]   bin, 
  output  [3:0]   gray
);

  assign gray[3:0] = bin[3:0] ^ {1'b0,bin[3:1]};

endmodule