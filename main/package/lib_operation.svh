`ifndef LIB_OPERATION_SVH
`define LIB_OPERATION_SVH
`include "lib_cpu.svh"
package lib_operation;
    import lib_cpu :: REGS;

    function automatic REGS nop(REGS current);
        nop = current;
        nop.cf = 1'b0;
        nop.ip = current.ip + 4'd1;
    endfunction

    function automatic REGS mov_a_b(REGS current);
        mov_a_b = nop(current);
        mov_a_b.a = current.b;
    endfunction


    function automatic REGS mov_a_imm(REGS current, logic [3:0] imm);
        mov_a_imm = nop(current);
        mov_a_imm.a = imm;
    endfunction

`endif