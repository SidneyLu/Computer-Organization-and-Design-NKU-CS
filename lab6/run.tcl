add_force /tb/rf_addr -radix dec 10
run 500ns
puts [get_value /tb/rf_data]
puts [get_value /tb/cpu_pc]
exit

