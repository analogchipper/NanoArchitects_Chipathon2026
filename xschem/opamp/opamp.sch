v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -10 110 50 {lab=#net1}
N -50 -10 -50 50 {lab=#net2}
N -50 -70 -50 -40 {lab=vdd}
N 110 -70 110 -40 {lab=vdd}
N 40 110 40 200 {lab=#net3}
N -50 110 40 110 {lab=#net3}
N 40 110 110 110 {lab=#net3}
N 40 230 40 280 {lab=gnd}
N 0 210 0 230 {lab=vbias}
N 0 170 270 170 {lab=vbias}
N 270 210 270 230 {lab=vbias}
N 40 280 310 280 {lab=gnd}
N -50 10 20 10 {lab=#net2}
N 20 -40 20 10 {lab=#net2}
N -10 -40 70 -40 {lab=#net2}
N -50 -70 220 -70 {lab=vdd}
N 310 60 310 200 {lab=out}
N 310 50 310 60 {lab=out}
N 110 20 270 20 {lab=#net1}
N 310 -70 310 20 {lab=vdd}
N 220 -70 300 -70 {lab=vdd}
N 300 -70 310 -70 {lab=vdd}
N -20 230 0 230 {lab=vbias}
N -130 80 -90 80 {lab=vn}
N 150 80 150 120 {lab=vp}
N 30 -100 30 -70 {lab=vdd}
N 170 280 170 300 {lab=gnd}
N 310 110 410 110 {lab=out}
N -50 80 110 80 {lab=gnd}
N 90 80 90 280 {lab=gnd}
N 140 20 140 60 {lab=#net1}
N 280 60 310 60 {lab=out}
N 140 60 150 60 {lab=#net1}
N 210 60 220 60 {lab=#net4}
N 150 120 190 120 {lab=vp}
N 20 -100 30 -100 {lab=vdd}
N 310 260 310 280 {lab=gnd}
N 310 230 340 230 {lab=gnd}
N 340 230 340 280 {lab=gnd}
N 310 280 340 280 {lab=gnd}
N 0 170 0 210 {lab=vbias}
N 270 170 270 210 {lab=vbias}
N 180 80 180 100 {lab=gnd}
N 180 100 180 280 {lab=gnd}
C {symbols/nfet_03v3.sym} 20 230 0 0 {name=M1
L=6u
W=80u
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
C {symbols/pfet_03v3.sym} -30 -40 0 1 {name=M2
L=1u
W=26u
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
C {symbols/nfet_03v3.sym} 290 230 0 0 {name=M3
L=0.7u
W=78u
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
C {symbols/nfet_03v3.sym} -70 80 0 0 {name=M4
L=4u
W=60u
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
C {symbols/nfet_03v3.sym} 130 80 0 1 {name=M5
L=4u
W=60u
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
C {symbols/pfet_03v3.sym} 90 -40 0 0 {name=M6
L=1u
W=26u
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
C {symbols/pfet_03v3.sym} 290 20 0 0 {name=M7
L=0.3u
W=72u
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
C {ipin.sym} 170 300 0 0 {name=p1 lab=gnd}
C {iopin.sym} 410 110 0 0 {name=p2 lab=out}
C {ipin.sym} -20 230 0 0 {name=p3 lab=vbias}
C {ipin.sym} 190 120 2 0 {name=p4 lab=vp}
C {ipin.sym} -130 80 2 1 {name=p5 lab=vn}
C {ipin.sym} 20 -100 0 0 {name=p6 lab=vdd}
C {symbols/ppolyf_u_1k.sym} 180 60 3 0 {name=R1
W=3e-6
L=6.6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} 250 60 1 0 {name=C1
W=20e-6
L=20e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
