module mul8_dsp48e1 (
    input  wire [7:0] a_u8,
    input  wire signed [7:0] b_s8,
    output wire signed [15:0] p_s16
);
    wire signed [24:0] a_mul_s25;
    wire signed [17:0] b_mul_s18;
    wire signed [47:0] p_dsp_s48;

    // Map the project operand types directly onto the DSP48E1 multiplier:
    // unsigned 8-bit pixel -> positive signed 25-bit operand
    // signed 8-bit weight  -> sign-extended 18-bit operand
    assign a_mul_s25 = {17'd0, a_u8};
    assign b_mul_s18 = {{10{b_s8[7]}}, b_s8};

    DSP48E1 #(
        .ACASCREG(0),
        .ADREG(0),
        .ALUMODEREG(0),
        .AREG(0),
        .A_INPUT("DIRECT"),
        .BCASCREG(0),
        .BREG(0),
        .B_INPUT("DIRECT"),
        .CARRYINREG(0),
        .CARRYINSELREG(0),
        .CREG(0),
        .DREG(0),
        .INMODEREG(0),
        .MREG(0),
        .OPMODEREG(0),
        .PREG(0),
        .USE_DPORT("FALSE"),
        .USE_MULT("MULTIPLY"),
        .USE_SIMD("ONE48")
    ) u_dsp48e1 (
        .ACOUT(),
        .BCOUT(),
        .CARRYCASCOUT(),
        .CARRYOUT(),
        .MULTSIGNOUT(),
        .OVERFLOW(),
        .P(p_dsp_s48),
        .PATTERNBDETECT(),
        .PATTERNDETECT(),
        .PCOUT(),
        .UNDERFLOW(),
        .A({5'd0, a_mul_s25}),
        .ACIN(30'd0),
        .ALUMODE(4'b0000),
        .B(b_mul_s18),
        .BCIN(18'd0),
        .C(48'd0),
        .CARRYCASCIN(1'b0),
        .CARRYIN(1'b0),
        .CARRYINSEL(3'b000),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D(25'd0),
        .INMODE(5'b00000),
        .MULTSIGNIN(1'b0),
        .OPMODE(7'b0000101),
        .PCIN(48'd0),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0)
    );

    assign p_s16 = p_dsp_s48[15:0];
endmodule
