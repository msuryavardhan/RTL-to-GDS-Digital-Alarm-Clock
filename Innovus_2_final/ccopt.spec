##################################################
# CCOpt Specification
##################################################

create_ccopt_clock_tree_spec -file clock_tree.spec

set_ccopt_property target_skew 0.05 -clock_tree clk
set_ccopt_property target_max_trans 0.2 -clock_tree clk

set_ccopt_property buffer_cells {BUF_X1 BUF_X2 BUF_X4 BUF_X8} -clock_tree clk
set_ccopt_property inverter_cells {INV_X1 INV_X2 INV_X4} -clock_tree clk

set_ccopt_property max_fanout 16 -clock_tree clk
