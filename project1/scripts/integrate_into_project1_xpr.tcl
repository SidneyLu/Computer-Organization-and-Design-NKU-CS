set root [file normalize [file join [file dirname [info script]] ..]]
set xpr  [file join $root project1.xpr]

open_project $xpr

set design_files [list \
    [file join $root src baseline mul8.v] \
    [file join $root src baseline add8.v] \
    [file join $root src baseline relu_s20.v] \
    [file join $root src baseline div4.v] \
    [file join $root src baseline cnn_chain_core_base.v] \
    [file join $root src baseline cnn_compare_base_top.v] \
    [file join $root src optimized mul8_booth_wallace.v] \
    [file join $root src optimized mul8_dsp48e1.v] \
    [file join $root src optimized simd_add8x4.v] \
    [file join $root src optimized simd_mul8x4.v] \
    [file join $root src optimized simd_mul8x4_dsp.v] \
    [file join $root src optimized simd_relu8x4.v] \
    [file join $root src optimized simd_avgpool2x2_8bit.v] \
    [file join $root src optimized cnn_conv3x3_simd_core.v] \
    [file join $root src optimized cnn_chain_core_booth_simd.v] \
    [file join $root src optimized cnn_chain_core_booth_simd_pipe.v] \
    [file join $root src optimized cnn_chain_core_booth_simd_pipe_dsp.v] \
    [file join $root src optimized cnn_compare_booth_top.v] \
    [file join $root src optimized cnn_compare_booth_simd_top.v] \
    [file join $root src optimized cnn_compare_booth_simd_pipe_top.v] \
    [file join $root src optimized cnn_compare_booth_simd_pipe_dsp_top.v] \
]

foreach f $design_files {
    if {![file exists $f]} {
        puts "WARN: missing design file $f"
        continue
    }
    if {[llength [get_files -quiet $f]] == 0} {
        add_files -fileset sources_1 $f
    }
}

set xdc_file [file join $root constraints project1.xdc]
if {[file exists $xdc_file] && [llength [get_files -quiet $xdc_file]] == 0} {
    add_files -fileset constrs_1 $xdc_file
}

set sim_files [list \
    [file join $root sim tb_mul8.v] \
    [file join $root sim tb_add8.v] \
    [file join $root sim tb_relu_s20.v] \
    [file join $root sim tb_div4.v] \
    [file join $root sim tb_mul_compare.v] \
    [file join $root sim tb_simd_mul_compare.v] \
    [file join $root sim tb_cnn_core.v] \
]
foreach f $sim_files {
    if {![file exists $f]} {
        puts "WARN: missing sim file $f"
        continue
    }
    if {[llength [get_files -quiet $f]] == 0} {
        add_files -fileset sim_1 $f
    }
}

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

set_property part xc7a200tfbg676-2 [current_project]
set_property top cnn_compare_booth_simd_pipe_top [get_filesets sources_1]
set_property top tb_cnn_core [get_filesets sim_1]

close_project
exit
