`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Andres Vargas, Alonso Azofeifa, Jose David Luna
// Design Name: Main del algoritmo de multiplicación  
// Module Name: main
// Project Name: Proyecto 3, multiplicador por medio de Booth 
// Description: 
// Gestiona las entradas del módulo de multiplicación.
//////////////////////////////////////////////////////////////////////////////////

module main(
input logic clk,
    input logic rst,
    input logic valid,
    input logic [7:0]A,
    input logic [7:0]B,
    output logic [1:0]Q_LSB,
    output logic [15:0] Y,
  	output logic [7:0]estado
    );
  	logic load_A;
    logic load_B;
    logic load_add;
    logic shift_HQ_LQ_Q_1;
    logic add_sub;
  
   estados FMS(.clk(clk), .rst(rst), .valid(valid), .Q_0(Q_LSB[0]), .Q_1(Q_LSB[1]), .estado(estado), .load_A(load_A),.load_B(load_B), .load_add(load_add),.shift_HQ_LQ_Q_1(shift_HQ_LQ_Q_1),.add_sub(add_sub));
   mult mult(.clk(clk), .rst(rst),.A(A),.B(B), .load_A(load_A),.load_B(load_B), .load_add(load_add),.shift_HQ_LQ_Q_1(shift_HQ_LQ_Q_1),.add_sub(add_sub), .Q_LSB(Q_LSB),.Y(Y));
  
endmodule