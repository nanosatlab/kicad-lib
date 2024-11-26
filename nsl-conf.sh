echo "KiCad 7 configuration for UPC-NSL"

#Path to KiCad's symbol table
PATH_SYM=~/.var/app/org.kicad.KiCad/config/kicad/8.0/sym-lib-table

#Path to KiCad's footrpint table
PATH_FP=~/.var/app/org.kicad.KiCad/config/kicad/8.0/fp-lib-table



#Test path to kicad-lib
#PATH_SYM=~/dev/kicad-lib/sym-lib-table
#PATH_FP=~/dev/kicad-lib/fp-lib-table

echo "Is the KiCad library path configured and editors launched for first time? [y/n]]"
read response
if [ "$response" != "y" ]; then
        echo "Please do this first :)"
        echo "add a path to the kicad-lib folder with name KICAD_NSL_DIR"
	exit
fi

echo "Is KiCad config file in default location (~/.config/kicad/7.0/)? [y/n]]"
read response
if [ "$response" != "y" ]; then
        echo "you need to edit the path in nsl-conf.sh"
        exit
fi

# Install symbol libraries
COUNT="$(grep -i -c mcu-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
	sed -i '$i   (lib (name "mcu-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/mcu-nsl/mcu-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "mcu-nsl symbol library installed"
else echo "[WARNING]: mcu-nsl symbol library already installed"
fi

COUNT="$(grep -i -c miscellaneous-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "miscellaneous-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/miscellaneous-nsl/miscellaneous-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "miscellaneous-nsl symbol library installed"
else echo "[WARNING]: miscellaneous-nsl symbol library already installed"
fi

COUNT="$(grep -i -c passive-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "passive-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/passive-nsl/passive-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "passive-nsl symbol library installed"
else echo "[WARNING]: passive-nsl symbol library already installed"
fi

COUNT="$(grep -i -c power-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "power-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/power-nsl/power-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "power-nsl symbol library installed"
else echo "[WARNING]: power-nsl symbol library already installed"
fi

COUNT="$(grep -i -c rf-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "rf-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/rf-nsl/rf-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "rf-nsl symbol library installed"
else echo "[WARNING]: rf-nsl symbol library already installed"
fi

COUNT="$(grep -i -c sensor-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "sensor-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/sensor-nsl/sensor-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "sensor-nsl symbol library installed"
else echo "[WARNING]: sensor-nsl symbol library already installed"
fi

COUNT="$(grep -i -c symbols-nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "symbols-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/symbols-nsl/symbols-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
	echo "symbols-nsl symbol library installed"
else echo "[WARNING]: symbols-nsl symbol library already installed"
fi

# Install footprint libraries
COUNT="$(grep -i -c mcu-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "mcu-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/mcu-nsl/mcu-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "mcu-nsl footprint library installed"
else echo "[WARNING]: mcu-nsl footprint library already installed"
fi

COUNT="$(grep -i -c miscellaneous-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "miscellaneous-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/miscellaneous-nsl/miscellaneous-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "miscellaneous-nsl footprint library installed"
else echo "[WARNING]: miscellaneous-nsl footprint library already installed"
fi

COUNT="$(grep -i -c passive-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "passive-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/passive-nsl/passive-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "passive-nsl footprint library installed"
else echo "[WARNING]: passive-nsl footprint library already installed"
fi

COUNT="$(grep -i -c power-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "power-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/power-nsl/power-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "power-nsl footprint library installed"
else echo "[WARNING]: power-nsl footprint library already installed"
fi

COUNT="$(grep -i -c rf-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "rf-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/rf-nsl/rf-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "rf-nsl footprint library installed"
else echo "[WARNING]: rf-nsl footprint library already installed"
fi

COUNT="$(grep -i -c sensor-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "sensor-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/sensor-nsl/sensor-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "sensor-nsl footprint library installed"
else echo "[WARNING]: sensor-nsl footprint library already installed"
fi

COUNT="$(grep -i -c symbols-nsl $PATH_FP)"
if [ $COUNT == '0' ]; then 
        sed -i '$i   (lib (name "symbols-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/symbols-nsl/symbols-nsl.pretty")(options "")(descr ""))' $PATH_FP
	echo "symbols-nsl footprint library installed"
else echo "[WARNING]: symbols-nsl footprint library already installed"
fi


#        cat $PATH_SYM
#        cat $PATH_FP
