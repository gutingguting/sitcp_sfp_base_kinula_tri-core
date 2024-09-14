`timescale 1ns / 1ps

module TOP_file_tb;
    // Testbench signal declarations
    reg CLK_200_p;
    reg CLK_200_n;
    reg gtrefclk_p;
    reg gtrefclk_n;
    reg rxp;
    reg rxn;

    // Outputs from DUT (Design Under Test)
    wire txp;
    wire txn;
    wire firefly_reset_3_tx;
    wire firefly_reset_3_rx;

    // Instantiate the Design Under Test (DUT)
    TOP_file uut (
        .CLK_200_p(CLK_200_p),
        .CLK_200_n(CLK_200_n),
        .gtrefclk_p(gtrefclk_p),
        .gtrefclk_n(gtrefclk_n),
        .txp(txp),
        .txn(txn),
        .rxp(rxp),
        .rxn(rxn),
        .firefly_reset_3_tx(firefly_reset_3_tx),
        .firefly_reset_3_rx(firefly_reset_3_rx)
    );

    // Generate differential clock signals
    initial begin
        CLK_200_p = 0;
        CLK_200_n = 1;
        gtrefclk_p = 0;
        gtrefclk_n = 1;
        rxp = 0;
        rxn = 1;
    end

    // Generate 200 MHz clock signal
    always begin
        #2.5 CLK_200_p = ~CLK_200_p; // Period = 5ns (200 MHz)
        CLK_200_n = ~CLK_200_p;
    end

    // Generate gtrefclk signal (for example 156.25 MHz)
    always begin
        #4 gtrefclk_p = ~gtrefclk_p; // Period = 6.4ns (156.25 MHz)
        gtrefclk_n = ~gtrefclk_p;
    end

    // Apply test stimulus
    initial begin
        // Monitor outputs
        $monitor("Time: %0t | txp: %b | txn: %b | firefly_reset_3_tx: %b | firefly_reset_3_rx: %b", 
                  $time, txp, txn, firefly_reset_3_tx, firefly_reset_3_rx);

        // Initialize inputs
        rxp = 0;
        rxn = 1;

        // Wait 100 ns for global reset to finish
        #100;

        // Toggle some signals to observe changes in behavior
        #100 rxp = 1; rxn = 0;
        #100 rxp = 0; rxn = 1;

        // Add more test scenarios if necessary
        #500 $finish;  // End simulation after 500ns
    end
endmodule
