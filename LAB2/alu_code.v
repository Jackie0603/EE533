`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:28 01/25/2025 
// Design Name: 
// Module Name:    alu_code 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_code(
    input [31:0] A,
    input [31:0] B,
    input mux_en,
    input S1,
    input S0,
    input DFF_en,
    input CLK,
    input DFF_reset,
    output Cout,
    output [31:0] ALU_out
    );


    // Internal wires 
    wire [31:0] sub_result;   
    wire [31:0] and_result;   
    wire [31:0] or_result;    
    wire [31:0] shift_result; 
    wire [31:0] mux_out;      
	 
    // subtractor
    subtractor_32bit u_subtractor (
        .A(A),
        .B(B),
        .Cout(Cout),
        .Result(sub_result)
    );

    // AND gate
    and_32bit u_and (
        .A(A),
        .B(B),
        .Result(and_result)
    );

    // OR gate
    or_32bit u_or (
        .A(A),
        .B(B),
        .Result(or_result)
    );

    // left shifter 4bit
    left_shifter_32bit u_shifter (
        .A(A),
        .Result(shift_result)
    );

    // 4-to-1 mux
    mux_4to1_32bit u_mux (
        .in0(or_result),
        .in1(and_result),
        .in2(sub_result),
        .in3(shift_result),
        .sel({S1, S0}),
        .en(mux_en),
        .out(mux_out)
    );

    // DFF
    dff_32bit u_dff (
        .D(mux_out),
        .CLK(CLK),
        .reset(DFF_reset),
        .en(DFF_en),
        .Q(ALU_out)
    );

endmodule

module subtractor_32bit(
    input [31:0] A,
    input [31:0] B,
    output Cout,
    output [31:0] Result
);
    assign {Cout, Result} = A + (~B) + 1;
endmodule

module and_32bit(
    input [31:0] A,
    input [31:0] B,
    output [31:0] Result
);
    assign Result = A & B;
endmodule

module or_32bit(
    input [31:0] A,
    input [31:0] B,
    output [31:0] Result
);
    assign Result = A | B;
endmodule

module left_shifter_32bit(
    input [31:0] A,
    output [31:0] Result
);
    assign Result = {A[27:0], 4'b0000};
endmodule

///////////////////////////////////


module mux_4to1_32bit(
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input [31:0] in3,
    input [1:0] sel,
    input en,
    output [31:0] out
);
    assign out = en ? (sel == 2'b00 ? in0 :
                       sel == 2'b01 ? in1 :
                       sel == 2'b10 ? in2 :
                       sel == 2'b11 ? in3 : 32'b0) : 32'b0;
endmodule


///////////////////////////////////

module dff_32bit(
    input [31:0] D,
    input CLK,
    input reset,
    input en,
    output reg [31:0] Q
);
    always @(posedge CLK or negedge reset) begin
        if (reset) begin
            Q <= 32'b0;
        end else if (en) begin
            Q <= D;
        end
    end

endmodule
