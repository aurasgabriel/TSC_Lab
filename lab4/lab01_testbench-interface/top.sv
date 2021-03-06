/***********************************************************************
 * A SystemVerilog top-level netlist to connect testbench to DUT
 **********************************************************************/

module top;
  timeunit 1ns/1ns;

  // user-defined types are defined in instr_register_pkg.sv
  import instr_register_pkg::*;

  // clock variables
  logic clk;
  //logic test_clk;
  
	// instantiate the testbench interface
  tb_ifc itfc (.clk(clk));

	// connect interface to testbench
  instr_register_test test (.itfc(itfc));

  // instantiate testbench and connect ports

  // instantiate design and connect ports
  instr_register dut (
    .clk(clk),
    .load_en(itfc.cb.load_en),
    .reset_n(itfc.cb.reset_n),
    .operand_a(itfc.cb.operand_a),
    .operand_b(itfc.cb.operand_b),
    .opcode(itfc.cb.opcode),
    .write_pointer(itfc.cb.write_pointer),
    .read_pointer(itfc.cb.read_pointer),
    .instruction_word(itfc.cb.instruction_word)
   );

  // clock oscillators
  initial begin
    clk <= 0;
    forever #5  clk = ~clk;
  end

  // initial begin
    // test_clk <=0;
    // // offset test_clk edges from clk to prevent races between
    // // the testbench and the design
    // #4 forever begin
      // #2ns test_clk = 1'b1;
      // #8ns test_clk = 1'b0;
    // end
  // end

endmodule: top
