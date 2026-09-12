############################################################
# CCOpt Clock Tree Spec
############################################################
create_ccopt_clock_tree_spec -file clock_tree.spec
# target skew
set_ccopt_property target_skew 0.05

# max clock transition
set_ccopt_property target_max_trans 0.2

# enable useful skew optimization
set_ccopt_property useful_skew true

# CTS buffer cells
set_ccopt_property buffer_cells {BUF_X1 BUF_X2 BUF_X4 BUF_X8}

# inverter cells
set_ccopt_property inverter_cells {INV_X1 INV_X2 INV_X4}

# max fanout
set_ccopt_property max_fanout 16

# routing layers for clock
set_ccopt_property routing_top_min_layer M4
set_ccopt_property routing_top_max_layer M6
