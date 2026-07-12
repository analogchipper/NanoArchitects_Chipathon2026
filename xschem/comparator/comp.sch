v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 400 300 430 300 {lab=comp_ref}
N 700 110 860 110 {lab=#net1}
N 860 110 860 290 {lab=#net1}
N 1020 260 1020 330 {lab=#net2}
N 1235 270 1235 340 {lab=#net3}
N 1155 370 1195 370 {lab=#net2}
N 1155 240 1155 370 {lab=#net2}
N 1155 240 1195 240 {lab=#net2}
N 860 290 930 290 {lab=#net1}
N 930 290 960 290 {lab=#net1}
N 960 230 960 290 {lab=#net1}
N 960 230 980 230 {lab=#net1}
N 960 290 960 360 {lab=#net1}
N 960 360 980 360 {lab=#net1}
N 1020 200 1020 230 {lab=vdd}
N 1020 360 1020 390 {lab=gnd}
N 1235 370 1235 400 {lab=gnd}
N 1020 390 1020 410 {lab=gnd}
N 1235 400 1235 420 {lab=gnd}
N 1020 170 1020 200 {lab=vdd}
N 1235 170 1235 210 {lab=vdd}
N 1235 210 1235 240 {lab=vdd}
N 1235 290 1415 290 {lab=#net3}
N 700 370 700 390 {lab=gnd}
N 700 180 700 230 {lab=vdd}
N 585 345 610 345 {lab=vbias}
N 585 260 605 260 {lab=vn}
N 605 260 610 260 {lab=vn}
N 490 300 605 300 {lab=#net4}
N 510 110 510 300 {lab=#net4}
N 510 110 635 110 {lab=#net4}
N 635 110 640 110 {lab=#net4}
N 810 290 860 290 {lab=#net1}
N 1020 290 1155 290 {lab=#net2}
N 670 130 670 150 {lab=gnd}
N 460 320 460 335 {lab=gnd}
N 605 300 610 300 {lab=#net4}
N 1495 260 1495 330 {lab=comp_out}
N 1415 360 1455 360 {lab=#net3}
N 1415 230 1415 360 {lab=#net3}
N 1415 230 1455 230 {lab=#net3}
N 1495 360 1495 390 {lab=gnd}
N 1495 390 1495 410 {lab=gnd}
N 1495 160 1495 200 {lab=vdd}
N 1495 200 1495 230 {lab=vdd}
N 1495 290 1535 290 {lab=comp_out}
C {ipin.sym} 585 260 0 0 {name=p1 lab=vn}
C {ipin.sym} 585 345 0 0 {name=p3 lab=vbias}
C {ipin.sym} 700 180 0 0 {name=p4 lab=vdd}
C {ipin.sym} 400 300 0 0 {name=p9 lab=comp_ref}
C {symbols/nfet_03v3.sym} 1000 360 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 1000 230 0 0 {name=M2
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 1215 370 0 0 {name=M5
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 1215 240 0 0 {name=M6
L=0.28u
W=0.22u
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
C {iopin.sym} 1535 290 0 0 {name=p13 lab=comp_out}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 700 300 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} 460 300 3 0 {name=R3
W=1e-6
L=20e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 670 110 3 0 {name=R1
W=1e-6
L=500e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} 700 390 0 0 {name=p5 lab=gnd}
C {lab_pin.sym} 1020 170 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1235 170 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1020 410 0 0 {name=p8 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1235 420 0 0 {name=p6 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 670 150 0 0 {name=p10 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 460 335 0 0 {name=p11 sig_type=std_logic lab=gnd}
C {symbols/nfet_03v3.sym} 1475 360 0 0 {name=M3
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 1475 230 0 0 {name=M4
L=0.28u
W=0.22u
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
C {lab_pin.sym} 1495 160 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1495 410 0 0 {name=p14 sig_type=std_logic lab=gnd}
