/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : FSM                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module FSM( Jump,
            Now_State,
            Next_State);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Jump;
   input[1:0]  Now_State;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[1:0] Next_State;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_14;
   wire[1:0] s_LOGISIM_BUS_15;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_5                    = Jump;
   assign s_LOGISIM_BUS_15[1:0]              = Now_State;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Next_State                         = s_LOGISIM_BUS_14[1:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_15[0]),
                         .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_BUS_15[1]),
                         .Result(s_LOGISIM_NET_7));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_15[0]),
                         .Result(s_LOGISIM_NET_12));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_7),
              .Input_2(s_LOGISIM_NET_12),
              .Input_3(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_9));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_BUS_14[1]));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_5),
                         .Result(s_LOGISIM_NET_2));

   OR_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_4),
              .Result(s_LOGISIM_BUS_14[0]));

   NOT_GATE      GATE_8 (.Input_1(s_LOGISIM_BUS_15[0]),
                         .Result(s_LOGISIM_NET_1));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_BUS_15[1]),
              .Input_2(s_LOGISIM_NET_1),
              .Input_3(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_BUS_15[1]),
               .Input_2(s_LOGISIM_NET_13),
               .Result(s_LOGISIM_NET_3));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_BUS_15[0]),
               .Input_2(s_LOGISIM_NET_5),
               .Result(s_LOGISIM_NET_10));



endmodule
