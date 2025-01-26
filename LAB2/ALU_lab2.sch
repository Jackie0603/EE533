VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL shifter_out(31:0)
        SIGNAL sub_out(31:0)
        SIGNAL and_out(31:0)
        SIGNAL or_out(31:0)
        SIGNAL mux_out(31:0)
        SIGNAL DFF_en
        SIGNAL CLK
        SIGNAL DFF_reset
        SIGNAL S0
        SIGNAL S1
        SIGNAL mux_en
        SIGNAL ALU_out(31:0)
        SIGNAL Cout
        SIGNAL XLXN_15(31:0)
        SIGNAL XLXN_16(31:0)
        SIGNAL XLXN_17(31:0)
        SIGNAL XLXN_18(31:0)
        SIGNAL XLXN_19(31:0)
        SIGNAL XLXN_20(31:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_26(31:0)
        SIGNAL XLXN_27
        PORT Input DFF_en
        PORT Input CLK
        PORT Input DFF_reset
        PORT Input S0
        PORT Input S1
        PORT Input mux_en
        PORT Output ALU_out(31:0)
        PORT Output Cout
        PORT Input A(31:0)
        PORT Input B(31:0)
        BEGIN BLOCKDEF and_32bit
            TIMESTAMP 2025 1 25 17 28 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or_32bit
            TIMESTAMP 2025 1 25 17 15 51
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF subtractor_32bit
            TIMESTAMP 2025 1 25 7 0 6
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF shifter_32bit_left
            TIMESTAMP 2025 1 25 6 5 11
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF mux4_1_32bit
            TIMESTAMP 2025 1 25 7 11 58
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF_32bit
            TIMESTAMP 2025 1 25 17 24 10
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 subtractor_32bit
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN Diff(31:0) sub_out(31:0)
            PIN Cout Cout
        END BLOCK
        BEGIN BLOCK XLXI_4 shifter_32bit_left
            PIN ainitial(31:0) A(31:0)
            PIN en S1
            PIN aafter(31:0) shifter_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 mux4_1_32bit
            PIN S0 S0
            PIN S1 S1
            PIN en mux_en
            PIN D3(31:0) shifter_out(31:0)
            PIN D2(31:0) sub_out(31:0)
            PIN D1(31:0) and_out(31:0)
            PIN D0(31:0) or_out(31:0)
            PIN alu_out(31:0) mux_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 DFF_32bit
            PIN Q(31:0) mux_out(31:0)
            PIN CE DFF_en
            PIN C CLK
            PIN R DFF_reset
            PIN QQ(31:0) ALU_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 and_32bit
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN O(31:0) and_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 or_32bit
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN O(31:0) or_out(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 1616 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2384 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 704 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 704 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 704 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 704 1584 R0
        END INSTANCE
        BEGIN BRANCH shifter_out(31:0)
            WIRE 1088 880 1344 880
            WIRE 1344 880 1344 1152
            WIRE 1344 1152 1616 1152
        END BRANCH
        BEGIN BRANCH sub_out(31:0)
            WIRE 1088 1088 1328 1088
            WIRE 1328 1088 1328 1216
            WIRE 1328 1216 1616 1216
        END BRANCH
        BEGIN BRANCH and_out(31:0)
            WIRE 1088 1296 1344 1296
            WIRE 1344 1280 1344 1296
            WIRE 1344 1280 1616 1280
        END BRANCH
        BEGIN BRANCH or_out(31:0)
            WIRE 1088 1488 1344 1488
            WIRE 1344 1344 1344 1488
            WIRE 1344 1344 1616 1344
        END BRANCH
        BEGIN BRANCH mux_out(31:0)
            WIRE 2000 960 2192 960
            WIRE 2192 960 2192 1024
            WIRE 2192 1024 2384 1024
        END BRANCH
        BEGIN BRANCH DFF_en
            WIRE 2256 1088 2384 1088
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2240 1152 2368 1152
            WIRE 2368 1152 2384 1152
        END BRANCH
        BEGIN BRANCH DFF_reset
            WIRE 2240 1216 2384 1216
        END BRANCH
        BEGIN BRANCH S0
            WIRE 1600 656 1600 672
            WIRE 1600 672 1600 960
            WIRE 1600 960 1616 960
        END BRANCH
        BEGIN BRANCH S1
            WIRE 640 784 640 944
            WIRE 640 944 704 944
            WIRE 640 784 1504 784
            WIRE 1504 784 1504 1024
            WIRE 1504 1024 1616 1024
            WIRE 1504 672 1504 784
        END BRANCH
        BEGIN BRANCH mux_en
            WIRE 1408 672 1408 1088
            WIRE 1408 1088 1616 1088
        END BRANCH
        IOMARKER 1408 672 mux_en R270 28
        IOMARKER 1504 672 S1 R270 28
        IOMARKER 1600 656 S0 R270 28
        IOMARKER 2256 1088 DFF_en R180 28
        IOMARKER 2240 1152 CLK R180 28
        IOMARKER 2240 1216 DFF_reset R180 28
        BEGIN BRANCH ALU_out(31:0)
            WIRE 2768 1024 2896 1024
        END BRANCH
        IOMARKER 2896 1024 ALU_out(31:0) R0 28
        BEGIN BRANCH Cout
            WIRE 1088 1152 1152 1152
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 288 1120 320 1120
            WIRE 320 1120 432 1120
            WIRE 432 1120 528 1120
            WIRE 528 1120 576 1120
            WIRE 576 1120 640 1120
            WIRE 576 1120 576 1296
            WIRE 576 1296 640 1296
            WIRE 640 1296 704 1296
            WIRE 432 1120 432 1488
            WIRE 432 1488 624 1488
            WIRE 624 1488 704 1488
            WIRE 320 880 624 880
            WIRE 624 880 704 880
            WIRE 320 880 320 1120
            WIRE 640 1088 704 1088
            WIRE 640 1088 640 1120
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 288 1216 336 1216
            WIRE 336 1216 512 1216
            WIRE 512 1216 528 1216
            WIRE 528 1216 640 1216
            WIRE 512 1216 512 1360
            WIRE 512 1360 704 1360
            WIRE 336 1216 336 1552
            WIRE 336 1552 624 1552
            WIRE 624 1552 704 1552
            WIRE 640 1152 704 1152
            WIRE 640 1152 640 1216
        END BRANCH
        IOMARKER 288 1120 A(31:0) R180 28
        IOMARKER 288 1216 B(31:0) R180 28
        IOMARKER 1152 1152 Cout R0 28
    END SHEET
END SCHEMATIC
