

`timescale 1 ps/1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)


//------------------------------------------------------------------------------
// The module declaration for the example design
//------------------------------------------------------------------------------

module gig_ethernet_pcs_pma_0_example_design
   (

      input            independent_clock,
      input            io_refclk,

      // Tranceiver Interface
      //---------------------

      input            gtrefclk_p,            // Differential +ve of reference clock for MGT: very high quality.
      input            gtrefclk_n,            // Differential -ve of reference clock for MGT: very high quality.
      output           rxuserclk2,
      output           txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output           txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input            rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input            rxn,                   // Differential -ve for serial reception from PMD to PMA.

      // GMII Interface (client MAC <=> PCS)
      //------------------------------------
      input            gmii_tx_clk,           // Transmit clock from client MAC.
      output           gmii_rx_clk,           // Receive clock to client MAC.
      input [7:0]      gmii_txd,              // Transmit data from client MAC.
      input            gmii_tx_en,            // Transmit control signal from client MAC.
      input            gmii_tx_er,            // Transmit control signal from client MAC.
      output [7:0]     gmii_rxd,              // Received Data to client MAC.
      output           gmii_rx_dv,            // Received control signal to client MAC.
      output           gmii_rx_er,            // Received control signal to client MAC.
      // Management: Alternative to MDIO Interface
      //------------------------------------------

      input [4:0]      configuration_vector,  // Alternative to MDIO interface.

      output           an_interrupt,          // Interrupt to processor to signal that Auto-Negotiation has completed
      input [15:0]     an_adv_config_vector,  // Alternate interface to program REG4 (AN ADV)
      input            an_restart_config,     // Alternate signal to modify AN restart bit in REG0


      // General IO's
      //-------------
      output  [15:0]   status_vector,         // Core status.
      input            reset,                 // Asynchronous reset for entire core.
      input            signal_detect       // Input from PMD to indicate presence of optical input.
      // input             clk_500_in
      //debug use 2024.9.4 wanghx
      // output wire      REFCLK_ila
   );


   wire REFCLK_ila;

  //----------------------------------------------------------------------------
  // internal signals used in this top level example design.
  //----------------------------------------------------------------------------
   wire         gmii_tx_en_buf;
   wire     [7:0] gmii_txd_buf;
//   assign gmii_txd_buf[7:0] = gmii_txd[7:0];


   // clock generation signals for tranceiver
   wire         gtrefclk_bufg_out;
   wire         txoutclk;                 // txoutclk from GT transceiver.
   wire         resetdone;                // To indicate that the GT transceiver has completed its reset cycle
   wire         userclk;                  
   wire         userclk2;                 


   // An independent clock source used as the reference clock for an
   // IDELAYCTRL (if present) and for the main GT transceiver reset logic.
   wire         independent_clock_bufg;
   wire         io_refclk_bufg;
   // Signals used for an IDELAYCTRL
   wire         idelayctrl_reset_sync;    // Used to create a reset pulse in the IDELAYCTRL clock domain.
   reg   [3:0]  idelay_reset_cnt;         // Counter to create a long IDELAYCTRL reset pulse.
   reg          idelayctrl_reset;         // The reset pulse for the IDELAYCTRL.

   // GMII signals
   wire         gmii_tx_clk_bufio;        // gmii_tx_clk routed through an BUFIO.
   wire         gmii_tx_clk_bufr;         // gmii_tx_clk_ibuf routed through a BUFR.
   wire  [7:0]  gmii_txd_delay;           // Internal gmii_txd signal after IDELAY.
   wire         gmii_tx_en_delay;         // Internal gmii_tx_en signal after IDELAY.
   wire         gmii_tx_er_delay;         // Internal gmii_tx_er signal after IDELAY.
   wire         gmii_isolate;             // internal gmii_isolate signal.
   reg   [7:0]  gmii_txd_iff;             // gmii_txd signal for input IOB flip-flop.
   reg          gmii_tx_en_iff;           // gmii_tx_en signal for input IOB flip-flop.
   reg          gmii_tx_er_iff;           // gmii_tx_er signal for input IOB flip-flop.
   reg   [7:0]  gmii_txd_reg;             // internal gmii_txd signal.
   reg          gmii_tx_en_reg;           // internal gmii_tx_en signal.
   reg          gmii_tx_er_reg;           // internal gmii_tx_er signal.
   wire  [7:0]  gmii_txd_fifo;            // gmii_txd signal after Tx Elastic Buffer.
   wire         gmii_tx_en_fifo;          // gmii_tx_en signal after Tx Elastic Buffer.
   wire         gmii_tx_er_fifo;          // gmii_tx_er signal after Tx Elastic Buffer.
   wire  [7:0]  gmii_rxd_int;             // internal gmii_rxd signal.
   wire         gmii_rx_dv_int;           // internal gmii_rx_dv signal.
   wire         gmii_rx_er_int;           // internal gmii_rx_er signal.
   wire         gmii_rx_clk_obuf;         // gmii_rx_clk  registered in IOBs prior to an OBUF.
   reg   [7:0]  gmii_rxd_obuf;            // gmii_rxd registered in IOBs prior to an OBUF.
   reg          gmii_rx_dv_obuf;          // gmii_rx_dv registered in IOBs prior to an OBUF.
   reg          gmii_rx_er_obuf;          // gmii_rx_er registered in IOBs prior to an OBUF.
   wire         userclk_out;

   
//   assign gmii_tx_en_buf = gmii_tx_en;
   
   // Route independent_clock input through a BUFG
   BUFG  bufg_independent_clock (
      .I         (independent_clock),
      .O         (independent_clock_bufg)
   );

   // Route io_refclk_clock input through a BUFG
   BUFG  bufg_io_refclk (
      .I         (io_refclk),
      .O         (io_refclk_bufg)
   );
  //----------------------------------------------------------------------------
  // Instantiate the Core Block (core wrapper).
  //----------------------------------------------------------------------------
 gig_ethernet_pcs_pma_0_support 
   core_support_i
   (

      .gtrefclk_p              (gtrefclk_p),
      .gtrefclk_n              (gtrefclk_n),
      .gtrefclk_out            (REFCLK_ila),
      
      .txp                     (txp),
      .txn                     (txn),
      .rxp                     (rxp),
      .rxn                     (rxn),
      .mmcm_locked_out         (),
      .userclk_out             (userclk),
      .userclk2_out            (userclk2),
      .rxuserclk_out           (userclk_out),
      .rxuserclk2_out          (rxuserclk2),
      .independent_clock_bufg(independent_clock_bufg),
      .pma_reset_out           (),
      .resetdone               (),
      
      .gmii_txd              (gmii_txd_fifo),
      .gmii_tx_en            (gmii_tx_en_fifo),
      .gmii_tx_er            (gmii_tx_er_fifo),
      .gmii_rxd              (gmii_rxd_int),
      .gmii_rx_dv            (gmii_rx_dv_int),
      .gmii_rx_er            (gmii_rx_er_int),
      .gmii_isolate          (gmii_isolate),
      .configuration_vector  (configuration_vector),
      .an_interrupt          (an_interrupt),
      .an_adv_config_vector  (an_adv_config_vector),
      .an_restart_config     (an_restart_config),
      .status_vector          (status_vector),
      .reset                  (reset),
      .signal_detect         (signal_detect)
      // .clk_500_in             (clk_500_in)
      );



 // Create a synchronous reset in the IDELAYCTRL clock domain.
   gig_ethernet_pcs_pma_0_reset_sync_ex idelayctrl_reset_gen (
      .clk       (io_refclk_bufg),
      .reset_in  (reset),
      .reset_out (idelayctrl_reset_sync)
   );


  // Reset circuitry for the IDELAYCTRL reset.

  // The IDELAYCTRL must experience a pulse which is at least 50 ns in
  // duration.  This is ten clock cycles of the 200MHz independent_clock.
  // Here we drive the reset pulse for 12 clock cycles.
  always @(posedge io_refclk_bufg)
  begin
    if (idelayctrl_reset_sync) begin
      idelay_reset_cnt <= 4'b0000;
      idelayctrl_reset <= 1'b1;
    end

    else begin

      case (idelay_reset_cnt)
        4'b0000 : idelay_reset_cnt <= 4'b0001;
        4'b0001 : idelay_reset_cnt <= 4'b0010;
        4'b0010 : idelay_reset_cnt <= 4'b0011;
        4'b0011 : idelay_reset_cnt <= 4'b0100;
        4'b0100 : idelay_reset_cnt <= 4'b0101;
        4'b0101 : idelay_reset_cnt <= 4'b0110;
        4'b0110 : idelay_reset_cnt <= 4'b0111;
        4'b0111 : idelay_reset_cnt <= 4'b1000;
        4'b1000 : idelay_reset_cnt <= 4'b1001;
        4'b1001 : idelay_reset_cnt <= 4'b1010;
        4'b1010 : idelay_reset_cnt <= 4'b1011;
        4'b1011 : idelay_reset_cnt <= 4'b1100;
        default : idelay_reset_cnt <= 4'b1100;
      endcase

      if (idelay_reset_cnt == 4'b1100) begin
          idelayctrl_reset <= 1'b0;
      end

      else begin
          idelayctrl_reset <= 1'b1;
      end

    end
  end

   IDELAYCTRL 
#(.SIM_DEVICE ("ULTRASCALE"))
   core_idelayctrl_i 
   (
      .RDY       (),
      .REFCLK    (io_refclk_bufg),
      .RST       (idelayctrl_reset)
   );

   //---------------------------------------------------------------------------
   // GMII transmitter clock logic
   //---------------------------------------------------------------------------

   // Route gmii_tx_clk from PAD through a BUFIO Buffer
   BUFIO receive_gmii_tx_clk (
      .I   (gmii_tx_clk),
      .O   (gmii_tx_clk_bufio)
   );


   // Route gmii_tx_clk through a BUFR onto regional clock routing
   BUFR drive_tx_clk (
      .I   (gmii_tx_clk),
      .CE  (1'b1),
      .CLR (1'b0),
      .O   (gmii_tx_clk_bufr)
   );

wire [7:0] gmii_txd_ibuf;
    wire [7:0] gmii_txd_bufg;
    
    // ? GMII ??????????????????
//    genvar j;
//    generate
//        for (j = 0; j < 8; j = j + 1) begin : ibuf_inst
//       BUFIO rk (
//          .I   (gmii_txd[j]),
//          .O   (gmii_txd_ibuf[j])
//       );
//        end
//    endgenerate



   genvar i;
   generate for (i=0; i<8; i=i+1)
     begin : gmii_data_bus
     
//       BUFIO rk (
//          .I   (gmii_txd[i]),
//          .O   (gmii_txd_ibuf[i])
//       );


//       IBUF 
////       #(
////      .IS_CCIO("FALSE") 
////   )
//   IBUF_inst_2 (
//      .O(gmii_txd_ibuf[i]), // 1-bit output: Buffer output
//      .I(gmii_txd[i])  // 1-bit input: Buffer input
//   );
   
   IDELAYE3 #(
      .DELAY_TYPE("FIXED"),      
      	.SIM_DEVICE		("ULTRASCALE"),    
      .REFCLK_FREQUENCY(300.0),
      .DELAY_VALUE(0)              
   )
//   delay_gmii_txd (
//      .CASC_RETURN (1'b0),
//      .CASC_IN (1'b0),
//      .CASC_OUT (),
//      .CNTVALUEOUT(),
//      .CLK (io_refclk_bufg),
//      .DATAOUT(gmii_txd_delay[i]),         
//      .CE(1'b0),                  
//      .CNTVALUEIN(9'b0),   
//      .DATAIN(1'b0),          
//      .IDATAIN(gmii_txd_ibuf[i]), 
//      .INC(1'b0),             
//      .RST(1'b0),    
//      .LOAD(1'b0), 
//      .EN_VTC(1'b1)
         delay_gmii_txd (
      .CASC_RETURN (1'b0),
      .CASC_IN (1'b0),
      .CASC_OUT (),
      .CNTVALUEOUT(),
      .CLK (io_refclk_bufg),
      .DATAOUT(gmii_txd_delay[i]),         
      .CE(1'b0),                  
      .CNTVALUEIN(9'b0),   
      .DATAIN(gmii_txd[i]),          
      .IDATAIN(1'b0), 
      .INC(1'b0),             
      .RST(1'b0),    
      .LOAD(1'b0), 
      .EN_VTC(1'b1)                
   );

     end
   endgenerate


    wire gmii_tx_en_ibuf;      // ?????? gmii_tx_en ???


//    // ? gmii_tx_en ?????? I/O ??????
//     BUFIO rk_v (
//        .I (gmii_tx_en),
//        .O (gmii_tx_en_ibuf)
//    );
    
    
//       IBUF 
////       #(
////      .IS_CCIO("FALSE") 
////   )
//   IBUF_inst_1 (
//      .O(gmii_tx_en_ibuf), // 1-bit output: Buffer output
//      .I(gmii_tx_en)  // 1-bit input: Buffer input
//   );
    
   IDELAYE3 #(
      .DELAY_TYPE  ("FIXED"),      
      	.SIM_DEVICE		("ULTRASCALE"),    
      .REFCLK_FREQUENCY(300.0),
      .DELAY_VALUE(0)              
   )
   delay_gmii_tx_en (
      .CASC_RETURN (1'b0),
      .CASC_IN (1'b0),
      .CASC_OUT (),
      .CNTVALUEOUT(),
      .CLK (io_refclk_bufg),
      .DATAOUT(gmii_tx_en_delay),         
      .CE(1'b0),                  
      .CNTVALUEIN(9'b0),   
      .DATAIN(gmii_tx_en),          
      .IDATAIN(1'b0), 
      .INC(1'b0),             
      .RST(1'b0),    
      .LOAD(1'b0), 
      .EN_VTC(1'b1)          
   );
   
   
       wire gmii_tx_er_ibuf;      // ?????? gmii_tx_en ???


    // ? gmii_tx_en ?????? I/O ??????
//     BUFIO rk_v_R (
//        .I (gmii_tx_er),
//        .O (gmii_tx_er_ibuf)
//    );

//       IBUF 
////       #(
////      .IS_CCIO("FALSE") 
////   )
//   IBUF_inst_3 (
//      .O(gmii_tx_er_ibuf), // 1-bit output: Buffer output
//      .I(gmii_tx_er)  // 1-bit input: Buffer input
//   );
    
    

   IDELAYE3 #(
      .DELAY_TYPE("FIXED"),      
      	.SIM_DEVICE		("ULTRASCALE"),    
      .REFCLK_FREQUENCY(300.0),
      .DELAY_VALUE(0)              
   )
   delay_gmii_tx_er (
      .CASC_RETURN (1'b0),
      .CASC_IN (1'b0),
      .CASC_OUT (),
      .CNTVALUEOUT(),
      .CLK (io_refclk_bufg),
      .DATAOUT(gmii_tx_er_delay),         
      .CE(1'b0),                  
      .CNTVALUEIN(9'b0),   
      .DATAIN(gmii_tx_er),          
      .IDATAIN(1'b0), 
      .INC(1'b0),             
      .RST(1'b0),    
      .LOAD(1'b0), 
      .EN_VTC(1'b1)         
   );

   // Drive input GMII through IOB input flip-flops (inferred).
   always @ (posedge gmii_tx_clk_bufio)
   begin
      gmii_txd_iff   <= gmii_txd_delay;
      gmii_tx_en_iff <= gmii_tx_en_delay;
      gmii_tx_er_iff <= gmii_tx_er_delay;
   end

   // Reclock onto regional clock routing
   always @ (posedge gmii_tx_clk_bufr)
   begin
      gmii_txd_reg   <= gmii_txd_iff;
      gmii_tx_en_reg <= gmii_tx_en_iff;
      gmii_tx_er_reg <= gmii_tx_er_iff;
   end


   // Component Instantiation for the Transmitter Elastic Buffer
   gig_ethernet_pcs_pma_0_tx_elastic_buffer tx_elastic_buffer_inst
   (
      .reset            (reset),
      .gmii_tx_clk_wr   (gmii_tx_clk_bufr),
      .gmii_txd_wr      (gmii_txd_reg),
      .gmii_tx_en_wr    (gmii_tx_en_reg),
      .gmii_tx_er_wr    (gmii_tx_er_reg),
      .gmii_tx_clk_rd   (userclk2),
      .gmii_txd_rd      (gmii_txd_fifo),
      .gmii_tx_en_rd    (gmii_tx_en_fifo),
      .gmii_tx_er_rd    (gmii_tx_er_fifo)
   );



   //---------------------------------------------------------------------------
   // GMII receiver clock logic
   //---------------------------------------------------------------------------

   // This instantiates a DDR output register.  This is a nice way to
   // drive the GMII output clock since the clock-to-PAD delay will the
   // same as that of data driven from an IOB Ouput flip-flop.  This is
   // set to produce an inverted clock w.r.t. userclk2 so that clock
   // rising edge appears in the centre of GMII data.

 

     
//   ODDR # (
//       .DDR_CLK_EDGE("SAME_EDGE"), 
//       .SRTYPE ("ASYNC")
//       )
//     rx_clk_ddr_iob 
//     (
//      .Q  (gmii_rx_clk),
//      .C  (userclk2),
//      .D1 (1'b0),
//      .D2 (1'b1),
//      .CE (1'b1),
//      .R  (1'b0),
//      .S  (1'b0)
//   );

assign  gmii_rx_clk_obuf = userclk2;
assign  gmii_rx_clk = gmii_rx_clk_obuf;
//    Finally the clock is driven onto the PAD from an Output Buffer.
//   OBUFT drive_gmii_gtx_clk (
//      .I  (gmii_rx_clk_obuf),
//      .O  (gmii_rx_clk),
//      .T  (gmii_isolate)
//   );
//      OBUF drive_gmii_gtx_clk (
//      .I  (gmii_rx_clk_obuf),
//      .O  (gmii_rx_clk)
//   );



   //---------------------------------------------------------------------------
   // GMII receiver data logic
   //---------------------------------------------------------------------------


   // Drive Rx GMII signals through IOB output flip-flops (inferred).
   always @ (posedge userclk2)
   begin
      gmii_rxd_obuf    <= gmii_rxd_int;
      gmii_rx_dv_obuf  <= gmii_rx_dv_int;
      gmii_rx_er_obuf  <= gmii_rx_er_int;
   end


   //  drive GMII Rx signals through output PADS.
//   OBUFT rx_data_valid (
//      .I  (gmii_rx_dv_obuf),
//      .O  (gmii_rx_dv),
//      .T  (gmii_isolate)
//   );

   OBUF rx_data_valid (
      .I  (gmii_rx_dv_obuf),
      .O  (gmii_rx_dv)
    
   );

//   OBUFT rx_data_error (
//      .I  (gmii_rx_er_obuf),
//      .O  (gmii_rx_er),
//      .T  (gmii_isolate)
//   );

   OBUF rx_data_error (
      .I  (gmii_rx_er_obuf),
      .O  (gmii_rx_er)

   );

   genvar k;
   generate for (k=0; k<8; k=k+1)
     begin : rx_data_bus

//     OBUFT rx_data_bits (
//        .I (gmii_rxd_obuf[k]),
//        .O (gmii_rxd[k]),
//        .T (gmii_isolate));
        
         OBUF rx_data_bits (
        .I (gmii_rxd_obuf[k]),
        .O (gmii_rxd[k]));

     end
   endgenerate




endmodule // gig_ethernet_pcs_pma_0_example_design
