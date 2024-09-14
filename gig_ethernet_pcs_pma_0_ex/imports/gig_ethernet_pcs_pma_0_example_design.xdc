

#################################################################################################################################
# Transceiver Placement
# Full details of available transceiver locations can be found in the UltraScale documentation.
# These are sample constraints, please use correct locations for your chosen device using the same constraint format.
#################################################################################################################################
#set_property LOC GTHE3_CHANNEL_X0Y20 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST}]

#-----------------------------------------------------------
# Clock source used for the IDELAY Controller (if present) -
#-----------------------------------------------------------


create_clock -name io_refclk -period 3.333 [get_ports io_refclk]

#-----------------------------------------------------------
# Clock source used for the GT free running and DRP clock
#-----------------------------------------------------------

create_clock -name independent_clock -period 20.00 [get_ports independent_clock]



create_clock -add -name gtrefclk -period 8.00 [get_ports gtrefclk_p]

create_clock -name gmii_tx_clk -period 8.000 [get_ports gmii_tx_clk]
#-----------------------------------------------------------
# GMII Tx Elastic Buffer Constraints                       -
#-----------------------------------------------------------

# Control Gray Code delay and skew across clock boundary
#set_false_path -to [get_pins -hier -filter {name =~ *tx_elastic_buffer_inst/reclock_rd_addrgray*/data_sync*/D}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *tx_elastic_buffer_inst/reclock_rd_addrgray*/data_sync*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -to [get_pins -hier -filter {name =~ *tx_elastic_buffer_inst/reclock_wr_addrgray*/data_sync*/D}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *tx_elastic_buffer_inst/reclock_wr_addrgray*/data_sync*}] -filter {REF_PIN_NAME =~ D}]

# Constrain between Distributed Memory (output data) and the 1st set of flip-flops
#set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -hier -filter {name =~ tx_elastic_buffer_inst/tx_en_fifo_reg1*/D}]
set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *tx_elastic_buffer_inst/tx_en_fifo_reg1*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -hier -filter {name =~ tx_elastic_buffer_inst/tx_er_fifo_reg1*/D}]
set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *tx_elastic_buffer_inst/tx_er_fifo_reg1*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -hier -filter {name =~ tx_elastic_buffer_inst/txd_fifo_reg1*/D}]
set_false_path -from [get_clocks gmii_tx_clk] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *tx_elastic_buffer_inst/txd_fifo_reg1*}] -filter {REF_PIN_NAME =~ D}]

#set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *reset_sync*}] -filter {REF_PIN_NAME =~ PRE}]

#set_false_path -to [get_pins */core_resets_i/pma_reset_pipe_reg*/PRE]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *core_resets_i/pma_reset_pipe_reg*}] -filter {REF_PIN_NAME =~ PRE}]
#set_false_path -to [get_pins */core_resets_i/pma_reset_pipe*[0]/D]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *core_resets_i/pma_reset_pipe*[0]}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -to [get_pins -hier -filter {name =~ *core_idelayctrl_*/RST} -include_replicated_objects ]
#set_false_path -to [[get_pins -of [get_cells -hierarchical -filter {NAME =~ *core_idelayctrl_*}] -filter {REF_PIN_NAME =~ RST}] -include_replicated_objects ]

