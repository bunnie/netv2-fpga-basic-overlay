# NeTV2 FPGA Basic Overlay

This reference design implements a basic chroma-key based video
overlay mode, similar to the original NeTV. Overlay data is sourced
from a local frame buffer. The frame buffer is filled via the PCI
express interface.

This design is implemented using Vivado 2016.1. It relies upon several
other IP blocks, so you will need to check out and create the IP blocks,
and add references to the Project Settings->IP->Repository Manager tab.

These are the blocks you will need:

* chroma-key
* dvi_decoder_v2
* dvi_encoder_v2
* edid_snoop
* hdcp_engine
* hdcp_snoop
* reg_expander



