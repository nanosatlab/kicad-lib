# kicad-lib
Repository of the KiCad Libraries from NSL. 

Notice that many of the symbols are already included in KiCad libraries, it is prefereable to use generic symbols instead of custom ones.

You can add components at will. It is good practices that if you create/modify a component that can be useful to others you push it to the repository. To do so do a push request.

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
1. KiCad -> Preferences -> Path Configuration
2. Add row -> 

| Name                     | Path                                   |
|--------------------------|----------------------------------------|
| KICAD_NSL_DIR           | "path to kicad-lib respository folder" |

3. Execute nsl-conf.sh script

ET VOILÀ !
