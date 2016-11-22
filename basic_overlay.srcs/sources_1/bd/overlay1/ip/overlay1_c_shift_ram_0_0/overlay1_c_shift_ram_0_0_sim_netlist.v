// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Oct 31 03:11:41 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               f:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_c_shift_ram_0_0/overlay1_c_shift_ram_0_0_sim_netlist.v
// Design      : overlay1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_c_shift_ram_0_0,c_shift_ram_v12_0_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_9,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_c_shift_ram_0_0
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
  overlay1_c_shift_ram_0_0_c_shift_ram_v12_0_9 U0
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
module overlay1_c_shift_ram_0_0_c_shift_ram_v12_0_9
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
  overlay1_c_shift_ram_0_0_c_shift_ram_v12_0_9_viv i_synth
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
dDcWqAu042x7UhNsd6eI/5lHdSKzPdmd36Ogz/JZ0xuliTVPzCBcu6g05PgtKzCK/+lOLwOIB55Y
oaK2Rp3XwuZP3ShLAm+OjTR6TUsDjG8l8vdWoWQHde8wDPn3B7N/WppG6mrH4kRSeCB6Mr3zO+4G
SYr0+dW5Aa7uWxnamAX8xwmtA2cy4b0ZH71t/emyVl7D2I28q0Hmz1ZoA8mLNyHOW69B5IaoAA73
/fJOPxyaohLdOXJL9Vyd4pnWMsId/lNR9uMGyQNZUabSf/VtkDvuGyG8v0meYU2bZ/lWFqtH2Ft6
ax/annhqIAYAtyxkWGMqFjuNNr6dzv+kjnI16w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
EgJPLbXX466BntghjMaedMl66ahFFm5vXK9T1LP7kYT5icqrIL7iOZVXVZI94P9y3Bi1oINuKU3J
DgIjkTEjcypg+1pI9DcROtZdFeZMpvYuIqynT0f8T6vKimQWNpy07KnnzBJmjbXtfZ79Ke7uef0h
We97DYePEfLYuqbO2cw5vyBSgXhoixRIF49Y58Z17ZpZq00+cyJzf/udjhoSezdsD9B3kGpSxG83
ffwqz/mMqNwRoJNQjI39JM1hByUC6sUrCQNTg7Rr6sjo95XRwLUK6BLZeC6jcGvUruHTC1Fos9cL
AxePL79DP/LeA0Qqht5gmhzvzWe/6/rCkLvAUQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4512)
`pragma protect data_block
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
zvg+kxQPW/6X
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
