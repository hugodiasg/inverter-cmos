*INVERTER CMOS

.subckt inverter	IN	OUT	VCC	VGND

M1	OUT	IN	VCC	VCC	pshort_model	w=3u l=0.15u
M2	OUT	IN	VGND	VGND	nshort_model	w=1u l=0.15u

.ends
