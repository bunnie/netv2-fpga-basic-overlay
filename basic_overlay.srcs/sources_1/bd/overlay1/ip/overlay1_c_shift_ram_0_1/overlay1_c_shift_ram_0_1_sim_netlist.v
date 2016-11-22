// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 03:12:24 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               f:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_c_shift_ram_0_1/overlay1_c_shift_ram_0_1_sim_netlist.v
// Design      : overlay1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_c_shift_ram_0_1,c_shift_ram_v12_0_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_9,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_c_shift_ram_0_1
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  overlay1_c_shift_ram_0_1_c_shift_ram_v12_0_9 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "4" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_9" *) (* downgradeipidentifiedwarnings = "yes" *) 
module overlay1_c_shift_ram_0_1_c_shift_ram_v12_0_9
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire [3:0]A;
  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;
  wire SINIT;
  wire SSET;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  overlay1_c_shift_ram_0_1_c_shift_ram_v12_0_9_viv i_synth
       (.A(A),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ktlxmI9evD0JmSIQVE6tDMaW9RLtp36JL4oILFFCXVq+vsQGRuUYKEGnf6jwRTAq28cn2R5Y2c+2
XbrPNJmtfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Udm0ZUh1Gw6RYIWxhEnKvITjPmcgE2rsInDg9nNDzCU5I/hCVcUH5DN9NUsFtSP/KM3tX68DiXJO
BprpIWXqwt7P3xs8eFIEBUHH7apnWE0dQ8yqBL/Xe4ttX1SClhGeJVelPMZwz2u9IPSpWseH8uox
i91+LWbzADt671/CDKs=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lFsBfwoSN2sO1MNQSo2FX4F4uVW5eosXDsP39F4tWd+4DxSdkREPSklEKze/AOlNxtgT90nOiruu
PTnJ2iexeb/EISrrann5uIENvHluVeCearFdIM0/nlVyx3bSXjifxKF7uNW5eVcLY+/2fWp/N0oL
g5U+bpAHHlY9MpKvQSI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zmN+b7Zh/WaIHIo8GcbUygrbh/qhhZdqHH9lY9DmaUTs40ZTzsmnYgctc2/aRH9mj5FVK88k2eqw
ucySTmaK9ARfJqElFEwPGK0KC2SDM3kwJa1fNnHFc/Vq2+O0aad7uVJPhXb4L/bJtBpAe6m2sVPP
3SkFdX3u+wdeyVt3zM9uxKwxhRX2NEYPXHEM80dx/5SJjpkQNoHlnD2At061Z4hxJwowrUBN2Bcc
AskpW/aykJxiJloRoLb2yPkQHLbKxHr8axheC+4cilnZdcRT0b7MuSbK4XiBUvj/5jTC/ehxZRPL
PhrTt0LjTbQKf6XV6rgjUfqvOmJBvPG2qsFpeQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nd3L0esNj9qmtbXAC4S6ulQ3G6JWdaD1X6qKS3UyjwZuot+YWR2UKOVBLuhnawONPsIEwUJ5UTlh
IkCvpnTYDPGHu4nO3O/4+MHv2CkmDhhkuMeMcXASA87VAyfJiYVc+CHH5lbs3ajXIHrkHo7SMfgL
2ID7a5LK4hsYaM6z2O08zJcAgw0NksZ46cFnn+3FBec5/BZTYMF6yqrbQz8zONb49OpdVrzeNfi0
PjoFczyyWMEECeZFtiqd9x76ovHyCzVyShucb7j4J5t7XIBBdTz7DGPh3mjd4ktp8q0MAQjBsaRC
NlSi9LtdNw/Zkp9sIO/0PlEMLnqk1JJtsDxgeQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2015_12", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W8nj1pVByw8KZWF/EVgRHTgpa7FL91cjiG2t/Nyn7DTql6Q5NSx7QemcL8KhQJL152hiHHS2bU2W
KeIT7acWX/yBY1Ku3tMrN8tWsySxZccJbaZc884pCm2HC3KiJyMW/t1HE3hLk5pezmpTqHwcTE/d
oSBMd6R2ovY6UQZoZncHZiQcQaXMPKewrYm8LrWJLRXMBaFBK2yQ4OMjJSlnx+wvu4GviCy9isvE
6GuRqpboOwZdYF16fKL7HRzReVGVpZ1dk9TC33MFGAYk2tG/aX0xLv9AgpHzBv3duyB1kopvawa9
EFumBe/DYMpwnx3lz8iJjJO8MxHlB8dwZzaBaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
CBD+xv8+H36zOf9/BcKDa3CXGRleWTkPUlOGtAIhJlxDwwKkxOszkXfaNAOXjRP1V3TTMdpWof/7
h3CnbzAP7oH3yIAX9/Z7njjjUzS7r4sGOpWUJtrVESHyi9TPqIiLHY78IbkKpijB0DNckMDusCJQ
1vB11JO0dn+71DQ5g8ekijyQolvsgOpbF0K9zaJPjLhYda9CHihCdqpb2OXcBLXc8664DwchA1cM
wMc9zKYlfJRdvGZvejEneU21xoTBB1MY6ubokOKVYLx3SauJJYJBDfZGI3my/lQQ/04asXYZkJNu
jJFJFlqf4ntxmbIQjZR8vNPJqHTBMuMgbSOX6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
CUHl/sIqXxzmB+J8U/usMVBNi8eXS9JUiAYGyB6LtcujLqU1r4FYPTgyb96aYkwhXn9qp1v+YwLQ
v/tBWXtueCSTA18OHEkL9/YSeosXdMyWP4DGytYdjPjKVmC8O0k1+PRX8vZ7ZuMSlRr9GDdX20ZG
aI+gsT/K83USSlT54BtQhMXZLxZ53ClXcZlQNu3rAX3mPjynqIad7LZ9G/YruzIWLqJI/dxexcZh
d7ojWQZnoI3rj8WCryiLRi84QEPVII63c2E4+cSoORTFeLM/EuWYriuiaWNVmN8qhl913fXpW3ME
r48UYubkrFCm1BBlOyUv+bYubZge2MOZDAgbQQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4512)
`pragma protect data_block
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
GR6dgFicodtc
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
