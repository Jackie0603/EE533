////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 02/01/2025 12:55:59
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/isetest/LAB2/detect7B.sch" detect7B.vf
//Design Name: detect7B
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module detect7B(ce, 
                clk, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match);

    input ce;
    input clk;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   
   wire [71:0] pipe0;
   wire [111:0] XLXN_11;
   wire XLXN_17;
   wire XLXN_19;
   wire XLXN_20;
   wire match_DUMMY;
   
   assign match = match_DUMMY;
   reg9B XLXI_1 (.ce(ce), 
                 .clk(clk), 
                 .clr(XLXN_19), 
                 .d(pipe1[71:0]), 
                 .q(pipe0[71:0]));
   busmerge XLXI_2 (.da(pipe0[47:0]), 
                    .db(pipe1[63:0]), 
                    .q(XLXN_11[111:0]));
   wordmatch XLXI_3 (.datacomp(hwregA[55:0]), 
                     .datain(XLXN_11[111:0]), 
                     .wildcard(hwregA[62:56]), 
                     .match(XLXN_20));
   FD XLXI_4 (.C(clk), 
              .D(mrst), 
              .Q(XLXN_19));
   defparam XLXI_4.INIT = 1'b0;
   AND3B1 XLXI_5 (.I0(match_DUMMY), 
                  .I1(match_en), 
                  .I2(XLXN_20), 
                  .O(XLXN_17));
   FDCE XLXI_6 (.C(clk), 
                .CE(XLXN_17), 
                .CLR(XLXN_19), 
                .D(XLXN_17), 
                .Q(match_DUMMY));
   defparam XLXI_6.INIT = 1'b0;
endmodule
