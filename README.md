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


| Name                     | Path                           |
|--------------------------|--------------------------------|
| KICAD6_NSL_DIR    | "path to kicad-lib respository folder" |

3. KiCad -> Manage Symbol Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder

Ex.:

![imatge](https://user-images.githubusercontent.com/33161309/214277205-10214f6f-36db-4ddc-a536-5cdb4c78060d.png)


5. Kicad -> Manage Footprint Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder

Ex.:

![imatge](https://user-images.githubusercontent.com/33161309/214279883-be8d7a30-d2a7-4698-a9a9-e2a65efdd84a.png)



ET VOILÀ !

