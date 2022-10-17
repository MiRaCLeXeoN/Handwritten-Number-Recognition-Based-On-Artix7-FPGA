/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : EX_MEM                                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module EX_MEM( AluResult,
               IR,
               JAL,
               JALR,
               LHU,
               LUI,
               LUI_imm,
               MemToReg,
               MemWrite,
               PC,
               PCPlus4,
               R2,
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
               _LUI,
               _LUI_imm,
               _MemToReg,
               _MemWrite,
               _PC,
               _PCPlus4,
               _R2,
               _Rd,
               _RegWrite,
               _URET,
               _halt,
               CSRRSI,
               CSRRCI,
               FCAL,
               FLW,
               FLT,
               frd,
               a5a6,
               _CSRRSI,
               _CSRRCI,
               _FCAL,
               _FLW,
               _FLT,
               _frd,
               _a5a6);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input[31:0]  IR;
   input  JAL;
   input  JALR;
   input  LHU;
   input  LUI;
   input[31:0]  LUI_imm;
   input  MemToReg;
   input  MemWrite;
   input[31:0]  PC;
   input[31:0]  PCPlus4;
   input[31:0]  R2;
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
   output _LUI;
   output[31:0] _LUI_imm;
   output _MemToReg;
   output _MemWrite;
   output[31:0] _PC;
   output[31:0] _PCPlus4;
   output[31:0] _R2;
   output[4:0] _Rd;
   output _RegWrite;
   output _URET;
   output _halt;



  /*****************************************************************************
   *****************************************************************************/
   input CSRRSI;
   input CSRRCI;
   input FCAL;
   input FLW;
   input FLT;
   input frd;
   input[31:0] a5a6;
   output _CSRRSI;
   output _CSRRCI;
   output _FCAL;
   output _FLW;
   output _FLT;
   output _frd;
   output[31:0] _a5a6;



   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[4:0] s_LOGISIM_BUS_41;
   wire[4:0] s_LOGISIM_BUS_42;
   wire[4:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[4:0] s_LOGISIM_BUS_46;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
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
   wire s_LOGISIM_NET_7;
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
   wire s_LOGISIM_NET_8;
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
   assign s_LOGISIM_BUS_22[31:0]             = IR;
   assign s_LOGISIM_NET_32                   = URET;
   assign s_LOGISIM_NET_9                    = JALR;
   assign s_LOGISIM_NET_21                   = MemWrite;
   assign s_LOGISIM_NET_34                   = LUI;
   assign s_LOGISIM_NET_6                    = reset;
   assign s_LOGISIM_BUS_25[31:0]             = PC;
   assign s_LOGISIM_NET_33                   = MemToReg;
   assign s_LOGISIM_BUS_41[4:0]              = Rd;
   assign s_LOGISIM_BUS_11[31:0]             = LUI_imm;
   assign s_LOGISIM_NET_1                    = en;
   assign s_LOGISIM_NET_47                   = RegWrite;
   assign s_LOGISIM_NET_54                   = LHU;
   assign s_LOGISIM_NET_10                   = halt;
   assign s_LOGISIM_NET_8                    = JAL;
   assign s_LOGISIM_BUS_12[31:0]             = R2;
   assign s_LOGISIM_BUS_35[31:0]             = PCPlus4;
   assign s_LOGISIM_NET_5                    = clk;
   assign s_LOGISIM_BUS_40[31:0]             = AluResult;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign _halt                              = s_LOGISIM_NET_30;
   assign _PC                                = s_LOGISIM_BUS_28[31:0];
   assign _LHU                               = s_LOGISIM_NET_20;
   assign _JALR                              = s_LOGISIM_NET_29;
   assign _LUI_imm                           = s_LOGISIM_BUS_18[31:0];
   assign _JAL                               = s_LOGISIM_NET_31;
   assign _Rd                                = s_LOGISIM_BUS_46[4:0];
   assign _URET                              = s_LOGISIM_NET_53;
   assign _RegWrite                          = s_LOGISIM_NET_7;
   assign _MemWrite                          = s_LOGISIM_NET_39;
   assign _PCPlus4                           = s_LOGISIM_BUS_38[31:0];
   assign _LUI                               = s_LOGISIM_NET_51;
   assign _R2                                = s_LOGISIM_BUS_19[31:0];
   assign _AluResult                         = s_LOGISIM_BUS_45[31:0];
   assign _MemToReg                          = s_LOGISIM_NET_52;
   assign _IR                                = s_LOGISIM_BUS_24[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_56 = 1'd0;

   assign s_LOGISIM_NET_84 = 1'd0;

   assign s_LOGISIM_NET_65 = 1'd0;

   assign s_LOGISIM_NET_66 = 1'd0;

   assign s_LOGISIM_NET_89 = 1'd0;

   assign s_LOGISIM_NET_62 = 1'd0;

   assign s_LOGISIM_NET_58 = 1'd0;

   assign s_LOGISIM_NET_61 = 1'd0;

   assign s_LOGISIM_NET_71 = 1'd0;

   assign s_LOGISIM_NET_57 = 1'd0;

   assign s_LOGISIM_NET_67 = 1'd0;

   assign s_LOGISIM_NET_3 = 1'd0;

   assign s_LOGISIM_NET_4 = 1'd0;

   assign s_LOGISIM_NET_59 = 1'd0;

   assign s_LOGISIM_BUS_0[31:0] = 32'd0;

   assign s_LOGISIM_NET_2 = 1'd0;

   assign s_LOGISIM_NET_77 = 1'd0;

   assign s_LOGISIM_NET_60 = 1'd0;

   assign s_LOGISIM_NET_97 = 1'd0;

   assign s_LOGISIM_NET_63 = 1'd0;

   assign s_LOGISIM_NET_64 = 1'd0;

   assign s_LOGISIM_NET_68 = 1'd0;

   assign s_LOGISIM_NET_90 = 1'd0;

   assign s_LOGISIM_NET_78 = 1'd0;

   assign s_LOGISIM_NET_98 = 1'd0;

   assign s_LOGISIM_BUS_42[4:0] = 5'd0;

   assign s_LOGISIM_NET_69 = 1'd0;

   assign s_LOGISIM_NET_70 = 1'd0;

   assign s_LOGISIM_NET_72 = 1'd0;

   assign s_LOGISIM_NET_73 = 1'd0;

   assign s_LOGISIM_NET_74 = 1'd0;

   assign s_LOGISIM_NET_85 = 1'd0;

   assign s_LOGISIM_NET_75 = 1'd0;

   assign s_LOGISIM_NET_76 = 1'd0;

   assign s_LOGISIM_NET_79 = 1'd0;

   assign s_LOGISIM_NET_80 = 1'd0;

   assign s_LOGISIM_NET_99 = 1'd0;

   assign s_LOGISIM_NET_81 = 1'd0;

   assign s_LOGISIM_NET_82 = 1'd0;

   assign s_LOGISIM_NET_83 = 1'd0;

   assign s_LOGISIM_NET_86 = 1'd0;

   assign s_LOGISIM_NET_87 = 1'd0;

   assign s_LOGISIM_NET_88 = 1'd0;

   assign s_LOGISIM_NET_91 = 1'd0;

   assign s_LOGISIM_NET_92 = 1'd0;

   assign s_LOGISIM_NET_93 = 1'd0;

   assign s_LOGISIM_NET_94 = 1'd0;

   assign s_LOGISIM_NET_95 = 1'd0;

   assign s_LOGISIM_NET_96 = 1'd0;

   assign s_LOGISIM_NET_100 = 1'd0;

   assign s_LOGISIM_NET_101 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
  wire D_CSRRSI; 
   Multiplexer_2  MUX_CSRRSI (.Enable(1'b1),
                              .MuxIn_0(CSRRSI),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_CSRRSI),
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_MEM_CSRRSI       (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
                                 .D(D_CSRRSI),
                                 .Q(_CSRRSI),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));    
                                 
   wire D_CSRRCI; 
   Multiplexer_2  MUX_CSRRCI (.Enable(1'b1),
                              .MuxIn_0(CSRRCI),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_CSRRCI),
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
         REGISTER_MEM_CSRRCI     (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
                                 .D(D_CSRRCI),
                                 .Q(_CSRRCI),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));         
           
          
   wire D_FCAL; 
   Multiplexer_2  MUX_FCAL   (.Enable(1'b1),
                              .MuxIn_0(FCAL),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FCAL),
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_MEM_FCAL         (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
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
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_MEM_FLW          (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
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
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_MEM_FLT          (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
                                 .D(D_FLT),
                                 .Q(_FLT),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0)); 

   wire D_frd; 
   Multiplexer_2  MUX_frd    (.Enable(1'b1),
                              .MuxIn_0(frd),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_frd),
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_MEM_frd          (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
                                 .D(D_frd),
                                 .Q(_frd),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));  

   wire[31:0] D_a5a6; 
   Multiplexer_bus_2        #(.NrOfBits(32))   
        MUX_a5a6             (.Enable(1'b1),
                              .MuxIn_0(a5a6[31:0]),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_a5a6[31:0]),
                              .Sel(s_LOGISIM_NET_6));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(32))
       REGISTER_MEM_a5a6          (.Clock(s_LOGISIM_NET_5),
                                 .ClockEnable(s_LOGISIM_NET_1),
                                 .D(D_a5a6[31:0]),
                                 .Q(_a5a6[31:0]),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));  



   REGISTER_FLIP_FLOP_MEM_JALR #(.ActiveLevel(1),
                                 .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_NET_49),
                       .Q(s_LOGISIM_NET_29),
                       .Reset(s_LOGISIM_NET_75),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_4),
                       .pre(s_LOGISIM_NET_59));

   REGISTER_FLIP_FLOP_MEM_LUI_imm #(.ActiveLevel(1),
                                    .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_BUS_16[31:0]),
                       .Q(s_LOGISIM_BUS_18[31:0]),
                       .Reset(s_LOGISIM_NET_69),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_56),
                       .pre(s_LOGISIM_NET_74));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_10),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_50),
                             .Sel(s_LOGISIM_NET_6));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_54),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_37),
                             .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_AluResult #(.ActiveLevel(1),
                                      .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_BUS_44[31:0]),
                       .Q(s_LOGISIM_BUS_45[31:0]),
                       .Reset(s_LOGISIM_NET_60),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_64),
                       .pre(s_LOGISIM_NET_57));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_35[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_36[31:0]),
             .Sel(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_16[31:0]),
             .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_R2 #(.ActiveLevel(1),
                               .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_BUS_15[31:0]),
                       .Q(s_LOGISIM_BUS_19[31:0]),
                       .Reset(s_LOGISIM_NET_81),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_58),
                       .pre(s_LOGISIM_NET_91));

   REGISTER_FLIP_FLOP_MEM_MemWrite #(.ActiveLevel(1),
                                     .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_NET_55),
                       .Q(s_LOGISIM_NET_39),
                       .Reset(s_LOGISIM_NET_88),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_100),
                       .pre(s_LOGISIM_NET_86));

   REGISTER_FLIP_FLOP_MEM_JAL #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_NET_48),
                       .Q(s_LOGISIM_NET_31),
                       .Reset(s_LOGISIM_NET_73),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_3),
                       .pre(s_LOGISIM_NET_63));

   REGISTER_FLIP_FLOP_MEM_LHU #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_NET_37),
                       .Q(s_LOGISIM_NET_20),
                       .Reset(s_LOGISIM_NET_61),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_83),
                       .pre(s_LOGISIM_NET_62));

   REGISTER_FLIP_FLOP_MEM_PCPlus4 #(.ActiveLevel(1),
                                    .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_BUS_36[31:0]),
                       .Q(s_LOGISIM_BUS_38[31:0]),
                       .Reset(s_LOGISIM_NET_96),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_76),
                       .pre(s_LOGISIM_NET_93));

   REGISTER_FLIP_FLOP_MEM_PC #(.ActiveLevel(1),
                               .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_1),
                       .D(s_LOGISIM_BUS_27[31:0]),
                       .Q(s_LOGISIM_BUS_28[31:0]),
                       .Reset(s_LOGISIM_NET_65),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_82),
                       .pre(s_LOGISIM_NET_66));

   REGISTER_FLIP_FLOP_MEM_halt #(.ActiveLevel(1),
                                 .NrOfBits(1))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_NET_50),
                        .Q(s_LOGISIM_NET_30),
                        .Reset(s_LOGISIM_NET_80),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_67),
                        .pre(s_LOGISIM_NET_95));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_25[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_NET_6));

   Multiplexer_2      MUX_6 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_9),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_49),
                             .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_Rd #(.ActiveLevel(1),
                               .NrOfBits(5))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_BUS_43[4:0]),
                        .Q(s_LOGISIM_BUS_46[4:0]),
                        .Reset(s_LOGISIM_NET_72),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_68),
                        .pre(s_LOGISIM_NET_70));

   Multiplexer_2      MUX_7 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_47),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_26),
                             .Sel(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_41[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_42[4:0]),
             .MuxOut(s_LOGISIM_BUS_43[4:0]),
             .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_MemToReg #(.ActiveLevel(1),
                                     .NrOfBits(1))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_NET_14),
                        .Q(s_LOGISIM_NET_52),
                        .Reset(s_LOGISIM_NET_87),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_79),
                        .pre(s_LOGISIM_NET_71));

   Multiplexer_2      MUX_9 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_33),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_14),
                             .Sel(s_LOGISIM_NET_6));

   Multiplexer_2      MUX_10 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_34),
                              .MuxIn_1(s_LOGISIM_NET_2),
                              .MuxOut(s_LOGISIM_NET_13),
                              .Sel(s_LOGISIM_NET_6));

   Multiplexer_2      MUX_11 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_8),
                              .MuxIn_1(s_LOGISIM_NET_2),
                              .MuxOut(s_LOGISIM_NET_48),
                              .Sel(s_LOGISIM_NET_6));

   Multiplexer_2      MUX_12 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_21),
                              .MuxIn_1(s_LOGISIM_NET_2),
                              .MuxOut(s_LOGISIM_NET_55),
                              .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_URET #(.ActiveLevel(1),
                                 .NrOfBits(1))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_NET_17),
                        .Q(s_LOGISIM_NET_53),
                        .Reset(s_LOGISIM_NET_77),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_101),
                        .pre(s_LOGISIM_NET_78));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_22[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_23[31:0]),
              .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_IR #(.ActiveLevel(1),
                               .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_BUS_23[31:0]),
                        .Q(s_LOGISIM_BUS_24[31:0]),
                        .Reset(s_LOGISIM_NET_84),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_85),
                        .pre(s_LOGISIM_NET_92));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_15[31:0]),
              .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_LUI #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_NET_13),
                        .Q(s_LOGISIM_NET_51),
                        .Reset(s_LOGISIM_NET_94),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_89),
                        .pre(s_LOGISIM_NET_90));

   Multiplexer_2      MUX_15 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_32),
                              .MuxIn_1(s_LOGISIM_NET_2),
                              .MuxOut(s_LOGISIM_NET_17),
                              .Sel(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_16 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_40[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_44[31:0]),
              .Sel(s_LOGISIM_NET_6));

   REGISTER_FLIP_FLOP_MEM_RegWrite #(.ActiveLevel(1),
                                     .NrOfBits(1))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_5),
                        .ClockEnable(s_LOGISIM_NET_1),
                        .D(s_LOGISIM_NET_26),
                        .Q(s_LOGISIM_NET_7),
                        .Reset(s_LOGISIM_NET_97),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_98),
                        .pre(s_LOGISIM_NET_99));



endmodule
