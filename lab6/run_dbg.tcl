run 1200ns
puts [get_value /tb/uut/cpu_pc]
puts [get_value {/tb/uut/rf_module/rf[1]}]
puts [get_value {/tb/uut/rf_module/rf[2]}]
puts [get_value {/tb/uut/rf_module/rf[3]}]
puts [get_value {/tb/uut/rf_module/rf[10]}]
exit

