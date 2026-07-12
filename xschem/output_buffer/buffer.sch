v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 420 200 440 {lab=gnd}
N 340 340 360 340 {lab=vout}
N 350 240 350 340 {lab=vout}
N 310 340 340 340 {lab=vout}
N 70 310 110 310 {lab=vout}
N 70 240 70 310 {lab=vout}
N 70 210 350 210 {lab=vout}
N 200 260 200 280 {lab=vdd}
N 70 210 70 240 {lab=vout}
N 350 210 350 240 {lab=vout}
N 50 350 110 350 {lab=comp_ref}
N 50 395 110 395 {lab=vbias}
C {opin.sym} 360 340 0 0 {name=p1 lab=vout}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 200 350 0 0 {name=x1}
C {ipin.sym} 200 440 0 0 {name=p2 lab=gnd}
C {ipin.sym} 50 395 0 0 {name=p3 lab=vbias}
C {ipin.sym} 50 350 0 0 {name=p4 lab=input}
C {ipin.sym} 200 260 0 0 {name=p5 lab=vdd}
