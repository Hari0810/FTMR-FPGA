module shift_register(
    input shift_reg_in,
    input clk,
    output shift_reg_out
);

wire q1;

flipflop f1(
    .D(shift_reg_in),
    .clk(clk),
    .Q(q1)
    //.not_Q()
);

flipflop f2(
    .D(q1),
    .clk(clk),
    .Q(shift_reg_out)
    //.not_Q() 
);

endmodule