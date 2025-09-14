module flipflop (
    input D,
    input clk,
    output logic Q
    //output logic not_Q
);

always @ (posedge clk) begin
    Q <= D;
    //not_Q <= !Q;
end

endmodule
