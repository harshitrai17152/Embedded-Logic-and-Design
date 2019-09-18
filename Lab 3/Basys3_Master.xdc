# Switch
set_property PACKAGE_PIN W5 [get_ports ori_clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports ori_clk]
# Inputs				
set_property PACKAGE_PIN v16 [get_ports {sel_line[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sel_line}]
set_property PACKAGE_PIN W17 [get_ports {sel_line[1]}]	
# Buttons
set_property PACKAGE_PIN U18 [get_ports rst]						
    set_property IOSTANDARD LVCMOS33 [get_ports rst]
# LED's
set_property PACKAGE_PIN U16 [get_ports {q[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {q}]
set_property PACKAGE_PIN E19 [get_ports {q[1]}]					
set_property PACKAGE_PIN U19 [get_ports {q[2]}]				
set_property PACKAGE_PIN V19 [get_ports {q[3]}]					
set_property PACKAGE_PIN W18 [get_ports {q[4]}]				

