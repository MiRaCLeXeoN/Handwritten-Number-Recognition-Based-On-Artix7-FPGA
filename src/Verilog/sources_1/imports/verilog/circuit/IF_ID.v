/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : IF_ID                                                        **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module IF_ID( IR,
              PC,
              PCPlus4,
              PredictJump,
              clk,
              clr,
              en,
              reset,
              _IR,
              _PC,
              _PCPlus4,
              _PredictJump);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  IR;
   input[31:0]  PC;
   input[31:0]  PCPlus4;
   input  PredictJump;
   input  clk;
   input  clr;
   input  en;
   input  reset;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] _IR;
   output[31:0] _PC;
   output[31:0] _PCPlus4;
   output _PredictJump;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_9                    = reset;
   assign s_LOGISIM_NET_6                    = clr;
   assign s_LOGISIM_BUS_1[31:0]              = PCPlus4;
   assign s_LOGISIM_NET_16                   = en;
   assign s_LOGISIM_BUS_0[31:0]              = IR;
   assign s_LOGISIM_NET_2                    = clk;
   assign s_LOGISIM_NET_13                   = PredictJump;
   assign s_LOGISIM_BUS_12[31:0]             = PC;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign _PredictJump                       = s_LOGISIM_NET_15;
   assign _PCPlus4                           = s_LOGISIM_BUS_8[31:0];
   assign _PC                                = s_LOGISIM_BUS_14[31:0];
   assign _IR                                = s_LOGISIM_BUS_7[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_24 = 1'd0;

   assign s_LOGISIM_NET_20 = 1'd0;

   assign s_LOGISIM_NET_21 = 1'd0;

   assign s_LOGISIM_NET_22 = 1'd0;

   assign s_LOGISIM_NET_28 = 1'd0;

   assign s_LOGISIM_NET_25 = 1'd0;

   assign s_LOGISIM_NET_29 = 1'd0;

   assign s_LOGISIM_NET_26 = 1'd0;

   assign s_LOGISIM_NET_23 = 1'd0;

   assign s_LOGISIM_NET_19 = 1'd0;

   assign s_LOGISIM_NET_27 = 1'd0;

   assign s_LOGISIM_NET_30 = 1'd0;

   assign s_LOGISIM_NET_31 = 1'd0;

   assign s_LOGISIM_BUS_5[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP_ID_PredictJump #(.ActiveLevel(1),
                                       .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),         // ok
                       .ClockEnable(s_LOGISIM_NET_4),   // ok
                       .D(s_LOGISIM_NET_18),            // ok
                       .Q(s_LOGISIM_NET_15),            // ok
                       .Reset(s_LOGISIM_NET_31),        // ok
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_20),           // ok
                       .pre(s_LOGISIM_NET_27));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_13),
                             .MuxIn_1(s_LOGISIM_NET_19),
                             .MuxOut(s_LOGISIM_NET_18),
                             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP_ID_PC #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_17[31:0]),
                       .Q(s_LOGISIM_BUS_14[31:0]),
                       .Reset(s_LOGISIM_NET_21),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_22),
                       .pre(s_LOGISIM_NET_23));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_10[31:0]),
             .Sel(s_LOGISIM_NET_3));

   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_3));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_16),
              .Result(s_LOGISIM_NET_4));

   REGISTER_FLIP_FLOP_ID_IR #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_11[31:0]),
                       .Q(s_LOGISIM_BUS_7[31:0]),
                       .Reset(s_LOGISIM_NET_24),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_25),
                       .pre(s_LOGISIM_NET_26));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_17[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP_ID_PCPlus4 #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_10[31:0]),
                       .Q(s_LOGISIM_BUS_8[31:0]),
                       .Reset(s_LOGISIM_NET_28),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_29),
                       .pre(s_LOGISIM_NET_30));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_11[31:0]),
             .Sel(s_LOGISIM_NET_3));



endmodule
