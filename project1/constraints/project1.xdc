create_clock -period 5.000 -name clk -add [get_ports clk]

set_input_delay 0.000 -clock clk [get_ports {rst_n start img_flat_u8x25[*] ker_flat_s8x9[*]}]
set_output_delay 0.000 -clock clk [get_ports {done out_flat_u8x4[*]}]

# 450MHz target for extreme run:
# create_clock -name clk -period 2.222 [get_ports clk]

