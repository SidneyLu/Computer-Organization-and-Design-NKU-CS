log_wave -recursive *

if {[info exists ::env(XSIM_VCD)] && $::env(XSIM_VCD) ne ""} {
    open_vcd $::env(XSIM_VCD)
    log_vcd [get_objects -r /*]
}

run all

if {[info exists ::env(XSIM_VCD)] && $::env(XSIM_VCD) ne ""} {
    close_vcd
}

quit
