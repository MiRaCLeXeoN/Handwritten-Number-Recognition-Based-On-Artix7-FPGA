/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module ALU( AluOP,
            X,
            Y,
            Equal,
            Less,
            NotLess,
            Result,
            Result_2);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  AluOP;
   input[31:0]  X;
   input[31:0]  Y;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Equal;
   output Less;
   output NotLess;
   output[31:0] Result;
   output[31:0] Result_2;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_32;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_30[31:0]             = X;
   assign s_LOGISIM_BUS_31[3:0]              = AluOP;
   assign s_LOGISIM_BUS_29[31:0]             = Y;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Result_2                           = s_LOGISIM_BUS_23[31:0];
   assign NotLess                            = s_LOGISIM_NET_18;
   assign Equal                              = s_LOGISIM_NET_28;
   assign Result                             = s_LOGISIM_BUS_24[31:0];
   assign Less                               = s_LOGISIM_NET_22;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[31:1] = 31'd0;

   assign s_LOGISIM_NET_3 = 1'd0;

   assign s_LOGISIM_BUS_21[31:1] = 31'd0;

   assign s_LOGISIM_BUS_1[31:0] = 32'd0;

   assign s_LOGISIM_NET_32 = 1'd0;

   assign s_LOGISIM_NET_11 = 1'd0;

   assign s_LOGISIM_BUS_2[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_11),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_30[31:0]),
                 .DataB(s_LOGISIM_BUS_29[31:0]),
                 .Result(s_LOGISIM_BUS_9[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(),
                    .A_GT_B(),
                    .A_LT_B(s_LOGISIM_BUS_21[0]),
                    .DataA(s_LOGISIM_BUS_30[31:0]),
                    .DataB(s_LOGISIM_BUS_29[31:0]));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_1 (.Input_1(s_LOGISIM_BUS_30[31:0]),
              .Input_2(s_LOGISIM_BUS_29[31:0]),
              .Result(s_LOGISIM_BUS_13[31:0]));

   Shifter_32_bit #(.ShifterMode(2))
      Shifter_1 (.DataA(s_LOGISIM_BUS_30[31:0]),
                 .Result(s_LOGISIM_BUS_0[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_29[4:0]));

   Subtractor #(.ExtendedBits(33),
                .NrOfBits(32))
      SUBTRACTOR2C_1 (.BorrowIn(s_LOGISIM_NET_32),
                      .BorrowOut(),
                      .DataA(s_LOGISIM_BUS_30[31:0]),
                      .DataB(s_LOGISIM_BUS_29[31:0]),
                      .Result(s_LOGISIM_BUS_10[31:0]));

   NOR_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_30[31:0]),
              .Input_2(s_LOGISIM_BUS_29[31:0]),
              .Result(s_LOGISIM_BUS_17[31:0]));

   Shifter_32_bit #(.ShifterMode(3))
      Shifter_2 (.DataA(s_LOGISIM_BUS_30[31:0]),
                 .Result(s_LOGISIM_BUS_12[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_29[4:0]));

   Multiplexer_16      MUX_1 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_3),
                              .MuxIn_1(s_LOGISIM_NET_3),
                              .MuxIn_10(s_LOGISIM_NET_3),
                              .MuxIn_11(s_LOGISIM_BUS_7[0]),
                              .MuxIn_12(s_LOGISIM_BUS_21[0]),
                              .MuxIn_13(s_LOGISIM_NET_3),
                              .MuxIn_14(s_LOGISIM_NET_3),
                              .MuxIn_15(s_LOGISIM_NET_3),
                              .MuxIn_2(s_LOGISIM_NET_3),
                              .MuxIn_3(s_LOGISIM_NET_3),
                              .MuxIn_4(s_LOGISIM_NET_3),
                              .MuxIn_5(s_LOGISIM_NET_3),
                              .MuxIn_6(s_LOGISIM_NET_3),
                              .MuxIn_7(s_LOGISIM_NET_3),
                              .MuxIn_8(s_LOGISIM_NET_3),
                              .MuxIn_9(s_LOGISIM_NET_3),
                              .MuxOut(s_LOGISIM_NET_22),
                              .Sel(s_LOGISIM_BUS_31[3:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_28),
                    .A_GT_B(),
                    .A_LT_B(s_LOGISIM_BUS_7[0]),
                    .DataA(s_LOGISIM_BUS_30[31:0]),
                    .DataB(s_LOGISIM_BUS_29[31:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_3 (.DataA(s_LOGISIM_BUS_30[31:0]),
                 .Result(s_LOGISIM_BUS_26[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_29[4:0]));

   XOR_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_3 (.Input_1(s_LOGISIM_BUS_30[31:0]),
              .Input_2(s_LOGISIM_BUS_29[31:0]),
              .Result(s_LOGISIM_BUS_15[31:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_30[31:0]),
              .Input_2(s_LOGISIM_BUS_29[31:0]),
              .Result(s_LOGISIM_BUS_6[31:0]));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_22),
                         .Result(s_LOGISIM_NET_18));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_1[31:0]),
             .MuxOut(s_LOGISIM_BUS_23[31:0]),
             .Sel(s_LOGISIM_BUS_31[3:0]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_21[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_2[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_19[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_16[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_13[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_15[31:0]),
             .MuxOut(s_LOGISIM_BUS_24[31:0]),
             .Sel(s_LOGISIM_BUS_31[3:0]));



endmodule
