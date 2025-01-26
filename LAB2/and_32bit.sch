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
        SIGNAL A(31:16)
        SIGNAL B(31:16)
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL O(15:0)
        SIGNAL O(31:16)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output O(31:0)
        BEGIN BLOCKDEF and_16bit
            TIMESTAMP 2025 1 25 17 28 30
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_16bit
            PIN A(15:0) A(31:16)
            PIN B(15:0) B(31:16)
            PIN O(15:0) O(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_16bit
            PIN A(15:0) A(15:0)
            PIN B(15:0) B(15:0)
            PIN O(15:0) O(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 416 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 416 1056 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 192 448 384 448
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 176 528 384 528
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 528 464 784 464
        END BRANCH
        BEGIN BRANCH A(31:16)
            WIRE 304 704 416 704
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 304 768 416 768
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 304 944 304 960
            WIRE 304 960 416 960
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 272 1024 400 1024
            WIRE 400 1024 416 1024
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 800 960 880 960
        END BRANCH
        BEGIN BRANCH O(31:16)
            WIRE 800 704 912 704
        END BRANCH
        IOMARKER 192 448 A(31:0) R180 28
        IOMARKER 176 528 B(31:0) R180 28
        IOMARKER 784 464 O(31:0) R0 28
    END SHEET
END SCHEMATIC
