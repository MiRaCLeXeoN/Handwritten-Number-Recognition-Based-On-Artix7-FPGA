/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Controller                                                   **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Controller( Funct,
                   IR21,
                   OP,
                   ALU_OP,
                   ALU_SRC,
                   BGE,
                   BLT,
                   Beq,
                   Bne,
                   CSRRCI,
                   CSRRSI,
                   FCAL,
                   FLT,
                   FLW,
                   FS0,
                   FS1,
                   FSW,
                   JAL,
                   Jalr,
                   LHU,
                   LUI,
                   MemToReg,
                   MemWrite,
                   RegWrite,
                   S_type,
                   ecall,
                   frd,
                   frs1,
                   frs2,
                   rs1_used,
                   rs2_used,
                   uret,
                   IR);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  Funct;
   input  IR21;
   input[4:0]  OP;
   input[31:0] IR; 
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output BGE;
   output BLT;
   output Beq;
   output Bne;
   output CSRRCI;
   output CSRRSI;
   output FCAL;
   output FLT;
   output FLW;
   output FS0;
   output FS1;
   output FSW;
   output JAL;
   output Jalr;
   output LHU;
   output LUI;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output S_type;
   output ecall;
   output frd;
   output frs1;
   output frs2;
   output rs1_used;
   output rs2_used;
   output uret;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_41;
   wire[4:0] s_LOGISIM_BUS_42;
   wire[4:0] s_LOGISIM_BUS_46;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;




   wire isFLT;
   wire isFADD;
   wire isFMUL;
   assign isFLT = (IR[6:2] == 5'h14) & (IR[31:25] == 7'd80);
   assign isFADD = (IR[6:2] == 5'h14) & (IR[31:25] == 7'd0);
   assign isFMUL = (IR[6:2] == 5'h14) & (IR[31:25] == 7'd8);
   
   assign RegWrite = isFLT ? 1'b0 : 
                     (isFADD|isFMUL) ? 1'b1:
                     s_LOGISIM_NET_43;
   assign FCAL = isFADD | isFMUL;
   assign FLT = isFLT;
   assign FS1 = isFMUL;
   assign FS0 = 1'b0;
   assign frd = isFLT ? 1'b0 : 
                (isFADD|isFMUL) ? 1'b1:
                s_LOGISIM_NET_16;
   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_46[4:0]              = OP;
   assign s_LOGISIM_BUS_42[4:0]              = Funct;
   assign s_LOGISIM_NET_51                   = IR21;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign LHU                                = s_LOGISIM_NET_47;
   assign ecall                              = s_LOGISIM_NET_18;
   //assign frd                                = s_LOGISIM_NET_16;
   assign frs1                               = s_LOGISIM_NET_56;
   assign Bne                                = s_LOGISIM_NET_28;
 //  assign FCAL                               = s_LOGISIM_NET_0;
   assign Beq                                = s_LOGISIM_NET_52;
   assign FLW                                = s_LOGISIM_NET_55;
   assign ALU_SRC                            = s_LOGISIM_NET_27;
   assign BGE                                = s_LOGISIM_NET_23;
   assign CSRRSI                             = s_LOGISIM_NET_45;
   assign S_type                             = s_LOGISIM_NET_15;
   assign CSRRCI                             = s_LOGISIM_NET_1;
   assign MemWrite                           = s_LOGISIM_NET_26;
   assign rs1_used                           = s_LOGISIM_NET_22;
   assign FSW                                = s_LOGISIM_NET_5;
   assign ALU_OP                             = (s_LOGISIM_NET_55|s_LOGISIM_NET_5) ? 4'd5 : s_LOGISIM_BUS_41[3:0];
   assign rs2_used                           = s_LOGISIM_NET_54;
   assign JAL                                = s_LOGISIM_NET_24;
  // assign RegWrite                           = s_LOGISIM_NET_43;
   //assign FS1                                = s_LOGISIM_NET_33;
   //assign FS0                                = s_LOGISIM_NET_2;
   assign Jalr                               = s_LOGISIM_NET_44;
   assign frs2                               = s_LOGISIM_NET_14;
   assign BLT                                = s_LOGISIM_NET_25;
   assign LUI                                = s_LOGISIM_NET_29;
   assign MemToReg                           = s_LOGISIM_NET_53;
   assign uret                               = s_LOGISIM_NET_48;
 //  assign FLT                                = s_LOGISIM_NET_19;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(1))
      GATE_1 (.Input_1(s_LOGISIM_NET_51),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_18));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_51),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_48));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   AluController      AluController_1 (.F12(s_LOGISIM_BUS_42[0]),
                                       .F13(s_LOGISIM_BUS_42[1]),
                                       .F14(s_LOGISIM_BUS_42[2]),
                                       .F25(s_LOGISIM_BUS_42[3]),
                                       .F30(s_LOGISIM_BUS_42[4]),
                                       .OP2(s_LOGISIM_BUS_46[0]),
                                       .OP3(s_LOGISIM_BUS_46[1]),
                                       .OP4(s_LOGISIM_BUS_46[2]),
                                       .OP5(s_LOGISIM_BUS_46[3]),
                                       .OP6(s_LOGISIM_BUS_46[4]),
                                       .S0(s_LOGISIM_BUS_41[0]),
                                       .S1(s_LOGISIM_BUS_41[1]),
                                       .S2(s_LOGISIM_BUS_41[2]),
                                       .S3(s_LOGISIM_BUS_41[3]));

   ControllerSignal      ControllerSignal_1 (.ALU_SRC(s_LOGISIM_NET_27),
                                             .BEQ(s_LOGISIM_NET_52),
                                             .BGE(s_LOGISIM_NET_23),
                                             .BLT(s_LOGISIM_NET_25),
                                             .BNE(s_LOGISIM_NET_28),
                                             .CSRRCI(s_LOGISIM_NET_1),
                                             .CSRRSI(s_LOGISIM_NET_45),
                                             .F12(s_LOGISIM_BUS_42[0]),
                                             .F13(s_LOGISIM_BUS_42[1]),
                                             .F14(s_LOGISIM_BUS_42[2]),
                                             .F25(s_LOGISIM_BUS_42[3]),
                                             .F30(s_LOGISIM_BUS_42[4]),
                                             .FCAL(s_LOGISIM_NET_0),
                                             .FLT(s_LOGISIM_NET_19),
                                             .FLW(s_LOGISIM_NET_55),
                                             .FS0(s_LOGISIM_NET_2),
                                             .FS1(s_LOGISIM_NET_33),
                                             .FSW(s_LOGISIM_NET_5),
                                             .JAL(s_LOGISIM_NET_24),
                                             .JALR(s_LOGISIM_NET_44),
                                             .LHU(s_LOGISIM_NET_47),
                                             .LUI(s_LOGISIM_NET_29),
                                             .MemToReg(s_LOGISIM_NET_53),
                                             .MemWrite(s_LOGISIM_NET_26),
                                             .OP2(s_LOGISIM_BUS_46[0]),
                                             .OP3(s_LOGISIM_BUS_46[1]),
                                             .OP4(s_LOGISIM_BUS_46[2]),
                                             .OP5(s_LOGISIM_BUS_46[3]),
                                             .OP6(s_LOGISIM_BUS_46[4]),
                                             .RegWrite(s_LOGISIM_NET_43),
                                             .S_Type(s_LOGISIM_NET_15),
                                             .ecall(s_LOGISIM_NET_17),
                                             .frd(s_LOGISIM_NET_16),
                                             .frs1(s_LOGISIM_NET_56),
                                             .frs2(s_LOGISIM_NET_14),
                                             .rs1_used(s_LOGISIM_NET_22),
                                             .rs2_used(s_LOGISIM_NET_54));



endmodule
