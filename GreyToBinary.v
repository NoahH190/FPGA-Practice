module gray_to_binary(
  input   [3:0]  gray, 
  output  [3:0]  binary
);
  assign binary[3:0] = ^gray[3:0];

endmodule