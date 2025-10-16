module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
    
    
    always @(posedge clk or posedge areset) begin 
        if (areset) begin 
            q[3] <= 0; 
            q[2] <= 0;
            q[1] <= 0;
        	q[0] <= 0;
        end
        else if (load) begin
            q[3] <= data[3]; 
            q[2] <= data[2];
            q[1] <= data[1];
            q[0] <= data[0];
        end
        else if (ena) begin 
            q[3] <= 0; 
            q[2] <= q[3];
            q[1] <= q[2];
        	q[0] <= q[1];
        end
    end 

                                      

endmodule