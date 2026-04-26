module mul8_booth_wallace (
    input  wire [7:0] a_u8,
    input  wire signed [7:0] b_s8,
    output wire signed [15:0] p_s16
);
    function automatic signed [16:0] booth_select;
        input [2:0] booth_bits;
        input signed [16:0] multiplicand;
        begin
            case (booth_bits)
                3'b000, 3'b111: booth_select = 17'sd0;
                3'b001, 3'b010: booth_select = multiplicand;
                3'b011: booth_select = multiplicand <<< 1;
                3'b100: booth_select = -(multiplicand <<< 1);
                3'b101, 3'b110: booth_select = -multiplicand;
                default: booth_select = 17'sd0;
            endcase
        end
    endfunction

    wire signed [16:0] a_ext;
    wire [2:0] booth0;
    wire [2:0] booth1;
    wire [2:0] booth2;
    wire [2:0] booth3;

    wire signed [16:0] pp0;
    wire signed [16:0] pp1;
    wire signed [16:0] pp2;
    wire signed [16:0] pp3;

    wire [16:0] csa1_sum;
    wire [16:0] csa1_carry;
    wire [16:0] csa2_sum;
    wire [16:0] csa2_carry;
    wire signed [16:0] prod_ext;

    assign a_ext = $signed({9'd0, a_u8});

    assign booth0 = {b_s8[1], b_s8[0], 1'b0};
    assign booth1 = {b_s8[3], b_s8[2], b_s8[1]};
    assign booth2 = {b_s8[5], b_s8[4], b_s8[3]};
    assign booth3 = {b_s8[7], b_s8[6], b_s8[5]};

    assign pp0 = booth_select(booth0, a_ext);
    assign pp1 = booth_select(booth1, a_ext) <<< 2;
    assign pp2 = booth_select(booth2, a_ext) <<< 4;
    assign pp3 = booth_select(booth3, a_ext) <<< 6;

    assign csa1_sum = pp0 ^ pp1 ^ pp2;
    assign csa1_carry = ((pp0 & pp1) | (pp0 & pp2) | (pp1 & pp2)) << 1;

    assign csa2_sum = csa1_sum ^ csa1_carry ^ pp3;
    assign csa2_carry = ((csa1_sum & csa1_carry) | (csa1_sum & pp3) | (csa1_carry & pp3)) << 1;

    assign prod_ext = $signed(csa2_sum) + $signed(csa2_carry);
    assign p_s16 = prod_ext[15:0];
endmodule
