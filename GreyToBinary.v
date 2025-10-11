module gray_to_binary(
  input   [3:0]  gray, 
  output  [3:0]  binary
);

  integer i; 

  always@(*) begin 
    for(i = 3; i >= 0; i = i - 1)begin
      binary[i] = ^gray[3:i];
    end
  end

endmodule