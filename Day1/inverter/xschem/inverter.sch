v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 880 -1570 910 -1570 {
lab=in}
N 880 -1570 880 -1480 {
lab=in}
N 880 -1480 910 -1480 {
lab=in}
N 850 -1530 880 -1530 {
lab=in}
N 950 -1540 950 -1510 {
lab=out}
N 950 -1530 950 -1510 {
lab=out}
N 950 -1530 1040 -1530 {
lab=out}
N 950 -1450 950 -1410 {
lab=vss}
N 950 -1410 980 -1410 {
lab=vss}
N 950 -1630 950 -1600 {
lab=vdd}
N 950 -1630 970 -1630 {
lab=vdd}
N 950 -1480 960 -1480 {
lab=vss}
N 960 -1480 960 -1410 {
lab=vss}
N 950 -1570 960 -1570 {
lab=vdd}
N 960 -1630 960 -1570 {
lab=vdd}
C {devices/ipin.sym} 850 -1530 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 970 -1630 0 0 {name=p2 lab=vdd
}
C {devices/iopin.sym} 980 -1410 0 0 {name=p3 lab=vss}
C {devices/opin.sym} 1040 -1530 0 0 {name=p4 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 930 -1480 0 0 {name=M1
L=0.18
W=13.5
nf=3 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 930 -1570 0 0 {name=M2
L=0.18
W=9
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
