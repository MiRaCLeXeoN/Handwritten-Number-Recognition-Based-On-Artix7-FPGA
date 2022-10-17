/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : INT                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module INT( Reset,
            Synchronousclearsignal,
            clk,
            interruptsource,
            Terminalwaitingforindication,
            interruptmaskbit);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Reset;
   input  Synchronousclearsignal;
   input  clk;
   input  interruptsource;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Terminalwaitingforindication;
   output interruptmaskbit;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_4                    = Reset;
   assign s_LOGISIM_NET_10                   = Synchronousclearsignal;
   assign s_LOGISIM_NET_2                    = interruptsource;
   assign s_LOGISIM_NET_3                    = clk;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign interruptmaskbit                   = s_LOGISIM_NET_6;
   assign Terminalwaitingforindication       = s_LOGISIM_NET_9;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_12 = 1'd1;

   assign s_LOGISIM_NET_5 = 1'd0;

   assign s_LOGISIM_NET_1 = 1'd0;

   assign s_LOGISIM_NET_13 = 1'd1;

   assign s_LOGISIM_NET_14 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_9));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_11));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_4),
              .Result(s_LOGISIM_NET_7));

   D_Flip_Flop #(.ActiveLevel(1))
      FF_LATCH_1 (.Clock(s_LOGISIM_NET_3),   // ok
                  .D(s_LOGISIM_NET_12),     // ok 
                  .Q(s_LOGISIM_NET_0),     // ok
                  .Q_bar(),
                  .Clr(s_LOGISIM_NET_7));  //ok

   AND_GATE #(.BubblesMask(2))
      GATE_4 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_8));

   D_Flip_Flop #(.ActiveLevel(1))       // _IR1
      FF_LATCH_2 (.Clock(s_LOGISIM_NET_3),   // ok
                  .D(s_LOGISIM_NET_8),     // ok
                  .Q(s_LOGISIM_NET_6),    // ok
                  .Q_bar(),
                  .Clr(s_LOGISIM_NET_4));   // ok



endmodule
