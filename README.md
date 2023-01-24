# kicad-lib
Repository of the KiCad Libraries from NSL.

## Library structure

- connector-nsl
- mcu-nsl
- miscelaneous-nsl
- passive-nsl
- power-nsl
- rf-nsl
- sensor-nsl
- symbols-nsl

## How to add the libraries to KiCad?
1. KiCad -> Preferences -> Path COnfiguration
2. Add:


| Name                     | Path                           |
|--------------------------|--------------------------------|
| KICAD6_SYMBOL_DIR_NSL    | "path to kicad-nsl-lib folder" |
| KICAD6_FOOTPRINT_DIR_NSL | "path to kicad-nsl-lib folder" |
| KICAD6_3DMODEL_DIR_NSL   | "path to kicad-nsl-lib folder" |

3. KiCad -> Manage Symbol Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder
4. Kicad -> Manage Footprint Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder


## How to add new components to a library?
