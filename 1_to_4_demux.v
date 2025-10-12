module router4(
  input         data_in,
  input   [1:0] sel,
  output reg [3:0] out
);
  // your code here

  always @(*) begin
    if (data_in) begin
      case (sel) 
        2'b00: out <= 4'b0001;
        2'b01: out <= 4'b0010;
        2'b10: out <= 4'b0100;
        2'b11: out <= 4'b1000;
      endcase
    end
    else
      out <= 0;
  end 

endmodule