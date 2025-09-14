module div_n(
    input clk,
    output clkdiv
);

parameter DIV = 10;

//count n/2 posedges BEFORE transition from high to low
//count n/2 negedges BEFORE transition from low to high

/*

set output high to begin with 

if output high
for every posedge
pos_count += 1
if pos_count = n/2
set output low

if output low
for every negedge
neg_count += 1
if neg_count = n/2
set output high

*/

always @ (posedge clk) begin

end

endmodule