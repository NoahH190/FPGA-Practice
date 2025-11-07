module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);

    reg [7:0] clocked; 
    
    always @(posedge clk) begin
        clocked <= in; 
        anyedge <= clocked ^ in; 
    end 
    
endmodule