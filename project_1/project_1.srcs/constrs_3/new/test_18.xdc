set_property IOSTANDARD LVCMOS18 [get_ports firefly_reset_3_rx]
set_property IOSTANDARD LVCMOS18 [get_ports firefly_reset_3_tx]
set_property PACKAGE_PIN L18 [get_ports firefly_reset_3_rx]
set_property PACKAGE_PIN F38 [get_ports CLK_200_n]
set_property PACKAGE_PIN K16 [get_ports firefly_reset_3_tx]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 3 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list sysclk_500]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {pcspma/core_support_i/an_adv_config_vector[0]} {pcspma/core_support_i/an_adv_config_vector[1]} {pcspma/core_support_i/an_adv_config_vector[2]} {pcspma/core_support_i/an_adv_config_vector[3]} {pcspma/core_support_i/an_adv_config_vector[4]} {pcspma/core_support_i/an_adv_config_vector[5]} {pcspma/core_support_i/an_adv_config_vector[6]} {pcspma/core_support_i/an_adv_config_vector[7]} {pcspma/core_support_i/an_adv_config_vector[8]} {pcspma/core_support_i/an_adv_config_vector[9]} {pcspma/core_support_i/an_adv_config_vector[10]} {pcspma/core_support_i/an_adv_config_vector[11]} {pcspma/core_support_i/an_adv_config_vector[12]} {pcspma/core_support_i/an_adv_config_vector[13]} {pcspma/core_support_i/an_adv_config_vector[14]} {pcspma/core_support_i/an_adv_config_vector[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 5 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {pcspma/core_support_i/configuration_vector[0]} {pcspma/core_support_i/configuration_vector[1]} {pcspma/core_support_i/configuration_vector[2]} {pcspma/core_support_i/configuration_vector[3]} {pcspma/core_support_i/configuration_vector[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {pcspma/core_support_i/gmii_txd[0]} {pcspma/core_support_i/gmii_txd[1]} {pcspma/core_support_i/gmii_txd[2]} {pcspma/core_support_i/gmii_txd[3]} {pcspma/core_support_i/gmii_txd[4]} {pcspma/core_support_i/gmii_txd[5]} {pcspma/core_support_i/gmii_txd[6]} {pcspma/core_support_i/gmii_txd[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {pcspma/core_support_i/status_vector[0]} {pcspma/core_support_i/status_vector[1]} {pcspma/core_support_i/status_vector[2]} {pcspma/core_support_i/status_vector[3]} {pcspma/core_support_i/status_vector[4]} {pcspma/core_support_i/status_vector[5]} {pcspma/core_support_i/status_vector[6]} {pcspma/core_support_i/status_vector[7]} {pcspma/core_support_i/status_vector[8]} {pcspma/core_support_i/status_vector[9]} {pcspma/core_support_i/status_vector[10]} {pcspma/core_support_i/status_vector[11]} {pcspma/core_support_i/status_vector[12]} {pcspma/core_support_i/status_vector[13]} {pcspma/core_support_i/status_vector[14]} {pcspma/core_support_i/status_vector[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {pcspma/core_support_i/gmii_rxd[0]} {pcspma/core_support_i/gmii_rxd[1]} {pcspma/core_support_i/gmii_rxd[2]} {pcspma/core_support_i/gmii_rxd[3]} {pcspma/core_support_i/gmii_rxd[4]} {pcspma/core_support_i/gmii_rxd[5]} {pcspma/core_support_i/gmii_rxd[6]} {pcspma/core_support_i/gmii_rxd[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list pcspma/core_support_i/an_interrupt]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list pcspma/core_support_i/an_restart_config]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list pcspma/core_support_i/cplllock]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list pcspma/core_support_i/gmii_isolate]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list pcspma/core_support_i/gmii_rx_dv]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list pcspma/core_support_i/gmii_rx_er]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list pcspma/core_support_i/gmii_tx_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list pcspma/core_support_i/gmii_tx_er]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list pcspma/core_support_i/gtpowergood]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list pcspma/core_support_i/independent_clock_bufg]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list lock_clk200]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list pcspma/core_support_i/mmcm_locked]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list pcspma/core_support_i/mmcm_reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list pcspma/core_support_i/pma_reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list pcspma/core_support_i/reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list pcspma/core_support_i/resetdone]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list pcspma/core_support_i/rxuserclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list pcspma/core_support_i/signal_detect]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list pcspma/txoutclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list pcspma/core_support_i/userclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list pcspma/core_support_i/core_clocking_i/userclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list pcspma/core_support_i/core_clocking_i/userclk2]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sysclk_500]
