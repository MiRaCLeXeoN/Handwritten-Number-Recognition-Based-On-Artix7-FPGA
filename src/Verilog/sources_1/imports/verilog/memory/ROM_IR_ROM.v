/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROM_IR_ROM                                                   **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module ROM_IR_ROM( Address,
                   Data);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  Address;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Data;
   reg[31:0] Data;

   always @ (Address)
   begin
      case(Address)
         0 : Data = 125831059;
         1 : Data = 41945107;
         2 : Data = 4251763;
         3 : Data = 1043;
         4 : Data = 2323;
         5 : Data = 41946643;
         6 : Data = 1644170899;
         7 : Data = 1645121171;
         8 : Data = 1171;
         9 : Data = 9729363;
         10 : Data = 10028467;
         11 : Data = 1887798675;
         12 : Data = 1887806855;
         13 : Data = 126133767;
         14 : Data = 281409491;
         15 : Data = 16086355;
         16 : Data = 4490387;
         17 : Data = -2833693;
         18 : Data = 32'h00042707;
         19 : Data = 15037779;
         20 : Data = 32'h02a42427;
         21 : Data = 4457491;
         22 : Data = 1644759315;
         23 : Data = 1644759315;
         24 : Data = -37469981;
         25 : Data = 1555;
         26 : Data = 4195347;
         27 : Data = 42214791;
         28 : Data = 42345991;
         29 : Data = -1598679597;
         30 : Data = 361571;
         31 : Data = 263699;
         32 : Data = 4457491;
         33 : Data = -3914525;
         34 : Data = 12584243;
         35 : Data = 35653779;
         36 : Data = 115;
         37 : Data = 4255859;
         38 : Data = -157290385;
         default : Data = 0;
      endcase
   end

endmodule