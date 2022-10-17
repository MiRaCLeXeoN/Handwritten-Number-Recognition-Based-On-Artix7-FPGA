/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_8                                                **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Multiplexer_8( Enable,
                      MuxIn_0,
                      MuxIn_1,
                      MuxIn_2,
                      MuxIn_3,
                      MuxIn_4,
                      MuxIn_5,
                      MuxIn_6,
                      MuxIn_7,
                      Sel,
                      MuxOut);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input  MuxIn_0;
   input  MuxIn_1;
   input  MuxIn_2;
   input  MuxIn_3;
   input  MuxIn_4;
   input  MuxIn_5;
   input  MuxIn_6;
   input  MuxIn_7;
   input[2:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output MuxOut;

   /***************************************************************************
    ** Here the internal registers are defined                               **
    ***************************************************************************/
   reg s_selected_vector;

   assign MuxOut = s_selected_vector;

   always @(*)
   begin
      if (~Enable) s_selected_vector <= 0;
      else case (Sel)
         3'b000:
            s_selected_vector <= MuxIn_0;
         3'b001:
            s_selected_vector <= MuxIn_1;
         3'b010:
            s_selected_vector <= MuxIn_2;
         3'b011:
            s_selected_vector <= MuxIn_3;
         3'b100:
            s_selected_vector <= MuxIn_4;
         3'b101:
            s_selected_vector <= MuxIn_5;
         3'b110:
            s_selected_vector <= MuxIn_6;
         default:
            s_selected_vector <= MuxIn_7;
      endcase
   end

endmodule
