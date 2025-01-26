VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S0
        SIGNAL S1
        SIGNAL en
        SIGNAL D3(31:0)
        SIGNAL D2(31:0)
        SIGNAL D1(31:0)
        SIGNAL D0(31:0)
        SIGNAL alu_out(31:0)
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL D3(31:24)
        SIGNAL D2(31:24)
        SIGNAL D1(31:24)
        SIGNAL alu_out(31:24)
        SIGNAL D3(23:16)
        SIGNAL D2(23:16)
        SIGNAL D1(23:16)
        SIGNAL D0(31:24)
        SIGNAL D0(23:16)
        SIGNAL alu_out(23:16)
        SIGNAL alu_out(7:0)
        SIGNAL D3(7:0)
        SIGNAL D2(7:0)
        SIGNAL D1(7:0)
        SIGNAL D0(7:0)
        SIGNAL D3(15:8)
        SIGNAL D2(15:8)
        SIGNAL D1(15:8)
        SIGNAL D0(15:8)
        SIGNAL alu_out(15:8)
        PORT Input S0
        PORT Input S1
        PORT Input en
        PORT Input D3(31:0)
        PORT Input D2(31:0)
        PORT Input D1(31:0)
        PORT Input D0(31:0)
        PORT Output alu_out(31:0)
        BEGIN BLOCKDEF mux4_1_8bit
            TIMESTAMP 2025 1 25 7 0 25
            RECTANGLE N 64 -448 320 0 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
        END BLOCKDEF
        BEGIN BLOCK XLXI_6 mux4_1_8bit
            PIN D3(7:0) D3(31:24)
            PIN D2(7:0) D2(31:24)
            PIN D1(7:0) D1(31:24)
            PIN S0 S0
            PIN S1 S1
            PIN en en
            PIN D0(7:0) D0(31:24)
            PIN alu_out(7:0) alu_out(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_7 mux4_1_8bit
            PIN D3(7:0) D3(23:16)
            PIN D2(7:0) D2(23:16)
            PIN D1(7:0) D1(23:16)
            PIN S0 S0
            PIN S1 S1
            PIN en en
            PIN D0(7:0) D0(23:16)
            PIN alu_out(7:0) alu_out(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_8 mux4_1_8bit
            PIN D3(7:0) D3(15:8)
            PIN D2(7:0) D2(15:8)
            PIN D1(7:0) D1(15:8)
            PIN S0 S0
            PIN S1 S1
            PIN en en
            PIN D0(7:0) D0(15:8)
            PIN alu_out(7:0) alu_out(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_9 mux4_1_8bit
            PIN D3(7:0) D3(7:0)
            PIN D2(7:0) D2(7:0)
            PIN D1(7:0) D1(7:0)
            PIN S0 S0
            PIN S1 S1
            PIN en en
            PIN D0(7:0) D0(7:0)
            PIN alu_out(7:0) alu_out(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_6 512 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1440 1088 R0
        END INSTANCE
        BEGIN BRANCH S0
            WIRE 352 1136 416 1136
            WIRE 416 1136 432 1136
            WIRE 432 1136 1328 1136
            WIRE 1328 1136 1664 1136
            WIRE 1328 1136 1328 1568
            WIRE 1328 1568 1424 1568
            WIRE 432 1136 432 1568
            WIRE 432 1568 512 1568
            WIRE 416 864 512 864
            WIRE 416 864 416 1136
            WIRE 1328 864 1440 864
            WIRE 1328 864 1328 1136
        END BRANCH
        BEGIN BRANCH S1
            WIRE 352 1184 464 1184
            WIRE 464 1184 1344 1184
            WIRE 1344 1184 1664 1184
            WIRE 1344 1184 1344 1632
            WIRE 1344 1632 1424 1632
            WIRE 464 1184 464 1632
            WIRE 464 1632 512 1632
            WIRE 464 928 512 928
            WIRE 464 928 464 1152
            WIRE 464 1152 464 1184
            WIRE 1344 928 1440 928
            WIRE 1344 928 1344 1184
        END BRANCH
        BEGIN INSTANCE XLXI_8 512 1792 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1424 1792 R0
        END INSTANCE
        BEGIN BRANCH en
            WIRE 352 1232 384 1232
            WIRE 384 1232 1360 1232
            WIRE 1360 1232 1664 1232
            WIRE 1360 1232 1360 1696
            WIRE 1360 1696 1424 1696
            WIRE 384 1232 384 1696
            WIRE 384 1696 512 1696
            WIRE 384 992 512 992
            WIRE 384 992 384 1232
            WIRE 1360 992 1440 992
            WIRE 1360 992 1360 1232
        END BRANCH
        BEGIN BRANCH D3(31:0)
            WIRE 336 336 560 336
        END BRANCH
        BEGIN BRANCH D2(31:0)
            WIRE 336 416 560 416
        END BRANCH
        IOMARKER 336 336 D3(31:0) R180 28
        IOMARKER 336 416 D2(31:0) R180 28
        BEGIN BRANCH D1(31:0)
            WIRE 816 336 1008 336
        END BRANCH
        BEGIN BRANCH D0(31:0)
            WIRE 816 416 1008 416
        END BRANCH
        IOMARKER 816 336 D1(31:0) R180 28
        IOMARKER 816 416 D0(31:0) R180 28
        BEGIN BRANCH alu_out(31:0)
            WIRE 1232 384 1376 384
        END BRANCH
        IOMARKER 1376 384 alu_out(31:0) R0 28
        IOMARKER 352 1136 S0 R180 28
        IOMARKER 352 1184 S1 R180 28
        IOMARKER 352 1232 en R180 28
        BEGIN BRANCH D3(31:24)
            WIRE 448 672 464 672
            WIRE 464 672 512 672
        END BRANCH
        BEGIN BRANCH D2(31:24)
            WIRE 432 736 512 736
        END BRANCH
        BEGIN BRANCH D1(31:24)
            WIRE 448 800 512 800
        END BRANCH
        BEGIN BRANCH alu_out(31:24)
            WIRE 896 672 976 672
        END BRANCH
        BEGIN BRANCH D3(23:16)
            WIRE 1376 672 1440 672
        END BRANCH
        BEGIN BRANCH D2(23:16)
            WIRE 1376 736 1440 736
        END BRANCH
        BEGIN BRANCH D1(23:16)
            WIRE 1376 800 1440 800
        END BRANCH
        BEGIN BRANCH D0(31:24)
            WIRE 432 1056 512 1056
        END BRANCH
        BEGIN BRANCH D0(23:16)
            WIRE 1392 1056 1440 1056
        END BRANCH
        BEGIN BRANCH alu_out(23:16)
            WIRE 1824 672 1936 672
        END BRANCH
        BEGIN BRANCH alu_out(7:0)
            WIRE 1808 1376 1872 1376
        END BRANCH
        BEGIN BRANCH D3(7:0)
            WIRE 1376 1376 1424 1376
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 1376 1440 1424 1440
        END BRANCH
        BEGIN BRANCH D1(7:0)
            WIRE 1392 1504 1424 1504
        END BRANCH
        BEGIN BRANCH D0(7:0)
            WIRE 1376 1760 1424 1760
        END BRANCH
        BEGIN BRANCH D3(15:8)
            WIRE 416 1376 512 1376
        END BRANCH
        BEGIN BRANCH D2(15:8)
            WIRE 416 1440 496 1440
            WIRE 496 1440 512 1440
        END BRANCH
        BEGIN BRANCH D1(15:8)
            WIRE 416 1504 496 1504
            WIRE 496 1504 512 1504
        END BRANCH
        BEGIN BRANCH D0(15:8)
            WIRE 448 1760 512 1760
        END BRANCH
        BEGIN BRANCH alu_out(15:8)
            WIRE 896 1376 1024 1376
        END BRANCH
    END SHEET
END SCHEMATIC
