```
magic
netgen
xschem
ngspice
magic -noconsole
netgen -noconsole
magic -dnull -noconsole
cat > test.tcl
magic -dnull -noconsole test.tcl
netgen -batch source test.tcl
xschem --tcl test.tcl -q
ngspice -b
/usr/local/lib/netgen/python/lvs_manager.py

mkdir inverter
cd inverter
mkdir xschem
mkdir mag
mkdir netgen
cd xschem
ln -s /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc
ln -s /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
cd ../mag
ln -s /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
cd ../netgen
ln -s /usr/local/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl

cd ../xschem
xschem

cd ../mag
magic
magic -d XR
magic -d OGL

cd ../xschem
cd ../mag
magic -d XR
/usr/local/share/pdk/scripts/cleanup_unref.py -remove .
cd ../netgen
netgen -batch lvs "../mag/inverter.spice inverter" "~/.xschem/simulations/inverter.spice inverter" 

cd ../mag
magic -d XR inverter
nvim inverter.spice
cp ~/.xschem/simulations/inverter_tb.spice .
nvim inverter_tb.spice
cp ../xschem/.spiceinit .
```

