v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 115 380 115 420 {}
T {Sensor Input} 55 350 0 0 0.4 0.4 {}
N 210 450 280 450 {lab=#net1}
N 210 490 280 490 {lab=vp}
N 210 535 280 535 {lab=vbias}
N 370 380 370 430 {lab=vdd}
N 370 540 370 570 {lab=0}
N 520 480 550 480 {lab=out}
N 355 105 375 105 {lab=#net1}
N 435 105 465 105 {lab=out}
N 60 450 90 450 {lab=vn}
N 150 450 210 450 {lab=#net1}
N 530 270 530 480 {lab=out}
N 210 170 210 270 {lab=#net1}
N 405 -5 425 -5 {lab=reset}
N 405 35 405 55 {lab=reset}
N 405 55 405 65 {lab=reset}
N 405 -5 405 35 {lab=reset}
N 465 105 485 105 {lab=out}
N 210 270 210 450 {lab=#net1}
N 210 270 300 270 {lab=#net1}
N 405 105 405 190 {lab=0}
N 485 105 530 105 {lab=out}
N 530 105 530 270 {lab=out}
N 210 105 210 170 {lab=#net1}
N 210 105 355 105 {lab=#net1}
N 415 270 530 270 {lab=out}
N 300 270 355 270 {lab=#net1}
N 480 480 520 480 {lab=out}
C {ipin.sym} 210 535 0 0 {name=p1 lab=vbias}
C {ipin.sym} 210 490 0 0 {name=p2 lab=vp}
C {ipin.sym} 60 450 0 0 {name=p3 lab=vn}
C {ipin.sym} 370 380 0 0 {name=p4 lab=vdd}
C {iopin.sym} 550 480 0 0 {name=p5 lab=out}
C {gnd.sym} 370 570 0 0 {name=l1 lab=0}
C {capa.sym} 385 270 3 0 {name=C2
m=1
value=33n
footprint=1206
device="ceramic capacitor"}
C {symbols/nfet_03v3.sym} 405 85 3 1 {name=M1
L=0.28u
W=5u
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
C {ipin.sym} 425 -5 2 0 {name=p10 lab=reset}
C {gnd.sym} 405 190 1 0 {name=l3 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 370 490 0 0 {name=x1}
C {res.sym} 120 450 3 0 {name=R3
value="R"
footprint=1206
device=resistor
m=1}
