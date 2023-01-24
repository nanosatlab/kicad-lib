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
2. Add row:


| Name                     | Path                           |
|--------------------------|--------------------------------|
| KICAD6_NSL_DIR    | "path to kicad-nsl-lib folder" |

3. KiCad -> Manage Symbol Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder

Ex.:

![imatge](https://user-images.githubusercontent.com/33161309/214274315-174e8efe-f067-49c7-a250-fc4dde66d397.png)

5. Kicad -> Manage Footprint Libraries -> Global Libraries -> Add empty row -> Add path and name to each library folder

Ex.:

![imatge](https://user-images.githubusercontent.com/33161309/214274817-dc3dd36c-b91c-41e4-8973-d535a1ecfd1a.png)


ET VOILÀ !


## How to add new components to a library?
