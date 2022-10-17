/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RegFile                                                      **
 **                                                                          **
 ******************************************************************************/
/*
`timescale 1ns/1ps
module RegFile( Clk,
                Din,
                WE,
                rA,
                rB,
                rW,
                R1,
                R2);
*/
   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
/*   input  Clk;
   input[31:0]  Din;
   input  WE;
   input[4:0]  rA;
   input[4:0]  rB;
   input[4:0]  rW;
*/
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
/*   output[31:0] R1;
   output[31:0] R2;
*/
   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
/*   wire[31:0] s_LOGISIM_BUS_0;
   wire[4:0] s_LOGISIM_BUS_2;
   wire[4:0] s_LOGISIM_BUS_4;
   wire[4:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_3;
*/

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
/*   assign s_LOGISIM_NET_1                    = WE;
   assign s_LOGISIM_BUS_5[4:0]               = rW;
   assign s_LOGISIM_BUS_2[4:0]               = rB;
   assign s_LOGISIM_BUS_0[31:0]              = Din;
   assign s_LOGISIM_NET_3                    = Clk;
   assign s_LOGISIM_BUS_4[4:0]               = rA;
*/
   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
/*   assign R1                                 = s_LOGISIM_BUS_6[31:0];
   assign R2                                 = s_LOGISIM_BUS_7[31:0];


endmodule
*/

/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Regfile                                                      **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RegFile( Clk,
                Din,
                WE,
                rA,
                rB,
                rW,
                R1,
                R2);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clk;
   input[31:0]  Din;
   input  WE;
   input[4:0]  rA;
   input[4:0]  rB;
   input[4:0]  rW;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] R1;
   output[31:0] R2;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
    reg [31:0] registers[0:31];
    reg [4:0] count;
        
        //initialize registers
        initial 
        begin
            for(count=0;count<=31;count=count+1)
                registers[count] <= 32'b0;
        end
        
        //write in data
        //always@(posedge Clk)    
        always@(negedge Clk)      // ÏÂ½µÑØ
        begin
            if(WE && (rW!=32'b0))
                registers[rW] <= Din;
        end
        
        //read data out
        assign R1 = (rA==5'd0) ? 32'b0 : registers[rA];
        assign R2 = (rB==5'd0) ? 32'b0 : registers[rB];



 


   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/


endmodule
