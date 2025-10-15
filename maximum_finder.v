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

  assign med1 = (a < b) ? b : a; 
  assign med2 = (c < d) ? d : c;
  assign min = (med1 < med2) ? med2 : med1;

endmodule