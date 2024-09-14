set_property IOSTANDARD LVCMOS18 [get_ports firefly_reset_3_rx]
set_property IOSTANDARD LVCMOS18 [get_ports firefly_reset_3_tx]
set_property PACKAGE_PIN L18 [get_ports firefly_reset_3_rx]
set_property PACKAGE_PIN F38 [get_ports CLK_200_n]
set_property PACKAGE_PIN K16 [get_ports firefly_reset_3_tx]


connect_debug_port u_ila_0/probe1 [get_nets [list REFCLK_ila]]

