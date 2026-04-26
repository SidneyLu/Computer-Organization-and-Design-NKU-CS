module add8 (
    input  wire [7:0] a_u8,
    input  wire [7:0] b_u8,
    output wire [7:0] y_u8
);
    assign y_u8 = a_u8 + b_u8;
endmodule
