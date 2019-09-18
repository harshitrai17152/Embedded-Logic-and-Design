# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]

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

##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {ssd[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[0]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {ssd[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[1]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {ssd[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[2]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {ssd[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[3]}]

##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports {ssd[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[4]}]
##Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports {ssd[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[5]}]
##Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports {ssd[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssd[6]}]
##Sch name = JC4
set_property PACKAGE_PIN P18 [get_ports {ssdcat}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ssdcat}]







