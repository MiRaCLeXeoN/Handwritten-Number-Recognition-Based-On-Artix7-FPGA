/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MAX                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MAX( X,
            XNum,
            Y,
            YNum,
            MAX,
            MAX_Num);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[15:0]  X;
   input[2:0]  XNum;
   input[15:0]  Y;
   input[2:0]  YNum;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[15:0] MAX;
   output[2:0] MAX_Num;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[15:0] s_LOGISIM_BUS_2;
   wire[15:0] s_LOGISIM_BUS_4;
   wire[2:0] s_LOGISIM_BUS_5;
   wire[2:0] s_LOGISIM_BUS_6;
   wire[2:0] s_LOGISIM_BUS_7;
   wire[15:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_3;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_6[2:0]               = YNum;
   assign s_LOGISIM_BUS_4[15:0]              = X;
   assign s_LOGISIM_BUS_5[2:0]               = XNum;
   assign s_LOGISIM_BUS_2[15:0]              = Y;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MAX                                = s_LOGISIM_BUS_8[15:0];
   assign MAX_Num                            = s_LOGISIM_BUS_7[2:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_3),
              .Input_2(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(3))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[2:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[2:0]),
             .MuxOut(s_LOGISIM_BUS_7[2:0]),
             .Sel(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_4[15:0]),
             .MuxOut(s_LOGISIM_BUS_8[15:0]),
             .Sel(s_LOGISIM_NET_1));

   Comparator #(.NrOfBits(16),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_0),
                    .A_GT_B(s_LOGISIM_NET_3),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_4[15:0]),
                    .DataB(s_LOGISIM_BUS_2[15:0]));



endmodule
