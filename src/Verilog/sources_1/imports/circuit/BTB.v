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
   wire[2:0] s_LOGISIM_BUS_101;
   wire[1:0] s_LOGISIM_BUS_105;
   wire[2:0] s_LOGISIM_BUS_107;
   wire[31:0] s_LOGISIM_BUS_108;
   wire[15:0] s_LOGISIM_BUS_112;
   wire[2:0] s_LOGISIM_BUS_116;
   wire[31:0] s_LOGISIM_BUS_118;
   wire[1:0] s_LOGISIM_BUS_119;
   wire[2:0] s_LOGISIM_BUS_124;
   wire[31:0] s_LOGISIM_BUS_125;
   wire[15:0] s_LOGISIM_BUS_129;
   wire[15:0] s_LOGISIM_BUS_132;
   wire[15:0] s_LOGISIM_BUS_135;
   wire[2:0] s_LOGISIM_BUS_137;
   wire[31:0] s_LOGISIM_BUS_139;
   wire[1:0] s_LOGISIM_BUS_143;
   wire[31:0] s_LOGISIM_BUS_148;
   wire[1:0] s_LOGISIM_BUS_15;
   wire[2:0] s_LOGISIM_BUS_151;
   wire[15:0] s_LOGISIM_BUS_152;
   wire[1:0] s_LOGISIM_BUS_153;
   wire[31:0] s_LOGISIM_BUS_156;
   wire[1:0] s_LOGISIM_BUS_157;
   wire[2:0] s_LOGISIM_BUS_16;
   wire[15:0] s_LOGISIM_BUS_160;
   wire[15:0] s_LOGISIM_BUS_163;
   wire[1:0] s_LOGISIM_BUS_164;
   wire[31:0] s_LOGISIM_BUS_167;
   wire[15:0] s_LOGISIM_BUS_171;
   wire[31:0] s_LOGISIM_BUS_172;
   wire[31:0] s_LOGISIM_BUS_175;
   wire[2:0] s_LOGISIM_BUS_176;
   wire[15:0] s_LOGISIM_BUS_177;
   wire[31:0] s_LOGISIM_BUS_181;
   wire[31:0] s_LOGISIM_BUS_183;
   wire[15:0] s_LOGISIM_BUS_188;
   wire[2:0] s_LOGISIM_BUS_19;
   wire[1:0] s_LOGISIM_BUS_193;
   wire[2:0] s_LOGISIM_BUS_196;
   wire[15:0] s_LOGISIM_BUS_197;
   wire[1:0] s_LOGISIM_BUS_20;
   wire[15:0] s_LOGISIM_BUS_200;
   wire[31:0] s_LOGISIM_BUS_201;
   wire[31:0] s_LOGISIM_BUS_203;
   wire[31:0] s_LOGISIM_BUS_204;
   wire[15:0] s_LOGISIM_BUS_206;
   wire[1:0] s_LOGISIM_BUS_26;
   wire[1:0] s_LOGISIM_BUS_31;
   wire[15:0] s_LOGISIM_BUS_38;
   wire[2:0] s_LOGISIM_BUS_39;
   wire[2:0] s_LOGISIM_BUS_4;
   wire[15:0] s_LOGISIM_BUS_40;
   wire[2:0] s_LOGISIM_BUS_45;
   wire[1:0] s_LOGISIM_BUS_47;
   wire[2:0] s_LOGISIM_BUS_48;
   wire[15:0] s_LOGISIM_BUS_49;
   wire[15:0] s_LOGISIM_BUS_53;
   wire[15:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_58;
   wire[31:0] s_LOGISIM_BUS_60;
   wire[15:0] s_LOGISIM_BUS_64;
   wire[1:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[15:0] s_LOGISIM_BUS_73;
   wire[1:0] s_LOGISIM_BUS_74;
   wire[2:0] s_LOGISIM_BUS_75;
   wire[1:0] s_LOGISIM_BUS_77;
   wire[15:0] s_LOGISIM_BUS_81;
   wire[31:0] s_LOGISIM_BUS_82;
   wire[15:0] s_LOGISIM_BUS_84;
   wire[2:0] s_LOGISIM_BUS_85;
   wire[1:0] s_LOGISIM_BUS_86;
   wire[2:0] s_LOGISIM_BUS_95;
   wire[31:0] s_LOGISIM_BUS_96;
   wire[31:0] s_LOGISIM_BUS_98;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_131;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_145;
   wire s_LOGISIM_NET_146;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_162;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_169;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_170;
   wire s_LOGISIM_NET_173;
   wire s_LOGISIM_NET_174;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_179;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_182;
   wire s_LOGISIM_NET_184;
   wire s_LOGISIM_NET_185;
   wire s_LOGISIM_NET_186;
   wire s_LOGISIM_NET_187;
   wire s_LOGISIM_NET_189;
   wire s_LOGISIM_NET_190;
   wire s_LOGISIM_NET_191;
   wire s_LOGISIM_NET_192;
   wire s_LOGISIM_NET_194;
   wire s_LOGISIM_NET_195;
   wire s_LOGISIM_NET_198;
   wire s_LOGISIM_NET_199;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_202;
   wire s_LOGISIM_NET_205;
   wire s_LOGISIM_NET_207;
   wire s_LOGISIM_NET_208;
   wire s_LOGISIM_NET_209;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_210;
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
   wire s_LOGISIM_NET_29;
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
   wire s_LOGISIM_NET_30;
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
   wire s_LOGISIM_NET_330;
   wire s_LOGISIM_NET_331;
   wire s_LOGISIM_NET_332;
   wire s_LOGISIM_NET_333;
   wire s_LOGISIM_NET_334;
   wire s_LOGISIM_NET_335;
   wire s_LOGISIM_NET_336;
   wire s_LOGISIM_NET_337;
   wire s_LOGISIM_NET_338;
   wire s_LOGISIM_NET_339;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_340;
   wire s_LOGISIM_NET_341;
   wire s_LOGISIM_NET_342;
   wire s_LOGISIM_NET_343;
   wire s_LOGISIM_NET_344;
   wire s_LOGISIM_NET_345;
   wire s_LOGISIM_NET_346;
   wire s_LOGISIM_NET_347;
   wire s_LOGISIM_NET_348;
   wire s_LOGISIM_NET_349;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_350;
   wire s_LOGISIM_NET_351;
   wire s_LOGISIM_NET_352;
   wire s_LOGISIM_NET_353;
   wire s_LOGISIM_NET_354;
   wire s_LOGISIM_NET_355;
   wire s_LOGISIM_NET_356;
   wire s_LOGISIM_NET_357;
   wire s_LOGISIM_NET_358;
   wire s_LOGISIM_NET_359;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_360;
   wire s_LOGISIM_NET_361;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_89;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_203[31:0]            = EX_BranchAdrr;
   assign s_LOGISIM_NET_126                  = CLK;
   assign s_LOGISIM_BUS_204[31:0]            = EX_PC;
   assign s_LOGISIM_BUS_167[31:0]            = PC;
   assign s_LOGISIM_NET_202                  = EX_BranchTaken;
   assign s_LOGISIM_NET_184                  = EX_Branch;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign JumpAddr                           = s_LOGISIM_BUS_82[31:0];
   assign PredictJump                        = s_LOGISIM_NET_190;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_355 = 1'd0;

   assign s_LOGISIM_NET_247 = 1'd0;

   assign s_LOGISIM_BUS_176[2:0] = 3'd0;

   assign s_LOGISIM_NET_305 = 1'd0;

   assign s_LOGISIM_BUS_152[15:0] = 16'd0;

   assign s_LOGISIM_NET_213 = 1'd0;

   assign s_LOGISIM_NET_205 = 1'd1;

   assign s_LOGISIM_NET_290 = 1'd0;

   assign s_LOGISIM_NET_292 = 1'd0;

   assign s_LOGISIM_NET_315 = 1'd0;

   assign s_LOGISIM_NET_217 = 1'd0;

   assign s_LOGISIM_NET_285 = 1'd0;

   assign s_LOGISIM_NET_319 = 1'd0;

   assign s_LOGISIM_NET_216 = 1'd0;

   assign s_LOGISIM_NET_211 = 1'd0;

   assign s_LOGISIM_NET_222 = 1'd0;

   assign s_LOGISIM_NET_72 = 1'd1;

   assign s_LOGISIM_NET_347 = 1'd0;

   assign s_LOGISIM_NET_224 = 1'd0;

   assign s_LOGISIM_NET_334 = 1'd0;

   assign s_LOGISIM_NET_210 = 1'd1;

   assign s_LOGISIM_NET_229 = 1'd0;

   assign s_LOGISIM_NET_261 = 1'd0;

   assign s_LOGISIM_NET_269 = 1'd0;

   assign s_LOGISIM_NET_207 = 1'd0;

   assign s_LOGISIM_NET_209 = 1'd0;

   assign s_LOGISIM_NET_110 = 1'd1;

   assign s_LOGISIM_NET_208 = 1'd0;

   assign s_LOGISIM_NET_250 = 1'd0;

   assign s_LOGISIM_NET_332 = 1'd1;

   assign s_LOGISIM_NET_299 = 1'd0;

   assign s_LOGISIM_NET_343 = 1'd0;

   assign s_LOGISIM_NET_230 = 1'd0;

   assign s_LOGISIM_NET_236 = 1'd0;

   assign s_LOGISIM_NET_350 = 1'd0;

   assign s_LOGISIM_NET_325 = 1'd0;

   assign s_LOGISIM_NET_271 = 1'd1;

   assign s_LOGISIM_NET_219 = 1'd1;

   assign s_LOGISIM_NET_333 = 1'd0;

   assign s_LOGISIM_NET_252 = 1'd0;

   assign s_LOGISIM_NET_267 = 1'd0;

   assign s_LOGISIM_NET_323 = 1'd0;

   assign s_LOGISIM_BUS_48[2:0] = 3'd6;

   assign s_LOGISIM_BUS_39[2:0] = 3'd1;

   assign s_LOGISIM_BUS_196[2:0] = 3'd3;

   assign s_LOGISIM_NET_212 = 1'd0;

   assign s_LOGISIM_NET_218 = 1'd0;

   assign s_LOGISIM_NET_225 = 1'd0;

   assign s_LOGISIM_NET_221 = 1'd0;

   assign s_LOGISIM_NET_214 = 1'd0;

   assign s_LOGISIM_NET_294 = 1'd0;

   assign s_LOGISIM_NET_251 = 1'd0;

   assign s_LOGISIM_NET_63 = 1'd1;

   assign s_LOGISIM_NET_239 = 1'd0;

   assign s_LOGISIM_NET_303 = 1'd0;

   assign s_LOGISIM_NET_220 = 1'd0;

   assign s_LOGISIM_NET_291 = 1'd0;

   assign s_LOGISIM_NET_215 = 1'd0;

   assign s_LOGISIM_NET_232 = 1'd0;

   assign s_LOGISIM_NET_223 = 1'd0;

   assign s_LOGISIM_NET_228 = 1'd0;

   assign s_LOGISIM_NET_268 = 1'd0;

   assign s_LOGISIM_NET_341 = 1'd0;

   assign s_LOGISIM_NET_246 = 1'd0;

   assign s_LOGISIM_NET_226 = 1'd0;

   assign s_LOGISIM_NET_273 = 1'd0;

   assign s_LOGISIM_NET_227 = 1'd0;

   assign s_LOGISIM_BUS_73[15:0] = 16'd0;

   assign s_LOGISIM_NET_349 = 1'd0;

   assign s_LOGISIM_NET_259 = 1'd1;

   assign s_LOGISIM_NET_231 = 1'd0;

   assign s_LOGISIM_NET_235 = 1'd0;

   assign s_LOGISIM_BUS_137[2:0] = 3'd2;

   assign s_LOGISIM_NET_356 = 1'd0;

   assign s_LOGISIM_NET_260 = 1'd0;

   assign s_LOGISIM_NET_37 = 1'd1;

   assign s_LOGISIM_NET_233 = 1'd0;

   assign s_LOGISIM_NET_234 = 1'd0;

   assign s_LOGISIM_NET_314 = 1'd0;

   assign s_LOGISIM_NET_237 = 1'd0;

   assign s_LOGISIM_NET_238 = 1'd0;

   assign s_LOGISIM_NET_240 = 1'd0;

   assign s_LOGISIM_NET_241 = 1'd0;

   assign s_LOGISIM_NET_340 = 1'd0;

   assign s_LOGISIM_NET_242 = 1'd1;

   assign s_LOGISIM_NET_258 = 1'd0;

   assign s_LOGISIM_NET_243 = 1'd0;

   assign s_LOGISIM_NET_244 = 1'd0;

   assign s_LOGISIM_NET_62 = 1'd1;

   assign s_LOGISIM_NET_245 = 1'd0;

   assign s_LOGISIM_NET_354 = 1'd0;

   assign s_LOGISIM_NET_272 = 1'd0;

   assign s_LOGISIM_NET_324 = 1'd1;

   assign s_LOGISIM_NET_293 = 1'd0;

   assign s_LOGISIM_NET_186 = 1'd1;

   assign s_LOGISIM_NET_248 = 1'd0;

   assign s_LOGISIM_NET_348 = 1'd0;

   assign s_LOGISIM_NET_342 = 1'd0;

   assign s_LOGISIM_NET_249 = 1'd0;

   assign s_LOGISIM_NET_253 = 1'd0;

   assign s_LOGISIM_NET_254 = 1'd0;

   assign s_LOGISIM_NET_255 = 1'd0;

   assign s_LOGISIM_NET_311 = 1'd0;

   assign s_LOGISIM_NET_256 = 1'd1;

   assign s_LOGISIM_BUS_40[15:0] = 16'd0;

   assign s_LOGISIM_NET_257 = 1'd0;

   assign s_LOGISIM_NET_262 = 1'd0;

   assign s_LOGISIM_NET_263 = 1'd0;

   assign s_LOGISIM_NET_264 = 1'd0;

   assign s_LOGISIM_NET_265 = 1'd0;

   assign s_LOGISIM_NET_266 = 1'd0;

   assign s_LOGISIM_NET_24 = 1'd1;

   assign s_LOGISIM_NET_270 = 1'd0;

   assign s_LOGISIM_NET_312 = 1'd0;

   assign s_LOGISIM_NET_274 = 1'd0;

   assign s_LOGISIM_NET_275 = 1'd0;

   assign s_LOGISIM_NET_304 = 1'd0;

   assign s_LOGISIM_NET_276 = 1'd0;

   assign s_LOGISIM_BUS_85[2:0] = 3'd4;

   assign s_LOGISIM_NET_277 = 1'd0;

   assign s_LOGISIM_NET_278 = 1'd0;

   assign s_LOGISIM_NET_279 = 1'd0;

   assign s_LOGISIM_NET_280 = 1'd0;

   assign s_LOGISIM_NET_281 = 1'd0;

   assign s_LOGISIM_NET_282 = 1'd0;

   assign s_LOGISIM_NET_283 = 1'd0;

   assign s_LOGISIM_NET_284 = 1'd0;

   assign s_LOGISIM_NET_295 = 1'd0;

   assign s_LOGISIM_NET_286 = 1'd0;

   assign s_LOGISIM_NET_287 = 1'd0;

   assign s_LOGISIM_NET_288 = 1'd0;

   assign s_LOGISIM_NET_289 = 1'd0;

   assign s_LOGISIM_BUS_188[15:0] = 16'd0;

   assign s_LOGISIM_NET_339 = 1'd0;

   assign s_LOGISIM_NET_346 = 1'd0;

   assign s_LOGISIM_NET_317 = 1'd0;

   assign s_LOGISIM_NET_296 = 1'd0;

   assign s_LOGISIM_BUS_107[2:0] = 3'd7;

   assign s_LOGISIM_NET_297 = 1'd0;

   assign s_LOGISIM_BUS_163[15:0] = 16'd0;

   assign s_LOGISIM_NET_298 = 1'd0;

   assign s_LOGISIM_NET_300 = 1'd0;

   assign s_LOGISIM_NET_301 = 1'd0;

   assign s_LOGISIM_NET_302 = 1'd0;

   assign s_LOGISIM_NET_306 = 1'd0;

   assign s_LOGISIM_NET_307 = 1'd0;

   assign s_LOGISIM_NET_308 = 1'd0;

   assign s_LOGISIM_NET_351 = 1'd0;

   assign s_LOGISIM_NET_309 = 1'd0;

   assign s_LOGISIM_NET_310 = 1'd0;

   assign s_LOGISIM_NET_313 = 1'd0;

   assign s_LOGISIM_NET_316 = 1'd0;

   assign s_LOGISIM_NET_326 = 1'd0;

   assign s_LOGISIM_BUS_206[15:0] = 16'd0;

   assign s_LOGISIM_NET_318 = 1'd0;

   assign s_LOGISIM_NET_320 = 1'd0;

   assign s_LOGISIM_NET_321 = 1'd0;

   assign s_LOGISIM_NET_322 = 1'd0;

   assign s_LOGISIM_NET_344 = 1'd0;

   assign s_LOGISIM_NET_327 = 1'd0;

   assign s_LOGISIM_NET_328 = 1'd0;

   assign s_LOGISIM_NET_329 = 1'd0;

   assign s_LOGISIM_NET_331 = 1'd0;

   assign s_LOGISIM_NET_330 = 1'd0;

   assign s_LOGISIM_BUS_129[15:0] = 16'd0;

   assign s_LOGISIM_NET_335 = 1'd0;

   assign s_LOGISIM_NET_336 = 1'd0;

   assign s_LOGISIM_BUS_151[2:0] = 3'd5;

   assign s_LOGISIM_NET_337 = 1'd0;

   assign s_LOGISIM_NET_338 = 1'd0;

   assign s_LOGISIM_BUS_112[15:0] = 16'd0;

   assign s_LOGISIM_NET_345 = 1'd0;

   assign s_LOGISIM_NET_352 = 1'd0;

   assign s_LOGISIM_NET_150 = 1'd1;

   assign s_LOGISIM_NET_353 = 1'd0;

   assign s_LOGISIM_NET_357 = 1'd0;

   assign s_LOGISIM_NET_358 = 1'd0;

   assign s_LOGISIM_NET_359 = 1'd1;

   assign s_LOGISIM_NET_360 = 1'd0;

   assign s_LOGISIM_NET_361 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_132[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_163[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_227),
                 .clear(s_LOGISIM_NET_100),
                 .load(s_LOGISIM_NET_301),
                 .pre(s_LOGISIM_NET_298));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_166),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_204[31:0]),
                    .DataB(s_LOGISIM_BUS_108[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_90),
              .Input_2(s_LOGISIM_NET_146),
              .Result(s_LOGISIM_NET_192));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_184),
              .Input_2(s_LOGISIM_NET_133),
              .Result(s_LOGISIM_NET_52));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_2 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_177[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_73[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_336),
                 .clear(s_LOGISIM_NET_154),
                 .load(s_LOGISIM_NET_255),
                 .pre(s_LOGISIM_NET_207));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_117),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_167[31:0]),
                    .DataB(s_LOGISIM_BUS_125[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_57),
              .Input_2(s_LOGISIM_NET_136),
              .Result(s_LOGISIM_NET_131));

   REGISTER_FLIP_FLOP_Valid5 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_130),
                       .D(s_LOGISIM_NET_186),
                       .Q(s_LOGISIM_NET_136),
                       .Reset(s_LOGISIM_NET_275),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_244),
                       .pre(s_LOGISIM_NET_266));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_337),
                             .MuxIn_1(s_LOGISIM_NET_174),
                             .MuxOut(s_LOGISIM_NET_190),
                             .Sel(s_LOGISIM_NET_147));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_162),
              .Input_2(s_LOGISIM_NET_161),
              .Result(s_LOGISIM_NET_1));

   REGISTER_FLIP_FLOP_BranchDestinationAddress1 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_138),
                       .D(s_LOGISIM_BUS_203[31:0]),
                       .Q(s_LOGISIM_BUS_181[31:0]),
                       .Reset(s_LOGISIM_NET_280),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_241),
                       .pre(s_LOGISIM_NET_306));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_155),
              .Input_2(s_LOGISIM_NET_169),
              .Result(s_LOGISIM_NET_61));

   REGISTER_FLIP_FLOP_Valid3 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_120),
                       .D(s_LOGISIM_NET_110),
                       .Q(s_LOGISIM_NET_170),
                       .Reset(s_LOGISIM_NET_233),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_237),
                       .pre(s_LOGISIM_NET_208));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_68),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_167[31:0]),
                    .DataB(s_LOGISIM_BUS_156[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_46),
              .Input_2(s_LOGISIM_NET_159),
              .Result(s_LOGISIM_NET_99));

   REGISTER_FLIP_FLOP_HistoricalBit5 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_52),
                       .D(s_LOGISIM_BUS_31[1:0]),
                       .Q(s_LOGISIM_BUS_74[1:0]),
                       .Reset(s_LOGISIM_NET_253),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_353),
                       .pre(s_LOGISIM_NET_262));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_159),
                         .Result(s_LOGISIM_NET_121));

   REGISTER_FLIP_FLOP_HistoricalBit3 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_70),
                       .D(s_LOGISIM_BUS_157[1:0]),
                       .Q(s_LOGISIM_BUS_153[1:0]),
                       .Reset(s_LOGISIM_NET_214),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_278),
                       .pre(s_LOGISIM_NET_209));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_148[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_181[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_58[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_60[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_98[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_139[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_172[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_7[31:0]),
             .MuxOut(s_LOGISIM_BUS_82[31:0]),
             .Sel(s_LOGISIM_BUS_116[2:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_179),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_204[31:0]),
                    .DataB(s_LOGISIM_BUS_125[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_168),
              .Input_2(s_LOGISIM_NET_138),
              .Result(s_LOGISIM_NET_122));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_3 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_81[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_40[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_226),
                 .clear(s_LOGISIM_NET_114),
                 .load(s_LOGISIM_NET_327),
                 .pre(s_LOGISIM_NET_231));

   REGISTER_FLIP_FLOP_Valid6 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_5),
                       .D(s_LOGISIM_NET_24),
                       .Q(s_LOGISIM_NET_159),
                       .Reset(s_LOGISIM_NET_234),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_238),
                       .pre(s_LOGISIM_NET_335));

   REGISTER_FLIP_FLOP_BranchDestinationAddress0 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_198),
                       .D(s_LOGISIM_BUS_203[31:0]),
                       .Q(s_LOGISIM_BUS_148[31:0]),
                       .Reset(s_LOGISIM_NET_287),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_281),
                       .pre(s_LOGISIM_NET_212));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_134),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_204[31:0]),
                    .DataB(s_LOGISIM_BUS_156[31:0]));

   REGISTER_FLIP_FLOP_BranchDestinationAddress4 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_59),
                       .D(s_LOGISIM_BUS_203[31:0]),
                       .Q(s_LOGISIM_BUS_98[31:0]),
                       .Reset(s_LOGISIM_NET_296),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_215),
                       .pre(s_LOGISIM_NET_322));

   OR_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_29),
              .Input_2(s_LOGISIM_NET_71),
              .Result(s_LOGISIM_NET_17));

   REGISTER_FLIP_FLOP_clr4 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_126),
                       .ClockEnable(s_LOGISIM_NET_210),
                       .D(s_LOGISIM_NET_87),
                       .Q(s_LOGISIM_NET_154),
                       .Reset(s_LOGISIM_NET_277),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_279),
                       .pre(s_LOGISIM_NET_211));

   OR_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_144),
               .Input_2(s_LOGISIM_NET_178),
               .Input_3(s_LOGISIM_NET_61),
               .Input_4(s_LOGISIM_NET_56),
               .Input_5(s_LOGISIM_NET_89),
               .Input_6(s_LOGISIM_NET_133),
               .Input_7(s_LOGISIM_NET_165),
               .Input_8(s_LOGISIM_NET_11),
               .Result(s_LOGISIM_NET_50));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_97),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_5));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_3),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_130));

   REGISTER_FLIP_FLOP_BranchInstructionAddress5 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_130),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_201[31:0]),
                        .Reset(s_LOGISIM_NET_213),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_264),
                        .pre(s_LOGISIM_NET_308));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_11),
               .Result(s_LOGISIM_NET_18));

   NOT_GATE      GATE_14 (.Input_1(s_LOGISIM_NET_195),
                          .Result(s_LOGISIM_NET_6));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_155),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_204[31:0]),
                    .DataB(s_LOGISIM_BUS_96[31:0]));

   OR_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_199),
               .Input_2(s_LOGISIM_NET_168),
               .Input_3(s_LOGISIM_NET_162),
               .Input_4(s_LOGISIM_NET_149),
               .Input_5(s_LOGISIM_NET_128),
               .Input_6(s_LOGISIM_NET_131),
               .Input_7(s_LOGISIM_NET_99),
               .Input_8(s_LOGISIM_NET_88),
               .Result(s_LOGISIM_NET_147));

   AND_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_134),
               .Input_2(s_LOGISIM_NET_194),
               .Result(s_LOGISIM_NET_89));

   REGISTER_FLIP_FLOP_HistoricalBit4 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_10),
                        .D(s_LOGISIM_BUS_193[1:0]),
                        .Q(s_LOGISIM_BUS_20[1:0]),
                        .Reset(s_LOGISIM_NET_274),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_216),
                        .pre(s_LOGISIM_NET_245));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_1 (.Address(s_LOGISIM_BUS_116[2:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_242),
                .input_vector({s_LOGISIM_NET_88,
                               s_LOGISIM_NET_99,
                               s_LOGISIM_NET_131,
                               s_LOGISIM_NET_128,
                               s_LOGISIM_NET_149,
                               s_LOGISIM_NET_162,
                               s_LOGISIM_NET_168,
                               s_LOGISIM_NET_199}));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_4 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_197[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_152[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_217),
                 .clear(s_LOGISIM_NET_34),
                 .load(s_LOGISIM_NET_284),
                 .pre(s_LOGISIM_NET_218));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_NET_106),
                          .Result(s_LOGISIM_NET_13));

   REGISTER_FLIP_FLOP_clr3 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_219),
                        .D(s_LOGISIM_NET_79),
                        .Q(s_LOGISIM_NET_114),
                        .Reset(s_LOGISIM_NET_358),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_254),
                        .pre(s_LOGISIM_NET_220));

   REGISTER_FLIP_FLOP_BranchInstructionAddress2 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_161),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_96[31:0]),
                        .Reset(s_LOGISIM_NET_357),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_221),
                        .pre(s_LOGISIM_NET_222));

   REGISTER_FLIP_FLOP_BranchInstructionAddress3 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_120),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_118[31:0]),
                        .Reset(s_LOGISIM_NET_302),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_265),
                        .pre(s_LOGISIM_NET_223));

   REGISTER_FLIP_FLOP_BranchDestinationAddress5 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_130),
                        .D(s_LOGISIM_BUS_203[31:0]),
                        .Q(s_LOGISIM_BUS_139[31:0]),
                        .Reset(s_LOGISIM_NET_224),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_329),
                        .pre(s_LOGISIM_NET_225));

   AND_GATE #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_178),
               .Result(s_LOGISIM_NET_51));

   OR_GATE #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_128),
               .Input_2(s_LOGISIM_NET_59),
               .Result(s_LOGISIM_NET_87));

   REGISTER_FLIP_FLOP_HistoricalBit2 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_32),
                        .D(s_LOGISIM_BUS_119[1:0]),
                        .Q(s_LOGISIM_BUS_86[1:0]),
                        .Reset(s_LOGISIM_NET_228),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_229),
                        .pre(s_LOGISIM_NET_230));

   REGISTER_FLIP_FLOP_Valid2 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_17 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_161),
                        .D(s_LOGISIM_NET_72),
                        .Q(s_LOGISIM_NET_169),
                        .Reset(s_LOGISIM_NET_282),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_240),
                        .pre(s_LOGISIM_NET_232));

   OR_GATE #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_NET_199),
               .Input_2(s_LOGISIM_NET_198),
               .Result(s_LOGISIM_NET_43));

   Decoder_8      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_123),
                             .DecoderOut_1(s_LOGISIM_NET_2),
                             .DecoderOut_2(s_LOGISIM_NET_36),
                             .DecoderOut_3(s_LOGISIM_NET_71),
                             .DecoderOut_4(s_LOGISIM_NET_102),
                             .DecoderOut_5(s_LOGISIM_NET_25),
                             .DecoderOut_6(s_LOGISIM_NET_80),
                             .DecoderOut_7(s_LOGISIM_NET_146),
                             .Enable(s_LOGISIM_NET_187),
                             .Sel(s_LOGISIM_BUS_124[2:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_68),
               .Input_2(s_LOGISIM_NET_194),
               .Result(s_LOGISIM_NET_128));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_92),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_167[31:0]),
                    .DataB(s_LOGISIM_BUS_96[31:0]));

   REGISTER_FLIP_FLOP_BranchDestinationAddress7 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_18 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_93),
                        .D(s_LOGISIM_BUS_203[31:0]),
                        .Q(s_LOGISIM_BUS_7[31:0]),
                        .Reset(s_LOGISIM_NET_352),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_235),
                        .pre(s_LOGISIM_NET_236));

   AND_GATE #(.BubblesMask(0))
      GATE_22 (.Input_1(s_LOGISIM_NET_145),
               .Input_2(s_LOGISIM_NET_170),
               .Result(s_LOGISIM_NET_56));

   AND_GATE #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_91),
               .Input_2(s_LOGISIM_NET_106),
               .Result(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP_BranchDestinationAddress3 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_19 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_120),
                        .D(s_LOGISIM_BUS_203[31:0]),
                        .Q(s_LOGISIM_BUS_60[31:0]),
                        .Reset(s_LOGISIM_NET_239),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_243),
                        .pre(s_LOGISIM_NET_300));

   OR_GATE #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_NET_23),
               .Input_2(s_LOGISIM_NET_80),
               .Result(s_LOGISIM_NET_97));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_57),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_167[31:0]),
                    .DataB(s_LOGISIM_BUS_201[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_25 (.Input_1(s_LOGISIM_NET_103),
               .Input_2(s_LOGISIM_NET_159),
               .Result(s_LOGISIM_NET_165));

   Decoder_8      DECODER_2 (.DecoderOut_0(s_LOGISIM_NET_185),
                             .DecoderOut_1(s_LOGISIM_NET_66),
                             .DecoderOut_2(s_LOGISIM_NET_22),
                             .DecoderOut_3(s_LOGISIM_NET_29),
                             .DecoderOut_4(s_LOGISIM_NET_94),
                             .DecoderOut_5(s_LOGISIM_NET_83),
                             .DecoderOut_6(s_LOGISIM_NET_23),
                             .DecoderOut_7(s_LOGISIM_NET_90),
                             .Enable(s_LOGISIM_NET_109),
                             .Sel(s_LOGISIM_BUS_95[2:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_92),
               .Input_2(s_LOGISIM_NET_169),
               .Result(s_LOGISIM_NET_162));

   REGISTER_FLIP_FLOP_BranchDestinationAddress2 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_20 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_161),
                        .D(s_LOGISIM_BUS_203[31:0]),
                        .Q(s_LOGISIM_BUS_58[31:0]),
                        .Reset(s_LOGISIM_NET_289),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_246),
                        .pre(s_LOGISIM_NET_248));

   AND_GATE #(.BubblesMask(0))
      GATE_27 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_56),
               .Result(s_LOGISIM_NET_70));

   OR_GATE #(.BubblesMask(0))
      GATE_28 (.Input_1(s_LOGISIM_NET_83),
               .Input_2(s_LOGISIM_NET_25),
               .Result(s_LOGISIM_NET_3));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_115),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_204[31:0]),
                    .DataB(s_LOGISIM_BUS_201[31:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_5 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_49[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_206[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_247),
                 .clear(s_LOGISIM_NET_182),
                 .load(s_LOGISIM_NET_249),
                 .pre(s_LOGISIM_NET_338));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_NET_194),
                          .Result(s_LOGISIM_NET_41));

   REGISTER_FLIP_FLOP_clr0 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_21 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_359),
                        .D(s_LOGISIM_NET_43),
                        .Q(s_LOGISIM_NET_21),
                        .Reset(s_LOGISIM_NET_309),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_288),
                        .pre(s_LOGISIM_NET_297));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_111),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_59));

   AND_GATE #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_166),
               .Input_2(s_LOGISIM_NET_180),
               .Result(s_LOGISIM_NET_178));

   REGISTER_FLIP_FLOP_clr7 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_22 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_256),
                        .D(s_LOGISIM_NET_140),
                        .Q(s_LOGISIM_NET_113),
                        .Reset(s_LOGISIM_NET_250),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_251),
                        .pre(s_LOGISIM_NET_252));

   REGISTER_FLIP_FLOP_Valid7 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_23 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_93),
                        .D(s_LOGISIM_NET_63),
                        .Q(s_LOGISIM_NET_106),
                        .Reset(s_LOGISIM_NET_263),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_257),
                        .pre(s_LOGISIM_NET_270));

   AND_GATE #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_NET_115),
               .Input_2(s_LOGISIM_NET_136),
               .Result(s_LOGISIM_NET_133));

   OR_GATE #(.BubblesMask(0))
      GATE_33 (.Input_1(s_LOGISIM_NET_94),
               .Input_2(s_LOGISIM_NET_102),
               .Result(s_LOGISIM_NET_111));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_10 (.A_EQ_B(s_LOGISIM_NET_91),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_204[31:0]),
                     .DataB(s_LOGISIM_BUS_175[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_11 (.A_EQ_B(s_LOGISIM_NET_145),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_204[31:0]),
                     .DataB(s_LOGISIM_BUS_118[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_12 (.A_EQ_B(s_LOGISIM_NET_28),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_167[31:0]),
                     .DataB(s_LOGISIM_BUS_175[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_22),
               .Input_2(s_LOGISIM_NET_36),
               .Result(s_LOGISIM_NET_127));

   REGISTER_FLIP_FLOP_clr1 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_24 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_259),
                        .D(s_LOGISIM_NET_122),
                        .Q(s_LOGISIM_NET_100),
                        .Reset(s_LOGISIM_NET_258),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_283),
                        .pre(s_LOGISIM_NET_276));

   AND_GATE #(.BubblesMask(0))
      GATE_35 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_144),
               .Result(s_LOGISIM_NET_9));

   AND_GATE #(.BubblesMask(0))
      GATE_36 (.Input_1(s_LOGISIM_NET_117),
               .Input_2(s_LOGISIM_NET_195),
               .Result(s_LOGISIM_NET_199));

   REGISTER_FLIP_FLOP_BranchDestinationAddress6 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_25 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_5),
                        .D(s_LOGISIM_BUS_203[31:0]),
                        .Q(s_LOGISIM_BUS_172[31:0]),
                        .Reset(s_LOGISIM_NET_260),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_261),
                        .pre(s_LOGISIM_NET_310));

   NOT_GATE      GATE_37 (.Input_1(s_LOGISIM_NET_50),
                          .Result(s_LOGISIM_NET_67));

   REGISTER_FLIP_FLOP_BranchInstructionAddress1 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_26 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_138),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_108[31:0]),
                        .Reset(s_LOGISIM_NET_267),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_268),
                        .pre(s_LOGISIM_NET_269));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_2 (.Address(s_LOGISIM_BUS_75[2:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(s_LOGISIM_NET_271),
                .input_vector({s_LOGISIM_NET_88,
                               s_LOGISIM_NET_99,
                               s_LOGISIM_NET_131,
                               s_LOGISIM_NET_128,
                               s_LOGISIM_NET_149,
                               s_LOGISIM_NET_162,
                               s_LOGISIM_NET_168,
                               s_LOGISIM_NET_199}));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_30),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_138));

   OR_GATE #(.BubblesMask(0))
      GATE_39 (.Input_1(s_LOGISIM_NET_99),
               .Input_2(s_LOGISIM_NET_5),
               .Result(s_LOGISIM_NET_55));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_6 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_160[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_112[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_273),
                 .clear(s_LOGISIM_NET_189),
                 .load(s_LOGISIM_NET_272),
                 .pre(s_LOGISIM_NET_345));

   AND_GATE #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_89),
               .Result(s_LOGISIM_NET_10));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_7 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_171[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_129[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_285),
                 .clear(s_LOGISIM_NET_21),
                 .load(s_LOGISIM_NET_360),
                 .pre(s_LOGISIM_NET_286));

   OR_GATE #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_NET_185),
               .Input_2(s_LOGISIM_NET_123),
               .Result(s_LOGISIM_NET_141));

   REGISTER_FLIP_FLOP_HistoricalBit7 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_27 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_18),
                        .D(s_LOGISIM_BUS_105[1:0]),
                        .Q(s_LOGISIM_BUS_15[1:0]),
                        .Reset(s_LOGISIM_NET_290),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_291),
                        .pre(s_LOGISIM_NET_321));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_NET_169),
                          .Result(s_LOGISIM_NET_44));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_13 (.A_EQ_B(s_LOGISIM_NET_76),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_167[31:0]),
                     .DataB(s_LOGISIM_BUS_118[31:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_8 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_200[15:0]),
                 .GlobalClock(s_LOGISIM_NET_126),
                 .LoadData(s_LOGISIM_BUS_188[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_293),
                 .clear(s_LOGISIM_NET_113),
                 .load(s_LOGISIM_NET_292),
                 .pre(s_LOGISIM_NET_307));

   REGISTER_FLIP_FLOP_Valid4 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_28 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_59),
                        .D(s_LOGISIM_NET_150),
                        .Q(s_LOGISIM_NET_194),
                        .Reset(s_LOGISIM_NET_294),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_316),
                        .pre(s_LOGISIM_NET_295));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_43 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_127),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_161));

   REGISTER_FLIP_FLOP_HistoricalBit6 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_29 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_35),
                        .D(s_LOGISIM_BUS_69[1:0]),
                        .Q(s_LOGISIM_BUS_143[1:0]),
                        .Reset(s_LOGISIM_NET_313),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_320),
                        .pre(s_LOGISIM_NET_299));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_14 (.A_EQ_B(s_LOGISIM_NET_46),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_167[31:0]),
                     .DataB(s_LOGISIM_BUS_183[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_165),
               .Result(s_LOGISIM_NET_35));

   REGISTER_FLIP_FLOP_BranchInstructionAddress4 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_30 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_59),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_156[31:0]),
                        .Reset(s_LOGISIM_NET_303),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_304),
                        .pre(s_LOGISIM_NET_305));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_NET_136),
                          .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_46 (.Input_1(s_LOGISIM_NET_170),
                          .Result(s_LOGISIM_NET_191));

   AND_GATE #(.BubblesMask(0))
      GATE_47 (.Input_1(s_LOGISIM_NET_28),
               .Input_2(s_LOGISIM_NET_106),
               .Result(s_LOGISIM_NET_88));

   Multiplexer_8      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_BUS_164[1]),
                             .MuxIn_1(s_LOGISIM_BUS_26[1]),
                             .MuxIn_2(s_LOGISIM_BUS_86[1]),
                             .MuxIn_3(s_LOGISIM_BUS_153[1]),
                             .MuxIn_4(s_LOGISIM_BUS_20[1]),
                             .MuxIn_5(s_LOGISIM_BUS_74[1]),
                             .MuxIn_6(s_LOGISIM_BUS_143[1]),
                             .MuxIn_7(s_LOGISIM_BUS_15[1]),
                             .MuxOut(s_LOGISIM_NET_174),
                             .Sel(s_LOGISIM_BUS_75[2:0]));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_48 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_141),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_198));

   REGISTER_FLIP_FLOP_BranchInstructionAddress7 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_31 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_93),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_175[31:0]),
                        .Reset(s_LOGISIM_NET_311),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_312),
                        .pre(s_LOGISIM_NET_328));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_15 (.A_EQ_B(s_LOGISIM_NET_103),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_204[31:0]),
                     .DataB(s_LOGISIM_BUS_183[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_49 (.Input_1(s_LOGISIM_NET_66),
               .Input_2(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_30));

   REGISTER_FLIP_FLOP_BranchInstructionAddress6 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_32 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_5),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_183[31:0]),
                        .Reset(s_LOGISIM_NET_330),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_314),
                        .pre(s_LOGISIM_NET_315));

   AND_GATE #(.BubblesMask(0))
      GATE_50 (.Input_1(s_LOGISIM_NET_104),
               .Input_2(s_LOGISIM_NET_180),
               .Result(s_LOGISIM_NET_168));

   AND_GATE #(.BubblesMask(0))
      GATE_51 (.Input_1(s_LOGISIM_NET_179),
               .Input_2(s_LOGISIM_NET_195),
               .Result(s_LOGISIM_NET_144));

   REGISTER_FLIP_FLOP_Valid0 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_33 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_198),
                        .D(s_LOGISIM_NET_205),
                        .Q(s_LOGISIM_NET_195),
                        .Reset(s_LOGISIM_NET_317),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_318),
                        .pre(s_LOGISIM_NET_319));

   REGISTER_FLIP_FLOP_clr2 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_34 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_324),
                        .D(s_LOGISIM_NET_1),
                        .Q(s_LOGISIM_NET_182),
                        .Reset(s_LOGISIM_NET_323),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_325),
                        .pre(s_LOGISIM_NET_326));

   OR_GATE #(.BubblesMask(0))
      GATE_52 (.Input_1(s_LOGISIM_NET_149),
               .Input_2(s_LOGISIM_NET_120),
               .Result(s_LOGISIM_NET_79));

   REGISTER_FLIP_FLOP_clr6 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_35 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_332),
                        .D(s_LOGISIM_NET_55),
                        .Q(s_LOGISIM_NET_34),
                        .Reset(s_LOGISIM_NET_331),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_333),
                        .pre(s_LOGISIM_NET_334));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_53 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_192),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_93));

   OR_GATE #(.BubblesMask(0))
      GATE_54 (.Input_1(s_LOGISIM_NET_131),
               .Input_2(s_LOGISIM_NET_130),
               .Result(s_LOGISIM_NET_173));

   REGISTER_FLIP_FLOP_Valid1 #(.ActiveLevel(1),
                               .NrOfBits(1))
      REGISTER_FILE_36 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_138),
                        .D(s_LOGISIM_NET_37),
                        .Q(s_LOGISIM_NET_180),
                        .Reset(s_LOGISIM_NET_339),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_340),
                        .pre(s_LOGISIM_NET_341));

   REGISTER_FLIP_FLOP_HistoricalBit1 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_37 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_51),
                        .D(s_LOGISIM_BUS_77[1:0]),
                        .Q(s_LOGISIM_BUS_26[1:0]),
                        .Reset(s_LOGISIM_NET_342),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_343),
                        .pre(s_LOGISIM_NET_344));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_55 (.Input_1(s_LOGISIM_NET_67),
               .Input_2(s_LOGISIM_NET_17),
               .Input_3(s_LOGISIM_NET_184),
               .Result(s_LOGISIM_NET_120));

   AND_GATE #(.BubblesMask(0))
      GATE_56 (.Input_1(s_LOGISIM_NET_184),
               .Input_2(s_LOGISIM_NET_61),
               .Result(s_LOGISIM_NET_32));

   AND_GATE #(.BubblesMask(0))
      GATE_57 (.Input_1(s_LOGISIM_NET_76),
               .Input_2(s_LOGISIM_NET_170),
               .Result(s_LOGISIM_NET_149));

   REGISTER_FLIP_FLOP_BranchInstructionAddress0 #(.ActiveLevel(1),
                                                  .NrOfBits(32))
      REGISTER_FILE_38 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_198),
                        .D(s_LOGISIM_BUS_204[31:0]),
                        .Q(s_LOGISIM_BUS_125[31:0]),
                        .Reset(s_LOGISIM_NET_346),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_347),
                        .pre(s_LOGISIM_NET_348));

   REGISTER_FLIP_FLOP_HistoricalBit0 #(.ActiveLevel(1),
                                       .NrOfBits(2))
      REGISTER_FILE_39 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_9),
                        .D(s_LOGISIM_BUS_47[1:0]),
                        .Q(s_LOGISIM_BUS_164[1:0]),
                        .Reset(s_LOGISIM_NET_349),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_350),
                        .pre(s_LOGISIM_NET_351));

   NOT_GATE      GATE_58 (.Input_1(s_LOGISIM_NET_180),
                          .Result(s_LOGISIM_NET_8));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_16 (.A_EQ_B(s_LOGISIM_NET_104),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_167[31:0]),
                     .DataB(s_LOGISIM_BUS_108[31:0]));

   REGISTER_FLIP_FLOP_clr5 #(.ActiveLevel(1),
                             .NrOfBits(1))
      REGISTER_FILE_40 (.Clock(s_LOGISIM_NET_126),
                        .ClockEnable(s_LOGISIM_NET_361),
                        .D(s_LOGISIM_NET_173),
                        .Q(s_LOGISIM_NET_189),
                        .Reset(s_LOGISIM_NET_354),
                        .Tick(1'b1),
                        .cs(s_LOGISIM_NET_355),
                        .pre(s_LOGISIM_NET_356));

   OR_GATE #(.BubblesMask(0))
      GATE_59 (.Input_1(s_LOGISIM_NET_88),
               .Input_2(s_LOGISIM_NET_93),
               .Result(s_LOGISIM_NET_140));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_3 (.Address(s_LOGISIM_BUS_95[2:0]),
                .EnableOut(s_LOGISIM_NET_187),
                .GroupSelect(s_LOGISIM_NET_109),
                .enable(s_LOGISIM_NET_62),
                .input_vector({s_LOGISIM_NET_13,
                               s_LOGISIM_NET_121,
                               s_LOGISIM_NET_12,
                               s_LOGISIM_NET_41,
                               s_LOGISIM_NET_191,
                               s_LOGISIM_NET_44,
                               s_LOGISIM_NET_8,
                               s_LOGISIM_NET_6}));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   FSM      FSM_1 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_47[1:0]),
                   .Now_State(s_LOGISIM_BUS_164[1:0]));

   FSM      FSM_2 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_193[1:0]),
                   .Now_State(s_LOGISIM_BUS_20[1:0]));

   FSM      FSM_3 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_157[1:0]),
                   .Now_State(s_LOGISIM_BUS_153[1:0]));

   FSM      FSM_4 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_31[1:0]),
                   .Now_State(s_LOGISIM_BUS_74[1:0]));

   MAX      MAX_1 (.MAX(s_LOGISIM_BUS_64[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_0[2:0]),
                   .X(s_LOGISIM_BUS_54[15:0]),
                   .XNum(s_LOGISIM_BUS_19[2:0]),
                   .Y(s_LOGISIM_BUS_53[15:0]),
                   .YNum(s_LOGISIM_BUS_16[2:0]));

   MAX      MAX_2 (.MAX(s_LOGISIM_BUS_38[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_45[2:0]),
                   .X(s_LOGISIM_BUS_177[15:0]),
                   .XNum(s_LOGISIM_BUS_85[2:0]),
                   .Y(s_LOGISIM_BUS_160[15:0]),
                   .YNum(s_LOGISIM_BUS_151[2:0]));

   FSM      FSM_5 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_105[1:0]),
                   .Now_State(s_LOGISIM_BUS_15[1:0]));

   MAX      MAX_3 (.MAX(),
                   .MAX_Num(s_LOGISIM_BUS_124[2:0]),
                   .X(s_LOGISIM_BUS_64[15:0]),
                   .XNum(s_LOGISIM_BUS_0[2:0]),
                   .Y(s_LOGISIM_BUS_135[15:0]),
                   .YNum(s_LOGISIM_BUS_4[2:0]));

   MAX      MAX_4 (.MAX(s_LOGISIM_BUS_135[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_4[2:0]),
                   .X(s_LOGISIM_BUS_38[15:0]),
                   .XNum(s_LOGISIM_BUS_45[2:0]),
                   .Y(s_LOGISIM_BUS_84[15:0]),
                   .YNum(s_LOGISIM_BUS_101[2:0]));

   MAX      MAX_5 (.MAX(s_LOGISIM_BUS_84[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_101[2:0]),
                   .X(s_LOGISIM_BUS_197[15:0]),
                   .XNum(s_LOGISIM_BUS_48[2:0]),
                   .Y(s_LOGISIM_BUS_200[15:0]),
                   .YNum(s_LOGISIM_BUS_107[2:0]));

   MAX      MAX_6 (.MAX(s_LOGISIM_BUS_53[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_16[2:0]),
                   .X(s_LOGISIM_BUS_49[15:0]),
                   .XNum(s_LOGISIM_BUS_137[2:0]),
                   .Y(s_LOGISIM_BUS_81[15:0]),
                   .YNum(s_LOGISIM_BUS_196[2:0]));

   FSM      FSM_6 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_77[1:0]),
                   .Now_State(s_LOGISIM_BUS_26[1:0]));

   FSM      FSM_7 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_69[1:0]),
                   .Now_State(s_LOGISIM_BUS_143[1:0]));

   FSM      FSM_8 (.Jump(s_LOGISIM_NET_202),
                   .Next_State(s_LOGISIM_BUS_119[1:0]),
                   .Now_State(s_LOGISIM_BUS_86[1:0]));

   MAX      MAX_7 (.MAX(s_LOGISIM_BUS_54[15:0]),
                   .MAX_Num(s_LOGISIM_BUS_19[2:0]),
                   .X(s_LOGISIM_BUS_171[15:0]),
                   .XNum(s_LOGISIM_BUS_176[2:0]),
                   .Y(s_LOGISIM_BUS_132[15:0]),
                   .YNum(s_LOGISIM_BUS_39[2:0]));



endmodule
