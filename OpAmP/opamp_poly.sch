v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -370 300 -310 {lab=#net1}
N 140 -370 140 -310 {lab=#net2}
N 140 -430 140 -400 {lab=vdd}
N 300 -430 300 -400 {lab=vdd}
N 230 -250 230 -160 {lab=#net3}
N 140 -250 230 -250 {lab=#net3}
N 230 -250 300 -250 {lab=#net3}
N 230 -130 230 -80 {lab=gnd}
N 190 -150 190 -130 {lab=vbias}
N 190 -190 460 -190 {lab=vbias}
N 460 -150 460 -130 {lab=vbias}
N 230 -80 500 -80 {lab=gnd}
N 140 -350 210 -350 {lab=#net2}
N 210 -400 210 -350 {lab=#net2}
N 180 -400 260 -400 {lab=#net2}
N 140 -430 410 -430 {lab=vdd}
N 500 -300 500 -160 {lab=out}
N 500 -310 500 -300 {lab=out}
N 300 -340 460 -340 {lab=#net1}
N 500 -430 500 -340 {lab=vdd}
N 410 -430 490 -430 {lab=vdd}
N 490 -430 500 -430 {lab=vdd}
N 170 -130 190 -130 {lab=vbias}
N 60 -280 100 -280 {lab=vn}
N 340 -280 340 -240 {lab=vp}
N 220 -460 220 -430 {lab=vdd}
N 360 -80 360 -60 {lab=gnd}
N 500 -250 600 -250 {lab=out}
N 140 -280 300 -280 {lab=gnd}
N 280 -280 280 -80 {lab=gnd}
N 330 -340 330 -300 {lab=#net1}
N 470 -300 500 -300 {lab=out}
N 330 -300 340 -300 {lab=#net1}
N 400 -300 410 -300 {lab=#net4}
N 340 -240 380 -240 {lab=vp}
N 210 -460 220 -460 {lab=vdd}
N 500 -100 500 -80 {lab=gnd}
N 500 -130 530 -130 {lab=gnd}
N 530 -130 530 -80 {lab=gnd}
N 500 -80 530 -80 {lab=gnd}
N 190 -190 190 -150 {lab=vbias}
N 460 -190 460 -150 {lab=vbias}
N 370 -280 370 -260 {lab=gnd}
N 370 -260 370 -80 {lab=gnd}
C {symbols/nfet_03v3.sym} 210 -130 0 0 {name=M1
L="l1"
W="w1"
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
C {symbols/pfet_03v3.sym} 160 -400 0 1 {name=M2
L="l2"
W="w2"
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
C {symbols/nfet_03v3.sym} 480 -130 0 0 {name=M3
L="l3"
W="w3"
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
C {symbols/nfet_03v3.sym} 120 -280 0 0 {name=M4
L="l4"
W="w4"
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
C {symbols/nfet_03v3.sym} 320 -280 0 1 {name=M5
L="l5"
W="w5"
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
C {symbols/pfet_03v3.sym} 280 -400 0 0 {name=M6
L="l6"
W="w6"
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
C {symbols/pfet_03v3.sym} 480 -340 0 0 {name=M7
L="l7"
W="w7"
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
C {ipin.sym} 360 -60 0 0 {name=p1 lab=gnd}
C {iopin.sym} 600 -250 0 0 {name=p2 lab=out}
C {ipin.sym} 170 -130 0 0 {name=p3 lab=vbias}
C {ipin.sym} 380 -240 2 0 {name=p4 lab=vp}
C {ipin.sym} 60 -280 2 1 {name=p5 lab=vn}
C {ipin.sym} 210 -460 0 0 {name=p6 lab=vdd}
C {symbols/ppolyf_u_1k.sym} 370 -300 3 0 {name=R1
W=3e-6
L=6.6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 440 -300 1 0 {name=C1
W=20e-6
L=20e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
