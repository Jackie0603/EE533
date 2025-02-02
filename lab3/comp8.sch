VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL EQ
        SIGNAL A(7:0)
        SIGNAL A(0)
        SIGNAL A(1)
        SIGNAL A(2)
        SIGNAL A(3)
        SIGNAL A(4)
        SIGNAL A(5)
        SIGNAL A(6)
        SIGNAL A(7)
        SIGNAL XLXN_22
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL B(2)
        SIGNAL B(4)
        SIGNAL B(5)
        SIGNAL B(6)
        SIGNAL B(7)
        SIGNAL B(3)
        SIGNAL XLXN_40
        SIGNAL B(7:0)
        SIGNAL XLXN_48
        PORT Output EQ
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_9 and4
            PIN I0 XLXN_4
            PIN I1 XLXN_3
            PIN I2 XLXN_2
            PIN I3 XLXN_1
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_10 and4
            PIN I0 XLXN_8
            PIN I1 XLXN_7
            PIN I2 XLXN_6
            PIN I3 XLXN_5
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_10
            PIN I1 XLXN_9
            PIN O EQ
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 656 672 R0
        INSTANCE XLXI_2 640 848 R0
        INSTANCE XLXI_3 640 1008 R0
        INSTANCE XLXI_4 624 1168 R0
        INSTANCE XLXI_5 624 1344 R0
        INSTANCE XLXI_6 624 1536 R0
        INSTANCE XLXI_7 624 1696 R0
        INSTANCE XLXI_8 624 1856 R0
        INSTANCE XLXI_9 1344 992 R0
        INSTANCE XLXI_10 1376 1696 R0
        INSTANCE XLXI_11 1712 1280 R0
        BEGIN BRANCH XLXN_1
            WIRE 912 576 1344 576
            WIRE 1344 576 1344 736
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 896 752 1120 752
            WIRE 1120 752 1120 800
            WIRE 1120 800 1344 800
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 896 912 1120 912
            WIRE 1120 864 1120 912
            WIRE 1120 864 1344 864
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 880 1072 1344 1072
            WIRE 1344 928 1344 1072
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 880 1248 1376 1248
            WIRE 1376 1248 1376 1440
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 880 1440 1120 1440
            WIRE 1120 1440 1120 1504
            WIRE 1120 1504 1376 1504
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 880 1600 1120 1600
            WIRE 1120 1568 1120 1600
            WIRE 1120 1568 1376 1568
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 880 1760 1376 1760
            WIRE 1376 1632 1376 1760
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1600 832 1648 832
            WIRE 1648 832 1648 1152
            WIRE 1648 1152 1712 1152
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1632 1536 1664 1536
            WIRE 1664 1216 1664 1536
            WIRE 1664 1216 1712 1216
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 1968 1184 2240 1184
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 224 1856 400 1856
            WIRE 400 480 400 544
            WIRE 400 544 400 720
            WIRE 400 720 400 880
            WIRE 400 880 400 1040
            WIRE 400 1040 400 1216
            WIRE 400 1216 400 1408
            WIRE 400 1408 400 1568
            WIRE 400 1568 400 1728
            WIRE 400 1728 400 1856
        END BRANCH
        IOMARKER 224 1856 A(7:0) R180 28
        BUSTAP 400 1728 496 1728
        BUSTAP 400 1568 496 1568
        BUSTAP 400 1408 496 1408
        BUSTAP 400 1216 496 1216
        BUSTAP 400 1040 496 1040
        BUSTAP 400 880 496 880
        BUSTAP 400 720 496 720
        BEGIN BRANCH A(0)
            WIRE 480 544 496 544
            WIRE 496 544 560 544
            WIRE 560 544 656 544
            BEGIN DISPLAY 560 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 400 544 496 544
        BEGIN BRANCH A(1)
            WIRE 496 720 560 720
            WIRE 560 720 640 720
            BEGIN DISPLAY 560 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 480 880 496 880
            WIRE 496 880 560 880
            WIRE 560 880 640 880
            BEGIN DISPLAY 560 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 496 1040 528 1040
            WIRE 528 1040 624 1040
            BEGIN DISPLAY 528 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 496 1408 544 1408
            WIRE 544 1408 624 1408
            BEGIN DISPLAY 544 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 496 1568 560 1568
            WIRE 560 1568 624 1568
            BEGIN DISPLAY 560 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 496 1728 576 1728
            WIRE 576 1728 624 1728
            BEGIN DISPLAY 576 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 496 1216 560 1216
            WIRE 560 1216 624 1216
            BEGIN DISPLAY 560 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 352 608 592 608
            WIRE 592 608 656 608
            BEGIN DISPLAY 592 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 352 784 496 784
            WIRE 496 784 560 784
            WIRE 560 784 592 784
            WIRE 592 784 640 784
            BEGIN DISPLAY 592 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 352 944 560 944
            WIRE 560 944 576 944
            WIRE 576 944 640 944
            BEGIN DISPLAY 576 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 352 1280 544 1280
            WIRE 544 1280 560 1280
            WIRE 560 1280 624 1280
            BEGIN DISPLAY 560 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 352 1472 544 1472
            WIRE 544 1472 560 1472
            WIRE 560 1472 624 1472
            BEGIN DISPLAY 560 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 352 1632 560 1632
            WIRE 560 1632 576 1632
            WIRE 576 1632 624 1632
            BEGIN DISPLAY 576 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 352 1792 560 1792
            WIRE 560 1792 576 1792
            WIRE 576 1792 624 1792
            BEGIN DISPLAY 576 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 352 1104 560 1104
            WIRE 560 1104 576 1104
            WIRE 576 1104 592 1104
            WIRE 592 1104 624 1104
            BEGIN DISPLAY 592 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 144 1936 B(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 144 1936 256 1936
            WIRE 256 560 256 608
            WIRE 256 608 256 784
            WIRE 256 784 256 944
            WIRE 256 944 256 1104
            WIRE 256 1104 256 1280
            WIRE 256 1280 256 1472
            WIRE 256 1472 256 1632
            WIRE 256 1632 256 1792
            WIRE 256 1792 256 1936
        END BRANCH
        BUSTAP 256 608 352 608
        BUSTAP 256 784 352 784
        BUSTAP 256 1104 352 1104
        BUSTAP 256 1280 352 1280
        BUSTAP 256 1472 352 1472
        BUSTAP 256 1632 352 1632
        BUSTAP 256 1792 352 1792
        IOMARKER 2240 1184 EQ R0 28
        BUSTAP 256 944 352 944
    END SHEET
END SCHEMATIC
