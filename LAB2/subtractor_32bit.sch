VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL XLXN_3
        SIGNAL Diff(31:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6(31:0)
        SIGNAL Binv(31:16)
        SIGNAL Binv(31:0)
        SIGNAL Binv(15:0)
        SIGNAL B(31:0)
        SIGNAL B(31:16)
        SIGNAL B(15:0)
        SIGNAL Cout
        SIGNAL XLXN_21(31:0)
        PORT Input A(31:0)
        PORT Output Diff(31:0)
        PORT Input B(31:0)
        PORT Output Cout
        BEGIN BLOCKDEF inv16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 160 -44 224 -20 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF FA_32bit
            TIMESTAMP 2025 1 25 4 39 26
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv16
            PIN I(15:0) B(31:16)
            PIN O(15:0) Binv(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv16
            PIN I(15:0) B(15:0)
            PIN O(15:0) Binv(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 FA_32bit
            PIN Cin XLXN_5
            PIN A(31:0) A(31:0)
            PIN B(31:0) Binv(31:0)
            PIN Cout Cout
            PIN Sum(31:0) Diff(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 gnd
            PIN G XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I XLXN_3
            PIN O XLXN_5
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 384 1008 R0
        INSTANCE XLXI_2 384 1168 R0
        BEGIN INSTANCE XLXI_3 928 992 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 208 592 464 592
            WIRE 464 592 832 592
            WIRE 832 592 832 896
            WIRE 832 896 928 896
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 192 736 224 736
            WIRE 224 736 432 736
            WIRE 192 736 192 784
        END BRANCH
        BEGIN BRANCH Diff(31:0)
            WIRE 1312 960 1408 960
            WIRE 1408 640 1408 960
            WIRE 1408 640 1520 640
            WIRE 1520 640 1792 640
        END BRANCH
        INSTANCE XLXI_4 128 912 R0
        INSTANCE XLXI_5 432 768 R0
        BEGIN BRANCH XLXN_5
            WIRE 656 736 784 736
            WIRE 784 736 784 832
            WIRE 784 832 928 832
        END BRANCH
        IOMARKER 208 592 A(31:0) R180 28
        BEGIN BRANCH Binv(31:16)
            WIRE 608 976 672 976
        END BRANCH
        BEGIN BRANCH Binv(31:0)
            WIRE 832 960 928 960
            WIRE 832 960 832 1104
        END BRANCH
        BEGIN BRANCH Binv(15:0)
            WIRE 608 1136 672 1136
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 208 656 464 656
        END BRANCH
        IOMARKER 208 656 B(31:0) R180 28
        BEGIN BRANCH B(31:16)
            WIRE 288 976 384 976
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 288 1136 384 1136
        END BRANCH
        IOMARKER 1792 640 Diff(31:0) R0 28
        BEGIN BRANCH Cout
            WIRE 1312 832 1520 832
            WIRE 1520 752 1776 752
            WIRE 1520 752 1520 832
        END BRANCH
        IOMARKER 1776 752 Cout R0 28
    END SHEET
END SCHEMATIC
