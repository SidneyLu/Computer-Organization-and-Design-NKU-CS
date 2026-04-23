`timescale 1ns / 1ps

module lcd_module(
    input         clk,
    input         resetn,
    input         display_valid,
    input  [39:0] display_name,
    input  [31:0] display_value,
    output [5:0]  display_number,
    output        input_valid,
    output [31:0] input_value,
    output        lcd_rst,
    output        lcd_cs,
    output        lcd_rs,
    output        lcd_wr,
    output        lcd_rd,
    inout  [15:0] lcd_data_io,
    output        lcd_bl_ctr,
    inout         ct_int,
    inout         ct_sda,
    output        ct_scl,
    output        ct_rstn
);

`ifdef SYNTHESIS

`else

    reg [5:0]  sim_display_number_r;
    reg        sim_input_valid_r;
    reg [31:0] sim_input_value_r;

    assign display_number = sim_display_number_r;
    assign input_valid = sim_input_valid_r;
    assign input_value = sim_input_value_r;

    assign lcd_rst = 1'b0;
    assign lcd_cs = 1'b0;
    assign lcd_rs = 1'b0;
    assign lcd_wr = 1'b0;
    assign lcd_rd = 1'b0;
    assign lcd_bl_ctr = 1'b0;
    assign lcd_data_io = 16'hzzzz;
    assign ct_int = 1'bz;
    assign ct_sda = 1'bz;
    assign ct_scl = 1'b0;
    assign ct_rstn = 1'b0;

    initial begin
        sim_display_number_r = 6'd1;
        sim_input_valid_r = 1'b0;
        sim_input_value_r = 32'd0;
    end

    task sim_set_page;
        input [5:0] page;
        begin
            sim_display_number_r = page;
        end
    endtask

    task sim_pulse_input;
        input [31:0] value;
        begin
            @(negedge clk);
            sim_input_value_r = value;
            sim_input_valid_r = 1'b1;
            @(negedge clk);
            sim_input_valid_r = 1'b0;
        end
    endtask

`endif

endmodule
