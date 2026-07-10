v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -110 -370 -110 {lab=vbias}
N -410 -130 -370 -130 {lab=vp}
N -220 -210 -220 -180 {lab=vdd}
N -420 -150 -370 -150 {lab=vn}
N -110 -310 -40 -310 {lab=out}
N -270 -310 -170 -310 {lab=vn}
N -390 -300 -390 -150 {lab=vn}
N -40 -380 -40 -310 {lab=out}
N -110 -380 -40 -380 {lab=out}
N -270 -380 -170 -380 {lab=vn}
N -270 -380 -270 -310 {lab=vn}
N -390 -310 -390 -300 {lab=vn}
N -390 -310 -270 -310 {lab=vn}
N -70 -130 -30 -130 {lab=out}
N -40 -140 -40 -130 {lab=out}
N -220 -70 -220 -50 {lab=gnd}
N -40 -310 -40 -140 {lab=out}
N -230 -50 -220 -50 {lab=gnd}
N -150 -270 -140 -270 {lab=gnd}
N -140 -290 -140 -270 {lab=gnd}
C {iopin.sym} -30 -130 0 0 {name=p2 lab=out}
C {ipin.sym} -390 -110 0 0 {name=p3 lab=vbias}
C {ipin.sym} -410 -130 0 0 {name=p4 lab=vp}
C {ipin.sym} -220 -210 0 0 {name=p6 lab=vdd}
C {ipin.sym} -420 -150 0 0 {name=p1 lab=vn}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} -220 -120 0 0 {name=x1}
C {symbols/ppolyf_u_1k.sym} -140 -310 3 0 {name=q
W=3e-6
L=21e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f5fF.sym} -140 -380 1 0 {name=C4
W=77.5e-6
L=77.5e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {ipin.sym} -230 -50 0 0 {name=p5 lab=gnd}
C {ipin.sym} -150 -270 0 0 {name=p7 lab=gnd}
