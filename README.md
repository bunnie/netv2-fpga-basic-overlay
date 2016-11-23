# NeTV2 FPGA Basic Overlay

This reference design implements a basic chroma-key based video
overlay mode, similar to the original NeTV. Overlay data is sourced
from a local frame buffer. The frame buffer is filled via the PCI
express interface.

This design is implemented using Vivado 2016.1. It relies upon several
other IP blocks, so you will need to check out and create the IP blocks,
and add references to the Project Settings->IP->Repository Manager tab.

These are the blocks you will need:

* chroma-key   https://github.com/bunnie/netv2-fpga-chroma-key
* dvi_decoder_v2 https://github.com/bunnie/netv2-fpga-dvi-decoder
* dvi_encoder_v2 https://github.com/bunnie/netv2-fpga-dvi-encoder
* edid_snoop   https://github.com/bunnie/netv2-fpga-edid-snoop
* hdcp_engine  https://github.com/bunnie/netv2-fpga-hdcp-engine
* hdcp_snoop   https://github.com/bunnie/netv2-fpga-hdcp-snoop
* reg_expander https://github.com/bunnie/netv2-fpga-reg-expander

Once you've cloned these repositories, you need to go to
Tools->Create and Package IP... and locally package the IP before you
can use it in the top level block.

# compilation notes

The design is implemented using Vivado's block diagram tool.

The IP is checked in in a "generated" state, e.g. all the IP blocks
have been generated from the block diagram. This is important because
it resolves most dependencies that can trip up someone else trying
to compile the IP.

If you "clean" the IP state and regnerate from scratch, note that
after you generate the IP and before you run synthesis, you have to
edit the PCI express block to remove the slave interface, otherwise
the design won't fit in the FPGA. The IP as checked-in has the slave
interface edited out, so you can run a diff of the directory if you
want to know what lines to delete to remove the slave interface.


# License notes

The GPLv3 license only applies to IP created by the author. Other IP
is licensed as labelled.