`include "lib_cpu_svh"

module cpu import lib_cpu :: *; (
    ctrl_bus_if.master ctrl_bus,
    io_bus_if.master io_bus,
    mem_bus_if.master mem_bus
);
    OPECODE opecode;
    logic [3:0] imm;
    decoder decoder(.data(mem_bus.data), .opecode, .imm);

    REGS current, next;
    assign mem_bus.addr = current.ip;
    assign io_bus.led = current.out;