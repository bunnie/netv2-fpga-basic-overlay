`timescale 1ns / 1ps

module axi_pcie_v2_8_0_pcie_7x_v2_0_2_gtx_cpllpd_ovrd (                                                                                        
    input   i_ibufds_gte2,                                                                                     
    output  o_cpllpd_ovrd,                                                                                     
    output  o_cpllreset_ovrd                                                                                   
    );                                                                                                         
    (* equivalent_register_removal="no" *)  reg [95:0] cpllpd_wait = 96'hFFFFFFFFFFFFFFFFFFFFFFFF;             
    (* equivalent_register_removal="no" *)  reg [127:0] cpllreset_wait = 128'h000000000000000000000000000000FF;
    always @(posedge i_ibufds_gte2)                                                                            
    begin                                                                                                      
        cpllpd_wait <= {cpllpd_wait[94:0], 1'b0};                                                              
        cpllreset_wait <= {cpllreset_wait[126:0], 1'b0};                                                       
    end                                                                                                        
    assign o_cpllpd_ovrd = cpllpd_wait[95];                                                                    
    assign o_cpllreset_ovrd = cpllreset_wait[127];                                                             
endmodule
