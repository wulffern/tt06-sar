`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_example (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

endmodule