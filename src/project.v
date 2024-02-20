`default_nettype none


module tt_um_TT06_SAR_wulffern (
                                input wire        VGND,
                                input wire        VPWR,
                                input wire [7:0]  ui_in,
                                output wire [7:0] uo_out,
                                input wire [7:0]  uio_in,
                                output wire [7:0] uio_out,
                                output wire [7:0] uio_oe,
`ifdef ANA_TYPE_REAL
                                input real ua_0,
                                input real ua_1,
`else
                                inout wire [7:0]  ua, // analog pins
`endif
                                input wire        ena,
                                input wire        clk,
                                input wire        rst_n
                                );

   parameter                                      OFF = 0,
                                                  SAMPLE = 1,
                                                  CONVERT = 2,
                                                  DONE=3;
   logic [1:0]                                    state;
   logic [1:0]                                    next_state;
   logic [7:0]                                    dout;


   always_comb begin
      case (state)
        OFF: next_state = SAMPLE;
        SAMPLE: next_state = CONVERT;
        CONVERT: next_state = SAMPLE;
        default: next_state = OFF;
      endcase // case (state)
   end

`ifdef ANA_TYPE_REAL
   real tmp = 0;
`else
   logic          tmp;

`endif

   assign uo_out = dout;




   always_ff @(posedge clk) begin

      if(~ui_in[1]) begin
        state <= OFF;
         tmp = 0;
         end

      else begin

`ifdef ANA_TYPE_REAL
         if(SAMPLE)
           tmp = ua_1 - ua_0;
         else if(CONVERT) begin
            for(int i=7;i>=0;i--) begin
               if(tmp >= 0) begin
                  tmp = tmp*2 - 1;
                  if(i==7)
                    uo_out[i] <= 0;
                  else
                    uo_out[i] <= 1;
               end
               else begin
                  tmp = tmp*2 + 1;
                  if(i==7)
                    dout[i] = 1;
                  else
                    dout[i] = 0;
               end
            end
         end
`else
         if(CONVERT) begin
            if(tmp == 0)
              dout[7] = 1;
            else
              dout[7] = 0;
        end
`endif
         state = next_state;
      end

   end

endmodule
