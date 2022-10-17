/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimToplevelShell( FPGA_INPUT_PIN_0,
                             FPGA_INPUT_PIN_1,
                             FPGA_INPUT_PIN_2,
                             FPGA_INPUT_PIN_3,
                             FPGA_INPUT_PIN_4,
                             FPGA_INPUT_PIN_5,
                             FPGA_OUTPUT_PIN_0,
                             FPGA_OUTPUT_PIN_08,
                             FPGA_OUTPUT_PIN_1,
                             FPGA_OUTPUT_PIN_18);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_INPUT_PIN_0;
   input  FPGA_INPUT_PIN_1;
   input  FPGA_INPUT_PIN_2;
   input  FPGA_INPUT_PIN_3;
   input  FPGA_INPUT_PIN_4;
   input  FPGA_INPUT_PIN_5;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] FPGA_OUTPUT_PIN_0;
   output[7:0] FPGA_OUTPUT_PIN_08;
   output[7:0] FPGA_OUTPUT_PIN_1;
   output[7:0] FPGA_OUTPUT_PIN_18;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_;
   wire s_CLK;
   wire s_Go;
   wire s_IR1;
   wire s_IR2;
   wire s_IR3;
   wire[7:0] s_NA;
   wire s_RST;
   wire[7:0] s_SEG;

   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign s_IR3 = FPGA_INPUT_PIN_0;
   assign s_IR1 = FPGA_INPUT_PIN_1;
   assign s_IR2 = FPGA_INPUT_PIN_2;
   assign s_Go = FPGA_INPUT_PIN_3;
   assign s_CLK = FPGA_INPUT_PIN_4;
   assign FPGA_OUTPUT_PIN_0 = s_SEG;
   assign FPGA_OUTPUT_PIN_1 = s_NA;
   assign s_RST = FPGA_INPUT_PIN_5;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/

   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   CPU      CPU_0 (.(s_),
                   .CLK(s_CLK),
                   .Go(s_Go),
                   .IR1(s_IR1),
                   .IR2(s_IR2),
                   .IR3(s_IR3),
                   .NA(s_NA),
                   .RST(s_RST),
                   .SEG(s_SEG));


endmodule
