set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/vlsi/Desktop/25MVD1032_ASIC/Alarm_clock/Genus
read_libs slow.lib
read_hdl alarm_clock_top.v
read_hdl alarm_controller.v
read_hdl alarm_register.v
read_hdl time_counter.v
read_hdl time_generator.v
elaborate
read_sdc alarm_constraints.g
read_vcd alarm_clock.vcd
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl > alarm_netlist_vcd.v
write_sdc > alarm_constraints_1_vcd.sdc
#write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > delays.sdf

report_power > power_counter_vcd.rpt
report_area > area_counter_vcd.rpt
report_timing > timing_counter_vcd.rpt
report_gates > gate_counter_vcd.rpt

gui_show
