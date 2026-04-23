set root_dir [file normalize [file dirname [info script]]/..]
set src_dir [file normalize $root_dir/project1.srcs/sources_1/new]
set part_name xc7a200tfbg676-2

set common_sources [list \
    [file join $src_dir mul8_unsigned.v] \
    [file join $src_dir add8.v] \
    [file join $src_dir relu_s20.v] \
    [file join $src_dir div4_u22.v] \
    [file join $src_dir cnn_cfg_regs.v] \
    [file join $src_dir cnn_chain_core_base.v] \
    [file join $src_dir cnn_chain_core_opt.v] \
    [file join $src_dir cnn_compare_base_top.v] \
    [file join $src_dir cnn_compare_opt_top.v] \
]

proc run_compare {project_name top_name part_name source_list out_dir} {
    create_project $project_name $out_dir -part $part_name -force
    add_files $source_list
    set_property top $top_name [current_fileset]
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
    open_run synth_1
    report_utilization -file [file join $out_dir ${top_name}_utilization.rpt]
    report_timing_summary -file [file join $out_dir ${top_name}_timing.rpt]
    close_project
}

run_compare project1_base_cmp cnn_compare_base_top $part_name $common_sources [file join $root_dir compare_base]
run_compare project1_opt_cmp  cnn_compare_opt_top  $part_name $common_sources [file join $root_dir compare_opt]
