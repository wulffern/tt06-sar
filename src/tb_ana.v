
`timescale 1 ns / 1 ps

module test;

  logic rst_n = 0;

  logic clk = 0;
  always #5 clk = !clk;

   logic VGND;
   logic VPWR;

    wire [7:0] ui_in;
   wire [7:0] uo_out;
   wire [7:0] uio_in;
   wire [7:0] uio_out;
   wire [7:0] uio_oe;
   real        ua_0;
   real        ua_1;
   wire       ena;



   tt_um_TT06_SAR_wulffern dut (
                                .VGND(VGND),
                                .VPWR(VPWR),
                                .ui_in(ui_in),
                                .uo_out(uo_out),
                                .uio_in(uio_in),
                                .uio_out(uio_out),
                                .uio_oe(uio_oe),
                                .ua_0(ua_0),
                                .ua_1(ua_1),
                                .ena(ena),
                                .clk(clk),
                                .rst_n(rst_n)
                                );

  initial
    begin
       $dumpfile("test.vcd");
       $dumpvars(0,test);

       #10 rst_n = 0;
       #10 rst_n = 1;

       #2600 $stop;

    end
endmodule // test
