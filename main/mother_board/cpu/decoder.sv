`include "lib_cpu.svh"

module decoder import lib_cpu :: *; (
    input logic [15:0] data,
    output OPECODE opecode;
    output logic [7:0] imm
);
    assign imm = data[7:0];

    always_comb begin
        unique case (data[15:8])
            // @TODO 8bit化
            4'b0001: opecode = MOV_A_B;
            4'b0100: opecode = MOV_B_A;
            4'b0011: opecode = MOV_A_IMM;
            4'b0111: opecode = MOV_B_IMM;
            4'b0010: opecode = IN_A;
            4'b0110: opecode = IN_B;
            4'b1001: opecode = OUT_B;
            4'b1011: opecode = OUT_IMM;
            4'b0000: opecode = ADD_A_IMM;
            4'b0101: opecode = ADD_B_IMM;
            4'b1111: opecode = JMP_IMM;
            4'b1110: opecode = JNC_IMM; 
            default: opecode = INVALID;
        endcase
    end
endmodule