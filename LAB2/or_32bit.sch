VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL O(31:0)
        SIGNAL O(31:16)
        SIGNAL O(15:0)
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL B(31:16)
        SIGNAL A(31:16)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output O(31:0)
        BEGIN BLOCKDEF or_16bit
            TIMESTAMP 2025 1 25 17 12 34
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or_16bit
            PIN A(15:0) A(31:16)
            PIN B(15:0) B(31:16)
            PIN O(15:0) O(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 or_16bit
            PIN A(15:0) A(15:0)
            PIN B(15:0) B(15:0)
            PIN O(15:0) O(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 432 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 432 1056 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 464 416 688 416
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 496 512 688 512
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 800 464 816 464
            WIRE 816 464 960 464
        END BRANCH
        BEGIN BRANCH O(31:16)
            WIRE 816 704 960 704
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 816 960 832 960
            WIRE 832 960 976 960
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 288 960 432 960
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 272 1024 432 1024
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 288 768 432 768
        END BRANCH
        BEGIN BRANCH A(31:16)
            WIRE 288 704 432 704
        END BRANCH
        IOMARKER 464 416 A(31:0) R180 28
        IOMARKER 496 512 B(31:0) R180 28
        IOMARKER 960 464 O(31:0) R0 28
    END SHEET
END SCHEMATIC
