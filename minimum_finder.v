 module min4(
  input   [7:0] a,
  input   [7:0] b,
  input   [7:0] c,
  input   [7:0] d,
  output  [7:0] min
);
  // your code here
  reg [7:0] med1;
  reg [7:0] med2;

  assign med1 = (a < b) ? a : b; 
  assign med2 = (c < d) ? c : d;
  assign min = (med1 < med2) ? med1 : med2;

endmodule