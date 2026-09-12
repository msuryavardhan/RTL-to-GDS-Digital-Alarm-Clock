############################################################
# 1. Clock Definition
############################################################

create_clock -name clk -period 10 [get_ports clk]

############################################################
# 2. Clock Uncertainty
############################################################

set_clock_uncertainty 0.2 [get_clocks clk]

############################################################
# 3. Input Delays (Relative to Clock)
############################################################

# Exclude clock itself
set_input_delay 2 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]

############################################################
# 4. Output Delays
############################################################

set_output_delay 2 -clock clk [all_outputs]

############################################################
# 5. Reset Path Handling
############################################################

# Reset treated as asynchronous control signal
set_false_path -from [get_ports reset]

############################################################
# 6. Driving Cell and Load (Basic Modeling)
############################################################

set_driving_cell -lib_cell INVX1 [remove_from_collection [all_inputs] [get_ports clk]]
set_load 0.05 [all_outputs]

############################################################
# End of File
############################################################
