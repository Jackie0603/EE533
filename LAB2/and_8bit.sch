VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL O(7:0)
        SIGNAL A(7:4)
        SIGNAL B(7:4)
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL O(3:0)
        SIGNAL O(7:4)
        PORT Input B(7:0)
        PORT Input A(7:0)
        PORT Output O(7:0)
        BEGIN BLOCKDEF and_4bit
            TIMESTAMP 2025 1 25 16 43 31
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_4bit
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN O(3:0) O(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_4bit
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN O(3:0) O(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 368 1088 R0
        END INSTANCE
        BEGIN BRANCH B(7:0)
            WIRE 224 464 384 464
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 224 400 400 400
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 560 432 768 432
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 240 992 368 992
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 256 1056 368 1056
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 752 992 864 992
        END BRANCH
        BEGIN INSTANCE XLXI_1 432 816 R0
        END INSTANCE
        BEGIN BRANCH A(7:4)
            WIRE 240 720 432 720
        END BRANCH
        BEGIN BRANCH B(7:4)
            WIRE 224 784 432 784
        END BRANCH
        BEGIN BRANCH O(7:4)
            WIRE 816 720 976 720
        END BRANCH
        IOMARKER 224 400 A(7:0) R180 28
        IOMARKER 224 464 B(7:0) R180 28
        IOMARKER 768 432 O(7:0) R0 28
    END SHEET
END SCHEMATIC
