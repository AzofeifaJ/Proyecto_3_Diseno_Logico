`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Andres Vargas, Alonso Azofeifa, Jose David Luna
// Design Name: Algoritmo de multiplicación
// Module Name: mult
// Project Name: Proyecto 3, multiplicador por medio de Booth 
// Description: 
// Se encarga de realizar los procesos corresponedientes de cada estado, cada componente del algorito de booth
//////////////////////////////////////////////////////////////////////////////////

module mult#(
    parameter N = 8
)(
    input logic clk,rst,
    input logic [N-1:0]A,
    input logic [N-1:0]B,
    input logic load_A,
    input logic load_B,
    input logic load_add,
    input logic shift_HQ_LQ_Q_1,
    input logic add_sub,
    output logic [1:0] Q_LSB,
    output logic [2*N-1:0] Y);
    
    logic [N-1:0] M;
    logic [N-1:0] adder_sub_out;
    logic [2*N:0] shift;
    logic [N-1:0] HQ;
    logic [N-1:0] LQ;
    logic Q_1;
   
    //reg_m
    always_ff@(posedge clk, rst) begin
        if(rst)
            M<='b0;
        else
            M<=(load_A)? A:M;
    end
            
    //adder/sub
    always_comb begin
        if(add_sub)
            adder_sub_out = M+HQ;
        else
            adder_sub_out = M-HQ;
    end
    //shiftRegister
    always_comb begin
        Y = {HQ,LQ};
        HQ = shift[2*N:N+1];
        LQ = shift[N:1];
        Q_1 = shift[0];
        Q_LSB = {LQ[0],Q_1};
    end

    always_ff@(posedge clk,rst) begin
        if(rst)
            shift <='b0;
        else if(shift_HQ_LQ_Q_1)
            //arithmetic shift
            shift <= $signed(shift)>>>1;
        else begin
            if(load_B)
                shift[N:1] <= B;
            if(load_add)
                shift[2*N:N+1] <= adder_sub_out;
        end
    end
endmodule