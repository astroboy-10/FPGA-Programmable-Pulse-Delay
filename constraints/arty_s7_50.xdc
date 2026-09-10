## ============================================================
## 100 MHz system clock
## ============================================================

set_property -dict { PACKAGE_PIN R2 IOSTANDARD SSTL135 } [get_ports clk]
create_clock -add -name sys_clk -period 10.000 -waveform {0 5} [get_ports clk]


## ============================================================
## User switches
## ============================================================

set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports {sw[0]}]
set_property -dict { PACKAGE_PIN H18 IOSTANDARD LVCMOS33 } [get_ports {sw[1]}]
set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports {sw[2]}]
set_property -dict { PACKAGE_PIN M5 IOSTANDARD SSTL135 } [get_ports {sw[3]}]


## ============================================================
## Pmod JA
## ============================================================

set_property -dict { PACKAGE_PIN L17 IOSTANDARD LVCMOS33 } [get_ports pulse_in]
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports pulse_out]


## ============================================================
## LEDs
## ============================================================

set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports {led[0]}]
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports {led[1]}]
set_property -dict { PACKAGE_PIN E13 IOSTANDARD LVCMOS33 } [get_ports {led[2]}]
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports {led[3]}]


## ============================================================
## Configuration
## ============================================================

set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]


## ============================================================
## Bank 34 internal VREF
## ============================================================

set_property INTERNAL_VREF 0.675 [get_iobanks 34]
