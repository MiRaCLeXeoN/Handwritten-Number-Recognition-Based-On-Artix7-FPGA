/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MEM_WB                                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MEM_WB( AluResult,
               IR,
               JAL,
               JALR,
               LHU,
               LHUData,
               LUI,
               LUI_imm,
               MemData,
               MemToReg,
               PC,
               PCPlus4,
               Rd,
               RegWrite,
               URET,
               clk,
               en,
               halt,
               reset,
               _AluResult,
               _IR,
               _JAL,
               _JALR,
               _LHU,
               _LHUData,
               _LUI,
               _LUI_imm,
               _MemData,
               _MemToReg,
               _PC,
               _PCPlus4,
               _Rd,
               _RegWrite,
               _URET,
               _halt,
               FCAL,
               FLW,
               FLT,
               _FCAL,
               _FLW,
               _FLT);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input[31:0]  IR;
   input  JAL;
   input  JALR;
   input  LHU;
   input[31:0]  LHUData;
   input  LUI;
   input[31:0]  LUI_imm;
   input[31:0]  MemData;
   input  MemToReg;
   input[31:0]  PC;
   input[31:0]  PCPlus4;
   input[4:0]  Rd;
   input  RegWrite;
   input  URET;
   input  clk;
   input  en;
   input  halt;
   input  reset;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] _AluResult;
   output[31:0] _IR;
   output _JAL;
   output _JALR;
   output _LHU;
   output[31:0] _LHUData;
   output _LUI;
   output[31:0] _LUI_imm;
   output[31:0] _MemData;
   output _MemToReg;
   output[31:0] _PC;
   output[31:0] _PCPlus4;
   output[4:0] _Rd;
   output _RegWrite;
   output _URET;
   output _halt;



   /*****************************************************************************
   *****************************************************************************/
   input FCAL;
   input FLW;
   input FLT;

   output _FCAL;
   output _FLW;
   output _FLT;



   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[31:0] s_LOGISIM_BUS_50;
   wire[4:0] s_LOGISIM_BUS_51;
   wire[4:0] s_LOGISIM_BUS_52;
   wire[4:0] s_LOGISIM_BUS_53;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_55;
   wire[4:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_84;
   wire s_LOGISIM_NET_85;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_89;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_50[31:0]             = AluResult;
   assign s_LOGISIM_NET_14                   = halt;
   assign s_LOGISIM_BUS_16[31:0]             = MemData;
   assign s_LOGISIM_NET_9                    = reset;
   assign s_LOGISIM_BUS_51[4:0]              = Rd;
   assign s_LOGISIM_NET_13                   = JALR;
   assign s_LOGISIM_BUS_15[31:0]             = LUI_imm;
   assign s_LOGISIM_NET_1                    = clk;
   assign s_LOGISIM_NET_2                    = en;
   assign s_LOGISIM_NET_41                   = URET;
   assign s_LOGISIM_NET_43                   = LUI;
   assign s_LOGISIM_NET_68                   = LHU;
   assign s_LOGISIM_NET_42                   = MemToReg;
   assign s_LOGISIM_BUS_33[31:0]             = PC;
   assign s_LOGISIM_NET_59                   = RegWrite;
   assign s_LOGISIM_BUS_7[31:0]              = LHUData;
   assign s_LOGISIM_NET_12                   = JAL;
   assign s_LOGISIM_BUS_26[31:0]             = IR;
   assign s_LOGISIM_BUS_44[31:0]             = PCPlus4;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign _halt                              = s_LOGISIM_NET_38;
   assign _RegWrite                          = s_LOGISIM_NET_11;
   assign _URET                              = s_LOGISIM_NET_65;
   assign _LUI                               = s_LOGISIM_NET_63;
   assign _LUI_imm                           = s_LOGISIM_BUS_22[31:0];
   assign _PC                                = s_LOGISIM_BUS_36[31:0];
   assign _PCPlus4                           = s_LOGISIM_BUS_47[31:0];
   assign _AluResult                         = s_LOGISIM_BUS_55[31:0];
   assign _LHUData                           = s_LOGISIM_BUS_10[31:0];
   assign _Rd                                = s_LOGISIM_BUS_56[4:0];
   assign _MemData                           = s_LOGISIM_BUS_23[31:0];
   assign _JALR                              = s_LOGISIM_NET_37;
   assign _JAL                               = s_LOGISIM_NET_39;
   assign _IR                                = s_LOGISIM_BUS_28[31:0];
   assign _MemToReg                          = s_LOGISIM_NET_64;
   assign _LHU                               = s_LOGISIM_NET_24;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_29 = 1'd0;

   assign s_LOGISIM_NET_85 = 1'd0;

   assign s_LOGISIM_NET_3 = 1'd0;

   assign s_LOGISIM_NET_49 = 1'd0;

   assign s_LOGISIM_NET_99 = 1'd0;

   assign s_LOGISIM_NET_70 = 1'd0;

   assign s_LOGISIM_NET_83 = 1'd0;

   assign s_LOGISIM_NET_71 = 1'd0;

   assign s_LOGISIM_NET_69 = 1'd0;

   assign s_LOGISIM_NET_74 = 1'd0;

   assign s_LOGISIM_NET_86 = 1'd0;

   assign s_LOGISIM_NET_95 = 1'd0;

   assign s_LOGISIM_NET_76 = 1'd0;

   assign s_LOGISIM_NET_72 = 1'd0;

   assign s_LOGISIM_NET_79 = 1'd0;

   assign s_LOGISIM_NET_32 = 1'd0;

   assign s_LOGISIM_NET_78 = 1'd0;

   assign s_LOGISIM_NET_75 = 1'd0;

   assign s_LOGISIM_NET_6 = 1'd0;

   assign s_LOGISIM_NET_94 = 1'd0;

   assign s_LOGISIM_NET_88 = 1'd0;

   assign s_LOGISIM_NET_57 = 1'd0;

   assign s_LOGISIM_NET_100 = 1'd0;

   assign s_LOGISIM_NET_40 = 1'd0;

   assign s_LOGISIM_NET_73 = 1'd0;

   assign s_LOGISIM_NET_25 = 1'd0;

   assign s_LOGISIM_NET_58 = 1'd0;

   assign s_LOGISIM_NET_97 = 1'd0;

   assign s_LOGISIM_NET_77 = 1'd0;

   assign s_LOGISIM_NET_66 = 1'd0;

   assign s_LOGISIM_NET_67 = 1'd0;

   assign s_LOGISIM_NET_80 = 1'd0;

   assign s_LOGISIM_NET_87 = 1'd0;

   assign s_LOGISIM_NET_84 = 1'd0;

   assign s_LOGISIM_NET_81 = 1'd0;

   assign s_LOGISIM_NET_82 = 1'd0;

   assign s_LOGISIM_NET_48 = 1'd0;

   assign s_LOGISIM_NET_89 = 1'd0;

   assign s_LOGISIM_NET_90 = 1'd0;

   assign s_LOGISIM_NET_5 = 1'd0;

   assign s_LOGISIM_NET_91 = 1'd0;

   assign s_LOGISIM_NET_96 = 1'd0;

   assign s_LOGISIM_BUS_0[31:0] = 32'd0;

   assign s_LOGISIM_NET_92 = 1'd0;

   assign s_LOGISIM_NET_30 = 1'd0;

   assign s_LOGISIM_NET_4 = 1'd0;

   assign s_LOGISIM_NET_93 = 1'd0;

   assign s_LOGISIM_NET_98 = 1'd0;

   assign s_LOGISIM_NET_31 = 1'd0;

   assign s_LOGISIM_NET_101 = 1'd0;

   assign s_LOGISIM_BUS_52[4:0] = 5'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/

   wire D_FCAL; 
   Multiplexer_2  MUX_FCAL   (.Enable(1'b1),
                              .MuxIn_0(FCAL),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FCAL),
                              .Sel(s_LOGISIM_NET_9));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_WB_FCAL         (.Clock(s_LOGISIM_NET_1),
                                 .ClockEnable(s_LOGISIM_NET_2),
                                 .D(D_FCAL),
                                 .Q(_FCAL),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));          

   wire D_FLW; 
   Multiplexer_2  MUX_FLW    (.Enable(1'b1),
                              .MuxIn_0(FLW),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FLW),
                              .Sel(s_LOGISIM_NET_9));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_WB_FLW          (.Clock(s_LOGISIM_NET_1),
                                 .ClockEnable(s_LOGISIM_NET_2),
                                 .D(D_FLW),
                                 .Q(_FLW),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));       

   wire D_FLT; 
   Multiplexer_2  MUX_FLT    (.Enable(1'b1),
                              .MuxIn_0(FLT),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FLT),
                              .Sel(s_LOGISIM_NET_9));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_WB_FLT          (.Clock(s_LOGISIM_NET_1),
                                 .ClockEnable(s_LOGISIM_NET_2),
                                 .D(D_FLT),
                                 .Q(_FLT),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0)); 



   REGISTER_FLIP_FLOP_WB_AluResult #(.ActiveLevel(1),
                                     .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_54[31:0]),
                       .Q(s_LOGISIM_BUS_55[31:0]),
                       .Reset(s_LOGISIM_NET_82),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_66),
                       .pre(s_LOGISIM_NET_69));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_14),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_62),
                             .Sel(s_LOGISIM_NET_9));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_LUI #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_NET_17),
                       .Q(s_LOGISIM_NET_63),
                       .Reset(s_LOGISIM_NET_93),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_89),
                       .pre(s_LOGISIM_NET_91));

   REGISTER_FLIP_FLOP_WB_JAL #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_NET_60),
                       .Q(s_LOGISIM_NET_39),
                       .Reset(s_LOGISIM_NET_70),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_4),
                       .pre(s_LOGISIM_NET_98));

   REGISTER_FLIP_FLOP_WB_IR #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_27[31:0]),
                       .Q(s_LOGISIM_BUS_28[31:0]),
                       .Reset(s_LOGISIM_NET_90),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_40),
                       .pre(s_LOGISIM_NET_71));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_51[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_52[4:0]),
             .MuxOut(s_LOGISIM_BUS_53[4:0]),
             .Sel(s_LOGISIM_NET_9));

   Multiplexer_2      MUX_4 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_42),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_21),
                             .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_JALR #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_NET_61),
                       .Q(s_LOGISIM_NET_37),
                       .Reset(s_LOGISIM_NET_72),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_5),
                       .pre(s_LOGISIM_NET_101));

   Multiplexer_2      MUX_5 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_41),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_20),
                             .Sel(s_LOGISIM_NET_9));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_44[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_45[31:0]),
             .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_LHUData #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_8[31:0]),
                       .Q(s_LOGISIM_BUS_10[31:0]),
                       .Reset(s_LOGISIM_NET_77),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_25),
                       .pre(s_LOGISIM_NET_73));

   Multiplexer_2      MUX_7 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_68),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_46),
                             .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_PC #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_35[31:0]),
                       .Q(s_LOGISIM_BUS_36[31:0]),
                       .Reset(s_LOGISIM_NET_74),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_49),
                       .pre(s_LOGISIM_NET_75));

   REGISTER_FLIP_FLOP_WB_MemData #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_18[31:0]),
                       .Q(s_LOGISIM_BUS_23[31:0]),
                       .Reset(s_LOGISIM_NET_76),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_31),
                       .pre(s_LOGISIM_NET_81));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_50[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_54[31:0]),
             .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_LUI_imm #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_1),
                       .ClockEnable(s_LOGISIM_NET_2),
                       .D(s_LOGISIM_BUS_19[31:0]),
                       .Q(s_LOGISIM_BUS_22[31:0]),
                       .Reset(s_LOGISIM_NET_78),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_32),
                       .pre(s_LOGISIM_NET_79));

   REGISTER_FLIP_FLOP_WB_Rd #(.ActiveLevel(1),
                              .NrOfBits(5))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_BUS_53[4:0]),
                        .Q(s_LOGISIM_BUS_56[4:0]),
                        .Reset(s_LOGISIM_NET_80),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_67),
                        .pre(s_LOGISIM_NET_92));

   Multiplexer_2      MUX_9 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_13),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_61),
                             .Sel(s_LOGISIM_NET_9));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_33[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_35[31:0]),
              .Sel(s_LOGISIM_NET_9));

   Multiplexer_2      MUX_11 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_43),
                              .MuxIn_1(s_LOGISIM_NET_3),
                              .MuxOut(s_LOGISIM_NET_17),
                              .Sel(s_LOGISIM_NET_9));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_8[31:0]),
              .Sel(s_LOGISIM_NET_9));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_19[31:0]),
              .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_PCPlus4 #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_BUS_45[31:0]),
                        .Q(s_LOGISIM_BUS_47[31:0]),
                        .Reset(s_LOGISIM_NET_83),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_58),
                        .pre(s_LOGISIM_NET_84));

   REGISTER_FLIP_FLOP_WB_URET #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_NET_20),
                        .Q(s_LOGISIM_NET_65),
                        .Reset(s_LOGISIM_NET_85),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_29),
                        .pre(s_LOGISIM_NET_86));

   REGISTER_FLIP_FLOP_WB_LHU #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_NET_46),
                        .Q(s_LOGISIM_NET_24),
                        .Reset(s_LOGISIM_NET_87),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_57),
                        .pre(s_LOGISIM_NET_88));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_16[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_18[31:0]),
              .Sel(s_LOGISIM_NET_9));

   Multiplexer_2      MUX_15 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_59),
                              .MuxIn_1(s_LOGISIM_NET_3),
                              .MuxOut(s_LOGISIM_NET_34),
                              .Sel(s_LOGISIM_NET_9));

   REGISTER_FLIP_FLOP_WB_halt #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_NET_62),
                        .Q(s_LOGISIM_NET_38),
                        .Reset(s_LOGISIM_NET_94),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_6),
                        .pre(s_LOGISIM_NET_95));

   REGISTER_FLIP_FLOP_WB_MEmToReg #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_NET_21),
                        .Q(s_LOGISIM_NET_64),
                        .Reset(s_LOGISIM_NET_96),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_30),
                        .pre(s_LOGISIM_NET_97));

   REGISTER_FLIP_FLOP_WB_RegWrite #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_1),
                        .ClockEnable(s_LOGISIM_NET_2),
                        .D(s_LOGISIM_NET_34),
                        .Q(s_LOGISIM_NET_11),
                        .Reset(s_LOGISIM_NET_99),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_48),
                        .pre(s_LOGISIM_NET_100));

   Multiplexer_2      MUX_16 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_12),
                              .MuxIn_1(s_LOGISIM_NET_3),
                              .MuxOut(s_LOGISIM_NET_60),
                              .Sel(s_LOGISIM_NET_9));



endmodule
