// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Fri Oct 28 13:57:00 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_c_counter_binary_0_0/overlay1_c_counter_binary_0_0_sim_netlist.v
// Design      : overlay1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay1_c_counter_binary_0_0,c_counter_binary_v12_0_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_9,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module overlay1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [24:0]Q;

  wire CLK;
  wire [24:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "25" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  overlay1_c_counter_binary_0_0_c_counter_binary_v12_0_9 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "25" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_9" *) (* downgradeipidentifiedwarnings = "yes" *) 
module overlay1_c_counter_binary_0_0_c_counter_binary_v12_0_9
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [24:0]L;
  output THRESH0;
  output [24:0]Q;

  wire CE;
  wire CLK;
  wire [24:0]L;
  wire LOAD;
  wire [24:0]Q;
  wire SCLR;
  wire SINIT;
  wire SSET;
  wire THRESH0;
  wire UP;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "25" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  overlay1_c_counter_binary_0_0_c_counter_binary_v12_0_9_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET),
        .THRESH0(THRESH0),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
qSFHeJgSZ8M0uGrsvQNe5Jv2gCd56ku9CU5Em+MOFnXmGhB2Q6vdCH7QpcJFpFW6rvt5JKV7RyUx
xvVW7nKPTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KGP7iCID/hegJ1qr+VloN0/tJBSxne/JGjcJ81rlWWcoENslI7VRztMd25x1GXdOK9J/jUn7s8ja
qYeosq4DorwE1nOeezwFOWyrrjzBfiEj4lWMYgF+VfNJIyShTDpS/mfvRoZAJkVPieUGLFyaPqhY
LPLx4AvW8LTOeO9oIsU=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
4x4NMCj/XiHGINMhVXJCP92egd94lm1ApttYyTrF1qhx4nBZ2mMUTYpFdmP/ooFgbKv1hdBFgjc2
LaW0n+FjvUoiyccZhQ9k4rRD/KFJXqWIN2MxIOS3OX2suXjN4vGWhovARII1Ct9INSRqs/VhHDd3
iuB5hzhb8311eyICEtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xczA98/2BcFrtcxAwBAqQmY/YwTXVa/a+0furhet7t+qNi4XzCuIOYfkUzD1F4sOqPLBc5ffL2Om
+BtvsqoeHXNPun3S5sr1TG7xJlnJr4yYbWe/A4LCns2zLEYyKKG/EtVBpCqaY7RJPfyGB7sVujPf
8UKJ8jUEQzce1NssCx8h0gt9mH9uyGIKpKgu5FBLoge6MQUX03tczVkn8RkX9LHAcGz13R4f1Nzv
rgTvjLZ06GDvzQfR0LkXQY8UXF0bGHdsmF5clEPANsRSBu6vS5+oaf7y795P5zkw9cGbGI4VvnS9
l+jkH24VUZfU8Qf0NlNTcIj7gF6+Y1kbA0UJyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CCw7F65K5Y20alPmeMGL+wOLacG8WG1gtqNgFFK9LZY5+0aRDrk0EqJIfQwLwGPNtAnRRfF6kloJ
tI1XdTc93N7DWDT92txLdYD4zhUdYhFr9U6y+B3eXDGSORjadRRqpaSpaIGef6244B+M5mQ8jhjr
FlzMUrqDyLS3QKet/1c4/4z6odlRblEUSVK/uYlG/0AoAJZIW3Mk3LUYasWogJih7GVn3XevlzDf
40FzLzcfNl4M5c4gtqPRjFuS1YAZ6CPRHUqGzk4C2OXxNdK511tI8JBlq17oua2YkO3fz5bn19V0
3fyAk+eIKHPj3gAmbN5sDoh5HNeJPbhm808wfQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2015_12", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SuI43XZaYfXJb+jMjRkDAdwzbT+16k9S/c38USIjKYy98rIs0NbM5CuVMA0teyelIcnOYA+/QaQ8
GS5Me22ta/vxzSIOR8Yu5hKzDT8dWvUiar+LS6E05ixnSkQV0TA9WisD3PG/G6v5L8dBWMUXhiUE
SQMRsfKPGPfgiWa/QcdiP/2PYDxgKZrHTHthei+d3fI6BHcOOgokxAqvAFD3SFl5iglaT7Xm1niV
i9A/7jmTlCKbVGzOBKE1IszeHQ1W/hKm0ODie+FnR4prbT/hI8YAiJ/pKGZZeZzBkXMEmfcFirG9
avom2+u7vOS1zKLMeYcsw0JAhs6HIa8QTvtrJQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
PPBhZY1OfyoSdD2rg0JHXuVUZdwRLJ//Rhb5YaZ506kiQgK3PzFsp6EumpFsE3EjzcknInJUIGrn
NHXhk0Is2kozEaAuk5DBmKnibRakqwCEvb2uyD/u6hdvqWXM/mJF3VFwwN+S45Q4zLqvUyQOuoh+
W/rx4iySRbFTGDJHwF5V3pssNCxCGT0dbICFLGcPG2sAsbwsldEznn1jXS58+90V9sqPjI7Gjkaw
7DYJSw1OcpNY2AA2ukHC12AAmOEJQKJpvzjNce5pV66P/AoeABD87ZXcKyHLu71expXNigEwubjH
ods2M6brP7SC9HxHkfLaZkXj5YSP0jSg6q/jEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
CUj1Tb4hRn0Ha7NIC0h5JNoRmuyITjZ44ur+0vfuUXDfw8x9TV/pYzyCp6vElPvdbxmBzFb0LUKh
FN7HsHlI1jqcHsBtloe/zEntvtLM8Sa7hh3UNXmWUfQV5tq4bVknyJnZtImieIMtW614DaNQgWKR
ckfCysG2RV/AWW/wGSSAGKzttUJLQ8dafiXyq2GGqguOWcpxuGI1GXaCdIfDP34g9tYoRVVBLVmr
p3oRAXDpW4S3v2XOOV+T7VUV2Rle4ai+ruWvA2uh5Bf3VmKhrHCYmqR90LCBY+N9oXRti48vOv6S
5xdRA2FNJdy4czw58Apl0DVVfud+B/LdR4aI4w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16656)
`pragma protect data_block
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
QaQVm9+tSAwmvLiS
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
