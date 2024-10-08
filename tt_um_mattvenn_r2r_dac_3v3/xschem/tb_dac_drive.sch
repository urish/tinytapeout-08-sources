v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -560 -100 -550 {
lab=vcc}
N -100 -490 -100 -480 {
lab=GND}
N 160 -300 170 -300 {
lab=vdd}
N -150 -320 -140 -320 {
lab=ctrl}
N 10 -490 10 -480 {
lab=GND}
N 10 -560 10 -550 {
lab=ctrl}
N 160 -320 170 -320 {
lab=vcc}
N -190 -560 -190 -550 {
lab=vdd}
N -190 -490 -190 -480 {
lab=GND}
N 180 -240 180 -220 {
lab=GND}
N 180 -220 180 -160 {
lab=GND}
N 160 -260 180 -260 {
lab=GND}
N 180 -260 180 -240 {
lab=GND}
N 160 -280 240 -280 {
lab=out}
N 300 -280 340 -280 {
lab=out}
N 340 -280 380 -280 {
lab=out}
N 240 -280 300 -280 {
lab=out}
C {devices/code.sym} 350 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} 190 -560 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param mc_mm_switch=0
.control
tran 10p 100n
write tb_dac_drive.raw
*quit 0
.endc
.end
"}
C {devices/vsource.sym} -100 -520 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/gnd.sym} -100 -480 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -100 -560 2 1 {name=p5 sig_type=std_logic lab=vcc
}
C {devices/lab_pin.sym} 170 -300 2 0 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/gnd.sym} 180 -160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -150 -320 2 1 {name=p2 sig_type=std_logic lab=ctrl
}
C {devices/vsource.sym} 10 -520 0 0 {name=V3 value="PULSE(1.8 0 5n 0 0 10n 20n)" savecurrent=false}
C {devices/gnd.sym} 10 -480 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 10 -560 2 1 {name=p3 sig_type=std_logic lab=ctrl
}
C {devices/lab_pin.sym} 170 -320 2 0 {name=p7 sig_type=std_logic lab=vcc
}
C {devices/vsource.sym} -190 -520 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -190 -480 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -190 -560 2 1 {name=p8 sig_type=std_logic lab=vdd
}
C {dac_drive.sym} 10 -290 0 0 {name=x1}
C {devices/lab_pin.sym} 380 -280 2 0 {name=p1 sig_type=std_logic lab=out}
