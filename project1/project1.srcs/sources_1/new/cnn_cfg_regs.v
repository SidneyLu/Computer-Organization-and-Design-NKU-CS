`timescale 1ns / 1ps

module cnn_cfg_regs(
    input             clk,
    input             resetn,
    input             cfg_we,
    input      [5:0]  cfg_addr,
    input      [31:0] cfg_data,
    output reg [199:0] pixels_flat,
    output reg [71:0]  kernel_flat
);

    reg [7:0] pixel_mem [0:24];
    reg [7:0] kernel_mem [0:8];
    integer idx;

    always @(posedge clk) begin
        if (!resetn) begin
            for (idx = 0; idx < 25; idx = idx + 1) begin
                pixel_mem[idx] <= 8'd0;
            end
            for (idx = 0; idx < 9; idx = idx + 1) begin
                kernel_mem[idx] <= 8'd0;
            end
        end else if (cfg_we) begin
            if (cfg_addr < 6'd25) begin
                pixel_mem[cfg_addr] <= cfg_data[7:0];
            end else if (cfg_addr < 6'd34) begin
                kernel_mem[cfg_addr - 6'd25] <= cfg_data[7:0];
            end
        end
    end

    always @(*) begin
        pixels_flat = 200'd0;
        kernel_flat = 72'd0;
        for (idx = 0; idx < 25; idx = idx + 1) begin
            pixels_flat[idx*8 +: 8] = pixel_mem[idx];
        end
        for (idx = 0; idx < 9; idx = idx + 1) begin
            kernel_flat[idx*8 +: 8] = kernel_mem[idx];
        end
    end

endmodule
