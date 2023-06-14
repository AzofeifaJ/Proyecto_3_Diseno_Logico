`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Andres Vargas, Alonso Azofeifa, Jose David Luna
// Design Name: Teshbench  
// Module Name: main_tb
// Project Name: Proyecto 3, multiplicador por medio de Booth 
// Description: 
// Realiza un Teshbench para poder validar resultados generados por el algoritmo 
// // Revision 0.01 - File Created
// Additional Comments:
// En la ultima revision no se logra obtener el resultado deseado
//////////////////////////////////////////////////////////////////////////////////

module main_tb;

  logic clk =0;
  logic rst;
  logic valid;
  logic [7:0]estado;
  logic [1:0] Q_LSB;
  logic [7:0] A;
  logic [7:0] B;
  logic [15:0] Y = 15'd0;
  
  main main(
  .clk(clk),
  .rst(rst),
  .valid(valid),
  .A(A),
  .B(B),
  .Q_LSB(Q_LSB),
  .Y(Y),
  .estado(estado)
  );
  
  always #20 clk = ~clk;
  
  initial begin
    rst=1;
    #50
    rst=0;
    #20
    
    A = 8'b100;
    B= 8'b10;
    valid =1;
    #40
    valid =0;
    
    #1000
    valid =0;
    
    
  end
endmodule