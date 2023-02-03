remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(0)\/modules/fir_filter_0/first_section/b_i}
remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(1)\/modules/fir_filter_0/first_section/b_i}
remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(2)\/modules/fir_filter_0/first_section/b_i}
add_force {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(1)\/modules/fir_filter_0/first_section/b_i} -radix hex 11111 200us
add_force {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(2)\/modules/fir_filter_0/first_section/b_i} -radix hex 11111 365us
add_force {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(0)\/modules/fir_filter_0/first_section/b_i} -radix hex 11111 450us
run 500us
remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(2)\/modules/fir_filter_0/first_section/b_i}
run 20us
remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(1)\/modules/fir_filter_0/first_section/b_i}
run 30us 
remove_forces {/fault_tolerant_tb/uut_fault_tolerant_fir/\module_gen(0)\/modules/fir_filter_0/first_section/b_i} 
run 20us

