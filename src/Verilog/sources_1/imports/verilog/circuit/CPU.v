/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : CPU                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module CPU( CLK,
            Go,
            IR1,
            IR2,
            IR3,
            RST,
            NA,
            SEG,
            uart_rxd,
            uart_txd,
            dis1,dis2,dis3,dis4,dis5,dis6,dis7,dis8,dis9,dis10,dis11,dis12,dis13,dis14,dis15,dis16);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  Go;
   input  IR1;
   input  IR2;
   input  IR3;
   input  RST;
   input dis1;
   input dis2;
   input dis3;
   input dis4;
   input dis5;
   input dis6;
   input dis7;
   input dis8;
   input dis9;
   input dis10;
   input dis11;
   input dis12;
   input dis13;
   input dis14;
   input dis15;
   input dis16;
   input  uart_rxd;
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] NA;
   output[7:0] SEG;
   output  uart_txd;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   
   
  /***************************************************************************/  
      
  wire ID_CSRRSI;
  wire ID_CSRRCI;
  wire ID_FCAL;
  wire ID_FSW;
  wire ID_FLW;
  wire ID_BLT;
  wire ID_FLT;
  wire ID_FS1;
  wire ID_FS0;
  wire ID_frs1;
  wire ID_frs2;
  wire ID_frd;
                  
  wire EX_CSRRSI;
  wire EX_CSRRCI;
  wire EX_FCAL;
  wire EX_FLW;
  wire EX_BLT;
  wire EX_FLT;
  wire EX_FS1;
  wire EX_FS0;
  wire EX_frd;
  wire EX_LESS;  
  
  wire[31:0] FloatResult;
  wire FloatLESS;
  wire[1:0] FloatOP;  
  assign FloatOP = {EX_FS1,EX_FS0}; 
  
  wire[31:0] CalResult;
  
  /********与外部对接的三个数据*****************/
  wire[31:0] MEM_Address;
  wire MEM_Open_INT;
  wire MEM_Close_INT;
  /**********************************************/
  wire MEM_FCAL;
  wire MEM_FLW;
  wire MEM_FLT;
  wire MEM_frd;
    
  wire WB_FLW;
  wire WB_FCAL;  
  wire WB_FLT;  
    
  /***************************************************************************/  
    
    
   wire[3:0] s_LOGISIM_BUS_1;
   wire[5:0] s_LOGISIM_BUS_100;
   wire[31:0] s_LOGISIM_BUS_101;
   wire[31:0] s_LOGISIM_BUS_102;
   wire[31:0] s_LOGISIM_BUS_103;
   wire[31:0] s_LOGISIM_BUS_104;
   wire[31:0] s_LOGISIM_BUS_105;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_111;
   wire[31:0] s_LOGISIM_BUS_118;
   wire[31:0] s_LOGISIM_BUS_119;
   wire[4:0] s_LOGISIM_BUS_122;
   wire[31:0] s_LOGISIM_BUS_123;
   wire[1:0] s_LOGISIM_BUS_124;
   wire[19:0] s_LOGISIM_BUS_125;
   wire[3:0] s_LOGISIM_BUS_127;
   wire[31:0] s_LOGISIM_BUS_130;
   wire[4:0] s_LOGISIM_BUS_131;
   wire[31:0] s_LOGISIM_BUS_135;
   wire[31:0] s_LOGISIM_BUS_137;
   wire[4:0] s_LOGISIM_BUS_139;
   wire[4:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_141;
   wire[31:0] s_LOGISIM_BUS_142;
   wire[19:0] s_LOGISIM_BUS_143;
   wire[1:0] s_LOGISIM_BUS_144;
   wire[31:0] s_LOGISIM_BUS_145;
   wire[31:0] s_LOGISIM_BUS_146;
   wire[31:0] s_LOGISIM_BUS_154;
   wire[31:0] s_LOGISIM_BUS_156;
   wire[31:0] s_LOGISIM_BUS_158;
   wire[31:0] s_LOGISIM_BUS_159;
   wire[31:0] s_LOGISIM_BUS_160;
   wire[31:0] s_LOGISIM_BUS_163;
   wire[31:0] s_LOGISIM_BUS_164;
   wire[31:0] s_LOGISIM_BUS_166;
   wire[4:0] s_LOGISIM_BUS_167;
   wire[1:0] s_LOGISIM_BUS_169;
   wire[31:0] s_LOGISIM_BUS_177;
   wire[31:0] s_LOGISIM_BUS_179;
   wire[31:0] s_LOGISIM_BUS_181;
   wire[7:0] s_LOGISIM_BUS_182;
   wire[7:0] s_LOGISIM_BUS_184;
   wire[31:0] s_LOGISIM_BUS_188;
   wire[7:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_191;
   wire[1:0] s_LOGISIM_BUS_198;
   wire[31:0] s_LOGISIM_BUS_199;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[11:0] s_LOGISIM_BUS_203;
   wire[4:0] s_LOGISIM_BUS_206;
   wire[11:0] s_LOGISIM_BUS_210;
   wire[4:0] s_LOGISIM_BUS_212;
   wire[31:0] s_LOGISIM_BUS_217;
   wire[31:0] s_LOGISIM_BUS_218;
   wire[31:0] s_LOGISIM_BUS_219;
   wire[31:0] s_LOGISIM_BUS_232;
   wire[31:0] s_LOGISIM_BUS_233;
   wire[1:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_250;
   wire[31:0] s_LOGISIM_BUS_251;
   wire[31:0] s_LOGISIM_BUS_252;
   wire[31:0] s_LOGISIM_BUS_254;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[3:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[4:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_52;
   wire[1:0] s_LOGISIM_BUS_53;
   wire[6:0] s_LOGISIM_BUS_55;
   wire[31:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_58;
   wire[4:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_68;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[2:0] s_LOGISIM_BUS_70;
   wire[1:0] s_LOGISIM_BUS_71;
   wire[1:0] s_LOGISIM_BUS_74;
   wire[1:0] s_LOGISIM_BUS_75;
   wire[31:0] s_LOGISIM_BUS_77;
   wire[31:0] s_LOGISIM_BUS_78;
   wire[4:0] s_LOGISIM_BUS_79;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_84;
   wire[31:0] s_LOGISIM_BUS_85;
   wire[31:0] s_LOGISIM_BUS_87;
   wire[1:0] s_LOGISIM_BUS_88;
   wire[31:0] s_LOGISIM_BUS_9;
   wire[31:0] s_LOGISIM_BUS_90;
   wire[9:0] s_LOGISIM_BUS_93;
   wire[31:0] s_LOGISIM_BUS_97;
   wire[31:0] s_LOGISIM_BUS_98;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_152;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_162;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_172;
   wire s_LOGISIM_NET_173;
   wire s_LOGISIM_NET_174;
   wire s_LOGISIM_NET_175;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_183;
   wire s_LOGISIM_NET_185;
   wire s_LOGISIM_NET_186;
   wire s_LOGISIM_NET_187;
   wire s_LOGISIM_NET_189;
   wire s_LOGISIM_NET_190;
   wire s_LOGISIM_NET_192;
   wire s_LOGISIM_NET_193;
   wire s_LOGISIM_NET_194;
   wire s_LOGISIM_NET_195;
   wire s_LOGISIM_NET_196;
   wire s_LOGISIM_NET_197;
   wire s_LOGISIM_NET_200;
   wire s_LOGISIM_NET_201;
   wire s_LOGISIM_NET_202;
   wire s_LOGISIM_NET_204;
   wire s_LOGISIM_NET_205;
   wire s_LOGISIM_NET_207;
   wire s_LOGISIM_NET_208;
   wire s_LOGISIM_NET_211;
   wire s_LOGISIM_NET_213;
   wire s_LOGISIM_NET_214;
   wire s_LOGISIM_NET_215;
   wire s_LOGISIM_NET_216;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_220;
   wire s_LOGISIM_NET_221;
   wire s_LOGISIM_NET_222;
   wire s_LOGISIM_NET_223;
   wire s_LOGISIM_NET_224;
   wire s_LOGISIM_NET_225;
   wire s_LOGISIM_NET_226;
   wire s_LOGISIM_NET_227;
   wire s_LOGISIM_NET_228;
   wire s_LOGISIM_NET_229;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_230;
   wire s_LOGISIM_NET_231;
   wire s_LOGISIM_NET_234;
   wire s_LOGISIM_NET_235;
   wire s_LOGISIM_NET_236;
   wire s_LOGISIM_NET_237;
   wire s_LOGISIM_NET_238;
   wire s_LOGISIM_NET_239;
   wire s_LOGISIM_NET_240;
   wire s_LOGISIM_NET_241;
   wire s_LOGISIM_NET_242;
   wire s_LOGISIM_NET_243;
   wire s_LOGISIM_NET_244;
   wire s_LOGISIM_NET_245;
   wire s_LOGISIM_NET_246;
   wire s_LOGISIM_NET_247;
   wire s_LOGISIM_NET_248;
   wire s_LOGISIM_NET_249;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_253;
   wire s_LOGISIM_NET_255;
   wire s_LOGISIM_NET_256;
   wire s_LOGISIM_NET_257;
   wire s_LOGISIM_NET_258;
   wire s_LOGISIM_NET_259;
   wire s_LOGISIM_NET_260;
   wire s_LOGISIM_NET_261;
   wire s_LOGISIM_NET_262;
   wire s_LOGISIM_NET_263;
   wire s_LOGISIM_NET_264;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_99;

   wire ram_we;
   wire [31:0] ram_addr;
   wire [31:0] ram_data;
   wire halt;
   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_1[0]                 = s_LOGISIM_BUS_5[8];
   assign s_LOGISIM_BUS_210[0]               = s_LOGISIM_BUS_1[0];
   assign s_LOGISIM_BUS_1[1]                 = s_LOGISIM_BUS_5[9];
   assign s_LOGISIM_BUS_210[1]               = s_LOGISIM_BUS_1[1];
   assign s_LOGISIM_BUS_1[2]                 = s_LOGISIM_BUS_5[10];
   assign s_LOGISIM_BUS_210[2]               = s_LOGISIM_BUS_1[2];
   assign s_LOGISIM_BUS_1[3]                 = s_LOGISIM_BUS_5[11];
   assign s_LOGISIM_BUS_210[3]               = s_LOGISIM_BUS_1[3];
   assign s_LOGISIM_BUS_55[0]                = s_LOGISIM_BUS_5[25];
   assign s_LOGISIM_BUS_203[5]               = s_LOGISIM_BUS_55[0];
   assign s_LOGISIM_BUS_55[1]                = s_LOGISIM_BUS_5[26];
   assign s_LOGISIM_BUS_203[6]               = s_LOGISIM_BUS_55[1];
   assign s_LOGISIM_BUS_55[2]                = s_LOGISIM_BUS_5[27];
   assign s_LOGISIM_BUS_203[7]               = s_LOGISIM_BUS_55[2];
   assign s_LOGISIM_BUS_55[3]                = s_LOGISIM_BUS_5[28];
   assign s_LOGISIM_BUS_203[8]               = s_LOGISIM_BUS_55[3];
   assign s_LOGISIM_BUS_55[4]                = s_LOGISIM_BUS_5[29];
   assign s_LOGISIM_BUS_203[9]               = s_LOGISIM_BUS_55[4];
   assign s_LOGISIM_BUS_55[5]                = s_LOGISIM_BUS_5[30];
   assign s_LOGISIM_BUS_203[10]              = s_LOGISIM_BUS_55[5];
   assign s_LOGISIM_BUS_55[6]                = s_LOGISIM_BUS_5[31];
   assign s_LOGISIM_BUS_203[11]              = s_LOGISIM_BUS_55[6];
   assign s_LOGISIM_BUS_70[0]                = s_LOGISIM_BUS_5[12];
   assign s_LOGISIM_BUS_167[0]               = s_LOGISIM_BUS_70[0];
   assign s_LOGISIM_BUS_70[1]                = s_LOGISIM_BUS_5[13];
   assign s_LOGISIM_BUS_167[1]               = s_LOGISIM_BUS_70[1];
   assign s_LOGISIM_BUS_70[2]                = s_LOGISIM_BUS_5[14];
   assign s_LOGISIM_BUS_167[2]               = s_LOGISIM_BUS_70[2];
   assign s_LOGISIM_BUS_93[0]                = s_LOGISIM_BUS_5[21];
   assign s_LOGISIM_BUS_125[0]               = s_LOGISIM_BUS_93[0];
   assign s_LOGISIM_BUS_93[1]                = s_LOGISIM_BUS_5[22];
   assign s_LOGISIM_BUS_125[1]               = s_LOGISIM_BUS_93[1];
   assign s_LOGISIM_BUS_93[2]                = s_LOGISIM_BUS_5[23];
   assign s_LOGISIM_BUS_125[2]               = s_LOGISIM_BUS_93[2];
   assign s_LOGISIM_BUS_93[3]                = s_LOGISIM_BUS_5[24];
   assign s_LOGISIM_BUS_125[3]               = s_LOGISIM_BUS_93[3];
   assign s_LOGISIM_BUS_93[4]                = s_LOGISIM_BUS_5[25];
   assign s_LOGISIM_BUS_125[4]               = s_LOGISIM_BUS_93[4];
   assign s_LOGISIM_BUS_93[5]                = s_LOGISIM_BUS_5[26];
   assign s_LOGISIM_BUS_125[5]               = s_LOGISIM_BUS_93[5];
   assign s_LOGISIM_BUS_93[6]                = s_LOGISIM_BUS_5[27];
   assign s_LOGISIM_BUS_125[6]               = s_LOGISIM_BUS_93[6];
   assign s_LOGISIM_BUS_93[7]                = s_LOGISIM_BUS_5[28];
   assign s_LOGISIM_BUS_125[7]               = s_LOGISIM_BUS_93[7];
   assign s_LOGISIM_BUS_93[8]                = s_LOGISIM_BUS_5[29];
   assign s_LOGISIM_BUS_125[8]               = s_LOGISIM_BUS_93[8];
   assign s_LOGISIM_BUS_93[9]                = s_LOGISIM_BUS_5[30];
   assign s_LOGISIM_BUS_125[9]               = s_LOGISIM_BUS_93[9];
   assign s_LOGISIM_BUS_100[0]               = s_LOGISIM_BUS_5[25];
   assign s_LOGISIM_BUS_210[4]               = s_LOGISIM_BUS_100[0];
   assign s_LOGISIM_BUS_100[1]               = s_LOGISIM_BUS_5[26];
   assign s_LOGISIM_BUS_210[5]               = s_LOGISIM_BUS_100[1];
   assign s_LOGISIM_BUS_100[2]               = s_LOGISIM_BUS_5[27];
   assign s_LOGISIM_BUS_210[6]               = s_LOGISIM_BUS_100[2];
   assign s_LOGISIM_BUS_100[3]               = s_LOGISIM_BUS_5[28];
   assign s_LOGISIM_BUS_210[7]               = s_LOGISIM_BUS_100[3];
   assign s_LOGISIM_BUS_100[4]               = s_LOGISIM_BUS_5[29];
   assign s_LOGISIM_BUS_210[8]               = s_LOGISIM_BUS_100[4];
   assign s_LOGISIM_BUS_100[5]               = s_LOGISIM_BUS_5[30];
   assign s_LOGISIM_BUS_210[9]               = s_LOGISIM_BUS_100[5];
   assign s_LOGISIM_NET_107                  = s_LOGISIM_BUS_5[31];
   assign s_LOGISIM_BUS_125[19]              = s_LOGISIM_NET_107;
   assign s_LOGISIM_NET_113                  = s_LOGISIM_BUS_5[31];
   assign s_LOGISIM_BUS_210[11]              = s_LOGISIM_NET_113;
   assign s_LOGISIM_BUS_143[0]               = s_LOGISIM_BUS_5[12];
   assign s_LOGISIM_BUS_137[12]              = s_LOGISIM_BUS_143[0];
   assign s_LOGISIM_BUS_143[1]               = s_LOGISIM_BUS_5[13];
   assign s_LOGISIM_BUS_137[13]              = s_LOGISIM_BUS_143[1];
   assign s_LOGISIM_BUS_143[2]               = s_LOGISIM_BUS_5[14];
   assign s_LOGISIM_BUS_137[14]              = s_LOGISIM_BUS_143[2];
   assign s_LOGISIM_BUS_143[3]               = s_LOGISIM_BUS_5[15];
   assign s_LOGISIM_BUS_137[15]              = s_LOGISIM_BUS_143[3];
   assign s_LOGISIM_BUS_143[4]               = s_LOGISIM_BUS_5[16];
   assign s_LOGISIM_BUS_137[16]              = s_LOGISIM_BUS_143[4];
   assign s_LOGISIM_BUS_143[5]               = s_LOGISIM_BUS_5[17];
   assign s_LOGISIM_BUS_137[17]              = s_LOGISIM_BUS_143[5];
   assign s_LOGISIM_BUS_143[6]               = s_LOGISIM_BUS_5[18];
   assign s_LOGISIM_BUS_137[18]              = s_LOGISIM_BUS_143[6];
   assign s_LOGISIM_BUS_143[7]               = s_LOGISIM_BUS_5[19];
   assign s_LOGISIM_BUS_137[19]              = s_LOGISIM_BUS_143[7];
   assign s_LOGISIM_BUS_143[8]               = s_LOGISIM_BUS_5[20];
   assign s_LOGISIM_BUS_137[20]              = s_LOGISIM_BUS_143[8];
   assign s_LOGISIM_BUS_143[9]               = s_LOGISIM_BUS_5[21];
   assign s_LOGISIM_BUS_137[21]              = s_LOGISIM_BUS_143[9];
   assign s_LOGISIM_BUS_143[10]              = s_LOGISIM_BUS_5[22];
   assign s_LOGISIM_BUS_137[22]              = s_LOGISIM_BUS_143[10];
   assign s_LOGISIM_BUS_143[11]              = s_LOGISIM_BUS_5[23];
   assign s_LOGISIM_BUS_137[23]              = s_LOGISIM_BUS_143[11];
   assign s_LOGISIM_BUS_143[12]              = s_LOGISIM_BUS_5[24];
   assign s_LOGISIM_BUS_137[24]              = s_LOGISIM_BUS_143[12];
   assign s_LOGISIM_BUS_143[13]              = s_LOGISIM_BUS_5[25];
   assign s_LOGISIM_BUS_137[25]              = s_LOGISIM_BUS_143[13];
   assign s_LOGISIM_BUS_143[14]              = s_LOGISIM_BUS_5[26];
   assign s_LOGISIM_BUS_137[26]              = s_LOGISIM_BUS_143[14];
   assign s_LOGISIM_BUS_143[15]              = s_LOGISIM_BUS_5[27];
   assign s_LOGISIM_BUS_137[27]              = s_LOGISIM_BUS_143[15];
   assign s_LOGISIM_BUS_143[16]              = s_LOGISIM_BUS_5[28];
   assign s_LOGISIM_BUS_137[28]              = s_LOGISIM_BUS_143[16];
   assign s_LOGISIM_BUS_143[17]              = s_LOGISIM_BUS_5[29];
   assign s_LOGISIM_BUS_137[29]              = s_LOGISIM_BUS_143[17];
   assign s_LOGISIM_BUS_143[18]              = s_LOGISIM_BUS_5[30];
   assign s_LOGISIM_BUS_137[30]              = s_LOGISIM_BUS_143[18];
   assign s_LOGISIM_BUS_143[19]              = s_LOGISIM_BUS_5[31];
   assign s_LOGISIM_BUS_137[31]              = s_LOGISIM_BUS_143[19];
   assign s_LOGISIM_NET_150                  = s_LOGISIM_BUS_5[25];
   assign s_LOGISIM_BUS_167[3]               = s_LOGISIM_NET_150;
   assign s_LOGISIM_BUS_182[0]               = s_LOGISIM_BUS_5[12];
   assign s_LOGISIM_BUS_125[11]              = s_LOGISIM_BUS_182[0];
   assign s_LOGISIM_BUS_182[1]               = s_LOGISIM_BUS_5[13];
   assign s_LOGISIM_BUS_125[12]              = s_LOGISIM_BUS_182[1];
   assign s_LOGISIM_BUS_182[2]               = s_LOGISIM_BUS_5[14];
   assign s_LOGISIM_BUS_125[13]              = s_LOGISIM_BUS_182[2];
   assign s_LOGISIM_BUS_182[3]               = s_LOGISIM_BUS_5[15];
   assign s_LOGISIM_BUS_125[14]              = s_LOGISIM_BUS_182[3];
   assign s_LOGISIM_BUS_182[4]               = s_LOGISIM_BUS_5[16];
   assign s_LOGISIM_BUS_125[15]              = s_LOGISIM_BUS_182[4];
   assign s_LOGISIM_BUS_182[5]               = s_LOGISIM_BUS_5[17];
   assign s_LOGISIM_BUS_125[16]              = s_LOGISIM_BUS_182[5];
   assign s_LOGISIM_BUS_182[6]               = s_LOGISIM_BUS_5[18];
   assign s_LOGISIM_BUS_125[17]              = s_LOGISIM_BUS_182[6];
   assign s_LOGISIM_BUS_182[7]               = s_LOGISIM_BUS_5[19];
   assign s_LOGISIM_BUS_125[18]              = s_LOGISIM_BUS_182[7];
   assign s_LOGISIM_NET_187                  = s_LOGISIM_BUS_5[7];
   assign s_LOGISIM_BUS_210[10]              = s_LOGISIM_NET_187;
   assign s_LOGISIM_NET_205                  = s_LOGISIM_BUS_5[30];
   assign s_LOGISIM_BUS_167[4]               = s_LOGISIM_NET_205;
   assign s_LOGISIM_BUS_212[0]               = s_LOGISIM_BUS_5[7];
   assign s_LOGISIM_BUS_203[0]               = s_LOGISIM_BUS_212[0];
   assign s_LOGISIM_BUS_212[1]               = s_LOGISIM_BUS_5[8];
   assign s_LOGISIM_BUS_203[1]               = s_LOGISIM_BUS_212[1];
   assign s_LOGISIM_BUS_212[2]               = s_LOGISIM_BUS_5[9];
   assign s_LOGISIM_BUS_203[2]               = s_LOGISIM_BUS_212[2];
   assign s_LOGISIM_BUS_212[3]               = s_LOGISIM_BUS_5[10];
   assign s_LOGISIM_BUS_203[3]               = s_LOGISIM_BUS_212[3];
   assign s_LOGISIM_BUS_212[4]               = s_LOGISIM_BUS_5[11];
   assign s_LOGISIM_BUS_203[4]               = s_LOGISIM_BUS_212[4];
   assign s_LOGISIM_NET_225                  = s_LOGISIM_BUS_5[20];
   assign s_LOGISIM_BUS_125[10]              = s_LOGISIM_NET_225;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_227                  = IR1;
   assign s_LOGISIM_NET_256                  = Go;
   assign s_LOGISIM_NET_246                  = IR2;
//   assign s_LOGISIM_NET_239                  = CLK;
   assign s_LOGISIM_NET_224                  = RST;
   assign s_LOGISIM_NET_247                  = IR3;

   divider #(.N(4)) globalClkDivider_100(.clk(CLK),.clk_N(s_LOGISIM_NET_239));
    
   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign SEG                                = s_LOGISIM_BUS_19[7:0];
   //assign                                    = s_LOGISIM_BUS_146[31:0];  // 总周期
   assign NA                                 = s_LOGISIM_BUS_184[7:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_249 = 1'd0;

   assign s_LOGISIM_NET_82 = 1'd0;

   assign s_LOGISIM_BUS_137[11:0] = 12'd0;

   assign s_LOGISIM_NET_161 = 1'd1;

   assign s_LOGISIM_NET_230 = 1'd1;

   assign s_LOGISIM_NET_236 = 1'd1;

   assign s_LOGISIM_NET_241 = 1'd0;

   assign s_LOGISIM_NET_76 = 1'd0;

   assign s_LOGISIM_NET_228 = 1'd0;

   assign s_LOGISIM_NET_63 = 1'd1;

   assign s_LOGISIM_NET_229 = 1'd0;

   assign s_LOGISIM_NET_240 = 1'd0;

   assign s_LOGISIM_BUS_122[4:0] = 5'd1;

   assign s_LOGISIM_NET_231 = 1'd1;

   assign s_LOGISIM_BUS_232[31:0] = 32'd0;

   assign s_LOGISIM_BUS_233[31:0] = 32'd0;

   assign s_LOGISIM_NET_57 = 1'd0;

   assign s_LOGISIM_BUS_39[31:0] = 32'd12788;

   assign s_LOGISIM_NET_149 = 1'd1;

   assign s_LOGISIM_NET_234 = 1'd0;

   assign s_LOGISIM_NET_235 = 1'd0;

   assign s_LOGISIM_NET_242 = 1'd0;

   assign s_LOGISIM_BUS_9[31:0] = 32'd12624;

   assign s_LOGISIM_NET_237 = 1'd0;

   assign s_LOGISIM_NET_253 = 1'd1;

   assign s_LOGISIM_NET_243 = 1'd0;

   assign s_LOGISIM_NET_140 = 1'd1;

   assign s_LOGISIM_NET_245 = 1'd1;

   assign s_LOGISIM_NET_263 = 1'd1;

   assign s_LOGISIM_NET_248 = 1'd0;

   assign s_LOGISIM_BUS_206[4:0] = 5'd17;

   assign s_LOGISIM_BUS_250[31:0] = 32'hfffffffe;

   assign s_LOGISIM_BUS_251[31:0] = 32'd0;

   assign s_LOGISIM_BUS_252[31:0] = 32'd34;

   assign s_LOGISIM_NET_262 = 1'd0;

   assign s_LOGISIM_NET_121 = 1'd0;

   assign s_LOGISIM_BUS_254[31:0] = 32'd4;

   assign s_LOGISIM_NET_255 = 1'd0;

   assign s_LOGISIM_BUS_139[4:0] = 5'd10;

   assign s_LOGISIM_NET_257 = 1'd1;

   assign s_LOGISIM_NET_258 = 1'd1;

   assign s_LOGISIM_BUS_45[31:16] = 16'd0;

   assign s_LOGISIM_NET_259 = 1'd0;

   assign s_LOGISIM_NET_260 = 1'd0;

   assign s_LOGISIM_NET_261 = 1'd0;

   assign s_LOGISIM_BUS_58[31:0] = 32'd0;

   assign s_LOGISIM_NET_264 = 1'd0;

   assign s_LOGISIM_BUS_104[31:0] = 32'd12460;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
//choose display contents
//    wire [31:0] uart_display;
    wire [31:0] display;
//    wire [31:0] displaySel;
//    wire [31:0] ram_display_addr;
    assign display = {2'b0,s_LOGISIM_BUS_146[31:2]};    
//    assign displaySel = {16'b0,dis16,dis15,dis14,dis13,dis12,dis11,dis10,dis9,dis8,dis7,dis6,dis5,dis4,dis3,dis2,dis1};
//    assign display[31:0] = s_LOGISIM_BUS_38[31:0];  //mem
//	assign ram_display_addr[31:0] = 
//	displaySel[0] ? 32'd120 :
//    displaySel[1] ? 32'd520 :
//    displaySel[2] ? 32'd584 :
//    displaySel[3] ? 32'd660 :
//    displaySel[4] ? 32'd920 :
//    displaySel[5] ? 32'd952 :
//    displaySel[6] ? 32'd1320 :
//    displaySel[7] ? 32'd1520 :
//    displaySel[8] ? 32'd1720 :
//    displaySel[9] ? 32'd1920 :
//    displaySel[10] ? 32'd2120 :
//    displaySel[11] ? 32'd2320 :
//    displaySel[12] ? 32'd2520 :
//    displaySel[13] ? 32'd2920 :
//    displaySel[14] ? 32'd3120 :
//                     displaySel[15] ? 32'd80 : 32'd0;    
//    assign display[31:0] = s_LOGISIM_BUS_7[31:0]; //MEM_PC
    
    wire uart_ram_write;
    wire [31:0] uart_ram_addr;
    wire [31:0] uart_ram_data;
    wire hold_clk;
    assign s_LOGISIM_NET_244 = halt | hold_clk;
    assign ram_we = hold_clk ? uart_ram_write : s_LOGISIM_NET_23;
    assign ram_addr = 
//                    (|displaySel) ? ram_display_addr[31:0] : 
                      hold_clk ? uart_ram_addr[31:0] : s_LOGISIM_BUS_191[31:0];
    assign ram_data = hold_clk ? uart_ram_data[31:0] : s_LOGISIM_BUS_97[31:0];
    
    uart_device uart_device_u(
        .sys_clk(s_LOGISIM_NET_239),
        .sys_rst_n(~RST),
        .recv_int(MEM_Open_INT),
        .send_int(MEM_Close_INT),
        .uart_rxd(uart_rxd),
        .target_addr(MEM_Address[31:0]),
        .send_4bytes_data(s_LOGISIM_BUS_38[31:0]),
        .uart_txd(uart_txd),
        .hold_clk(hold_clk),
        .ram_write(uart_ram_write),
        .recv_4bytes_data(uart_ram_data[31:0]),
        .ram_addr(uart_ram_addr));
    
    
   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_216),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_105[31:0]),
                    .DataB(s_LOGISIM_BUS_232[31:0]));

   Bit_Extender_12_32_SIGN      BitExtender_1 (.imm_in(s_LOGISIM_BUS_5[31:20]),
                                               .imm_out(s_LOGISIM_BUS_52[31:0]));

   Bit_Extender_20_32_SIGN      BitExtender_2 (.imm_in(s_LOGISIM_BUS_125[19:0]),
                                               .imm_out(s_LOGISIM_BUS_78[31:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_141[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_199[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_158[31:0]),
             .MuxIn_3(32'd0),
             .MuxOut(s_LOGISIM_BUS_29[31:0]),
             .Sel(s_LOGISIM_BUS_144[1:0]));

   Bit_Extender_12_32_SIGN      BitExtender_3 (.imm_in(s_LOGISIM_BUS_203[11:0]),
                                               .imm_out(s_LOGISIM_BUS_87[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_102[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_78[31:0]),
             .MuxOut(s_LOGISIM_BUS_68[31:0]),
             .Sel(s_LOGISIM_NET_120));

   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_42),
              .Input_2(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_109));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_207),
              .Input_2(s_LOGISIM_NET_172),
              .Input_3(s_LOGISIM_NET_226),
              .Result(s_LOGISIM_NET_213));

   D_Flip_Flop #(.ActiveLevel(0))    // Halt
      FF_LATCH_1 (.Clock(s_LOGISIM_NET_239),   // ok
                  .D(s_LOGISIM_NET_13),        // ok
                  .Q(halt),
                  .Q_bar(),
                  .Clr(s_LOGISIM_NET_256));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_38[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_38[31:16]),
             .MuxOut(s_LOGISIM_BUS_45[15:0]),
             .Sel(s_LOGISIM_BUS_191[1]));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_196),
              .Input_2(s_LOGISIM_NET_226),
              .Result(s_LOGISIM_NET_214));

   BitComparator #(.TwosComplement(0))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_40),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_NET_204),
                    .DataB(s_LOGISIM_NET_138));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_228),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_156[31:0]),
                 .DataB(s_LOGISIM_BUS_254[31:0]),
                 .Result(s_LOGISIM_BUS_135[31:0]));

   FPGADigit      FPGADigit_1 (.AN(s_LOGISIM_BUS_184[7:0]),
                               .SEG(s_LOGISIM_BUS_19[7:0]),
                               .clkx(CLK),
                               .dig(display[31:0]));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_NET_175),
                         .Result(s_LOGISIM_NET_0));

   RAM_DATA_RAM      RAM_1 (
//                            .displaySel(displaySel[31:0]),
//                            .display(ram_display[31:0]),
                            .addr(ram_addr[15:2]),
                            .clk(s_LOGISIM_NET_239),
                            .d(ram_data[31:0]),
                            .q(s_LOGISIM_BUS_38[31:0]),
                            .we(ram_we));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(-1),
                    .mode(0),
                    .width(32))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_85[31:0]),
                 .Enable(s_LOGISIM_NET_194),
                 .GlobalClock(s_LOGISIM_NET_239),
                 .LoadData(32'd0),
                 .Up_n_Down(1'b1),
                 .clear(s_LOGISIM_NET_224),
                 .load(s_LOGISIM_NET_234),
                 .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_84[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_199[31:0]),
             .MuxOut(s_LOGISIM_BUS_44[31:0]),
             .Sel(s_LOGISIM_NET_186));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_103[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_160[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_20[31:0]),
             .MuxIn_3(32'd0),
             .MuxOut(s_LOGISIM_BUS_90[31:0]),
             .Sel(s_LOGISIM_BUS_124[1:0]));
   

   
   
   


   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_83),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_90[31:0]),
                    .DataB(s_LOGISIM_BUS_252[31:0]));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_244),
                         .Result(s_LOGISIM_NET_66));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_175),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_217[31:0]),
                    .DataB(s_LOGISIM_BUS_233[31:0]));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_244),
                         .Result(s_LOGISIM_NET_194));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_98[31:0]),
                 .Result(s_LOGISIM_BUS_56[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_122[4:0]));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_239),
                       .ClockEnable(s_LOGISIM_NET_54),
                       .D(s_LOGISIM_BUS_29[31:0]),
                       .Q(s_LOGISIM_BUS_156[31:0]),
                       .Reset(s_LOGISIM_NET_224),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_260),
                       .pre(s_LOGISIM_NET_121));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_83),
                         .Result(s_LOGISIM_NET_114));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_135[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_27[31:0]),
             .MuxOut(s_LOGISIM_BUS_123[31:0]),
             .Sel(s_LOGISIM_NET_178));

   AND_GATE #(.BubblesMask(3))
      GATE_8 (.Input_1(s_LOGISIM_NET_17),
              .Input_2(s_LOGISIM_NET_244),
              .Result(s_LOGISIM_NET_106));

   AND_GATE #(.BubblesMask(3))
      GATE_9 (.Input_1(s_LOGISIM_NET_17),
              .Input_2(s_LOGISIM_NET_244),
              .Result(s_LOGISIM_NET_152));

   AND_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_112),
               .Input_2(s_LOGISIM_NET_211),
               .Result(s_LOGISIM_NET_80));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(s_LOGISIM_BUS_71[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_257),
                .input_vector({s_LOGISIM_NET_22,
                               s_LOGISIM_NET_36,
                               s_LOGISIM_NET_30,
                               s_LOGISIM_NET_63}));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(32'd0),
             .MuxIn_1(s_LOGISIM_BUS_104[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_39[31:0]),
             .MuxOut(s_LOGISIM_BUS_158[31:0]),
             .Sel(s_LOGISIM_BUS_74[1:0]));

   ROM_IR_ROM      ROM_1 (.Address(s_LOGISIM_BUS_156[11:2]),
                          .Data(s_LOGISIM_BUS_3[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_52[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_87[31:0]),
             .MuxOut(s_LOGISIM_BUS_164[31:0]),
             .Sel(s_LOGISIM_NET_116));

   OR_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_106),
               .Input_2(s_LOGISIM_NET_207),
               .Result(s_LOGISIM_NET_54));

   Decoder_4      DECODER_1 (.DecoderOut_0(),
                             .DecoderOut_1(s_LOGISIM_NET_99),
                             .DecoderOut_2(s_LOGISIM_NET_168),
                             .DecoderOut_3(s_LOGISIM_NET_196),
                             .Enable(1'b1),
                             .Sel(s_LOGISIM_BUS_198[1:0]));

   AND_GATE #(.BubblesMask(1))
      GATE_12 (.Input_1(s_LOGISIM_NET_226),
               .Input_2(s_LOGISIM_NET_91),
               .Result(s_LOGISIM_NET_193));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_123[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_130[31:0]),
              .MuxOut(s_LOGISIM_BUS_141[31:0]),
              .Sel(s_LOGISIM_NET_95));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_46),
               .Input_2(s_LOGISIM_NET_114),
               .Result(s_LOGISIM_NET_60));

   REGISTER_FLIP_FLOP_INTNumber #(.ActiveLevel(1),
                                  .NrOfBits(2))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_239),
                       .ClockEnable(s_LOGISIM_NET_207),
                       .D(s_LOGISIM_BUS_74[1:0]),
                       .Q(s_LOGISIM_BUS_198[1:0]),
                       .Reset(s_LOGISIM_NET_224),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_259),
                       .pre(s_LOGISIM_NET_240));

   REGISTER_FLIP_FLOP_LeaData #(.ActiveLevel(1),
                                .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_239),
                       .ClockEnable(s_LOGISIM_NET_69),
                       .D(s_LOGISIM_BUS_47[31:0]),
                       .Q(s_LOGISIM_BUS_146[31:0]),
                       .Reset(s_LOGISIM_NET_241),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_242),
                       .pre(s_LOGISIM_NET_248));

   D_Flip_Flop #(.ActiveLevel(1))             // IE
      FF_LATCH_2 (.Clock(s_LOGISIM_NET_239),  // ok
                  .D(s_LOGISIM_NET_193),      // ok 
                  .Q(),                       // ok
                  .Q_bar(s_LOGISIM_NET_117),  // ok
                  .Clr(1'b0));                // ok

   AND_GATE #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_223),
               .Input_2(s_LOGISIM_NET_48),
               .Result(s_LOGISIM_NET_35));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_2 (.Address(s_LOGISIM_BUS_74[1:0]),
                .EnableOut(),
                .GroupSelect(s_LOGISIM_NET_91),
                .enable(s_LOGISIM_NET_245),
                .input_vector({s_LOGISIM_NET_81,
                               s_LOGISIM_NET_185,
                               s_LOGISIM_NET_110,
                               s_LOGISIM_NET_82}));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_207),
               .Input_2(s_LOGISIM_NET_95),
               .Input_3(s_LOGISIM_NET_226),
               .Result(s_LOGISIM_NET_115));

   NOT_GATE      GATE_16 (.Input_1(s_LOGISIM_NET_244),
                          .Result(s_LOGISIM_NET_201));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_118[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_34[31:0]),
              .MuxOut(s_LOGISIM_BUS_130[31:0]),
              .Sel(s_LOGISIM_NET_138));

   AND_GATE #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_168),
               .Input_2(s_LOGISIM_NET_226),
               .Result(s_LOGISIM_NET_133));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_58[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_217[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_105[31:0]),
              .MuxIn_3(s_LOGISIM_BUS_119[31:0]),
              .MuxOut(s_LOGISIM_BUS_84[31:0]),
              .Sel(s_LOGISIM_BUS_24[1:0]));
    
    wire AND_BLT;
    
    AND_GATE #(.BubblesMask(0))
      GATE_BLT(.Input_1(EX_BLT),
               .Input_2(EX_LESS),
               .Result(AND_BLT));

   AND_GATE #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_128),
               .Input_2(s_LOGISIM_NET_220),
               .Result(s_LOGISIM_NET_108));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_5[24:20]),
              .MuxIn_1(s_LOGISIM_BUS_139[4:0]),
              .MuxOut(s_LOGISIM_BUS_4[4:0]),
              .Sel(s_LOGISIM_NET_94));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_47[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_77[31:0]),
              .MuxOut(s_LOGISIM_BUS_101[31:0]),
              .Sel(s_LOGISIM_NET_190));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_NET_43),
                          .Result(s_LOGISIM_NET_126));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_JALB(.Input_1(s_LOGISIM_NET_61),
               .Input_2(s_LOGISIM_NET_35),
               .Input_3(s_LOGISIM_NET_80),
               .Input_4(s_LOGISIM_NET_108),
               .Input_5(AND_BLT),
               .Result(s_LOGISIM_NET_202));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_21 (.Input_1(s_LOGISIM_BUS_159[31:0]),
               .Input_2(s_LOGISIM_BUS_250[31:0]),
               .Result(s_LOGISIM_BUS_219[31:0]));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_NET_40),
                          .Result(s_LOGISIM_NET_95));

   REGISTER_FLIP_FLOP_mEPC #(.ActiveLevel(0),
                             .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_239),
                       .ClockEnable(s_LOGISIM_NET_207),
                       .D(s_LOGISIM_BUS_44[31:0]),
                       .Q(s_LOGISIM_BUS_199[31:0]),
                       .Reset(s_LOGISIM_NET_224),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_264),
                       .pre(s_LOGISIM_NET_249));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_15 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_118[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_163[31:0]),
              .MuxOut(s_LOGISIM_BUS_188[31:0]),
              .Sel(s_LOGISIM_NET_138));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_16 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_33[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_26[31:0]),
              .MuxOut(s_LOGISIM_BUS_160[31:0]),
              .Sel(s_LOGISIM_NET_129));

   NOT_GATE      GATE_23 (.Input_1(s_LOGISIM_NET_216),
                          .Result(s_LOGISIM_NET_165));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_17 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_179[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_219[31:0]),
              .MuxOut(s_LOGISIM_BUS_34[31:0]),
              .Sel(s_LOGISIM_NET_174));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_18 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_145[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_160[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_20[31:0]),
              .MuxIn_3(32'd0),
              .MuxOut(s_LOGISIM_BUS_47[31:0]),
              .Sel(s_LOGISIM_BUS_169[1:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(0))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_43),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_119[31:0]),
                    .DataB(s_LOGISIM_BUS_251[31:0]));

   Bit_Extender_12_32_SIGN      BitExtender_4 (.imm_in(s_LOGISIM_BUS_210[11:0]),
                                               .imm_out(s_LOGISIM_BUS_102[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_NET_99),
               .Input_2(s_LOGISIM_NET_226),
               .Result(s_LOGISIM_NET_215));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_3 (.Address(s_LOGISIM_BUS_144[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_253),
                .input_vector({s_LOGISIM_NET_57,
                               s_LOGISIM_NET_207,
                               s_LOGISIM_NET_226,
                               s_LOGISIM_NET_140}));

   AND_GATE #(.BubblesMask(0))
      GATE_25 (.Input_1(s_LOGISIM_NET_117),
               .Input_2(s_LOGISIM_NET_91),
               .Result(s_LOGISIM_NET_207));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_19 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_188[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_141[31:0]),
              .MuxOut(s_LOGISIM_BUS_119[31:0]),
              .Sel(s_LOGISIM_NET_95));

   AND_GATE #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_46),
               .Input_2(s_LOGISIM_NET_83),
               .Result(s_LOGISIM_NET_69));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_NET_244),
                          .Result(s_LOGISIM_NET_15));

   OR_GATE #(.BubblesMask(0))
      GATE_28 (.Input_1(s_LOGISIM_NET_174),
               .Input_2(s_LOGISIM_NET_202),
               .Result(s_LOGISIM_NET_138));

   OR_GATE #(.BubblesMask(0))
      GATE_29 (.Input_1(s_LOGISIM_NET_62),
               .Input_2(s_LOGISIM_NET_59),
               .Result(s_LOGISIM_NET_36));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(s_LOGISIM_NET_262),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_56[31:0]),
                 .DataB(s_LOGISIM_BUS_49[31:0]),
                 .Result(s_LOGISIM_BUS_179[31:0]));

   NOT_GATE      GATE_30 (.Input_1(s_LOGISIM_NET_48),
                          .Result(s_LOGISIM_NET_112));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_4 (.Address(s_LOGISIM_BUS_24[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_263),
                .input_vector({s_LOGISIM_NET_126,
                               s_LOGISIM_NET_165,
                               s_LOGISIM_NET_0,
                               s_LOGISIM_NET_76}));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_20 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_191[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_111[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_45[31:0]),
              .MuxIn_3(32'd0),
              .MuxOut(s_LOGISIM_BUS_20[31:0]),
              .Sel(s_LOGISIM_BUS_75[1:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_21 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_11[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_218[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_217[31:0]),
              .MuxIn_3(s_LOGISIM_BUS_28[31:0]),
              .MuxOut(s_LOGISIM_BUS_33[31:0]),
              .Sel(s_LOGISIM_BUS_71[1:0]));

   OR_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_211),
               .Input_2(s_LOGISIM_NET_128),
               .Input_3(s_LOGISIM_NET_174),
               .Input_4(s_LOGISIM_NET_223),
               .Input_5(s_LOGISIM_NET_61),
               .Input_6(EX_BLT),
               .Result(s_LOGISIM_NET_197));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   MEM_WB      MEMWB (.AluResult(s_LOGISIM_BUS_191[31:0]),
                       .IR(s_LOGISIM_BUS_154[31:0]),
                       .JAL(s_LOGISIM_NET_64),
                       .JALR(s_LOGISIM_NET_147),
                       .LHU(s_LOGISIM_BUS_75[1]),
                       .LHUData(s_LOGISIM_BUS_45[31:0]),
                       .LUI(s_LOGISIM_BUS_75[0]),
                       .LUI_imm(s_LOGISIM_BUS_111[31:0]),
                       .MemData(s_LOGISIM_BUS_38[31:0]),
                       .MemToReg(s_LOGISIM_NET_136),
                       .PC(s_LOGISIM_BUS_7[31:0]),
                       .PCPlus4(s_LOGISIM_BUS_105[31:0]),
                       .Rd(s_LOGISIM_BUS_79[4:0]),
                       .RegWrite(s_LOGISIM_NET_208),
                       .URET(s_LOGISIM_NET_226),
                       ._AluResult(s_LOGISIM_BUS_11[31:0]),
                       ._IR(s_LOGISIM_BUS_8[31:0]),
                       ._JAL(s_LOGISIM_NET_59),
                       ._JALR(s_LOGISIM_NET_62),
                       ._LHU(s_LOGISIM_NET_22),
                       ._LHUData(s_LOGISIM_BUS_28[31:0]),
                       ._LUI(s_LOGISIM_NET_129),
                       ._LUI_imm(s_LOGISIM_BUS_26[31:0]),
                       ._MemData(s_LOGISIM_BUS_218[31:0]),
                       ._MemToReg(s_LOGISIM_NET_30),
                       ._PC(s_LOGISIM_BUS_177[31:0]),
                       ._PCPlus4(s_LOGISIM_BUS_217[31:0]),
                       ._Rd(s_LOGISIM_BUS_131[4:0]),
                       ._RegWrite(s_LOGISIM_NET_238),
                       ._URET(s_LOGISIM_NET_186),
                       ._halt(s_LOGISIM_NET_13),
                       .clk(s_LOGISIM_NET_239),
                       .en(s_LOGISIM_NET_66),
                       .halt(s_LOGISIM_NET_148),
                       .reset(s_LOGISIM_NET_224),
                       .FCAL(MEM_FCAL),
                       .FLW(MEM_FLW),
                       .FLT(MEM_FLT),
                       ._FCAL(WB_FCAL),
                       ._FLW(WB_FLW),
                       ._FLT(WB_FLT));

   ALU      ALU_1 (.AluOP(s_LOGISIM_BUS_37[3:0]),
                   .Equal(s_LOGISIM_NET_48),
                   .Less(EX_LESS),
                   .NotLess(s_LOGISIM_NET_220),
                   .Result(s_LOGISIM_BUS_159[31:0]),
                   .Result_2(),
                   .X(s_LOGISIM_BUS_90[31:0]),
                   .Y(s_LOGISIM_BUS_101[31:0]));
                   
     FloatALU  ALU_F (.oper(FloatOP[1:0]),
                      .n1(s_LOGISIM_BUS_90[31:0]),
                      .n2(s_LOGISIM_BUS_101[31:0]),
                      .LessThan(FloatLESS),
                      .result(FloatResult[31:0]),
                      .Exception(),
                      .Overflow(),
                      .Underflow());          
                          
    wire[1:0] SelForCalResult;
    assign SelForCalResult = {EX_FLT,EX_FCAL};
    
    wire[31:0] ExtendForFLT;
    wire[30:0] ExtendConstant;
    assign ExtendConstant = 31'b0;
    wire FLTOK;
    assign FLTOK = EX_FLT & FloatLESS;
    assign ExtendForFLT = {ExtendConstant,FLTOK};
                                                                
    Multiplexer_bus_4 #(.NrOfBits(32))
              MUX_CalResult (.Enable(1'b1),
                        .MuxIn_0(s_LOGISIM_BUS_159[31:0]),               //ok
                        .MuxIn_1(FloatResult[31:0]),          //ok
                        .MuxIn_2(ExtendForFLT[31:0]),          //ok
                        .MuxIn_3(32'b0),              //ok
                        .MuxOut(CalResult[31:0]),  //ok
                        .Sel(SelForCalResult[1:0]));               //ok      

   INT      INT_1 (.Reset(s_LOGISIM_NET_224),
                   .Synchronousclearsignal(s_LOGISIM_NET_215),
                   .Terminalwaitingforindication(s_LOGISIM_NET_31),
                   .clk(s_LOGISIM_NET_239),
                   .interruptmaskbit(s_LOGISIM_NET_110),
                   .interruptsource(s_LOGISIM_NET_227));
                   
                   

                   
   ID_EX      IDEX (.Alu_OP(s_LOGISIM_BUS_127[3:0]),
                     .Alu_SRCB(s_LOGISIM_NET_16),
                     .BEQ(s_LOGISIM_NET_171),
                     .BGE(s_LOGISIM_NET_153),
                     .BJ_imm(s_LOGISIM_BUS_68[31:0]),
                     .BNE(s_LOGISIM_NET_157),
                     .IR(s_LOGISIM_BUS_5[31:0]),
                     .IS_imm(s_LOGISIM_BUS_164[31:0]),
                     .JAL(s_LOGISIM_NET_120),
                     .JALR(s_LOGISIM_NET_180),
                     .LHU(s_LOGISIM_NET_221),
                     .LUI(s_LOGISIM_NET_67),
                     .LUI_imm(s_LOGISIM_BUS_137[31:0]),
                     .MemToReg(s_LOGISIM_NET_50),
                     .MemWrite(s_LOGISIM_NET_200),
                     .PC(s_LOGISIM_BUS_163[31:0]),
                     .PCPlus4(s_LOGISIM_BUS_166[31:0]),
                     .PredictJump(s_LOGISIM_NET_189),
                     .R1(ID_R1[31:0]),
                     .R2(ID_R2[31:0]),
                     .Rd(s_LOGISIM_BUS_5[11:7]),
                     .RegWrite(s_LOGISIM_NET_183),
                     .Rs1Forward(s_LOGISIM_BUS_53[1:0]),
                     .Rs2Forward(s_LOGISIM_BUS_88[1:0]),
                     .URET(s_LOGISIM_NET_92),
                     ._Alu_OP(s_LOGISIM_BUS_37[3:0]),
                     ._Alu_SRCB(s_LOGISIM_NET_190),
                     ._BEQ(s_LOGISIM_NET_223),
                     ._BGE(s_LOGISIM_NET_128),
                     ._BJ_imm(s_LOGISIM_BUS_98[31:0]),
                     ._BNE(s_LOGISIM_NET_211),
                     ._IR(s_LOGISIM_BUS_32[31:0]),
                     ._IS_imm(s_LOGISIM_BUS_77[31:0]),
                     ._JAL(s_LOGISIM_NET_61),
                     ._JALR(s_LOGISIM_NET_174),
                     ._LHU(s_LOGISIM_NET_10),
                     ._LUI(s_LOGISIM_NET_195),
                     ._LUI_imm(s_LOGISIM_BUS_2[31:0]),
                     ._MemToReg(s_LOGISIM_NET_42),
                     ._MemWrite(s_LOGISIM_NET_162),
                     ._PC(s_LOGISIM_BUS_49[31:0]),
                     ._PCPlus4(s_LOGISIM_BUS_118[31:0]),
                     ._PredictJump(s_LOGISIM_NET_204),
                     ._R1(s_LOGISIM_BUS_103[31:0]),
                     ._R2(s_LOGISIM_BUS_145[31:0]),
                     ._Rd(s_LOGISIM_BUS_6[4:0]),
                     ._RegWrite(s_LOGISIM_NET_25),
                     ._Rs1Foward(s_LOGISIM_BUS_124[1:0]),
                     ._Rs2Foward(s_LOGISIM_BUS_169[1:0]),
                     ._URET(s_LOGISIM_NET_173),
                     ._ecall(s_LOGISIM_NET_46),
                     .clk(s_LOGISIM_NET_239),
                     .clr(s_LOGISIM_NET_213),
                     .ecall(s_LOGISIM_NET_94),
                     .en(s_LOGISIM_NET_15),
                     .reset(s_LOGISIM_NET_224),
                     .CSRRSI(ID_CSRRSI),
                     .CSRRCI(ID_CSRRCI),
                     .FCAL(ID_FCAL),
                     .FLW(ID_FLW),
                     .BLT(ID_BLT),
                     .FLT(ID_FLT),
                     .FS1(ID_FS1),
                     .FS0(ID_FS0),
                     .frd(ID_frd),
                     ._CSRRSI(EX_CSRRSI),
                     ._CSRRCI(EX_CSRRCI),
                     ._FCAL(EX_FCAL),
                     ._FLW(EX_FLW),
                     ._BLT(EX_BLT),
                     ._FLT(EX_FLT),
                     ._FS1(EX_FS1),
                     ._FS0(EX_FS0),
                     ._frd(EX_frd));

   INT      INT_2 (.Reset(s_LOGISIM_NET_224),
                   .Synchronousclearsignal(s_LOGISIM_NET_214),
                   .Terminalwaitingforindication(s_LOGISIM_NET_192),
                   .clk(s_LOGISIM_NET_239),
                   .interruptmaskbit(s_LOGISIM_NET_81),
                   .interruptsource(s_LOGISIM_NET_247));
                   
                   
                   

   
   
   Controller      Controller_1 (.ALU_OP(s_LOGISIM_BUS_127[3:0]),
                                 .ALU_SRC(s_LOGISIM_NET_16),
                                 .BGE(s_LOGISIM_NET_153),
                                 .Beq(s_LOGISIM_NET_171),
                                 .Bne(s_LOGISIM_NET_157),
                                 .Funct(s_LOGISIM_BUS_167[4:0]),
                                 .IR21(s_LOGISIM_BUS_5[21]),
                                 .JAL(s_LOGISIM_NET_120),
                                 .Jalr(s_LOGISIM_NET_180),
                                 .LHU(s_LOGISIM_NET_221),
                                 .LUI(s_LOGISIM_NET_67),
                                 .MemToReg(s_LOGISIM_NET_50),
                                 .MemWrite(s_LOGISIM_NET_200),
                                 .OP(s_LOGISIM_BUS_5[6:2]),
                                 .RegWrite(s_LOGISIM_NET_183),
                                 .S_type(s_LOGISIM_NET_116),
                                 .ecall(s_LOGISIM_NET_94),
                                 .rs1_used(s_LOGISIM_NET_65),
                                 .rs2_used(s_LOGISIM_NET_41),
                                 .uret(s_LOGISIM_NET_92),
                                 .CSRRSI(ID_CSRRSI),
                                 .CSRRCI(ID_CSRRCI),
                                 .FCAL(ID_FCAL),
                                 .FSW(ID_FSW),
                                 .FLW(ID_FLW),
                                 .BLT(ID_BLT),
                                 .FLT(ID_FLT),
                                 .FS1(ID_FS1),
                                 .FS0(ID_FS0),
                                 .frs1(ID_frs1),
                                 .frs2(ID_frs2),
                                 .frd(ID_frd),
                                 .IR(s_LOGISIM_BUS_5[31:0]));
   

   
   wire[31:0] R1FromFREgFile;
   wire[31:0] R2FromFREgFile;
   
   wire RegWriteForFloat;
   assign RegWriteForFloat = s_LOGISIM_NET_238 & (WB_FLW | WB_FCAL);
   
   Regfile_negedge       RegFile_float (.Clk(s_LOGISIM_NET_239),
                                        .Din(s_LOGISIM_BUS_160[31:0]),
                                        .R1Adr(s_LOGISIM_BUS_14[4:0]),
                                        .R2Adr(s_LOGISIM_BUS_4[4:0]),
                                        .WAdr(s_LOGISIM_BUS_131[4:0]),
                                        .WE(RegWriteForFloat),                                        
                                        .R1(R1FromFREgFile[31:0]),
                                        .R2(R2FromFREgFile[31:0]));
   
   wire RegWriteForInteger;
   assign RegWriteForInteger = (s_LOGISIM_NET_238 & (~WB_FLW) & (~WB_FCAL)) | WB_FLT;
   
   RegFile      RegFile_1 (.Clk(s_LOGISIM_NET_239),
                           .Din(s_LOGISIM_BUS_160[31:0]),
                           .R1(s_LOGISIM_BUS_142[31:0]),
                           .R2(s_LOGISIM_BUS_181[31:0]),
                           .WE(RegWriteForInteger),
                           .rA(s_LOGISIM_BUS_14[4:0]),
                           .rB(s_LOGISIM_BUS_4[4:0]),
                           .rW(s_LOGISIM_BUS_131[4:0]));
   wire[31:0] ID_R1;
   wire[31:0] ID_R2;                        
   wire SelForR1;
   assign SelForR1 = ID_FCAL | ID_FLT;
      
   Multiplexer_bus_2              #(.NrOfBits(32)) 
                MuxForR1           (.Enable(1'b1),
                                   .MuxIn_0(s_LOGISIM_BUS_142[31:0]),
                                   .MuxIn_1(R1FromFREgFile[31:0]),
                                   .Sel(SelForR1),
                                   .MuxOut(ID_R1[31:0]));   
                                  
   wire SelForR2;
   assign SelForR2 = ID_FCAL | ID_FSW | ID_FLT;                   
                                           
   Multiplexer_bus_2              #(.NrOfBits(32)) 
                MuxForR2           (.Enable(1'b1),
                                    .MuxIn_0(s_LOGISIM_BUS_181[31:0]),
                                    .MuxIn_1(R2FromFREgFile[31:0]),
                                    .Sel(SelForR2),
                                    .MuxOut(ID_R2[31:0]));                             
                           
    wire[4:0] r1;
                                    
   Multiplexer_bus_2 #(.NrOfBits(5))
            MUX_6 (.Enable(1'b1),
                   .MuxIn_0(s_LOGISIM_BUS_5[19:15]),
                   .MuxIn_1(s_LOGISIM_BUS_206[4:0]),
                   .MuxOut(r1[4:0]),
                   .Sel(s_LOGISIM_NET_94));
                                              
    wire[4:0] NumOfa5;
    wire[4:0] NumOfa6;
    wire[1:0] SelFora5a6;
    assign SelFora5a6 = {ID_CSRRCI,ID_CSRRSI};
    assign NumOfa5 = 5'b01111;
    assign NumOfa6 = 5'b10000;
                                              
    Multiplexer_bus_4 #(.NrOfBits(5))
           MUX_a5a6 (.Enable(1'b1),
                     .MuxIn_0(r1[4:0]),               //ok
                     .MuxIn_1(NumOfa5[4:0]),          //ok
                     .MuxIn_2(NumOfa6[4:0]),          //ok
                     .MuxIn_3(5'b00000),              //ok
                     .MuxOut(s_LOGISIM_BUS_14[4:0]),  //ok
                     .Sel(SelFora5a6[1:0]));               //ok                         
                           

   BTB      BTB_1 (.CLK(s_LOGISIM_NET_239),
                   .EX_Branch(s_LOGISIM_NET_197),
                   .EX_BranchAdrr(s_LOGISIM_BUS_34[31:0]),
                   .EX_BranchTaken(s_LOGISIM_NET_138),
                   .EX_PC(s_LOGISIM_BUS_49[31:0]),
                   .JumpAddr(s_LOGISIM_BUS_27[31:0]),
                   .PC(s_LOGISIM_BUS_156[31:0]),
                   .PredictJump(s_LOGISIM_NET_178));

   INT      INT_3 (.Reset(s_LOGISIM_NET_224),
                   .Synchronousclearsignal(s_LOGISIM_NET_133),
                   .Terminalwaitingforindication(s_LOGISIM_NET_222),
                   .clk(s_LOGISIM_NET_239),
                   .interruptmaskbit(s_LOGISIM_NET_185),
                   .interruptsource(s_LOGISIM_NET_246));

   IF_ID      IFID (.IR(s_LOGISIM_BUS_3[31:0]),
                     .PC(s_LOGISIM_BUS_156[31:0]),
                     .PCPlus4(s_LOGISIM_BUS_135[31:0]),
                     .PredictJump(s_LOGISIM_NET_178),
                     ._IR(s_LOGISIM_BUS_5[31:0]),
                     ._PC(s_LOGISIM_BUS_163[31:0]),
                     ._PCPlus4(s_LOGISIM_BUS_166[31:0]),
                     ._PredictJump(s_LOGISIM_NET_189),
                     .clk(s_LOGISIM_NET_239),
                     .clr(s_LOGISIM_NET_115),
                     .en(s_LOGISIM_NET_152),
                     .reset(s_LOGISIM_NET_224));
   
   wire EXRegWrite;
   assign EXRegWrite = s_LOGISIM_NET_25 | EX_FLT;
   wire MEMRegWrite;
   assign MEMRegWrite = s_LOGISIM_NET_208 | MEM_FLT;
   
   RedirectTreatment      RedirectTreatment_1 (.BrachTaken(s_LOGISIM_NET_95),
                                               .EX_MemRead(s_LOGISIM_NET_109),
                                               .EX_Rd(s_LOGISIM_BUS_6[4:0]),
                                               //.EX_RegWrite(s_LOGISIM_NET_25),
                                               .EX_RegWrite(EXRegWrite),
                                               .Flush(s_LOGISIM_NET_172),
                                               .MEM_Rd(s_LOGISIM_BUS_79[4:0]),
                                               //.MEM_RegWrite(s_LOGISIM_NET_208),
                                               .MEM_RegWrite(MEMRegWrite),
                                               .Rs1Forward(s_LOGISIM_BUS_53[1:0]),
                                               .Rs2Forward(s_LOGISIM_BUS_88[1:0]),
                                               .Stall(s_LOGISIM_NET_17),
                                               .rs1(s_LOGISIM_BUS_14[4:0]),
                                               .rs1_used(s_LOGISIM_NET_65),
                                               .rs2(s_LOGISIM_BUS_4[4:0]),
                                               .rs2_used(s_LOGISIM_NET_41),
                                               .ID_frs1(ID_frs1),
                                               .ID_frs2(ID_frs2),
                                               .EX_frd(EX_frd),
                                               .MEM_frd(MEM_frd),
                                               .CSRRSI(ID_CSRRSI),
                                               .CSRRCI(ID_CSRRCI));

   EX_MEM      EXMEM (.AluResult(CalResult[31:0]),
                       .IR(s_LOGISIM_BUS_32[31:0]),
                       .JAL(s_LOGISIM_NET_61),
                       .JALR(s_LOGISIM_NET_174),
                       .LHU(s_LOGISIM_NET_10),
                       .LUI(s_LOGISIM_NET_195),
                       .LUI_imm(s_LOGISIM_BUS_2[31:0]),
                       .MemToReg(s_LOGISIM_NET_42),
                       .MemWrite(s_LOGISIM_NET_162),
                       .PC(s_LOGISIM_BUS_49[31:0]),
                       .PCPlus4(s_LOGISIM_BUS_118[31:0]),
                       .R2(s_LOGISIM_BUS_47[31:0]),
                       .Rd(s_LOGISIM_BUS_6[4:0]),
                       .RegWrite(s_LOGISIM_NET_25),
                       .URET(s_LOGISIM_NET_173),
                       ._AluResult(s_LOGISIM_BUS_191[31:0]),
                       ._IR(s_LOGISIM_BUS_154[31:0]),
                       ._JAL(s_LOGISIM_NET_64),
                       ._JALR(s_LOGISIM_NET_147),
                       ._LHU(s_LOGISIM_BUS_75[1]),
                       ._LUI(s_LOGISIM_BUS_75[0]),
                       ._LUI_imm(s_LOGISIM_BUS_111[31:0]),
                       ._MemToReg(s_LOGISIM_NET_136),
                       ._MemWrite(s_LOGISIM_NET_23),
                       ._PC(s_LOGISIM_BUS_7[31:0]),
                       ._PCPlus4(s_LOGISIM_BUS_105[31:0]),
                       ._R2(s_LOGISIM_BUS_97[31:0]),
                       ._Rd(s_LOGISIM_BUS_79[4:0]),
                       ._RegWrite(s_LOGISIM_NET_208),
                       ._URET(s_LOGISIM_NET_226),
                       ._halt(s_LOGISIM_NET_148),
                       .clk(s_LOGISIM_NET_239),
                       .en(s_LOGISIM_NET_201),
                       .halt(s_LOGISIM_NET_60),
                       .reset(s_LOGISIM_NET_224),
                       .CSRRSI(EX_CSRRSI),
                       .CSRRCI(EX_CSRRCI),
                       .FCAL(EX_FCAL),
                       .FLW(EX_FLW),
                       .FLT(EX_FLT),
                       .frd(EX_frd),
                       .a5a6(s_LOGISIM_BUS_90[31:0]),
                       ._CSRRSI(MEM_Open_INT),
                       ._CSRRCI(MEM_Close_INT),
                       ._FCAL(MEM_FCAL),
                       ._FLW(MEM_FLW),
                       ._FLT(MEM_FLT),
                       ._frd(MEM_frd),
                       ._a5a6(MEM_Address[31:0]));



endmodule
