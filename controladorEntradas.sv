`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// University: Instituto Tecnológico de Costa Rica
// Students: Alonso Azofeifa - Andrés Vargas - Jose David Luna
// 
// Design Name: Controlador de las entradas (switches) 
// Module Name: controladorEntradas
// Project Name: Proyecto 2 de Diseño Lógico
// Description: Toma las entradas de los switches y almacena los datos en dos salidas de 14 bits y un seleccionador de modo de 2 bits
// 
//////////////////////////////////////////////////////////////////////////////////


module controladorEntradas(
    input logic i0,
    input logic i1,
    input logic i2,
    input logic i3,
    input logic i4,
    input logic i5,
    input logic i6,
    input logic i7,
    input logic i8,
    input logic i9,
    input logic i10,
    input logic i11,
    input logic i12,
    input logic i13,
    input logic i14,
    input logic i15,
    output logic[7:0] binA,
    output logic[7:0] binB
    );
    
    always_comb begin 
    binA[0]=i0;
    binA[1]=i1;
    binA[2]=i2;
    binA[3]=i3;
    binA[4]=i4;
    binA[5]=i5;
    binA[6]=i6;
    binA[7]=i7;
    binB[0]=i8;
    binB[1]=i9;
    binB[2]=i10;
    binB[3]=i11;
    binB[4]=i12;
    binB[5]=i13;
    binB[6]=i14;
    binB[7]=i15;    
    end
endmodule