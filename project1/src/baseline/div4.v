module div4 (
    input  wire [9:0] x_u10,
    output wire [7:0] y_u8
);
    assign y_u8 = x_u10[9:2];
endmodule
