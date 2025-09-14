module LedScan (
	input clk, 
	input [7:0] leds1,		
	input [7:0] leds2,
	input [7:0] leds3,
	input [7:0] leds4,
	output reg [7:0] leds, 
	output reg [3:0] lcol
	);


    /* Counter register */
    reg [11:0] timer = 12'b0;
	
   
    always @ (posedge clk) begin
		case (timer[11:10])
			2'b00: begin
    			leds[7:0] <= leds1[7:0];
				lcol[3:0] <= 4'b1110;
			end	    
			2'b01: begin
    			leds[7:0] <= leds2[7:0];
				lcol[3:0] <= 4'b1101;
			end	    
			2'b10: begin
    			leds[7:0] <= leds3[7:0];
				lcol[3:0] <= 4'b1011;
			end	    
			2'b11: begin
    			leds[7:0] <= leds4[7:0];
				lcol[3:0] <= 4'b0111;
			end	    
    	endcase
    end


// increment the scan timer
    always @ (posedge clk) begin
        timer <= timer + 1;
    end

endmodule