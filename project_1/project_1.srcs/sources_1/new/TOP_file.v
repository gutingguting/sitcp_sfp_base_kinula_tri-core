`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/08 17:04:05
// Design Name: 
// Module Name: TOP_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP_file(
    input wire CLK_200_p,
    input wire CLK_200_n,
    input wire gtrefclk_p,
    input wire gtrefclk_n,
    output wire txp,
    output wire txn,
    input wire rxp,
    input wire rxn,
    output wire firefly_reset_3_tx,
    output wire firefly_reset_3_rx
    );

    assign firefly_reset_3_tx = 1'b1;
    assign firefly_reset_3_rx = 1'b1;
    wire EEPROM_CS;
    wire EEPROM_SK;
    wire EEPROM_DI;
    wire EEPROM_DO;
    wire GMII_RSTn_ila;
    wire gmii_tx_clk;
    wire gmii_rx_clk;    //this is the userclk from the output of the file :"pcs/pma IPcore" 
    wire GMII_TX_EN_ila;
    wire GMII_TX_ER_ila;
    wire GMII_RX_ER_ila;
    wire [7:0]GMII_TXD;
    wire [7:0]GMII_RXD;
    wire GMII_RX_DV;
    wire SiTCP_RST_ila;
    wire TCP_OPEN_ACK_ila;
    wire TCP_ERROR_ila;
    wire TCP_CLOSE_REQ_ila;
    wire TCP_CLOSE_ACK_ila;
    wire TCP_RX_WR_ila;
    wire[7:0] TCP_RX_DATA_ila;
    wire[7:0] TCP_TX_DATA_ila;
    wire TCP_TX_FULL_ila;
    wire rxuserclk2;
    wire status_vector_ila;
    wire reset;
    wire reset_clk200;
    wire lock_clk200;
    wire clk_out1;
    wire clk_out2;
    wire independent_clock; //50  ==>  already have been cheecked
    wire io_refclk;
   wire Nego_completed;
   wire FIFO_RD_VALID;
   wire	[15:0]	TCP_RX_WC;
   wire sysclk_500;
   wire clk_out3;
   wire clk_200_buf;
   wire clk_wire;
   // (*mark_debug = "true"*)wire REFCLK_ila;
    
    
    
   //   assign reset = (!GMII_RSTn_ila) & SiTCP_RST_ila;
    /* sitcp function*/
    
       IBUFDS#
       (
        .DIFF_TERM("TRUE")
//        .DIFF_TERM_ADV("TERM_100")
       )
       IBUFDS_inst (
      .O(clk_200_buf),   // 1-bit output: Buffer output
      .I(CLK_200_n),   // 1-bit input: Diff_p buffer input (connect directly to top-level port)
      .IB(CLK_200_p)  // 1-bit input: Diff_n buffer input (connect directly to top-level port)
   );




    assign clk_wire = clk_200_buf;
      clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk_out1),     // output clk_out1 50
    .clk_out2(clk_out2),     // output clk_out2 300
    .clk_out3(clk_out3),     // output clk_out3 500 only use for check signal
    // Status and control signals
    .reset(1'b0), // input reset  ACTI
    .locked(lock_clk200),       // output locked
   // Clock in ports
    .clk_in1(clk_wire));      // input clk_in1
    
    
       BUFG BUFG_inst1 (
      .O(independent_clock), // 1-bit output: Clock output   50mHZ
      .I(clk_out1)  // 1-bit input: Clock input
   );
   
      BUFG BUFG_inst2(
      .O(io_refclk), // 1-bit output: Clock output      200MHZ
      .I(clk_out2)  // 1-bit input: Clock input
   );
   
          BUFG BUFG_inst3 (
      .O(sysclk_500), // 1-bit output: Clock output   500mHZ
      .I(clk_out3)  // 1-bit input: Clock input
   );
    
  WRAP_SiTCP_GMII_XCKU_32K sitcp(
	.CLK(io_refclk)					,	// in	: System Clock >129MHz
	// .RST(reset)					,	// in	: System reset //???
   .RST(1'b0)					,	// in	: System reset //???
// Configuration parameters
	.FORCE_DEFAULTn(1'b0)		,	// in	: Load default parameters
	.EXT_IP_ADDR(32'hC0A80A10)			,	// in	: IP address[31:0]
	.EXT_TCP_PORT(16'h0000)		,	// in	: TCP port #[15:0]
	.EXT_RBCP_PORT(16'h0000)		,	// in	: RBCP port #[15:0]
	.PHY_ADDR()			,	// in	: PHY-device MIF address[4:0]
// EEPROM
	.EEPROM_CS(EEPROM_CS)			,	// out	: Chip select
	.EEPROM_SK(EEPROM_SK)			,	// out	: Serial data clock
	.EEPROM_DI(EEPROM_DI)			,	// out	: Serial write data
	.EEPROM_DO(EEPROM_DO)			,	// in	: Serial read data
	// user data, intialial values are stored in the EEPROM, 0xFFFF_FC3C-3F
	.USR_REG_X3C()		,	// out	: Stored at 0xFFFF_FF3C
	.USR_REG_X3D()		,	// out	: Stored at 0xFFFF_FF3D
	.USR_REG_X3E()		,	// out	: Stored at 0xFFFF_FF3E
	.USR_REG_X3F()			,	// out	: Stored at 0xFFFF_FF3F
// MII interface
	.GMII_RSTn(GMII_RSTn_ila)			,	// out	: PHY reset
	.GMII_1000M(1'b1)			,	// in	: GMII mode (0:MII, 1:GMII)
	// TX
	.GMII_TX_CLK(gmii_rx_clk)			,	// in	: Tx clock
   // .GMII_TX_CLK(gmii_tx_clk)			,	// in	: Tx clock
	.GMII_TX_EN(GMII_TX_EN_ila)			,	// out	: Tx enable
	.GMII_TXD(GMII_TXD)			,	// out	: Tx data[7:0]
	.GMII_TX_ER(GMII_TX_ER_ila)			,	// out	: TX error
	// RX
	.GMII_RX_CLK(gmii_rx_clk)			,	// in	: Rx clock
	.GMII_RX_DV(GMII_RX_DV)			,	// in	: Rx data valid
	.GMII_RXD(GMII_RXD)			,	// in	: Rx data[7:0]
	.GMII_RX_ER(GMII_RX_ER_ila)			,	// in	: Rx error
	.GMII_CRS(1'b0)			,	// in	: Carrier sense
	.GMII_COL(1'b0)			,	// in	: Collision detected //like cppf project
	// Management IF
	.GMII_MDC()			,	// out	: Clock for MDIO
	.GMII_MDIO_IN(1'b0)		,	// in	: Data
	.GMII_MDIO_OUT()		,	// out	: Data
	.GMII_MDIO_OE()		,	// out	: MDIO output enable
// User I/F
	.SiTCP_RST(SiTCP_RST_ila)			,	// out	: Reset for SiTCP and related circuits
	// TCP connection control
	.TCP_OPEN_REQ(1'b0)		,	// in	: Reserved input, shoud be 0
	.TCP_OPEN_ACK(TCP_OPEN_ACK_ila)		,	// out	: Acknowledge for open (=Socket busy)
	.TCP_ERROR(TCP_ERROR_ila)			,	// out	: TCP error, its active period is equal to MSL
	.TCP_CLOSE_REQ(TCP_CLOSE_REQ_ila)		,	// out	: Connection close request
	.TCP_CLOSE_ACK(TCP_CLOSE_REQ_ila)		,	// in	: Acknowledge for closing
	// FIFO I/F
	.TCP_RX_WC(TCP_RX_WC[15:0])			,	// in	: Rx FIFO write count[15:0] (Unused bits should be set 1)
	.TCP_RX_WR(TCP_RX_WR_ila)			,	// out	: Write enable
	.TCP_RX_DATA(TCP_RX_DATA_ila[7:0])			,	// out	: Write data[7:0]
	.TCP_TX_FULL	(TCP_TX_FULL_ila)		,	// out	: Almost full flag
	.TCP_TX_WR(FIFO_RD_VALID)			,	// in	: Write enable
	.TCP_TX_DATA(TCP_TX_DATA_ila[7:0])			,	// in	: Write data[7:0]
	// RBCP
	.RBCP_ACT()			,	// out	: RBCP active
	.RBCP_ADDR()			,	// out	: Address[31:0]
	.RBCP_WD	()			,	// out	: Data[7:0]
	.RBCP_WE	()			,	// out	: Write enable
	.RBCP_RE	()			,	// out	: Read enable
	.RBCP_ACK()			,	// in	: Access acknowledge
	.RBCP_RD	()				// in	: Read data[7:0]
);

gig_ethernet_pcs_pma_0_example_design pcspma
   (
     .independent_clock(independent_clock),
     .io_refclk(io_refclk),
      // Tranceiver Interface
      //---------------------
     .gtrefclk_p(gtrefclk_p),            // Differential +ve of reference clock for MGT: very high quality.
     .gtrefclk_n(gtrefclk_n),            // Differential -ve of reference clock for MGT: very high quality.
     .rxuserclk2(rxuserclk2),
     .txp(txp),                   // Differential +ve of serial transmission from PMA to PMD.
     .txn(txn),                   // Differential -ve of serial transmission from PMA to PMD.
     .rxp(rxp),                   // Differential +ve for serial reception from PMD to PMA.
     .rxn(rxn),                   // Differential -ve for serial reception from PMD to PMA.

      // GMII Interface (client MAC <=> PCS)
      //------------------------------------
   //   .gmii_tx_clk(gmii_tx_clk),           // Transmit clock from client MAC.
      .gmii_tx_clk(gmii_rx_clk),           // Transmit clock from client MAC.
     .gmii_rx_clk(gmii_rx_clk),           // Receive clock to client MAC.
     .gmii_txd(GMII_TXD),              // Transmit data from client MAC.
     .gmii_tx_en(GMII_TX_EN_ila),            // Transmit control signal from client MAC.
     .gmii_tx_er(GMII_TX_ER_ila),            // Transmit control signal from client MAC.
     .gmii_rxd(GMII_RXD),              // Received Data to client MAC.
     .gmii_rx_dv(GMII_RX_DV),            // Received control signal to client MAC.
     .gmii_rx_er(GMII_RX_ER_ila),            // Received control signal to client MAC.
     
      // Management: Alternative to MDIO Interface
      //------------------------------------------
     .configuration_vector(5'b00000),  // Alternative to MDIO interface.
     .an_interrupt(Nego_completed),          // Interrupt to processor to signal that Auto-Negotiation has completed
     .an_adv_config_vector(16'h31a0),  // Alternate interface to program REG4 (AN ADV) ///////////////////ask!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     .an_restart_config(1'b0),     // Alternate signal to modify AN restart bit in REG0

      // General IO's
      //-------------
     .status_vector(status_vector_ila),         // Core status.
   //   .reset(reset),                 // Asynchronous reset for entire core.
     .reset(1'b0),                 // Asynchronous reset for entire core.
     .signal_detect(1'b1)        // Input from PMD to indicate presence of optical input.
      // .clk_500_in(sysclk_500)    
   );


//    module fifio_gen(
//    input wire  rst,
//    input wire  wr_clk,
//    input wire  rd_clk,
//    input wire[7:0]  din,
//    input wire  wr_en,
//    input wire  rd_en,
//    output wire[7:0]dout,
//    output wire [9:0]rd_data_count,
//    output wire valid
(*mark_debug = "true"*)wire	[9:0]	FIFO_DATA_COUNT;
assign	TCP_RX_WC[15:0]		= {6'b111111,FIFO_DATA_COUNT[9:0]};

fifio_gen fifo
    (
        .rst(~TCP_OPEN_ACK_ila),
        .wr_clk(independent_clock),
        .rd_clk(independent_clock),
        .din(TCP_RX_DATA_ila[7:0]),
        .wr_en(TCP_RX_WR_ila),
        .rd_en(~TCP_TX_FULL_ila),
        .dout(TCP_TX_DATA_ila[7:0]),
        .rd_data_count(FIFO_DATA_COUNT[9:0]),
        .valid(FIFO_RD_VALID)
    );
    
    
    
    
endmodule
