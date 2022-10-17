/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : BTB                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module BTB( CLK,
            EX_Branch,
            EX_BranchAdrr,
            EX_BranchTaken,
            EX_PC,
            PC,
            JumpAddr,
            PredictJump);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  EX_Branch;
   input[31:0]  EX_BranchAdrr;
   input  EX_BranchTaken;
   input[31:0]  EX_PC;
   input[31:0]  PC;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] JumpAddr;
   output PredictJump;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[2:0] s_LOGISIM_BUS_0;
   wire[2:0] s_LOGISIM_BUS_103;
   wire[15:0] s_LOGISIM_BUS_104;
   wire[31:0] s_LOGISIM_BUS_107;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[15:0] s_LOGISIM_BUS_113;
   wire[2:0] s_LOGISIM_BUS_114;
   wire[15:0] s_LOGISIM_BUS_115;
   wire[1:0] s_LOGISIM_BUS_116;
   wire[1:0] s_LOGISIM_BUS_117;
   wire[31:0] s_LOGISIM_BUS_121;
   wire[1:0] s_LOGISIM_BUS_122;
   wire[15:0] s_LOGISIM_BUS_123;
   wire[31:0] s_LOGISIM_BUS_125;
   wire[1:0] s_LOGISIM_BUS_13;
   wire[15:0] s_LOGISIM_BUS_131;
   wire[1:0] s_LOGISIM_BUS_132;
   wire[1:0] s_LOGISIM_BUS_133;
   wire[31:0] s_LOGISIM_BUS_140;
   wire[31:0] s_LOGISIM_BUS_141;
   wire[1:0] s_LOGISIM_BUS_142;
   wire[15:0] s_LOGISIM_BUS_145;
   wire[31:0] s_LOGISIM_BUS_146;
   wire[31:0] s_LOGISIM_BUS_148;
   wire[2:0] s_LOGISIM_BUS_15;
   wire[2:0] s_LOGISIM_BUS_150;
   wire[15:0] s_LOGISIM_BUS_151;
   wire[1:0] s_LOGISIM_BUS_152;
   wire[15:0] s_LOGISIM_BUS_154;
   wire[2:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_162;
   wire[1:0] s_LOGISIM_BUS_163;
   wire[1:0] s_LOGISIM_BUS_165;
   wire[15:0] s_LOGISIM_BUS_166;
   wire[31:0] s_LOGISIM_BUS_167;
   wire[31:0] s_LOGISIM_BUS_169;
   wire[2:0] s_LOGISIM_BUS_173;
   wire[15:0] s_LOGISIM_BUS_174;
   wire[1:0] s_LOGISIM_BUS_175;
   wire[1:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_183;
   wire[1:0] s_LOGISIM_BUS_186;
   wire[2:0] s_LOGISIM_BUS_191;
   wire[15:0] s_LOGISIM_BUS_192;
   wire[1:0] s_LOGISIM_BUS_194;
   wire[1:0] s_LOGISIM_BUS_196;
   wire[15:0] s_LOGISIM_BUS_197;
   wire[31:0] s_LOGISIM_BUS_198;
   wire[31:0] s_LOGISIM_BUS_202;
   wire[31:0] s_LOGISIM_BUS_205;
   wire[31:0] s_LOGISIM_BUS_206;
   wire[15:0] s_LOGISIM_BUS_209;
   wire[31:0] s_LOGISIM_BUS_210;
   wire[15:0] s_LOGISIM_BUS_29;
   wire[2:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_37;
   wire[2:0] s_LOGISIM_BUS_39;
   wire[15:0] s_LOGISIM_BUS_4;
   wire[1:0] s_LOGISIM_BUS_41;
   wire[2:0] s_LOGISIM_BUS_43;
   wire[1:0] s_LOGISIM_BUS_47;
   wire[2:0] s_LOGISIM_BUS_5;
   wire[2:0] s_LOGISIM_BUS_51;
   wire[15:0] s_LOGISIM_BUS_57;
   wire[15:0] s_LOGISIM_BUS_61;
   wire[1:0] s_LOGISIM_BUS_63;
   wire[15:0] s_LOGISIM_BUS_64;
   wire[1:0] s_LOGISIM_BUS_70;
   wire[31:0] s_LOGISIM_BUS_71;
   wire[15:0] s_LOGISIM_BUS_72;
   wire[1:0] s_LOGISIM_BUS_74;
   wire[2:0] s_LOGISIM_BUS_76;
   wire[2:0] s_LOGISIM_BUS_77;
   wire[1:0] s_LOGISIM_BUS_78;
   wire[15:0] s_LOGISIM_BUS_83;
   wire[2:0] s_LOGISIM_BUS_85;
   wire[15:0] s_LOGISIM_BUS_86;
   wire[1:0] s_LOGISIM_BUS_88;
   wire[15:0] s_LOGISIM_BUS_89;
   wire[1:0] s_LOGISIM_BUS_94;
   wire[31:0] s_LOGISIM_BUS_98;
   wire[1:0] s_LOGISIM_BUS_99;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_137;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_139;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_156;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_170;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_172;
   wire s_LOGISIM_NET_176;
   wire s_LOGISIM_NET_177;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_179;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_181;
   wire s_LOGISIM_NET_182;
   wire s_LOGISIM_NET_184;
   wire s_LOGISIM_NET_185;
   wire s_LOGISIM_NET_187;
   wire s_LOGISIM_NET_188;
   wire s_LOGISIM_NET_189;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_190;
   wire s_LOGISIM_NET_193;
   wire s_LOGISIM_NET_195;
   wire s_LOGISIM_NET_199;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_200;
   wire s_LOGISIM_NET_201;
   wire s_LOGISIM_NET_203;
   wire s_LOGISIM_NET_204;
   wire s_LOGISIM_NET_207;
   wire s_LOGISIM_NET_208;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_211;
   wire s_LOGISIM_NET_212;
   wire s_LOGISIM_NET_213;
   wire s_LOGISIM_NET_214;
   wire s_LOGISIM_NET_215;
   wire s_LOGISIM_NET_216;
   wire s_LOGISIM_NET_217;
   wire s_LOGISIM_NET_218;
   wire s_LOGISIM_NET_219;
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
   wire s_LOGISIM_NET_232;
   wire s_LOGISIM_NET_233;
   wire s_LOGISIM_NET_234;
   wire s_LOGISIM_NET_235;
   wire s_LOGISIM_NET_236;
   wire s_LOGISIM_NET_237;
   wire s_LOGISIM_NET_238;
   wire s_LOGISIM_NET_239;
   wire s_LOGISIM_NET_24;
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
   wire s_LOGISIM_NET_250;
   wire s_LOGISIM_NET_251;
   wire s_LOGISIM_NET_252;
   wire s_LOGISIM_NET_253;
   wire s_LOGISIM_NET_254;
   wire s_LOGISIM_NET_255;
   wire s_LOGISIM_NET_256;
   wire s_LOGISIM_NET_257;
   wire s_LOGISIM_NET_258;
   wire s_LOGISIM_NET_259;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_260;
   wire s_LOGISIM_NET_261;
   wire s_LOGISIM_NET_262;
   wire s_LOGISIM_NET_263;
   wire s_LOGISIM_NET_264;
   wire s_LOGISIM_NET_265;
   wire s_LOGISIM_NET_266;
   wire s_LOGISIM_NET_267;
   wire s_LOGISIM_NET_268;
   wire s_LOGISIM_NET_269;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_270;
   wire s_LOGISIM_NET_271;
   wire s_LOGISIM_NET_272;
   wire s_LOGISIM_NET_273;
   wire s_LOGISIM_NET_274;
   wire s_LOGISIM_NET_275;
   wire s_LOGISIM_NET_276;
   wire s_LOGISIM_NET_277;
   wire s_LOGISIM_NET_278;
   wire s_LOGISIM_NET_279;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_280;
   wire s_LOGISIM_NET_281;
   wire s_LOGISIM_NET_282;
   wire s_LOGISIM_NET_283;
   wire s_LOGISIM_NET_284;
   wire s_LOGISIM_NET_285;
   wire s_LOGISIM_NET_286;
   wire s_LOGISIM_NET_287;
   wire s_LOGISIM_NET_288;
   wire s_LOGISIM_NET_289;
   wire s_LOGISIM_NET_290;
   wire s_LOGISIM_NET_291;
   wire s_LOGISIM_NET_292;
   wire s_LOGISIM_NET_293;
   wire s_LOGISIM_NET_294;
   wire s_LOGISIM_NET_295;
   wire s_LOGISIM_NET_296;
   wire s_LOGISIM_NET_297;
   wire s_LOGISIM_NET_298;
   wire s_LOGISIM_NET_299;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_300;
   wire s_LOGISIM_NET_301;
   wire s_LOGISIM_NET_302;
   wire s_LOGISIM_NET_303;
   wire s_LOGISIM_NET_304;
   wire s_LOGISIM_NET_305;
   wire s_LOGISIM_NET_306;
   wire s_LOGISIM_NET_307;
   wire s_LOGISIM_NET_308;
   wire s_LOGISIM_NET_309;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_310;
   wire s_LOGISIM_NET_311;
   wire s_LOGISIM_NET_312;
   wire s_LOGISIM_NET_313;
   wire s_LOGISIM_NET_314;
   wire s_LOGISIM_NET_315;
   wire s_LOGISIM_NET_316;
   wire s_LOGISIM_NET_317;
   wire s_LOGISIM_NET_318;
   wire s_LOGISIM_NET_319;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_320;
   wire s_LOGISIM_NET_321;
   wire s_LOGISIM_NET_322;
   wire s_LOGISIM_NET_323;
   wire s_LOGISIM_NET_324;
   wire s_LOGISIM_NET_325;
   wire s_LOGISIM_NET_326;
   wire s_LOGISIM_NET_327;
   wire s_LOGISIM_NET_328;
   wire s_LOGISIM_NET_329;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_330;
   wire s_LOGISIM_NET_331;
   wire s_LOGISIM_NET_332;
   wire s_LOGISIM_NET_333;
   wire s_LOGISIM_NET_334;
   wire s_LOGISIM_NET_335;
   wire s_LOGISIM_NET_336;
   wire s_LOGISIM_NET_337;
   wire s_LOGISIM_NET_338;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_84;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_97;


   wire ValueOfPredictJump;  
   wire[7:0] ValueOfL;  
   assign ValueOfL = {s_LOGISIM_NET_327,s_LOGISIM_NET_328,s_LOGISIM_NET_307,s_LOGISIM_NET_271,s_LOGISIM_NET_297,s_LOGISIM_NET_261,s_LOGISIM_NET_308,s_LOGISIM_NET_277};//{L7,L6,L5,L4,L3,L2,L1,L0};
   
   MUX #(.NrOfBits(1))
   MuxOfPredictJump (.Enable(1'b1),
                     .MuxIn_0(s_LOGISIM_BUS_194[1]),
                     .MuxIn_1(s_LOGISIM_BUS_116[1]),
                     .MuxIn_2(s_LOGISIM_BUS_70[1]),
                     .MuxIn_3(s_LOGISIM_BUS_132[1]),
                     .MuxIn_4(s_LOGISIM_BUS_47[1]),
                     .MuxIn_5(s_LOGISIM_BUS_152[1]),
                     .MuxIn_6(s_LOGISIM_BUS_78[1]),
                     .MuxIn_7(s_LOGISIM_BUS_175[1]),
                     .MuxOut(ValueOfPredictJump),
                     .Sel(ValueOfL));
   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_88[1]                = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_133[1]               = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_117[1]               = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_63[1]                = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_196[1]               = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_18[1]                = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_165[1]               = s_LOGISIM_NET_181;
   assign s_LOGISIM_BUS_94[1]                = s_LOGISIM_NET_181;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_140[31:0]            = PC;
   assign s_LOGISIM_NET_56                   = CLK;
   assign s_LOGISIM_NET_204                  = EX_BranchTaken;
   assign s_LOGISIM_BUS_206[31:0]            = EX_PC;
   assign s_LOGISIM_NET_203                  = EX_Branch;
   assign s_LOGISIM_BUS_205[31:0]            = EX_BranchAdrr;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign JumpAddr                           = s_LOGISIM_BUS_210[31:0];
   assign PredictJump                        = ValueOfPredictJump;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_209[15:0] = 16'd0;

   assign s_LOGISIM_NET_211 = 1'd0;

   assign s_LOGISIM_NET_234 = 1'd0;

   assign s_LOGISIM_NET_180 = 1'd0;

   assign s_LOGISIM_NET_303 = 1'd0;

   assign s_LOGISIM_NET_247 = 1'd0;

   assign s_LOGISIM_NET_235 = 1'd0;

   assign s_LOGISIM_NET_181 = 1'd0;

   assign s_LOGISIM_NET_108 = 1'd0;

   assign s_LOGISIM_NET_321 = 1'd0;

   assign s_LOGISIM_NET_212 = 1'd0;

   assign s_LOGISIM_NET_267 = 1'd0;

   assign s_LOGISIM_NET_160 = 1'd0;

   assign s_LOGISIM_NET_226 = 1'd0;

   assign s_LOGISIM_NET_25 = 1'd1;

   assign s_LOGISIM_NET_233 = 1'd0;

   assign s_LOGISIM_NET_219 = 1'd0;

   assign s_LOGISIM_NET_201 = 1'd0;

   assign s_LOGISIM_NET_323 = 1'd0;

   assign s_LOGISIM_NET_264 = 1'd0;

   assign s_LOGISIM_NET_215 = 1'd0;

   assign s_LOGISIM_NET_220 = 1'd0;

   assign s_LOGISIM_NET_126 = 1'd1;

   assign s_LOGISIM_NET_275 = 1'd0;

   assign s_LOGISIM_NET_214 = 1'd0;

   assign s_LOGISIM_NET_213 = 1'd0;

   assign s_LOGISIM_NET_245 = 1'd0;

   assign s_LOGISIM_NET_283 = 1'd0;

   assign s_LOGISIM_NET_301 = 1'd0;

   assign s_LOGISIM_NET_236 = 1'd0;

   assign s_LOGISIM_NET_216 = 1'd0;

   assign s_LOGISIM_NET_217 = 1'd0;

   assign s_LOGISIM_BUS_191[2:0] = 3'd3;

   assign s_LOGISIM_NET_225 = 1'd0;

   assign s_LOGISIM_NET_218 = 1'd1;

   assign s_LOGISIM_NET_318 = 1'd0;

   assign s_LOGISIM_NET_110 = 1'd0;

   assign s_LOGISIM_NET_240 = 1'd0;

   assign s_LOGISIM_NET_232 = 1'd1;

   assign s_LOGISIM_NET_129 = 1'd0;

   assign s_LOGISIM_NET_207 = 1'd1;

   assign s_LOGISIM_NET_35 = 1'd0;

   assign s_LOGISIM_NET_221 = 1'd0;

   assign s_LOGISIM_NET_222 = 1'd0;

   assign s_LOGISIM_NET_21 = 1'd0;

   assign s_LOGISIM_NET_223 = 1'd0;

   assign s_LOGISIM_NET_224 = 1'd0;

   assign s_LOGISIM_NET_246 = 1'd0;

   assign s_LOGISIM_NET_231 = 1'd0;

   assign s_LOGISIM_NET_200 = 1'd0;

   assign s_LOGISIM_NET_281 = 1'd0;

   assign s_LOGISIM_NET_333 = 1'd0;

   assign s_LOGISIM_NET_266 = 1'd0;

   assign s_LOGISIM_NET_286 = 1'd0;

   assign s_LOGISIM_NET_230 = 1'd0;

   assign s_LOGISIM_NET_237 = 1'd0;

   assign s_LOGISIM_NET_227 = 1'd0;

   assign s_LOGISIM_NET_270 = 1'd0;

   assign s_LOGISIM_NET_228 = 1'd0;

   assign s_LOGISIM_NET_229 = 1'd0;

   assign s_LOGISIM_NET_282 = 1'd0;

   assign s_LOGISIM_NET_112 = 1'd1;

   assign s_LOGISIM_BUS_85[2:0] = 3'd1;

   assign s_LOGISIM_BUS_114[2:0] = 3'd5;

   assign s_LOGISIM_BUS_77[2:0] = 3'd2;

   assign s_LOGISIM_BUS_16[2:0] = 3'd7;

   assign s_LOGISIM_NET_244 = 1'd0;

   assign s_LOGISIM_NET_128 = 1'd0;

   assign s_LOGISIM_NET_238 = 1'd0;

   assign s_LOGISIM_NET_239 = 1'd0;

   assign s_LOGISIM_NET_311 = 1'd0;

   assign s_LOGISIM_NET_248 = 1'd0;

   assign s_LOGISIM_NET_249 = 1'd0;

   assign s_LOGISIM_BUS_29[15:0] = 16'd0;

   assign s_LOGISIM_NET_161 = 1'd0;

   assign s_LOGISIM_NET_263 = 1'd0;

   assign s_LOGISIM_NET_250 = 1'd0;

   assign s_LOGISIM_NET_241 = 1'd0;

   assign s_LOGISIM_NET_242 = 1'd0;

   assign s_LOGISIM_BUS_115[15:0] = 16'd0;

   assign s_LOGISIM_NET_243 = 1'd0;

   assign s_LOGISIM_NET_287 = 1'd0;

   assign s_LOGISIM_NET_313 = 1'd0;

   assign s_LOGISIM_NET_262 = 1'd0;

   assign s_LOGISIM_NET_268 = 1'd0;

   assign s_LOGISIM_NET_68 = 1'd0;

   assign s_LOGISIM_NET_251 = 1'd0;

   assign s_LOGISIM_NET_252 = 1'd0;

   assign s_LOGISIM_NET_310 = 1'd0;

   assign s_LOGISIM_NET_253 = 1'd0;

   assign s_LOGISIM_NET_330 = 1'd0;

   assign s_LOGISIM_BUS_103[2:0] = 3'd6;

   assign s_LOGISIM_NET_334 = 1'd0;

   assign s_LOGISIM_NET_254 = 1'd0;

   assign s_LOGISIM_NET_255 = 1'd0;

   assign s_LOGISIM_NET_67 = 1'd0;

   assign s_LOGISIM_NET_256 = 1'd0;

   assign s_LOGISIM_NET_257 = 1'd0;

   assign s_LOGISIM_NET_258 = 1'd1;

   assign s_LOGISIM_NET_259 = 1'd0;

   assign s_LOGISIM_NET_274 = 1'd0;

   assign s_LOGISIM_BUS_173[2:0] = 3'd4;

   assign s_LOGISIM_NET_260 = 1'd0;

   assign s_LOGISIM_NET_149 = 1'd1;

   assign s_LOGISIM_NET_265 = 1'd0;

   assign s_LOGISIM_NET_269 = 1'd1;

   assign s_LOGISIM_NET_22 = 1'd0;

   assign s_LOGISIM_NET_272 = 1'd0;

   assign s_LOGISIM_NET_312 = 1'd0;

   assign s_LOGISIM_NET_314 = 1'd1;

   assign s_LOGISIM_NET_273 = 1'd0;

   assign s_LOGISIM_NET_276 = 1'd0;

   assign s_LOGISIM_BUS_131[15:0] = 16'd0;

   assign s_LOGISIM_NET_82 = 1'd1;

   assign s_LOGISIM_NET_278 = 1'd0;

   assign s_LOGISIM_NET_279 = 1'd0;

   assign s_LOGISIM_NET_280 = 1'd0;

   assign s_LOGISIM_NET_284 = 1'd0;

   assign s_LOGISIM_NET_302 = 1'd1;

   assign s_LOGISIM_NET_285 = 1'd0;

   assign s_LOGISIM_NET_316 = 1'd0;

   assign s_LOGISIM_NET_288 = 1'd0;

   assign s_LOGISIM_NET_59 = 1'd1;

   assign s_LOGISIM_NET_289 = 1'd0;

   assign s_LOGISIM_NET_290 = 1'd0;

   assign s_LOGISIM_BUS_61[15:0] = 16'd0;

   assign s_LOGISIM_NET_291 = 1'd0;

   assign s_LOGISIM_NET_317 = 1'd0;

   assign s_LOGISIM_NET_322 = 1'd1;

   assign s_LOGISIM_BUS_150[2:0] = 3'd0;

   assign s_LOGISIM_NET_292 = 1'd0;

   assign s_LOGISIM_NET_293 = 1'd0;

   assign s_LOGISIM_NET_294 = 1'd0;

   assign s_LOGISIM_BUS_174[15:0] = 16'd0;

   assign s_LOGISIM_NET_295 = 1'd0;

   assign s_LOGISIM_NET_296 = 1'd0;

   assign s_LOGISIM_NET_335 = 1'd0;

   assign s_LOGISIM_NET_298 = 1'd0;

   assign s_LOGISIM_NET_299 = 1'd0;

   assign s_LOGISIM_NET_300 = 1'd0;

   assign s_LOGISIM_NET_304 = 1'd0;

   assign s_LOGISIM_NET_305 = 1'd0;

   assign s_LOGISIM_NET_306 = 1'd0;

   assign s_LOGISIM_NET_331 = 1'd0;

   assign s_LOGISIM_NET_309 = 1'd0;

   assign s_LOGISIM_NET_96 = 1'd0;

   assign s_LOGISIM_NET_315 = 1'd0;

   assign s_LOGISIM_BUS_86[15:0] = 16'd0;

   assign s_LOGISIM_NET_319 = 1'd1;

   assign s_LOGISIM_NET_320 = 1'd0;

   assign s_LOGISIM_BUS_151[15:0] = 16'd0;

   assign s_LOGISIM_NET_324 = 1'd0;

   assign s_LOGISIM_NET_325 = 1'd0;

   assign s_LOGISIM_NET_171 = 1'd1;

   assign s_LOGISIM_NET_326 = 1'd0;

   assign s_LOGISIM_NET_329 = 1'd0;

   assign s_LOGISIM_NET_130 = 1'd1;

   assign s_LOGISIM_NET_332 = 1'd0;

   assign s_LOGISIM_NET_138 = 1'd0;

   assign s_LOGISIM_NET_336 = 1'd0;

   assign s_LOGISIM_NET_337 = 1'd0;

   assign s_LOGISIM_NET_338 = 1'd0;

   /***************************************************************************
    **                                                                       **
    ***************************************************************************/

    Controlled_Buffer    JumpAddr0(.Data_T(s_LOGISIM_NET_277),
                                   .Data_in(s_LOGISIM_BUS_121[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));
                                   
    Controlled_Buffer    JumpAddr1(.Data_T(s_LOGISIM_NET_308),
                                   .Data_in(s_LOGISIM_BUS_183[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));
                                   
    Controlled_Buffer    JumpAddr2(.Data_T(s_LOGISIM_NET_261),
                                   .Data_in(s_LOGISIM_BUS_71[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));                      
                                   
    Controlled_Buffer    JumpAddr3(.Data_T(s_LOGISIM_NET_297),
                                   .Data_in(s_LOGISIM_BUS_141[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));   
                                                    
    Controlled_Buffer    JumpAddr4(.Data_T(s_LOGISIM_NET_271),
                                   .Data_in(s_LOGISIM_BUS_11[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));                                                       
                                   
    Controlled_Buffer    JumpAddr5(.Data_T(s_LOGISIM_NET_307),
                                   .Data_in(s_LOGISIM_BUS_98[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0])); 
                                   
    Controlled_Buffer    JumpAddr6(.Data_T(s_LOGISIM_NET_328),
                                   .Data_in(s_LOGISIM_BUS_162[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));      
                                                 
    Controlled_Buffer    JumpAddr7(.Data_T(s_LOGISIM_NET_327),
                                   .Data_in(s_LOGISIM_BUS_37[31:0]),
                                   .Data_out(s_LOGISIM_BUS_210[31:0]));     
                                                  
               
                                                                                       
   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_203),
              .Input_2(s_LOGISIM_NET_177),
              .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_144),
                         .Result(s_LOGISIM_NET_44));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_271),
              .Input_2(s_LOGISIM_NET_106),
              .Result(s_LOGISIM_NET_65));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_203),
              .Input_2(s_LOGISIM_NET_118),
              .Result(s_LOGISIM_NET_55));

  

   REGISTER_FLIP_FLOP_BranchDestinationAddress7 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_193),
                       .D(s_LOGISIM_BUS_205[31:0]),
                       .Q(s_LOGISIM_BUS_37[31:0]),
                       .Reset(s_LOGISIM_NET_238),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_288),
                       .pre(s_LOGISIM_NET_217));

   REGISTER_FLIP_FLOP_Valid1 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_153),
                       .D(s_LOGISIM_NET_82),
                       .Q(s_LOGISIM_NET_164),
                       .Reset(s_LOGISIM_NET_259),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_252),
                       .pre(s_LOGISIM_NET_211));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_137),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_206[31:0]),
                    .DataB(s_LOGISIM_BUS_107[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_33),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_206[31:0]),
                    .DataB(s_LOGISIM_BUS_198[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_95),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_140[31:0]),
                    .DataB(s_LOGISIM_BUS_167[31:0]));

   REGISTER_FLIP_FLOP_BranchInstructionAddress0 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_195),
                       .D(s_LOGISIM_BUS_206[31:0]),
                       .Q(s_LOGISIM_BUS_125[31:0]),
                       .Reset(s_LOGISIM_NET_224),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_336),
                       .pre(s_LOGISIM_NET_326));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_156),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_206[31:0]),
                    .DataB(s_LOGISIM_BUS_125[31:0]));

   

   REGISTER_FLIP_FLOP_HistoricalBit2 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_75),
                       .D(s_LOGISIM_BUS_41[1:0]),
                       .Q(s_LOGISIM_BUS_70[1:0]),
                       .Reset(s_LOGISIM_NET_212),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_213),
                       .pre(s_LOGISIM_NET_229));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_154[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_151[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_269),
                 .clear(s_LOGISIM_NET_168),
                 .load(s_LOGISIM_NET_214),
                 .pre(s_LOGISIM_NET_216));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_119),
              .Input_2(s_LOGISIM_NET_144),
              .Result(s_LOGISIM_NET_32));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_2 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_123[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_29[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_218),
                 .clear(s_LOGISIM_NET_176),
                 .load(s_LOGISIM_NET_309),
                 .pre(s_LOGISIM_NET_305));

   REGISTER_FLIP_FLOP_Valid3 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_87),
                       .D(s_LOGISIM_NET_25),
                       .Q(s_LOGISIM_NET_189),
                       .Reset(s_LOGISIM_NET_289),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_279),
                       .pre(s_LOGISIM_NET_222));

  

   REGISTER_FLIP_FLOP_BranchInstructionAddress1 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_153),
                       .D(s_LOGISIM_BUS_206[31:0]),
                       .Q(s_LOGISIM_BUS_107[31:0]),
                       .Reset(s_LOGISIM_NET_215),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_254),
                       .pre(s_LOGISIM_NET_227));

  

   REGISTER_FLIP_FLOP_Valid5 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_62),
                       .D(s_LOGISIM_NET_171),
                       .Q(s_LOGISIM_NET_190),
                       .Reset(s_LOGISIM_NET_223),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_296),
                       .pre(s_LOGISIM_NET_290));

   REGISTER_FLIP_FLOP_BranchInstructionAddress7 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_193),
                       .D(s_LOGISIM_BUS_206[31:0]),
                       .Q(s_LOGISIM_BUS_146[31:0]),
                       .Reset(s_LOGISIM_NET_242),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_221),
                       .pre(s_LOGISIM_NET_219));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_203),
              .Input_2(s_LOGISIM_NET_155),
              .Result(s_LOGISIM_NET_111));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_156),
              .Input_2(s_LOGISIM_NET_188),
              .Result(s_LOGISIM_NET_91));

   REGISTER_FLIP_FLOP_BranchDestinationAddress3 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_56),
                       .ClockEnable(s_LOGISIM_NET_87),
                       .D(s_LOGISIM_BUS_205[31:0]),
                       .Q(s_LOGISIM_BUS_141[31:0]),
                       .Reset(s_LOGISIM_NET_220),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_253),
                       .pre(s_LOGISIM_NET_265));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_203),
              .Input_2(s_LOGISIM_NET_135),
              .Result(s_LOGISIM_NET_80));

   REGISTER_FLIP_FLOP_HistoricalBit7 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_42),
                        .D(s_LOGISIM_BUS_13[1:0]),
                        .Q(s_LOGISIM_BUS_175[1:0]),
                        .Reset(s_LOGISIM_NET_320),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_260),
                        .pre(s_LOGISIM_NET_338));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_102),
                         .Result(s_LOGISIM_NET_31));

 

   D_Flip_Flop #(.ActiveLevel(1))            // clr0
      FF_LATCH_1 (.Clock(s_LOGISIM_NET_56),  // ok
                  .D(s_LOGISIM_NET_157),     //ok
                  .Q(s_LOGISIM_NET_79),     //ok
                  .Q_bar(),
                  .Clr(1'b0));              // ok
                  
   D_Flip_Flop #(.ActiveLevel(1))            // clr1
      FF_LATCH_2 (.Clock(s_LOGISIM_NET_56),  // ok
                  .D(s_LOGISIM_NET_127),     // ok
                  .Q(s_LOGISIM_NET_90),     //  ok
                  .Q_bar(),
                  .Clr(1'b0));              // ok
     D_Flip_Flop #(.ActiveLevel(1))            // clr2
         FF_LATCH_3 (.Clock(s_LOGISIM_NET_56),  // ok
                     .D(s_LOGISIM_NET_93),     //  ok
                     .Q(s_LOGISIM_NET_199),     //  ok
                     .Q_bar(),
                     .Clr(1'b0));              // ok
     D_Flip_Flop #(.ActiveLevel(1))            // clr3
        FF_LATCH_4 (.Clock(s_LOGISIM_NET_56),  // ok
                   .D(s_LOGISIM_NET_53),     //  ok
                   .Q(s_LOGISIM_NET_159),     //  ok
                   .Q_bar(),
                   .Clr(1'b0));              // ok
                                                               
      D_Flip_Flop #(.ActiveLevel(1))            // clr4
           FF_LATCH_5 (.Clock(s_LOGISIM_NET_56),  // ok
                       .D(s_LOGISIM_NET_65),     // ok
                       .Q(s_LOGISIM_NET_168),     //  ok
                       .Q_bar(),
                       .Clr(1'b0));              // ok

      D_Flip_Flop #(.ActiveLevel(1))            // clr5
           FF_LATCH_6 (.Clock(s_LOGISIM_NET_56),  // ok
                       .D(s_LOGISIM_NET_20),     // ok
                       .Q(s_LOGISIM_NET_176),     //  ok
                       .Q_bar(),
                       .Clr(1'b0));              // ok
      D_Flip_Flop #(.ActiveLevel(1))            // clr6
           FF_LATCH_7 (.Clock(s_LOGISIM_NET_56),  // ok
                       .D(s_LOGISIM_NET_178),     //  ok
                       .Q(s_LOGISIM_NET_109),     //   ok
                       .Q_bar(),
                       .Clr(1'b0));              // ok
                       
      D_Flip_Flop #(.ActiveLevel(1))            // clr7
           FF_LATCH_8 (.Clock(s_LOGISIM_NET_56),  // ok
                       .D(s_LOGISIM_NET_147),     //  ok
                       .Q(s_LOGISIM_NET_134),    //    ok
                       .Q_bar(),
                       .Clr(1'b0));              // ok
   


   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_261),
               .Input_2(s_LOGISIM_NET_124),
               .Result(s_LOGISIM_NET_93));

 

   OR_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_45),
               .Input_2(s_LOGISIM_NET_81),
               .Result(s_LOGISIM_NET_58));

   REGISTER_FLIP_FLOP_Valid0 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_195),
                        .D(s_LOGISIM_NET_207),
                        .Q(s_LOGISIM_NET_188),
                        .Reset(s_LOGISIM_NET_306),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_295),
                        .pre(s_LOGISIM_NET_298));

   OR_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_327),
               .Input_2(s_LOGISIM_NET_193),
               .Result(s_LOGISIM_NET_147));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_203),
               .Input_2(s_LOGISIM_NET_8),
               .Result(s_LOGISIM_NET_42));

   REGISTER_FLIP_FLOP_HistoricalBit0 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_23),
                        .D(s_LOGISIM_BUS_99[1:0]),
                        .Q(s_LOGISIM_BUS_194[1:0]),
                        .Reset(s_LOGISIM_NET_225),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_228),
                        .pre(s_LOGISIM_NET_255));

  

   REGISTER_FLIP_FLOP_Valid4 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_106),
                        .D(s_LOGISIM_NET_112),
                        .Q(s_LOGISIM_NET_187),
                        .Reset(s_LOGISIM_NET_284),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_251),
                        .pre(s_LOGISIM_NET_226));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_185),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_193));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_9),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_206[31:0]),
                    .DataB(s_LOGISIM_BUS_167[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_328),
               .Input_2(s_LOGISIM_NET_17),
               .Result(s_LOGISIM_NET_178));

   AND_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_139),
               .Input_2(s_LOGISIM_NET_187),
               .Result(s_LOGISIM_NET_271));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_10),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_140[31:0]),
                    .DataB(s_LOGISIM_BUS_107[31:0]));



   REGISTER_FLIP_FLOP_HistoricalBit4 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_14),
                        .D(s_LOGISIM_BUS_186[1:0]),
                        .Q(s_LOGISIM_BUS_47[1:0]),
                        .Reset(s_LOGISIM_NET_230),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_241),
                        .pre(s_LOGISIM_NET_325));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_12),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_62));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_119),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_206[31:0]),
                    .DataB(s_LOGISIM_BUS_202[31:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_3 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_104[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_209[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_232),
                 .clear(s_LOGISIM_NET_199),
                 .load(s_LOGISIM_NET_231),
                 .pre(s_LOGISIM_NET_233));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_NET_143),
                          .Result(s_LOGISIM_NET_48));

  

   REGISTER_FLIP_FLOP_BranchInstructionAddress3 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_87),
                        .D(s_LOGISIM_BUS_206[31:0]),
                        .Q(s_LOGISIM_BUS_169[31:0]),
                        .Reset(s_LOGISIM_NET_243),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_256),
                        .pre(s_LOGISIM_NET_234));

   REGISTER_FLIP_FLOP_BranchDestinationAddress2 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_124),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_71[31:0]),
                        .Reset(s_LOGISIM_NET_272),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_235),
                        .pre(s_LOGISIM_NET_276));

  

   REGISTER_FLIP_FLOP_Valid7 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_17 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_193),
                        .D(s_LOGISIM_NET_130),
                        .Q(s_LOGISIM_NET_102),
                        .Reset(s_LOGISIM_NET_236),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_237),
                        .pre(s_LOGISIM_NET_239));

  

   OR_GATE #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_36),
               .Input_2(s_LOGISIM_NET_7),
               .Result(s_LOGISIM_NET_26));

   OR_GATE #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_NET_277),
               .Input_2(s_LOGISIM_NET_195),
               .Result(s_LOGISIM_NET_157));

   OR_GATE #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_52),
               .Input_2(s_LOGISIM_NET_28),
               .Result(s_LOGISIM_NET_208));

   OR_GATE #(.BubblesMask(0))
      GATE_22 (.Input_1(s_LOGISIM_NET_46),
               .Input_2(s_LOGISIM_NET_97),
               .Result(s_LOGISIM_NET_185));

   REGISTER_FLIP_FLOP_HistoricalBit5 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_18 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_100),
                        .D(s_LOGISIM_BUS_74[1:0]),
                        .Q(s_LOGISIM_BUS_152[1:0]),
                        .Reset(s_LOGISIM_NET_285),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_292),
                        .pre(s_LOGISIM_NET_240));

   AND_GATE #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_33),
               .Input_2(s_LOGISIM_NET_190),
               .Result(s_LOGISIM_NET_101));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_34),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_140[31:0]),
                    .DataB(s_LOGISIM_BUS_125[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_NET_120),
               .Input_2(s_LOGISIM_NET_190),
               .Result(s_LOGISIM_NET_307));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_NET_187),
                          .Result(s_LOGISIM_NET_49));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_4 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_64[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_131[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_258),
                 .clear(s_LOGISIM_NET_90),
                 .load(s_LOGISIM_NET_273),
                 .pre(s_LOGISIM_NET_299));

   AND_GATE #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_92),
               .Input_2(s_LOGISIM_NET_189),
               .Result(s_LOGISIM_NET_118));

   REGISTER_FLIP_FLOP_BranchDestinationAddress1 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_19 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_153),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_183[31:0]),
                        .Reset(s_LOGISIM_NET_278),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_244),
                        .pre(s_LOGISIM_NET_257));

   REGISTER_FLIP_FLOP_HistoricalBit6 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_20 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_80),
                        .D(s_LOGISIM_BUS_142[1:0]),
                        .Q(s_LOGISIM_BUS_78[1:0]),
                        .Reset(s_LOGISIM_NET_245),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_293),
                        .pre(s_LOGISIM_NET_300));

   REGISTER_FLIP_FLOP_HistoricalBit3 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_21 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_55),
                        .D(s_LOGISIM_BUS_122[1:0]),
                        .Q(s_LOGISIM_BUS_132[1:0]),
                        .Reset(s_LOGISIM_NET_291),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_332),
                        .pre(s_LOGISIM_NET_246));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_5 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_145[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_61[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_319),
                 .clear(s_LOGISIM_NET_79),
                 .load(s_LOGISIM_NET_247),
                 .pre(s_LOGISIM_NET_304));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_120),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_140[31:0]),
                    .DataB(s_LOGISIM_BUS_198[31:0]));

   REGISTER_FLIP_FLOP_BranchInstructionAddress2 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_22 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_124),
                        .D(s_LOGISIM_BUS_206[31:0]),
                        .Q(s_LOGISIM_BUS_202[31:0]),
                        .Reset(s_LOGISIM_NET_248),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_249),
                        .pre(s_LOGISIM_NET_250));

 

   Decoder_8      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_50),
                             .DecoderOut_1(s_LOGISIM_NET_2),
                             .DecoderOut_2(s_LOGISIM_NET_81),
                             .DecoderOut_3(s_LOGISIM_NET_6),
                             .DecoderOut_4(s_LOGISIM_NET_7),
                             .DecoderOut_5(s_LOGISIM_NET_60),
                             .DecoderOut_6(s_LOGISIM_NET_28),
                             .DecoderOut_7(s_LOGISIM_NET_97),
                             .Enable(s_LOGISIM_NET_172),
                             .Sel(s_LOGISIM_BUS_51[2:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_27 (.Input_1(s_LOGISIM_NET_182),
               .Input_2(s_LOGISIM_NET_144),
               .Result(s_LOGISIM_NET_261));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_NET_105),
                          .Result(s_LOGISIM_NET_136));

   OR_GATE #(.BubblesMask(0))
      GATE_29 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_73));

   AND_GATE #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_95),
               .Input_2(s_LOGISIM_NET_143),
               .Result(s_LOGISIM_NET_328));

   OR_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_91),
               .Input_2(s_LOGISIM_NET_155),
               .Input_3(s_LOGISIM_NET_32),
               .Input_4(s_LOGISIM_NET_118),
               .Input_5(s_LOGISIM_NET_177),
               .Input_6(s_LOGISIM_NET_101),
               .Input_7(s_LOGISIM_NET_135),
               .Input_8(s_LOGISIM_NET_8),
               .Result(s_LOGISIM_NET_105));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_10 (.A_EQ_B(s_LOGISIM_NET_182),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_140[31:0]),
                     .DataB(s_LOGISIM_BUS_202[31:0]));



   AND_GATE #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_NET_179),
               .Input_2(s_LOGISIM_NET_102),
               .Result(s_LOGISIM_NET_8));

  

   REGISTER_FLIP_FLOP_BranchInstructionAddress5 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_23 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_62),
                        .D(s_LOGISIM_BUS_206[31:0]),
                        .Q(s_LOGISIM_BUS_198[31:0]),
                        .Reset(s_LOGISIM_NET_262),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_263),
                        .pre(s_LOGISIM_NET_264));

   REGISTER_FLIP_FLOP_Valid6 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_24 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_NET_59),
                        .Q(s_LOGISIM_NET_143),
                        .Reset(s_LOGISIM_NET_266),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_267),
                        .pre(s_LOGISIM_NET_268));

   REGISTER_FLIP_FLOP_BranchInstructionAddress6 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_25 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_BUS_206[31:0]),
                        .Q(s_LOGISIM_BUS_167[31:0]),
                        .Reset(s_LOGISIM_NET_270),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_294),
                        .pre(s_LOGISIM_NET_280));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_11 (.A_EQ_B(s_LOGISIM_NET_139),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_140[31:0]),
                     .DataB(s_LOGISIM_BUS_148[31:0]));



   AND_GATE #(.BubblesMask(0))
      GATE_33 (.Input_1(s_LOGISIM_NET_66),
               .Input_2(s_LOGISIM_NET_187),
               .Result(s_LOGISIM_NET_177));



   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_208),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_17));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_12 (.A_EQ_B(s_LOGISIM_NET_179),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_206[31:0]),
                     .DataB(s_LOGISIM_BUS_146[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_35 (.Input_1(s_LOGISIM_NET_170),
               .Input_2(s_LOGISIM_NET_50),
               .Result(s_LOGISIM_NET_84));

   AND_GATE #(.BubblesMask(0))
      GATE_36 (.Input_1(s_LOGISIM_NET_34),
               .Input_2(s_LOGISIM_NET_188),
               .Result(s_LOGISIM_NET_277));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_37 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_40),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_87));

   REGISTER_FLIP_FLOP_Valid2 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_26 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_124),
                        .D(s_LOGISIM_NET_149),
                        .Q(s_LOGISIM_NET_144),
                        .Reset(s_LOGISIM_NET_274),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_275),
                        .pre(s_LOGISIM_NET_329));

   OR_GATE #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_NET_297),
               .Input_2(s_LOGISIM_NET_87),
               .Result(s_LOGISIM_NET_53));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_NET_164),
                          .Result(s_LOGISIM_NET_3));

   AND_GATE #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_10),
               .Input_2(s_LOGISIM_NET_164),
               .Result(s_LOGISIM_NET_308));

   REGISTER_FLIP_FLOP_BranchInstructionAddress4 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_27 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_106),
                        .D(s_LOGISIM_BUS_206[31:0]),
                        .Q(s_LOGISIM_BUS_148[31:0]),
                        .Reset(s_LOGISIM_NET_281),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_282),
                        .pre(s_LOGISIM_NET_283));

 

   OR_GATE #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_NET_38),
               .Input_2(s_LOGISIM_NET_6),
               .Result(s_LOGISIM_NET_40));

   REGISTER_FLIP_FLOP_BranchDestinationAddress0 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_28 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_195),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_121[31:0]),
                        .Reset(s_LOGISIM_NET_315),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_286),
                        .pre(s_LOGISIM_NET_287));

   AND_GATE #(.BubblesMask(0))
      GATE_42 (.Input_1(s_LOGISIM_NET_137),
               .Input_2(s_LOGISIM_NET_164),
               .Result(s_LOGISIM_NET_155));

   Decoder_8      DECODER_2 (.DecoderOut_0(s_LOGISIM_NET_170),
                             .DecoderOut_1(s_LOGISIM_NET_1),
                             .DecoderOut_2(s_LOGISIM_NET_45),
                             .DecoderOut_3(s_LOGISIM_NET_38),
                             .DecoderOut_4(s_LOGISIM_NET_36),
                             .DecoderOut_5(s_LOGISIM_NET_54),
                             .DecoderOut_6(s_LOGISIM_NET_52),
                             .DecoderOut_7(s_LOGISIM_NET_46),
                             .Enable(s_LOGISIM_NET_24),
                             .Sel(s_LOGISIM_BUS_30[2:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_13 (.A_EQ_B(s_LOGISIM_NET_158),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_140[31:0]),
                     .DataB(s_LOGISIM_BUS_169[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_43 (.Input_1(s_LOGISIM_NET_54),
               .Input_2(s_LOGISIM_NET_60),
               .Result(s_LOGISIM_NET_12));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_73),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_153));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_45 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_84),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_195));



   OR_GATE #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_NET_308),
               .Input_2(s_LOGISIM_NET_153),
               .Result(s_LOGISIM_NET_127));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_NET_188),
                          .Result(s_LOGISIM_NET_19));

   AND_GATE #(.BubblesMask(0))
      GATE_48 (.Input_1(s_LOGISIM_NET_69),
               .Input_2(s_LOGISIM_NET_102),
               .Result(s_LOGISIM_NET_327));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_6 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_197[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_174[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_302),
                 .clear(s_LOGISIM_NET_134),
                 .load(s_LOGISIM_NET_301),
                 .pre(s_LOGISIM_NET_303));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_NET_189),
                          .Result(s_LOGISIM_NET_184));





   

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_50 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_26),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_106));

   AND_GATE #(.BubblesMask(0))
      GATE_51 (.Input_1(s_LOGISIM_NET_203),
               .Input_2(s_LOGISIM_NET_91),
               .Result(s_LOGISIM_NET_23));

   REGISTER_FLIP_FLOP_BranchDestinationAddress6 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_29 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_162[31:0]),
                        .Reset(s_LOGISIM_NET_310),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_311),
                        .pre(s_LOGISIM_NET_312));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_7 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_166[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_86[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_314),
                 .clear(s_LOGISIM_NET_159),
                 .load(s_LOGISIM_NET_313),
                 .pre(s_LOGISIM_NET_324));

   REGISTER_FLIP_FLOP_HistoricalBit1 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_30 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_111),
                        .D(s_LOGISIM_BUS_163[1:0]),
                        .Q(s_LOGISIM_BUS_116[1:0]),
                        .Reset(s_LOGISIM_NET_316),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_317),
                        .pre(s_LOGISIM_NET_318));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_14 (.A_EQ_B(s_LOGISIM_NET_66),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_206[31:0]),
                     .DataB(s_LOGISIM_BUS_148[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_52 (.Input_1(s_LOGISIM_NET_9),
               .Input_2(s_LOGISIM_NET_143),
               .Result(s_LOGISIM_NET_135));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_8 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_192[15:0]),
                 .GlobalClock(s_LOGISIM_NET_56),
                 .LoadData(s_LOGISIM_BUS_115[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_322),
                 .clear(s_LOGISIM_NET_109),
                 .load(s_LOGISIM_NET_321),
                 .pre(s_LOGISIM_NET_323));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_15 (.A_EQ_B(s_LOGISIM_NET_92),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_206[31:0]),
                     .DataB(s_LOGISIM_BUS_169[31:0]));

   NOT_GATE      GATE_53 (.Input_1(s_LOGISIM_NET_190),
                          .Result(s_LOGISIM_NET_27));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_1 (.Address(s_LOGISIM_BUS_30[2:0]),
                .EnableOut(s_LOGISIM_NET_172),
                .GroupSelect(s_LOGISIM_NET_24),
                .enable(s_LOGISIM_NET_126),
                .input_vector({s_LOGISIM_NET_31,
                               s_LOGISIM_NET_48,
                               s_LOGISIM_NET_27,
                               s_LOGISIM_NET_49,
                               s_LOGISIM_NET_184,
                               s_LOGISIM_NET_44,
                               s_LOGISIM_NET_3,
                               s_LOGISIM_NET_19}));



   

   OR_GATE #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_NET_307),
               .Input_2(s_LOGISIM_NET_62),
               .Result(s_LOGISIM_NET_20));

   AND_GATE #(.BubblesMask(0))
      GATE_55 (.Input_1(s_LOGISIM_NET_158),
               .Input_2(s_LOGISIM_NET_189),
               .Result(s_LOGISIM_NET_297));

   AND_GATE #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_NET_203),
               .Input_2(s_LOGISIM_NET_32),
               .Result(s_LOGISIM_NET_75));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_16 (.A_EQ_B(s_LOGISIM_NET_69),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_140[31:0]),
                     .DataB(s_LOGISIM_BUS_146[31:0]));

   REGISTER_FLIP_FLOP_BranchDestinationAddress5 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_31 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_62),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_98[31:0]),
                        .Reset(s_LOGISIM_NET_337),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_330),
                        .pre(s_LOGISIM_NET_331));

   REGISTER_FLIP_FLOP_BranchDestinationAddress4 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_32 (.Clock(s_LOGISIM_NET_56),
                        .ClockEnable(s_LOGISIM_NET_106),
                        .D(s_LOGISIM_BUS_205[31:0]),
                        .Q(s_LOGISIM_BUS_11[31:0]),
                        .Reset(s_LOGISIM_NET_333),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_334),
                        .pre(s_LOGISIM_NET_335));

   AND_GATE #(.BubblesMask(0))
      GATE_57 (.Input_1(s_LOGISIM_NET_203),
               .Input_2(s_LOGISIM_NET_101),
               .Result(s_LOGISIM_NET_100));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_58 (.Input_1(s_LOGISIM_NET_136),
               .Input_2(s_LOGISIM_NET_58),
               .Input_3(s_LOGISIM_NET_203),
               .Result(s_LOGISIM_NET_124));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   FSM      FSM_1 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_186[1:0]),
                   .Now_State(s_LOGISIM_BUS_47[1:0]));

   FSM      FSM_2 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_99[1:0]),
                   .Now_State(s_LOGISIM_BUS_194[1:0]));

   MAX      MAX_1 (.MAX(s_LOGISIM_BUS_72[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_15[2:0]),
                   .X(s_LOGISIM_BUS_83[15:0]),
                   .XNum(s_LOGISIM_BUS_76[2:0]),
                   .Y(s_LOGISIM_BUS_4[15:0]),
                   .YNum(s_LOGISIM_BUS_5[2:0]));

   MAX      MAX_2 (.MAX(s_LOGISIM_BUS_113[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_39[2:0]),
                   .X(s_LOGISIM_BUS_104[15:0]),
                   .XNum(s_LOGISIM_BUS_77[2:0]),
                   .Y(s_LOGISIM_BUS_166[15:0]),
                   .YNum(s_LOGISIM_BUS_191[2:0]));

   FSM      FSM_3 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_41[1:0]),
                   .Now_State(s_LOGISIM_BUS_70[1:0]));

   MAX      MAX_3 (.MAX(),
                   .MAX_Num(s_LOGISIM_BUS_51[2:0]),
                   .X(s_LOGISIM_BUS_89[15:0]),
                   .XNum(s_LOGISIM_BUS_0[2:0]),
                   .Y(s_LOGISIM_BUS_72[15:0]),
                   .YNum(s_LOGISIM_BUS_15[2:0]));

   FSM      FSM_4 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_163[1:0]),
                   .Now_State(s_LOGISIM_BUS_116[1:0]));

   MAX      MAX_4 (.MAX(s_LOGISIM_BUS_89[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_0[2:0]),
                   .X(s_LOGISIM_BUS_57[15:0]),
                   .XNum(s_LOGISIM_BUS_43[2:0]),
                   .Y(s_LOGISIM_BUS_113[15:0]),
                   .YNum(s_LOGISIM_BUS_39[2:0]));

   FSM      FSM_5 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_122[1:0]),
                   .Now_State(s_LOGISIM_BUS_132[1:0]));

   FSM      FSM_6 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_142[1:0]),
                   .Now_State(s_LOGISIM_BUS_78[1:0]));

   MAX      MAX_5 (.MAX(s_LOGISIM_BUS_83[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_76[2:0]),
                   .X(s_LOGISIM_BUS_154[15:0]),
                   .XNum(s_LOGISIM_BUS_173[2:0]),
                   .Y(s_LOGISIM_BUS_123[15:0]),
                   .YNum(s_LOGISIM_BUS_114[2:0]));

   MAX      MAX_6 (.MAX(s_LOGISIM_BUS_4[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_5[2:0]),
                   .X(s_LOGISIM_BUS_192[15:0]),
                   .XNum(s_LOGISIM_BUS_103[2:0]),
                   .Y(s_LOGISIM_BUS_197[15:0]),
                   .YNum(s_LOGISIM_BUS_16[2:0]));

   FSM      FSM_7 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_74[1:0]),
                   .Now_State(s_LOGISIM_BUS_152[1:0]));

   FSM      FSM_8 (.Jump(s_LOGISIM_NET_204),
                   .Next_State(s_LOGISIM_BUS_13[1:0]),
                   .Now_State(s_LOGISIM_BUS_175[1:0]));

   MAX      MAX_7 (.MAX(s_LOGISIM_BUS_57[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_43[2:0]),
                   .X(s_LOGISIM_BUS_145[15:0]),
                   .XNum(s_LOGISIM_BUS_150[2:0]),
                   .Y(s_LOGISIM_BUS_64[15:0]),
                   .YNum(s_LOGISIM_BUS_85[2:0]));



endmodule
