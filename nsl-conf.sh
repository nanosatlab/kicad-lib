echo "KiCad 7 configuration for UPC-NSL"

#Path to KiCad's symbol table
PATH_SYM=~/.config/kicad/7.0/sym-lib-table

#Path to KiCad's footrpint table
PATH_FP=~/.config/kicad/7.0/fp-lib-table

#Test path to kicad-lib
#PATH_SYM=~/dev/kicad-lib/sym-lib-table
#PATH_FP=~/dev/kicad-lib/fp-lib-table

echo "Is KiCad config file in default location (~/.config/kicad/7.0/)? [y/n]]"
read response
if [ "$response" != "y" ]; then
        echo "you need to edit the path in nsl-conf.sh"
        exit
fi

COUNT="$(grep -i -c nsl $PATH_SYM)"
if [ $COUNT == '0' ]; then
        sed -i '$i (lib (name "mcu-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/mcu-nsl/mcu-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "miscellaneous-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/miscelaneous-nsl/miscelaneous-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "passive-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/passive-nsl/passive-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "power-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/power-nsl/power-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "rf-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/rf-nsl/rf-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "sensor-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/sensor-nsl/sensor-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
        sed -i '$i (lib (name "symbols-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/symbols-nsl/symbols-nsl.kicad_sym")(options "")(descr ""))' $PATH_SYM
else
        echo "symbol library configuration already done"
fi 

COUNT="$(grep -i -c nsl $PATH_FP)"
if [ $COUNT == '0' ]; then
        sed -i '$i (lib (name "mcu-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/mcu-nsl/mcu-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "miscellaneous-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/miscelaneous-nsl/miscelaneous-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "passive-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/passive-nsl/passive-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "power-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/power-nsl/power-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "rf-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/rf-nsl/rf-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "sensor-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/sensor-nsl/sensor-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
        sed -i '$i (lib (name "symbols-nsl")(type "KiCad")(uri "${KICAD_NSL_DIR}/symbols-nsl/symbols-nsl.kicad_sym")(options "")(descr ""))' $PATH_FP
else
        echo "footprint library configuration already done"
fi 

#        cat $PATH_SYM
#        cat $PATH_FP