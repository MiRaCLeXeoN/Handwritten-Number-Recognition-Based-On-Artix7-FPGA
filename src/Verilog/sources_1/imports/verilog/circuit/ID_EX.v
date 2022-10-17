/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ID_EX                                                        **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module ID_EX( Alu_OP,
              Alu_SRCB,
              BEQ,
              BGE,
              BJ_imm,
              BNE,
              IR,
              IS_imm,
              JAL,
              JALR,
              LHU,
              LUI,
              LUI_imm,
              MemToReg,
              MemWrite,
              PC,
              PCPlus4,
              PredictJump,
              R1,
              R2,
              Rd,
              RegWrite,
              Rs1Forward,
              Rs2Forward,
              URET,
              clk,
              clr,
              ecall,
              en,
              reset,
              _Alu_OP,
              _Alu_SRCB,
              _BEQ,
              _BGE,
              _BJ_imm,
              _BNE,
              _IR,
              _IS_imm,
              _JAL,
              _JALR,
              _LHU,
              _LUI,
              _LUI_imm,
              _MemToReg,
              _MemWrite,
              _PC,
              _PCPlus4,
              _PredictJump,
              _R1,
              _R2,
              _Rd,
              _RegWrite,
              _Rs1Foward,
              _Rs2Foward,
              _URET,
              _ecall,
              CSRRSI,
              CSRRCI,
              FCAL,
              FLW,
              BLT,
              FLT,
              FS1,
              FS0,
              frd,
              _CSRRSI,
              _CSRRCI,
              _FCAL,
              _FLW,
              _BLT,
              _FLT,
              _FS1,
              _FS0,
              _frd);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  Alu_OP;
   input  Alu_SRCB;
   input  BEQ;
   input  BGE;
   input[31:0]  BJ_imm;
   input  BNE;
   input[31:0]  IR;
   input[31:0]  IS_imm;
   input  JAL;
   input  JALR;
   input  LHU;
   input  LUI;
   input[31:0]  LUI_imm;
   input  MemToReg;
   input  MemWrite;
   input[31:0]  PC;
   input[31:0]  PCPlus4;
   input  PredictJump;
   input[31:0]  R1;
   input[31:0]  R2;
   input[4:0]  Rd;
   input  RegWrite;
   input[1:0]  Rs1Forward;
   input[1:0]  Rs2Forward;
   input  URET;
   input  clk;
   input  clr;
   input  ecall;
   input  en;
   input  reset;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] _Alu_OP;
   output _Alu_SRCB;
   output _BEQ;
   output _BGE;
   output[31:0] _BJ_imm;
   output _BNE;
   output[31:0] _IR;
   output[31:0] _IS_imm;
   output _JAL;
   output _JALR;
   output _LHU;
   output _LUI;
   output[31:0] _LUI_imm;
   output _MemToReg;
   output _MemWrite;
   output[31:0] _PC;
   output[31:0] _PCPlus4;
   output _PredictJump;
   output[31:0] _R1;
   output[31:0] _R2;
   output[4:0] _Rd;
   output _RegWrite;
   output[1:0] _Rs1Foward;
   output[1:0] _Rs2Foward;
   output _URET;
   output _ecall;

  /*****************************************************************************
   *****************************************************************************/
   input CSRRSI;
   input CSRRCI;
   input FCAL;
   input FLW;
   input BLT;
   input FLT;
   input FS1;
   input FS0;
   input frd;
   output _CSRRSI;
   output _CSRRCI;
   output _FCAL;
   output _FLW;
   output _BLT;
   output _FLT;
   output _FS1;
   output _FS0;
   output _frd;






   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[1:0] s_LOGISIM_BUS_19;
   wire[1:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[3:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_37;
   wire[3:0] s_LOGISIM_BUS_38;
   wire[1:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_46;
   wire[1:0] s_LOGISIM_BUS_55;
   wire[1:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_57;
   wire[31:0] s_LOGISIM_BUS_58;
   wire[31:0] s_LOGISIM_BUS_60;
   wire[31:0] s_LOGISIM_BUS_63;
   wire[31:0] s_LOGISIM_BUS_64;
   wire[4:0] s_LOGISIM_BUS_65;
   wire[4:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_67;
   wire[4:0] s_LOGISIM_BUS_68;
   wire[31:0] s_LOGISIM_BUS_69;
   wire[3:0] s_LOGISIM_BUS_70;
   wire[31:0] s_LOGISIM_BUS_71;
   wire[4:0] s_LOGISIM_BUS_72;
   wire[31:0] s_LOGISIM_BUS_73;
   wire[3:0] s_LOGISIM_BUS_8;
   wire[1:0] s_LOGISIM_BUS_81;
   wire[1:0] s_LOGISIM_BUS_82;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_125;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_131;
   wire s_LOGISIM_NET_132;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_137;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_139;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_142;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_145;
   wire s_LOGISIM_NET_146;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_152;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_156;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_162;
   wire s_LOGISIM_NET_163;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_80;
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
   assign s_LOGISIM_NET_33                   = MemWrite;
   assign s_LOGISIM_BUS_34[31:0]             = IR;
   assign s_LOGISIM_NET_9                    = JALR;
   assign s_LOGISIM_NET_10                   = JAL;
   assign s_LOGISIM_NET_62                   = BGE;
   assign s_LOGISIM_BUS_13[31:0]             = LUI_imm;
   assign s_LOGISIM_NET_11                   = ecall;
   assign s_LOGISIM_NET_86                   = LHU;
   assign s_LOGISIM_NET_52                   = BNE;
   assign s_LOGISIM_NET_40                   = Alu_SRCB;
   assign s_LOGISIM_BUS_3[3:0]               = Alu_OP;
   assign s_LOGISIM_BUS_41[31:0]             = PC;
   assign s_LOGISIM_BUS_55[1:0]              = Rs2Forward;
   assign s_LOGISIM_NET_12                   = PredictJump;
   assign s_LOGISIM_NET_54                   = LUI;
   assign s_LOGISIM_BUS_56[1:0]              = Rs1Forward;
   assign s_LOGISIM_BUS_57[31:0]             = PCPlus4;
   assign s_LOGISIM_BUS_14[31:0]             = IS_imm;
   assign s_LOGISIM_NET_42                   = reset;
   assign s_LOGISIM_NET_53                   = BEQ;
   assign s_LOGISIM_NET_2                    = clk;
   assign s_LOGISIM_BUS_65[4:0]              = Rd;
   assign s_LOGISIM_BUS_63[31:0]             = R1;
   assign s_LOGISIM_NET_4                    = en;
   assign s_LOGISIM_BUS_15[31:0]             = R2;
   assign s_LOGISIM_NET_50                   = MemToReg;
   assign s_LOGISIM_NET_16                   = clr;
   assign s_LOGISIM_BUS_64[31:0]             = BJ_imm;
   assign s_LOGISIM_NET_51                   = URET;
   assign s_LOGISIM_NET_75                   = RegWrite;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign _BJ_imm                            = s_LOGISIM_BUS_71[31:0];
   assign _URET                              = s_LOGISIM_NET_84;
   assign _BGE                               = s_LOGISIM_NET_88;
   assign _JALR                              = s_LOGISIM_NET_48;
   assign _IR                                = s_LOGISIM_BUS_37[31:0];
   assign _PCPlus4                           = s_LOGISIM_BUS_60[31:0];
   assign _JAL                               = s_LOGISIM_NET_49;
   assign _BNE                               = s_LOGISIM_NET_85;
   assign _RegWrite                          = s_LOGISIM_NET_7;
   assign _LUI_imm                           = s_LOGISIM_BUS_29[31:0];
   assign _Alu_SRCB                          = s_LOGISIM_NET_74;
   assign _MemWrite                          = s_LOGISIM_NET_61;
   assign _Rs1Foward                         = s_LOGISIM_BUS_81[1:0];
   assign _Rs2Foward                         = s_LOGISIM_BUS_82[1:0];
   assign _BEQ                               = s_LOGISIM_NET_79;
   assign _LHU                               = s_LOGISIM_NET_32;
   assign _R1                                = s_LOGISIM_BUS_73[31:0];
   assign _IS_imm                            = s_LOGISIM_BUS_30[31:0];
   assign _PredictJump                       = s_LOGISIM_NET_28;
   assign _LUI                               = s_LOGISIM_NET_80;
   assign _ecall                             = s_LOGISIM_NET_47;
   assign _Alu_OP                            = s_LOGISIM_BUS_38[3:0];
   assign _MemToReg                          = s_LOGISIM_NET_83;
   assign _PC                                = s_LOGISIM_BUS_46[31:0];
   assign _R2                                = s_LOGISIM_BUS_31[31:0];
   assign _Rd                                = s_LOGISIM_BUS_72[4:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_99 = 1'd0;

   assign s_LOGISIM_NET_91 = 1'd0;

   assign s_LOGISIM_NET_93 = 1'd0;

   assign s_LOGISIM_NET_89 = 1'd0;

   assign s_LOGISIM_NET_158 = 1'd0;

   assign s_LOGISIM_NET_135 = 1'd0;

   assign s_LOGISIM_BUS_0[31:0] = 32'd0;

   assign s_LOGISIM_NET_134 = 1'd0;

   assign s_LOGISIM_NET_117 = 1'd0;

   assign s_LOGISIM_NET_164 = 1'd0;

   assign s_LOGISIM_NET_92 = 1'd0;

   assign s_LOGISIM_NET_154 = 1'd0;

   assign s_LOGISIM_NET_90 = 1'd0;

   assign s_LOGISIM_NET_115 = 1'd0;

   assign s_LOGISIM_NET_144 = 1'd0;

   assign s_LOGISIM_NET_140 = 1'd0;

   assign s_LOGISIM_NET_148 = 1'd0;

   assign s_LOGISIM_NET_112 = 1'd0;

   assign s_LOGISIM_NET_146 = 1'd0;

   assign s_LOGISIM_NET_136 = 1'd0;

   assign s_LOGISIM_NET_139 = 1'd0;

   assign s_LOGISIM_NET_94 = 1'd0;

   assign s_LOGISIM_NET_95 = 1'd0;

   assign s_LOGISIM_NET_96 = 1'd0;

   assign s_LOGISIM_NET_98 = 1'd0;

   assign s_LOGISIM_NET_113 = 1'd0;

   assign s_LOGISIM_NET_118 = 1'd0;

   assign s_LOGISIM_NET_97 = 1'd0;

   assign s_LOGISIM_NET_160 = 1'd0;

   assign s_LOGISIM_NET_126 = 1'd0;

   assign s_LOGISIM_NET_106 = 1'd0;

   assign s_LOGISIM_NET_100 = 1'd0;

   assign s_LOGISIM_NET_143 = 1'd0;

   assign s_LOGISIM_NET_108 = 1'd0;

   assign s_LOGISIM_NET_156 = 1'd0;

   assign s_LOGISIM_NET_119 = 1'd0;

   assign s_LOGISIM_NET_101 = 1'd0;

   assign s_LOGISIM_NET_102 = 1'd0;

   assign s_LOGISIM_NET_103 = 1'd0;

   assign s_LOGISIM_NET_129 = 1'd0;

   assign s_LOGISIM_NET_104 = 1'd0;

   assign s_LOGISIM_NET_105 = 1'd0;

   assign s_LOGISIM_NET_107 = 1'd0;

   assign s_LOGISIM_NET_111 = 1'd0;

   assign s_LOGISIM_NET_116 = 1'd0;

   assign s_LOGISIM_BUS_39[1:0] = 2'd0;

   assign s_LOGISIM_NET_120 = 1'd0;

   assign s_LOGISIM_NET_109 = 1'd0;

   assign s_LOGISIM_NET_147 = 1'd0;

   assign s_LOGISIM_NET_110 = 1'd0;

   assign s_LOGISIM_NET_121 = 1'd0;

   assign s_LOGISIM_NET_114 = 1'd0;

   assign s_LOGISIM_BUS_8[3:0] = 4'd0;

   assign s_LOGISIM_NET_122 = 1'd0;

   assign s_LOGISIM_NET_123 = 1'd0;

   assign s_LOGISIM_NET_124 = 1'd0;

   assign s_LOGISIM_NET_125 = 1'd0;

   assign s_LOGISIM_NET_155 = 1'd0;

   assign s_LOGISIM_NET_142 = 1'd0;

   assign s_LOGISIM_NET_127 = 1'd0;

   assign s_LOGISIM_NET_128 = 1'd0;

   assign s_LOGISIM_NET_141 = 1'd0;

   assign s_LOGISIM_NET_130 = 1'd0;

   assign s_LOGISIM_NET_131 = 1'd0;

   assign s_LOGISIM_NET_132 = 1'd0;

   assign s_LOGISIM_NET_133 = 1'd0;

   assign s_LOGISIM_NET_137 = 1'd0;

   assign s_LOGISIM_NET_138 = 1'd0;

   assign s_LOGISIM_NET_145 = 1'd0;

   assign s_LOGISIM_NET_149 = 1'd0;

   assign s_LOGISIM_NET_150 = 1'd0;

   assign s_LOGISIM_BUS_66[4:0] = 5'd0;

   assign s_LOGISIM_NET_151 = 1'd0;

   assign s_LOGISIM_NET_152 = 1'd0;

   assign s_LOGISIM_NET_153 = 1'd0;

   assign s_LOGISIM_NET_159 = 1'd0;

   assign s_LOGISIM_NET_163 = 1'd0;

   assign s_LOGISIM_NET_157 = 1'd0;

   assign s_LOGISIM_NET_162 = 1'd0;

   assign s_LOGISIM_NET_1 = 1'd0;

   assign s_LOGISIM_NET_161 = 1'd0;

   assign s_LOGISIM_NET_165 = 1'd0;

   assign s_LOGISIM_NET_166 = 1'd0;

   assign s_LOGISIM_NET_45 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   wire D_CSRRSI; 
   Multiplexer_2  MUX_CSRRSI (.Enable(1'b1),
                              .MuxIn_0(CSRRSI),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_CSRRSI),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_CSRRSI       (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
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
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
         REGISTER_EX_CSRRCI     (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
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
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_FCAL         (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
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
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_FLW          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_FLW),
                                 .Q(_FLW),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));       
   wire D_BLT; 
   Multiplexer_2  MUX_BLT    (.Enable(1'b1),
                              .MuxIn_0(BLT),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_BLT),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_BLT          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_BLT),
                                 .Q(_BLT),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));            


   wire D_FLT; 
   Multiplexer_2  MUX_FLT    (.Enable(1'b1),
                              .MuxIn_0(FLT),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FLT),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_FLT          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_FLT),
                                 .Q(_FLT),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0)); 


   wire D_FS1; 
   Multiplexer_2  MUX_FS1    (.Enable(1'b1),
                              .MuxIn_0(FS1),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FS1),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_FS1          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_FS1),
                                 .Q(_FS1),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0)); 

   wire D_FS0; 
   Multiplexer_2  MUX_FS0    (.Enable(1'b1),
                              .MuxIn_0(FS0),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_FS0),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_FS0          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_FS0),
                                 .Q(_FS0),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));    

   wire D_frd; 
   Multiplexer_2  MUX_frd    (.Enable(1'b1),
                              .MuxIn_0(frd),
                              .MuxIn_1(1'b0),
                              .MuxOut(D_frd),
                              .Sel(s_LOGISIM_NET_5));    
   Register                    #(.ActiveLevel(1),
                                 .NrOfBits(1))
       REGISTER_EX_frd          (.Clock(s_LOGISIM_NET_2),
                                 .ClockEnable(s_LOGISIM_NET_4),
                                 .D(D_frd),
                                 .Q(_frd),
                                 .Reset(1'b0),
                                 .Tick(1'b1),
                                 .cs(1'b0),
                                 .pre(1'b0));                                                                
   
             
    
   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_75),
                             .MuxIn_1(s_LOGISIM_NET_1),
                             .MuxOut(s_LOGISIM_NET_44),
                             .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_62),
                             .MuxIn_1(s_LOGISIM_NET_1),
                             .MuxOut(s_LOGISIM_NET_36),
                             .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_9),
                             .MuxIn_1(s_LOGISIM_NET_1),
                             .MuxOut(s_LOGISIM_NET_76),
                             .Sel(s_LOGISIM_NET_5));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_23[31:0]),
             .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_URET #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_NET_26),
                       .Q(s_LOGISIM_NET_84),
                       .Reset(s_LOGISIM_NET_94),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_89),
                       .pre(s_LOGISIM_NET_90));

   REGISTER_FLIP_FLOP_EX_PredictJump #(.ActiveLevel(1),
                                       .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_NET_21),
                       .Q(s_LOGISIM_NET_28),
                       .Reset(s_LOGISIM_NET_152),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_122),
                       .pre(s_LOGISIM_NET_123));

   REGISTER_FLIP_FLOP_EX_R2 #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_22[31:0]),
                       .Q(s_LOGISIM_BUS_31[31:0]),
                       .Reset(s_LOGISIM_NET_151),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_91),
                       .pre(s_LOGISIM_NET_110));

   REGISTER_FLIP_FLOP_EX_LUI_imm #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_24[31:0]),
                       .Q(s_LOGISIM_BUS_29[31:0]),
                       .Reset(s_LOGISIM_NET_153),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_127),
                       .pre(s_LOGISIM_NET_130));

   REGISTER_FLIP_FLOP_EX_R1 #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_67[31:0]),
                       .Q(s_LOGISIM_BUS_73[31:0]),
                       .Reset(s_LOGISIM_NET_92),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_93),
                       .pre(s_LOGISIM_NET_124));

   Multiplexer_2      MUX_5 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_86),
                             .MuxIn_1(s_LOGISIM_NET_1),
                             .MuxOut(s_LOGISIM_NET_59),
                             .Sel(s_LOGISIM_NET_5));

   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_42),
              .Input_2(s_LOGISIM_NET_16),
              .Result(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_PC #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_43[31:0]),
                       .Q(s_LOGISIM_BUS_46[31:0]),
                       .Reset(s_LOGISIM_NET_157),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_95),
                       .pre(s_LOGISIM_NET_104));

   Multiplexer_2      MUX_6 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_54),
                             .MuxIn_1(s_LOGISIM_NET_1),
                             .MuxOut(s_LOGISIM_NET_18),
                             .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_BGE #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_NET_36),
                       .Q(s_LOGISIM_NET_88),
                       .Reset(s_LOGISIM_NET_132),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_150),
                       .pre(s_LOGISIM_NET_96));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_65[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_66[4:0]),
             .MuxOut(s_LOGISIM_BUS_68[4:0]),
             .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_ecall #(.ActiveLevel(1),
                                 .NrOfBits(1))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_NET_78),
                       .Q(s_LOGISIM_NET_47),
                       .Reset(s_LOGISIM_NET_97),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_98),
                       .pre(s_LOGISIM_NET_101));

   REGISTER_FLIP_FLOP_EX_BNE #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_NET_27),
                       .Q(s_LOGISIM_NET_85),
                       .Reset(s_LOGISIM_NET_105),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_100),
                       .pre(s_LOGISIM_NET_99));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_34[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_35[31:0]),
             .Sel(s_LOGISIM_NET_5));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_55[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_39[1:0]),
             .MuxOut(s_LOGISIM_BUS_20[1:0]),
             .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_10 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_52),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_27),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_JAL #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_77),
                        .Q(s_LOGISIM_NET_49),
                        .Reset(s_LOGISIM_NET_165),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_145),
                        .pre(s_LOGISIM_NET_102));

   REGISTER_FLIP_FLOP_EX_MemWrite #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_87),
                        .Q(s_LOGISIM_NET_61),
                        .Reset(s_LOGISIM_NET_103),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_114),
                        .pre(s_LOGISIM_NET_131));

   Multiplexer_2      MUX_11 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_50),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_25),
                              .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_12 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_53),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_17),
                              .Sel(s_LOGISIM_NET_5));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_57[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_58[31:0]),
              .Sel(s_LOGISIM_NET_5));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_41[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_43[31:0]),
              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_BEQ #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_17),
                        .Q(s_LOGISIM_NET_79),
                        .Reset(s_LOGISIM_NET_109),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_133),
                        .pre(s_LOGISIM_NET_125));

   REGISTER_FLIP_FLOP_EX_LHU #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_59),
                        .Q(s_LOGISIM_NET_32),
                        .Reset(s_LOGISIM_NET_106),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_107),
                        .pre(s_LOGISIM_NET_108));

   Multiplexer_2      MUX_15 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_12),
                              .MuxIn_1(s_LOGISIM_NET_45),
                              .MuxOut(s_LOGISIM_NET_21),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_Alu_SRCB #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_6),
                        .Q(s_LOGISIM_NET_74),
                        .Reset(s_LOGISIM_NET_111),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_112),
                        .pre(s_LOGISIM_NET_113));

   Multiplexer_2      MUX_16 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_11),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_78),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_IS_imm #(.ActiveLevel(1),
                                  .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_23[31:0]),
                        .Q(s_LOGISIM_BUS_30[31:0]),
                        .Reset(s_LOGISIM_NET_115),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_116),
                        .pre(s_LOGISIM_NET_117));

   REGISTER_FLIP_FLOP_EX_LUI #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_18),
                        .Q(s_LOGISIM_NET_80),
                        .Reset(s_LOGISIM_NET_118),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_119),
                        .pre(s_LOGISIM_NET_137));

   REGISTER_FLIP_FLOP_EX_BJ_imm #(.ActiveLevel(1),
                                  .NrOfBits(32))
      REGISTER_FILE_17 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_69[31:0]),
                        .Q(s_LOGISIM_BUS_71[31:0]),
                        .Reset(s_LOGISIM_NET_120),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_121),
                        .pre(s_LOGISIM_NET_166));

   Multiplexer_2      MUX_17 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_10),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_77),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_Rs2Foward #(.ActiveLevel(1),
                                     .NrOfBits(2))
      REGISTER_FILE_18 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_20[1:0]),
                        .Q(s_LOGISIM_BUS_82[1:0]),
                        .Reset(s_LOGISIM_NET_149),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_128),
                        .pre(s_LOGISIM_NET_126));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_18 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_13[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_24[31:0]),
              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_IR #(.ActiveLevel(1),
                              .NrOfBits(32))
      REGISTER_FILE_19 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_37[31:0]),
                        .Reset(s_LOGISIM_NET_138),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_161),
                        .pre(s_LOGISIM_NET_129));

   Multiplexer_2      MUX_19 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_51),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_26),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_RegWrite #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_20 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_44),
                        .Q(s_LOGISIM_NET_7),
                        .Reset(s_LOGISIM_NET_134),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_135),
                        .pre(s_LOGISIM_NET_136));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_20 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_56[1:0]),
              .MuxIn_1(s_LOGISIM_BUS_39[1:0]),
              .MuxOut(s_LOGISIM_BUS_19[1:0]),
              .Sel(s_LOGISIM_NET_5));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_21 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_64[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_69[31:0]),
              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_PCPlus4 #(.ActiveLevel(1),
                                   .NrOfBits(32))
      REGISTER_FILE_21 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_58[31:0]),
                        .Q(s_LOGISIM_BUS_60[31:0]),
                        .Reset(s_LOGISIM_NET_139),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_140),
                        .pre(s_LOGISIM_NET_141));

   REGISTER_FLIP_FLOP_EX_JALR #(.ActiveLevel(1),
                                .NrOfBits(1))
      REGISTER_FILE_22 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_76),
                        .Q(s_LOGISIM_NET_48),
                        .Reset(s_LOGISIM_NET_142),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_143),
                        .pre(s_LOGISIM_NET_144));

   REGISTER_FLIP_FLOP_EX_MemToReg #(.ActiveLevel(1),
                                    .NrOfBits(1))
      REGISTER_FILE_23 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_NET_25),
                        .Q(s_LOGISIM_NET_83),
                        .Reset(s_LOGISIM_NET_146),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_147),
                        .pre(s_LOGISIM_NET_148));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_22 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_22[31:0]),
              .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_23 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_33),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_87),
                              .Sel(s_LOGISIM_NET_5));

   Multiplexer_2      MUX_24 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_40),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_6),
                              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_Rd #(.ActiveLevel(1),
                              .NrOfBits(5))
      REGISTER_FILE_24 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_68[4:0]),
                        .Q(s_LOGISIM_BUS_72[4:0]),
                        .Reset(s_LOGISIM_NET_154),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_155),
                        .pre(s_LOGISIM_NET_156));

   REGISTER_FLIP_FLOP_EX_Rs1Foward #(.ActiveLevel(1),
                                     .NrOfBits(2))
      REGISTER_FILE_25 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_19[1:0]),
                        .Q(s_LOGISIM_BUS_81[1:0]),
                        .Reset(s_LOGISIM_NET_158),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_159),
                        .pre(s_LOGISIM_NET_160));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_25 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_63[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_67[31:0]),
              .Sel(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP_EX_Alu_OP #(.ActiveLevel(1),
                                  .NrOfBits(4))
      REGISTER_FILE_26 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(s_LOGISIM_NET_4),
                        .D(s_LOGISIM_BUS_70[3:0]),
                        .Q(s_LOGISIM_BUS_38[3:0]),
                        .Reset(s_LOGISIM_NET_162),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_163),
                        .pre(s_LOGISIM_NET_164));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_26 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_3[3:0]),
              .MuxIn_1(s_LOGISIM_BUS_8[3:0]),
              .MuxOut(s_LOGISIM_BUS_70[3:0]),
              .Sel(s_LOGISIM_NET_5));



endmodule
