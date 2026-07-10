v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -590 -160 -590 -30 {lab=#net1}
N -590 -30 -590 -20 {lab=#net1}
N -590 -50 -520 -50 {lab=#net1}
N -520 -50 -520 10 {lab=#net1}
N -550 10 -520 10 {lab=#net1}
N -520 10 -320 10 {lab=#net1}
N -280 -160 -280 -20 {lab=#net2}
N -280 -260 -280 -190 {lab=vdd}
N -590 -260 -590 -190 {lab=vdd}
N -380 -130 -280 -130 {lab=#net2}
N -380 -190 -380 -130 {lab=#net2}
N -550 -190 -320 -190 {lab=#net2}
N -590 -260 -280 -260 {lab=vdd}
N -160 -190 -160 -150 {lab=#net2}
N -280 -130 -160 -130 {lab=#net2}
N -160 -150 -160 -130 {lab=#net2}
N -120 -160 -120 -110 {lab=Vref}
N -280 -260 -120 -260 {lab=vdd}
N -120 -260 -120 -220 {lab=vdd}
N -120 -220 -120 -190 {lab=vdd}
N -280 120 -280 140 {lab=#net3}
N -280 40 -280 60 {lab=#net4}
N -590 50 -590 90 {lab=#net5}
N -590 40 -590 50 {lab=#net5}
N -630 10 -590 10 {lab=gnd}
N -280 10 -260 10 {lab=gnd}
N -120 60 -120 70 {lab=gnd}
N -120 -130 -100 -130 {lab=Vref}
N -100 -130 -90 -130 {lab=Vref}
N -390 -310 -390 -260 {lab=vdd}
N -400 -310 -390 -310 {lab=vdd}
N -590 240 -590 250 {lab=gnd}
N -590 250 -280 250 {lab=gnd}
N -280 200 -280 250 {lab=gnd}
N -280 250 -280 290 {lab=gnd}
N -590 210 -590 240 {lab=gnd}
N -590 100 -590 150 {lab=#net5}
N -590 90 -590 100 {lab=#net5}
N -650 180 -630 180 {lab=gnd}
N -650 180 -650 250 {lab=gnd}
N -650 250 -590 250 {lab=gnd}
N -340 170 -330 170 {lab=gnd}
N -340 170 -340 250 {lab=gnd}
N -330 170 -320 170 {lab=gnd}
N -800 -100 -800 -70 {lab=gnd}
N -800 -70 -800 -30 {lab=gnd}
N -800 -130 -380 -130 {lab=#net2}
N -1010 -260 -590 -260 {lab=vdd}
N -970 -210 -940 -210 {lab=vdd}
N -940 -260 -940 -210 {lab=vdd}
N -1010 -260 -1010 -240 {lab=vdd}
N -1040 -210 -1010 -210 {lab=gnd}
N -1010 -180 -1010 -100 {lab=#net6}
N -1010 -100 -840 -100 {lab=#net6}
N -1010 -100 -1010 -0 {lab=#net6}
N -970 60 -430 60 {lab=#net1}
N -430 10 -430 60 {lab=#net1}
N -1010 0 -1010 30 {lab=#net6}
N -1010 60 -1010 130 {lab=gnd}
N -120 30 -120 60 {lab=gnd}
N -160 -0 -160 50 {lab=gnd}
N -160 50 -120 50 {lab=gnd}
N -120 -50 -120 -30 {lab=#net7}
C {symbols/pfet_03v3.sym} -570 -190 0 1 {name=M2
L=4u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -300 -190 0 0 {name=M3
L=4u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -140 -190 0 0 {name=M4
L=4u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -570 10 0 1 {name=M13
L=2u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -300 10 0 0 {name=M14
L=2u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {res.sym} -120 -80 0 0 {name=R1
value=66k
footprint=1206
device=resistor
m=1}
C {res.sym} -280 90 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {ipin.sym} -280 290 0 0 {name=p1 lab=gnd}
C {lab_pin.sym} -630 10 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -260 10 2 0 {name=p4 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -120 70 0 0 {name=p5 sig_type=std_logic lab=gnd}
C {iopin.sym} -90 -130 0 0 {name=p7 lab=Vref}
C {ipin.sym} -400 -310 0 0 {name=p9 lab=vdd}
C {symbols/pnp_05p00x05p00.sym} -300 170 0 0 {name=Q1
model=pnp_05p00x05p00
spiceprefix=X
m=4}
C {symbols/pnp_05p00x05p00.sym} -610 180 0 0 {name=Q2
model=pnp_05p00x05p00
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} -820 -100 0 0 {name=M1
L=2u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -800 -30 0 0 {name=p10 sig_type=std_logic lab=gnd}
C {symbols/nfet_03v3.sym} -990 -210 0 1 {name=M5
L=0.5u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -1040 -210 0 0 {name=p11 sig_type=std_logic lab=gnd}
C {symbols/nfet_03v3.sym} -990 60 0 1 {name=M6
L=1u
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -1010 130 0 0 {name=p12 sig_type=std_logic lab=gnd}
C {symbols/pnp_05p00x05p00.sym} -140 0 0 0 {name=Q3
model=pnp_05p00x05p00
spiceprefix=X
m=1}
