
create_clock -period 3.333 -name io_refclk  [get_ports io_refclk]

#-----------------------------------------------------------
# Clock source used for the GT free running and DRP clock
#-----------------------------------------------------------

create_clock -period 20.00 -name independent_clock  [get_ports independent_clock]

create_clock -period 5.00 -name sysclk_200   [get_ports sysclk_200]

create_clock -period 8.000 -name gtrefclk -add [get_ports gtrefclk_p]

create_clock -period 8.000 -name gmii_tx_clk  [get_ports gmii_tx_clk]
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












