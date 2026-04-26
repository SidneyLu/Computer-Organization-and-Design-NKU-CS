open_checkpoint D:/1012/project1/build/cnn_compare_booth_simd_pipe_top_synth.dcp
puts "=== INPUT->OUTPUT timing to out_flat_u8x4 ==="
report_timing -from [get_ports {img_flat_u8x25[*] ker_flat_s8x9[*]}] -to [get_ports {out_flat_u8x4[*]}] -max_paths 5 -nworst 1
puts "=== START->DONE timing ==="
report_timing -from [get_ports start] -to [get_ports done] -max_paths 3 -nworst 1
exit
