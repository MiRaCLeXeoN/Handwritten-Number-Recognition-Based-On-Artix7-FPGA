/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RedirectTreatment                                            **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RedirectTreatment( BrachTaken,
                          EX_MemRead,
                          EX_Rd,
                          EX_RegWrite,
                          MEM_Rd,
                          MEM_RegWrite,
                          rs1,
                          rs1_used,
                          rs2,
                          rs2_used,
                          Flush,
                          Rs1Forward,
                          Rs2Forward,
                          Stall,
                          ID_frs1,
                          ID_frs2,
                          EX_frd,
                          MEM_frd,
                          CSRRSI,
                          CSRRCI);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  BrachTaken;
   input  EX_MemRead;
   input[4:0]  EX_Rd;
   input  EX_RegWrite;
   input[4:0]  MEM_Rd;
   input  MEM_RegWrite;
   input[4:0]  rs1;
   input  rs1_used;
   input[4:0]  rs2;
   input  rs2_used;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output Flush;
   output[1:0] Rs1Forward;
   output[1:0] Rs2Forward;
   output Stall;


   input ID_frs1;
   input ID_frs2;
   input EX_frd;
   input MEM_frd;
   input CSRRSI;
   input CSRRCI;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[4:0] s_LOGISIM_BUS_13;
   wire[4:0] s_LOGISIM_BUS_14;
   wire[4:0] s_LOGISIM_BUS_19;
   wire[1:0] s_LOGISIM_BUS_20;
   wire[1:0] s_LOGISIM_BUS_22;
   wire[4:0] s_LOGISIM_BUS_25;
   wire[4:0] s_LOGISIM_BUS_26;
   wire[4:0] s_LOGISIM_BUS_27;
   wire[4:0] s_LOGISIM_BUS_28;
   wire[4:0] s_LOGISIM_BUS_30;
   wire[4:0] s_LOGISIM_BUS_41;
   wire[4:0] s_LOGISIM_BUS_42;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_32                   = EX_MemRead;
   assign s_LOGISIM_NET_33                   = BrachTaken;
   assign s_LOGISIM_BUS_26[4:0]              = EX_Rd;
   assign s_LOGISIM_NET_21                   = rs1_used|CSRRSI|CSRRCI;
   assign s_LOGISIM_BUS_30[4:0]              = rs1;
   assign s_LOGISIM_NET_35                   = MEM_RegWrite;
   assign s_LOGISIM_BUS_14[4:0]              = rs2;
   assign s_LOGISIM_NET_31                   = rs2_used;
   assign s_LOGISIM_BUS_41[4:0]              = MEM_Rd;
   assign s_LOGISIM_NET_34                   = EX_RegWrite;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Flush                              = s_LOGISIM_NET_40;
   assign Stall                              = s_LOGISIM_NET_36;
   assign Rs1Forward                         = s_LOGISIM_BUS_22[1:0];
   assign Rs2Forward                         = s_LOGISIM_BUS_20[1:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_47 = 1'd1;

   assign s_LOGISIM_NET_45 = 1'd0;

   assign s_LOGISIM_NET_48 = 1'd0;

   assign s_LOGISIM_NET_46 = 1'd1;

   assign s_LOGISIM_NET_44 = 1'd1;

   assign s_LOGISIM_BUS_27[4:0] = 5'd0;

   assign s_LOGISIM_NET_49 = 1'd1;

   assign s_LOGISIM_BUS_42[4:0] = 5'd0;

   assign s_LOGISIM_BUS_19[4:0] = 5'd0;

   assign s_LOGISIM_BUS_13[4:0] = 5'd0;

   assign s_LOGISIM_BUS_28[4:0] = 5'd0;

   assign s_LOGISIM_BUS_25[4:0] = 5'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_15),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_30[4:0]),
                    .DataB(s_LOGISIM_BUS_26[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_3),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_30[4:0]),
                    .DataB(s_LOGISIM_BUS_26[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_24),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_19[4:0]),
                    .DataB(s_LOGISIM_BUS_14[4:0]));

   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_24),
                         .Result(s_LOGISIM_NET_2));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_31),
              .Input_2(s_LOGISIM_NET_8),
              .Input_3(s_LOGISIM_NET_4),
              .Input_4(s_LOGISIM_NET_34),
              .Result(s_LOGISIM_NET_29));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_NET_18),
                         .Result(s_LOGISIM_NET_0));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_31),
              .Input_2(s_LOGISIM_NET_2),
              .Input_3(s_LOGISIM_NET_6),
              .Input_4(s_LOGISIM_NET_35),
              .Result(s_LOGISIM_NET_16));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_37),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_25[4:0]),
                    .DataB(s_LOGISIM_BUS_14[4:0]));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_12),
                         .Result(s_LOGISIM_NET_17));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_21),
              .Input_2(s_LOGISIM_NET_10),
              .Input_3(s_LOGISIM_NET_3),
              .Input_4(s_LOGISIM_NET_32),
              .Result(s_LOGISIM_NET_5));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_38),
                         .Result(s_LOGISIM_NET_9));

   OR_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_5),
              .Input_2(s_LOGISIM_NET_23),
              .Result(s_LOGISIM_NET_36));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_21),
              .Input_2(s_LOGISIM_NET_17),
              .Input_3(s_LOGISIM_NET_15),
              .Input_4(s_LOGISIM_NET_34),
              .Result(s_LOGISIM_NET_43));
   
   wire rs1AndMemRd;
   assign rs1AndMemRd = (ID_frs1 == MEM_frd) ? 1'b1 : 1'b0;
   wire rs1Priority1;
   assign rs1Priority1 = rs1AndMemRd & s_LOGISIM_NET_11;
   
   wire rs1AndExRd;
   assign rs1AndExRd = (ID_frs1 == EX_frd) ? 1'b1 : 1'b0;
   wire rs1Priority2;
   assign rs1Priority2 = rs1AndExRd & s_LOGISIM_NET_43;
   
   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(s_LOGISIM_BUS_22[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_46),
                .input_vector({s_LOGISIM_NET_45,
                               //s_LOGISIM_NET_43,
                               rs1Priority2,
                               //s_LOGISIM_NET_11,
                               rs1Priority1,
                               s_LOGISIM_NET_44}));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_38),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_27[4:0]),
                    .DataB(s_LOGISIM_BUS_30[4:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_33),
               .Input_2(s_LOGISIM_NET_36),
               .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_NET_37),
                          .Result(s_LOGISIM_NET_8));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_4),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_14[4:0]),
                    .DataB(s_LOGISIM_BUS_26[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_18),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_13[4:0]),
                    .DataB(s_LOGISIM_BUS_14[4:0]));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_21),
               .Input_2(s_LOGISIM_NET_9),
               .Input_3(s_LOGISIM_NET_1),
               .Input_4(s_LOGISIM_NET_35),
               .Result(s_LOGISIM_NET_11));

   wire rs2AndMemRd;
   assign rs2AndMemRd = (ID_frs2 == MEM_frd) ? 1'b1 : 1'b0;
   wire rs2Priority1;
   assign rs2Priority1 = rs2AndMemRd & s_LOGISIM_NET_16;

   wire rs2AndExRd;
   assign rs2AndExRd = (ID_frs2 == EX_frd) ? 1'b1 : 1'b0;
   wire rs2Priority2;
   assign rs2Priority2 = rs2AndExRd & s_LOGISIM_NET_29;

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_2 (.Address(s_LOGISIM_BUS_20[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_49),
                .input_vector({s_LOGISIM_NET_48,
                               //s_LOGISIM_NET_29,
                               rs2Priority2,
                               //s_LOGISIM_NET_16,
                               rs2Priority1,
                               s_LOGISIM_NET_47}));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_6),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_14[4:0]),
                    .DataB(s_LOGISIM_BUS_41[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_7),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_14[4:0]),
                    .DataB(s_LOGISIM_BUS_26[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_10 (.A_EQ_B(s_LOGISIM_NET_39),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_28[4:0]),
                     .DataB(s_LOGISIM_BUS_30[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_11 (.A_EQ_B(s_LOGISIM_NET_12),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_42[4:0]),
                     .DataB(s_LOGISIM_BUS_30[4:0]));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_10));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_12 (.A_EQ_B(s_LOGISIM_NET_1),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_30[4:0]),
                     .DataB(s_LOGISIM_BUS_41[4:0]));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_31),
               .Input_2(s_LOGISIM_NET_0),
               .Input_3(s_LOGISIM_NET_7),
               .Input_4(s_LOGISIM_NET_32),
               .Result(s_LOGISIM_NET_23));



endmodule
