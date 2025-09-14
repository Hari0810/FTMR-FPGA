module main (
	input clk, 
	output led1, 
	output led2, 
	output led3, 
	output led4, 
	output led5, 
	output led6, 
	output led7, 
	output led8, 
	output lcol1, 
	output lcol2, 
	output lcol3, 
	output lcol4
	);

// these are the led holding registers, whatever you write to these appears on the led display
	reg [7:0] leds1;
	reg [7:0] leds2;
	reg [7:0] leds3;
	reg [7:0] leds4;
	
// The output from the ledscan module
	wire [7:0] leds;
	wire [3:0] lcol;

// map the output of ledscan to the port pins	
	assign { led8, led7, led6, led5, led4, led3, led2, led1 } = leds[7:0];
	assign { lcol4, lcol3, lcol2, lcol1 } = lcol[3:0];
	
// Counter register
    reg [31:0] counter = 32'b0;

// instantiate the led scan module
 	LedScan scan (
		.clk(clk), 
		.leds1(leds1),		
		.leds2(leds2),
		.leds3(leds3),
		.leds4(leds4),
		.leds(leds), 
		.lcol(lcol)
	);

  
  // This is where you place data in the leds matrix for display.
  // Here we put a counter on the 1st column and a simple pattern on the others
    always @ (*) begin
		leds1[7:0] = ~counter[28:21];
		leds2[7:0] = 8'b00000000;
		leds3[7:0] = 8'b11110000;
		leds4[7:0] = 8'b00001111;
    end

// increment the counter every clock, only the upper bits are mapped to the leds.	
    always @ (posedge clk) begin
        counter <= counter + 1;
    end

endmodule
