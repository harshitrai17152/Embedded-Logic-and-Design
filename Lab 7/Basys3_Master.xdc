# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	
## LEDs
set_property PACKAGE_PIN U16 [get_ports {led[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]	
	
#7 segment display
    set_property PACKAGE_PIN W7 [get_ports {cathode[7]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[7]}]
    set_property PACKAGE_PIN W6 [get_ports {cathode[6]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[6]}]
    set_property PACKAGE_PIN U8 [get_ports {cathode[5]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[5]}]
    set_property PACKAGE_PIN V8 [get_ports {cathode[4]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[4]}]
    set_property PACKAGE_PIN U5 [get_ports {cathode[3]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[3]}]
    set_property PACKAGE_PIN V5 [get_ports {cathode[2]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[2]}]
    set_property PACKAGE_PIN U7 [get_ports {cathode[1]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {cathode[1]}]
    set_property PACKAGE_PIN V7 [get_ports cathode[0]]
        set_property IOSTANDARD LVCMOS33 [get_ports cathode[0]]
    
    set_property PACKAGE_PIN U2 [get_ports {anode[0]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
    set_property PACKAGE_PIN U4 [get_ports {anode[1]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
    set_property PACKAGE_PIN V4 [get_ports {anode[2]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
    set_property PACKAGE_PIN W4 [get_ports {anode[3]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN T17 [get_ports pb_read]						
	set_property IOSTANDARD LVCMOS33 [get_ports pb_read]