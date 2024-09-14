`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/22 09:58:14
// Design Name: 
// Module Name: fifio_gen
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


module fifio_gen(
    input wire  rst,
    input wire  wr_clk,
    input wire  rd_clk,
    input wire[7:0]  din,
    input wire  wr_en,
    input wire  rd_en,
    output wire[7:0]dout,
    output wire [9:0]rd_data_count,
    output wire valid
    
    );
    wire    prog_full;
    wire    prog_empty;
    wire    empty;
    wire    full;
    
    
    
    
fifo_generator_0 fifo (
  .rst(rst),                      // input wire rst
  .wr_clk(wr_clk),                // input wire wr_clk
  .rd_clk(rd_clk),                // input wire rd_clk
  .din(din),                      // input wire [7 : 0] din
  .wr_en(wr_en),                  // input wire wr_en
  .rd_en(rd_en),                  // input wire rd_en
  .dout(dout),                    // output wire [7 : 0] dout
  .full(full),                    // output wire full
  .empty(empty),                  // output wire empty
  .valid(valid),                  // output wire valid
  .rd_data_count(rd_data_count),  // output wire [9 : 0] rd_data_count
  .prog_full(prog_full),          // output wire prog_full
  .prog_empty(prog_empty)        // output wire prog_empty
);
endmodule
