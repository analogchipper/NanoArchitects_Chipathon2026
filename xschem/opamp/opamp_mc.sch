v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 670 -180 1470 220 {flags=graph
y1=0.004
y2=0.014
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5e+08
x2=8.5e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="vp
out"}
N 270 0 290 0 {lab=vbias}
N 250 -20 290 -20 {lab=vp}
N 440 -100 440 -70 {lab=vdd}
N -130 -150 -130 -130 {lab=vdd}
N -130 -60 -130 -50 {lab=0}
N -130 -70 -130 -60 {lab=0}
N -10 -150 -10 -130 {lab=vbias}
N -10 -60 -10 -50 {lab=0}
N -10 -70 -10 -60 {lab=0}
N 60 -50 60 -40 {lab=0}
N 60 -60 60 -50 {lab=0}
N 60 -150 60 -120 {lab=vp}
N 60 -150 70 -150 {lab=vp}
N 440 40 440 60 {lab=0}
N 590 -150 590 -20 {lab=out}
N 340 -150 590 -150 {lab=out}
N 250 -40 290 -40 {lab=out}
N 590 -20 600 -20 {lab=out}
N 240 -150 340 -150 {lab=out}
N 240 -150 240 -40 {lab=out}
N 240 -40 250 -40 {lab=out}
C {devices/code_shown.sym} -760 -640 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
"}
C {iopin.sym} 600 -20 0 0 {name=p2 lab=out}
C {ipin.sym} 270 0 0 0 {name=p3 lab=vbias}
C {ipin.sym} 250 -20 0 0 {name=p4 lab=vp}
C {ipin.sym} 440 -100 0 0 {name=p6 lab=vdd}
C {vsource.sym} -130 -100 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -130 -150 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} -130 -50 0 0 {name=l2 lab=0}
C {vsource.sym} -10 -100 0 0 {name=V2 value=1 savecurrent=false}
C {lab_pin.sym} -10 -150 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {gnd.sym} -10 -50 0 0 {name=l3 lab=0}
C {lab_pin.sym} 70 -150 0 1 {name=p10 sig_type=std_logic lab=vp}
C {code_shown.sym} 150 -1180 0 0 {name=NGSPICE only_toplevel=false value="
.param sw_stat_mismatch=1
.param sw_stat_global=0
.param
+ w1=80u     
+ l1=6u
+ w2=26u     
+ l2=1u
+ w3=78u   
+ l3=0.7u
+ w4=60u     
+ l4=4u
+ w5=60u    
+ l5=4u
+ w6=26u     
+ l6=1u
+ w7=72u  
+ l7=0.3u
.control
let mc_runs = 100
let runvec = unitvec(mc_runs)     ; x-axis: 1,1,1... need real indices below
let run = 0
let offsets = vector(mc_runs)

dowhile run < mc_runs
  reset
  op
  let offsets[run] = (v(vp) - v(out)) * 1000
  let run = run + 1
end

* Build a proper x-axis (run index 1..100)
let idx = unitvec(mc_runs)
let idx = idx * 0
let k = 0
dowhile k < mc_runs
  let idx[k] = k + 1
  let k = k + 1
end

print offsets

* Plot vs run number explicitly
plot offsets vs idx xlabel 'Monte Carlo Run' ylabel 'Offset Voltage (mV)' title 'Op-Amp Random Offset'

* Histogram view is usually more useful for MC than a run-index scatter
hist offsets

* Optional: dump to file for post-processing in Python/Excel
wrdata mc_offsets.txt offsets
.endc
"}
C {vsource.sym} 60 -90 0 0 {name=V5 value=0.97 savecurrent=false}
C {gnd.sym} 60 -40 0 0 {name=l8 lab=0}
C {gnd.sym} 440 60 0 0 {name=l7 lab=0}
C {GF180/xschem/Chipathon/OpAMP_Silicon/opamp_poly.sym} 440 -10 0 0 {name=x1}
C {launcher.sym} 510 260 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/opamp_mc.raw tran"
}
