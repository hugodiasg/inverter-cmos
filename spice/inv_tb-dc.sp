*INVERTER CMOS tran

.include /home/hugodg/hugodg/sky130_skel/minimal_libs/pshort.lib
.include /home/hugodg/hugodg/sky130_skel/minimal_libs/nshort.lib
.include ./inv_pre-layout.sp
.include ./inv_post-layout.sp


*Xinv0	IN	OUT	VCC	GND	inverter
Xinv0	IN	OUT	VCC	GND	GND	inverter_post


VDD	VCC	0	3.3V
VSS	VGND	0	0V
Va	IN	VGND	PULSE(0V	3.3V	0	0.1ns	0.1ns	2ns	4ns)

.dc Va 0V	3.3	0.05V
.control
run
plot v(IN) v(OUT)
.endc
.end

