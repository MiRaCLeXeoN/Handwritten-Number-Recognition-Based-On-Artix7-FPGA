/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : BitComparator                                                **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module BitComparator( DataA,
                      DataB,
                      A_EQ_B,
                      A_GT_B,
                      A_LT_B);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter TwosComplement = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  DataA;
   input  DataB;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output A_EQ_B;
   output A_GT_B;
   output A_LT_B;
   assign A_EQ_B = (DataA == DataB);
   assign A_LT_B = (DataA < DataB);
   assign A_GT_B = (DataA > DataB);

endmodule
