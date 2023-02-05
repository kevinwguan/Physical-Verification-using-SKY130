v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 20 70 60 {
lab=GND}
N -80 40 -80 110 {
lab=GND}
N -80 110 70 110 {
lab=GND}
N 70 60 70 110 {
lab=GND}
N -10 80 -10 110 {
lab=GND}
N -10 -10 -10 20 {
lab=#net1}
N -10 -10 30 -10 {
lab=#net1}
N -80 -80 -80 -20 {
lab=#net2}
N -80 -80 70 -80 {
lab=#net2}
N 70 -80 70 -40 {
lab=#net2}
N 70 -10 90 -10 {
lab=GND}
N 90 -10 90 30 {
lab=GND}
N 70 30 90 30 {
lab=GND}
C {devices/vsource.sym} -80 10 0 0 {name=V1 value=1.8V}
C {devices/gnd.sym} 20 110 0 0 {name=l1 lab=GND}
C {devices/code.sym} -250 -20 0 0 {name=s1 only_toplevel=false value=".tran 1n 2u"}
C {devices/code_shown.sym} 260 -20 0 0 {name=s2 only_toplevel=false value="
.model nmos NMOS 
+W=10e-6 
+L=1e-6 
+KP=200e-6 
+VTO=1.0 
+LAMBDA=0.02 
+TNOM=27 
+TOX=4.1E-9 
+XJ=1E-7 
+U0=258.7497687 
+VSAT=9.851815E4 
+UC=5.583802E-11 
+A0=2 
+CGDO=8E-10 
+CGSO=8E-10 
+CJ=9.705893E-4 
+CGBO=1E-12 
+CJ=9.705893E-4 
+CGBO=1E-12
"}
C {devices/vsource_arith.sym} -10 50 0 0 {name=E1 VOL="'0.9*cos(time*time*time*1e11)+0.9'"}
C {devices/nmos4.sym} 50 -10 0 0 {name=M1 model=nmos w=5u l=0.18u del=0 m=1}
