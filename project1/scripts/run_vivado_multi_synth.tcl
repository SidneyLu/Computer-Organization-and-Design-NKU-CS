set root [file normalize [file join [file dirname [info script]] ..]]
set proj_dir [file join $root build vivado_multi]
set build_dir [file join $root build]
file mkdir $proj_dir
file mkdir $build_dir

set part_name xc7a200tfbg676-2
set tops [list \
    cnn_compare_base_top \
    cnn_compare_booth_top \
    cnn_compare_booth_simd_top \
    cnn_compare_booth_simd_pipe_top \
    cnn_compare_booth_simd_pipe_dsp_top \
]

proc read_all_sources {root} {
    read_verilog [file join $root src baseline mul8.v]
    read_verilog [file join $root src baseline add8.v]
    read_verilog [file join $root src baseline relu_s20.v]
    read_verilog [file join $root src baseline div4.v]
    read_verilog [file join $root src baseline cnn_chain_core_base.v]
    read_verilog [file join $root src baseline cnn_compare_base_top.v]

    read_verilog [file join $root src optimized mul8_booth_wallace.v]
    read_verilog [file join $root src optimized mul8_dsp48e1.v]
    read_verilog [file join $root src optimized simd_add8x4.v]
    read_verilog [file join $root src optimized simd_mul8x4.v]
    read_verilog [file join $root src optimized simd_mul8x4_dsp.v]
    read_verilog [file join $root src optimized simd_relu8x4.v]
    read_verilog [file join $root src optimized simd_avgpool2x2_8bit.v]
    read_verilog [file join $root src optimized cnn_conv3x3_simd_core.v]
    read_verilog [file join $root src optimized cnn_chain_core_booth_simd.v]
    read_verilog [file join $root src optimized cnn_chain_core_booth_simd_pipe.v]
    read_verilog [file join $root src optimized cnn_chain_core_booth_simd_pipe_dsp.v]
    read_verilog [file join $root src optimized cnn_compare_booth_top.v]
    read_verilog [file join $root src optimized cnn_compare_booth_simd_top.v]
    read_verilog [file join $root src optimized cnn_compare_booth_simd_pipe_top.v]
    read_verilog [file join $root src optimized cnn_compare_booth_simd_pipe_dsp_top.v]

    read_xdc [file join $root constraints project1.xdc]
}

foreach top $tops {
    set prj_name "project1_${top}"
    create_project $prj_name [file join $proj_dir $prj_name] -part $part_name -force
    read_all_sources $root
    synth_design -top $top -part $part_name
    report_utilization -file [file join $build_dir "${top}_utilization.rpt"]
    report_timing_summary -delay_type max -max_paths 10 -file [file join $build_dir "${top}_timing_summary.rpt"]
    report_clock_utilization -file [file join $build_dir "${top}_clock_utilization.rpt"]
    write_checkpoint -force [file join $build_dir "${top}_synth.dcp"]
    close_project
}

exit
