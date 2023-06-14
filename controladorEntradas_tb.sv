`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_controladorEntradas;
    logic[7:0] A;
    logic[7:0] B;
    logic i0;
    logic i1;
    logic i2;
    logic i3;
    logic i4;
    logic i5;
    logic i6;
    logic i7;
    logic i8;
    logic i9;
    logic i10;
    logic i11;
    logic i12;
    logic i13;
    logic i14;
    logic i15;
    
    controladorEntradas DUT (
    .A (A),
    .B (B),
    .i0 (i0),
    .i1 (i1),
    .i2 (i2),
    .i3 (i3),
    .i4 (i4),
    .i5 (i5),
    .i6 (i6),
    .i7 (i7),
    .i8 (i8),
    .i9 (i9),
    .i10 (i10),
    .i11 (i11),
    .i12 (i12),
    .i13 (i13),
    .i14 (i14),
    .i15 (i15)
    );
    
    initial begin 
        i0 = 0;
        i1 = 1;
        i2 = 0;
        i3 = 1;
        i4 = 0;
        i5 = 1;
        i6 = 0;
        i7 = 1;
        i8 = 0;
        i9 = 0;
        i10 = 0;
        i11 = 0;
        i12 = 1;
        i13 = 1;
        i14 = 1;
        i15 = 1;
        #10;
        $finish;
    end 
endmodule