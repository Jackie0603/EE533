VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D3(7:0)
        SIGNAL D2(7:0)
        SIGNAL D1(7:0)
        SIGNAL S0
        SIGNAL S1
        SIGNAL en
        SIGNAL alu_out(7:0)
        SIGNAL D0(7:0)
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL D0(7)
        SIGNAL D1(7)
        SIGNAL D2(7)
        SIGNAL D3(7)
        SIGNAL alu_out(7)
        SIGNAL D0(6)
        SIGNAL D1(6)
        SIGNAL D2(6)
        SIGNAL D3(6)
        SIGNAL alu_out(6)
        SIGNAL D0(5)
        SIGNAL D1(5)
        SIGNAL D2(5)
        SIGNAL D3(5)
        SIGNAL alu_out(5)
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D2(4)
        SIGNAL D3(4)
        SIGNAL alu_out(4)
        SIGNAL D0(3)
        SIGNAL D1(3)
        SIGNAL D2(3)
        SIGNAL D3(3)
        SIGNAL alu_out(3)
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL D2(2)
        SIGNAL D3(2)
        SIGNAL alu_out(2)
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL D2(1)
        SIGNAL D3(1)
        SIGNAL alu_out(1)
        SIGNAL D0(0)
        SIGNAL D1(0)
        SIGNAL D2(0)
        SIGNAL D3(0)
        SIGNAL alu_out(0)
        PORT Input D3(7:0)
        PORT Input D2(7:0)
        PORT Input D1(7:0)
        PORT Input S0
        PORT Input S1
        PORT Input en
        PORT Output alu_out(7:0)
        PORT Input D0(7:0)
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m4_1e
            PIN D0 D0(7)
            PIN D1 D1(7)
            PIN D2 D2(7)
            PIN D3 D3(7)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(7)
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 D0(6)
            PIN D1 D1(6)
            PIN D2 D2(6)
            PIN D3 D3(6)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(6)
        END BLOCK
        BEGIN BLOCK XLXI_3 m4_1e
            PIN D0 D0(5)
            PIN D1 D1(5)
            PIN D2 D2(5)
            PIN D3 D3(5)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(5)
        END BLOCK
        BEGIN BLOCK XLXI_5 m4_1e
            PIN D0 D0(4)
            PIN D1 D1(4)
            PIN D2 D2(4)
            PIN D3 D3(4)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 m4_1e
            PIN D0 D0(3)
            PIN D1 D1(3)
            PIN D2 D2(3)
            PIN D3 D3(3)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(3)
        END BLOCK
        BEGIN BLOCK XLXI_7 m4_1e
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN D2 D2(2)
            PIN D3 D3(2)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 m4_1e
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN D2 D2(1)
            PIN D3 D3(1)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(1)
        END BLOCK
        BEGIN BLOCK XLXI_9 m4_1e
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN D2 D2(0)
            PIN D3 D3(0)
            PIN E en
            PIN S0 S0
            PIN S1 S1
            PIN O alu_out(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 560 1200 R0
        INSTANCE XLXI_2 1056 1184 R0
        INSTANCE XLXI_3 1520 1184 R0
        INSTANCE XLXI_5 1968 1184 R0
        INSTANCE XLXI_6 560 1872 R0
        INSTANCE XLXI_7 1056 1856 R0
        INSTANCE XLXI_4 1520 1856 R0
        INSTANCE XLXI_9 1968 1856 R0
        BEGIN BRANCH D3(7:0)
            WIRE 336 544 544 544
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 336 496 544 496
        END BRANCH
        BEGIN BRANCH D1(7:0)
            WIRE 336 448 528 448
        END BRANCH
        BEGIN BRANCH S1
            WIRE 384 1280 480 1280
            WIRE 480 1280 480 1776
            WIRE 480 1776 560 1776
            WIRE 480 1280 528 1280
            WIRE 528 1280 608 1280
            WIRE 608 1280 624 1280
            WIRE 624 1280 1008 1280
            WIRE 1008 1280 1008 1760
            WIRE 1008 1760 1056 1760
            WIRE 1008 1280 1040 1280
            WIRE 1040 1280 1472 1280
            WIRE 1472 1280 1472 1760
            WIRE 1472 1760 1520 1760
            WIRE 1472 1280 1504 1280
            WIRE 1504 1280 1936 1280
            WIRE 1936 1280 1936 1760
            WIRE 1936 1760 1968 1760
            WIRE 1936 1280 1952 1280
            WIRE 1952 1280 2000 1280
            WIRE 528 1104 560 1104
            WIRE 528 1104 528 1280
            WIRE 1040 1088 1056 1088
            WIRE 1040 1088 1040 1280
            WIRE 1504 1088 1520 1088
            WIRE 1504 1088 1504 1280
            WIRE 1952 1088 1968 1088
            WIRE 1952 1088 1952 1280
        END BRANCH
        BEGIN BRANCH en
            WIRE 384 1328 512 1328
            WIRE 512 1328 512 1840
            WIRE 512 1840 560 1840
            WIRE 512 1328 576 1328
            WIRE 576 1328 624 1328
            WIRE 624 1328 1040 1328
            WIRE 1040 1328 1040 1824
            WIRE 1040 1824 1056 1824
            WIRE 1040 1328 1088 1328
            WIRE 1088 1328 1504 1328
            WIRE 1504 1328 1504 1824
            WIRE 1504 1824 1520 1824
            WIRE 1504 1328 1552 1328
            WIRE 1552 1328 1952 1328
            WIRE 1952 1328 1952 1328
            WIRE 1952 1328 2000 1328
            WIRE 1952 1328 1952 1824
            WIRE 1952 1824 1968 1824
            WIRE 560 1168 560 1248
            WIRE 560 1248 576 1248
            WIRE 576 1248 576 1328
            WIRE 1056 1152 1056 1216
            WIRE 1056 1216 1088 1216
            WIRE 1088 1216 1088 1328
            WIRE 1520 1152 1520 1216
            WIRE 1520 1216 1552 1216
            WIRE 1552 1216 1552 1328
            WIRE 1968 1152 1968 1296
            WIRE 1968 1296 2000 1296
            WIRE 2000 1296 2000 1328
        END BRANCH
        BEGIN BRANCH alu_out(7:0)
            WIRE 1024 480 1344 480
        END BRANCH
        IOMARKER 1344 480 alu_out(7:0) R0 28
        IOMARKER 336 448 D1(7:0) R180 28
        IOMARKER 336 496 D2(7:0) R180 28
        IOMARKER 336 544 D3(7:0) R180 28
        IOMARKER 384 1232 S0 R180 28
        IOMARKER 384 1280 S1 R180 28
        IOMARKER 384 1328 en R180 28
        BEGIN BRANCH D0(7:0)
            WIRE 336 400 528 400
        END BRANCH
        IOMARKER 336 400 D0(7:0) R180 28
        BEGIN BRANCH S0
            WIRE 384 1232 448 1232
            WIRE 448 1232 608 1232
            WIRE 608 1232 624 1232
            WIRE 624 1232 880 1232
            WIRE 880 1232 880 1232
            WIRE 880 1232 896 1232
            WIRE 896 1232 944 1232
            WIRE 944 1232 1376 1232
            WIRE 1376 1232 1392 1232
            WIRE 1392 1232 1424 1232
            WIRE 1424 1232 1792 1232
            WIRE 1792 1232 1888 1232
            WIRE 1888 1232 2000 1232
            WIRE 1888 1232 1888 1696
            WIRE 1888 1696 1968 1696
            WIRE 1424 1232 1424 1696
            WIRE 1424 1696 1520 1696
            WIRE 944 1232 944 1696
            WIRE 944 1696 1056 1696
            WIRE 448 1232 448 1712
            WIRE 448 1712 560 1712
            WIRE 448 1040 560 1040
            WIRE 448 1040 448 1232
            WIRE 896 1024 896 1232
            WIRE 896 1024 1056 1024
            WIRE 1392 1024 1392 1232
            WIRE 1392 1024 1520 1024
            WIRE 1792 1200 1792 1232
            WIRE 1792 1200 1904 1200
            WIRE 1904 1024 1904 1200
            WIRE 1904 1024 1968 1024
        END BRANCH
        BEGIN BRANCH D0(7)
            WIRE 496 784 560 784
        END BRANCH
        BEGIN BRANCH D1(7)
            WIRE 496 848 560 848
        END BRANCH
        BEGIN BRANCH D2(7)
            WIRE 496 912 560 912
        END BRANCH
        BEGIN BRANCH D3(7)
            WIRE 496 976 560 976
        END BRANCH
        BEGIN BRANCH alu_out(7)
            WIRE 880 880 928 880
        END BRANCH
        BEGIN BRANCH D0(6)
            WIRE 992 768 1056 768
        END BRANCH
        BEGIN BRANCH D1(6)
            WIRE 1008 832 1056 832
        END BRANCH
        BEGIN BRANCH D2(6)
            WIRE 992 896 1056 896
        END BRANCH
        BEGIN BRANCH D3(6)
            WIRE 1024 960 1056 960
        END BRANCH
        BEGIN BRANCH alu_out(6)
            WIRE 1376 864 1408 864
        END BRANCH
        BEGIN BRANCH D0(5)
            WIRE 1456 768 1520 768
        END BRANCH
        BEGIN BRANCH D1(5)
            WIRE 1456 832 1520 832
        END BRANCH
        BEGIN BRANCH D2(5)
            WIRE 1472 896 1520 896
        END BRANCH
        BEGIN BRANCH D3(5)
            WIRE 1456 960 1520 960
        END BRANCH
        BEGIN BRANCH alu_out(5)
            WIRE 1840 864 1872 864
        END BRANCH
        BEGIN BRANCH D0(4)
            WIRE 1920 768 1968 768
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 1936 832 1968 832
        END BRANCH
        BEGIN BRANCH D2(4)
            WIRE 1936 896 1968 896
        END BRANCH
        BEGIN BRANCH D3(4)
            WIRE 1936 960 1968 960
        END BRANCH
        BEGIN BRANCH alu_out(4)
            WIRE 2288 864 2336 864
        END BRANCH
        BEGIN BRANCH D0(3)
            WIRE 528 1456 560 1456
        END BRANCH
        BEGIN BRANCH D1(3)
            WIRE 528 1520 560 1520
        END BRANCH
        BEGIN BRANCH D2(3)
            WIRE 528 1584 560 1584
        END BRANCH
        BEGIN BRANCH D3(3)
            WIRE 544 1648 560 1648
        END BRANCH
        BEGIN BRANCH alu_out(3)
            WIRE 880 1552 896 1552
        END BRANCH
        BEGIN BRANCH D0(2)
            WIRE 992 1440 1056 1440
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 992 1504 1056 1504
        END BRANCH
        BEGIN BRANCH D2(2)
            WIRE 992 1568 1056 1568
        END BRANCH
        BEGIN BRANCH D3(2)
            WIRE 992 1632 1056 1632
        END BRANCH
        BEGIN BRANCH alu_out(2)
            WIRE 1376 1536 1392 1536
        END BRANCH
        BEGIN BRANCH D0(1)
            WIRE 1456 1440 1520 1440
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 1456 1504 1520 1504
        END BRANCH
        BEGIN BRANCH D2(1)
            WIRE 1456 1568 1520 1568
        END BRANCH
        BEGIN BRANCH D3(1)
            WIRE 1456 1632 1520 1632
        END BRANCH
        BEGIN BRANCH alu_out(1)
            WIRE 1840 1536 1856 1536
        END BRANCH
        BEGIN BRANCH D0(0)
            WIRE 1920 1440 1968 1440
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 1920 1504 1968 1504
        END BRANCH
        BEGIN BRANCH D2(0)
            WIRE 1920 1568 1968 1568
        END BRANCH
        BEGIN BRANCH D3(0)
            WIRE 1920 1632 1968 1632
        END BRANCH
        BEGIN BRANCH alu_out(0)
            WIRE 2288 1536 2320 1536
        END BRANCH
    END SHEET
END SCHEMATIC
