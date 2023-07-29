`ifndef LIB_CPU_SVH
`define LIB_CPU_SVH
    package lib_cpu;
        typedef struct packed {
            logic [3:0] a, b, ip, out;
            logic cf;
        } REGS;

    typedef enum logic [7:0] {
        MOV_A_B,        //4'b0000
        MOV_B_A,        //4'b0001
        MOV_A_IMM,      //4'b0010
        MOV_B_IMM,      //4'b0011
        IN_A,           //4'b0100
        IN_B,           //4'b0101
        OUT_B,          //4'b0110
        OUT_IMM,        //4'b0111
        ADD_A_IMM,      //4'b1000
        ADD_B_IMM,      //4'b1001
        JMP_IMM,        //4'b1010
        JNC_IMM,        //4'b1011
        INVALID         //4'b1100
    } OPECODE;
endpackage
`endif