module div_by_x_checker( 
  input     [7:0]   value,  
  input     [3:0]   x,  
  output            divisible 
);
  // your code here

  assign divisible = (value % x == 0) ? 1 : 0; 

endmodule