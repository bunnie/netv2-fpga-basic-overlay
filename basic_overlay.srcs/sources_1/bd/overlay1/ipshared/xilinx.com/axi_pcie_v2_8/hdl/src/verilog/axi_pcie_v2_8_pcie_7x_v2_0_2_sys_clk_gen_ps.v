
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : axi_pcie_v2_8_0_pcie_7x_v2_0_2_sys_clk_gen_ps.v
// Version    : 2.1
//--
//--------------------------------------------------------------------------------
`timescale 1ps/1ps

module axi_pcie_v2_8_0_pcie_7x_v2_0_2_sys_clk_gen_ps (sys_clk);

output	sys_clk;

reg		sys_clk;

parameter        offset = 0;
parameter        halfcycle = 500;

initial begin

	sys_clk = 0;
	#(offset);

	forever #(halfcycle) sys_clk = ~sys_clk;

end

endmodule // axi_pcie_v2_8_0_pcie_7x_v2_0_2_sys_clk_gen_ps
