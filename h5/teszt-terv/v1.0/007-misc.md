# Alrendszerhez nem tartozó tesztek

## Automatikus tesztek

### Crash log teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Vizsgálja, hogy a játék           | A teszt során a játékot           |
| összeomlása esetén a naplófájlok  | szándékosan összeomlásra          |
| (crash log) megfelelően és teljes | késztetjük különböző              |
| körűen generálódnak-e, valamint   | módszerekkel, például             |
| ellenőrzi, hogy a hibakeresést    | specifikusan hibás bemeneti       |
| segítő adatok (pl. core dump)     | adatokkal vagy szándékosan        |
| létrejönnek-e.                    | létrehozott hibás állapotokkal.   |
|                                   | Az összeomlás után ellenőrizzük,  |
|                                   | hogy a crash log fájlok és a core |
|                                   | dump fájlok létrejöttek-e,        |
|                                   | valamint megvizsgáljuk ezek       |
|                                   | tartalmát, hogy az esemény        |
|                                   | megfelelően dokumentálva van-e.   |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | összeomlást követően a crash log  |
|                                   | és a core dump fájlok hibátlanul  |
|                                   | létrejönnek, és azok tartalma     |
|                                   | pontosan tükrözi az összeomlás    |
|                                   | körülményeit.                     |
+-----------------------------------+-----------------------------------+



## Manuális tesztek

### Teljesítmény teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A játék futási teljesítményét     | A teszt során a tesztelő          |
| vizsgálja különböző körülmények   | különböző játékmeneti             |
| között.                           | tevékenységeket végez, miközben   |
|                                   | monitorozza a játék               |
|                                   | teljesítményére vonatkozó         |
|                                   | adatokat, például az FPS-t, a     |
|                                   | fizikai szimulációk számát        |
|                                   | másodpercenként, az entitások     |
|                                   | számát, valamint egyéb releváns   |
|                                   | mutatókat. Emellett a tesztelő    |
|                                   | saját szubjektív értékelése       |
|                                   | alapján is megítéli, hogy a játék |
|                                   | teljesítménye megfelel-e a        |
|                                   | zökkenőmentes és élvezetes        |
|                                   | játékmenet elvárásainak.          |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A teszt |
|                                   | sikeresnek minősül, ha az         |
|                                   | objektív mérések és a tesztelő    |
|                                   | szubjektív tapasztalatai alapján  |
|                                   | a játék teljesítménye kielégítő   |
|                                   | az élvezhető játékmenethez.       |
+-----------------------------------+-----------------------------------+



### Meta teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Ellenőrzi a meglévő tesztek       | A meglévő teszteket szándékosan   |
| helyességét azáltal, hogy         | hibás körülmények között          |
| szándékosan hibás környezetet     | futtatjuk, például a              |
| vagy hibás bemenetet generálunk.  | tesztkörnyezet manipulálásával    |
|                                   | vagy a bemeneti adatok            |
|                                   | megváltoztatásával. A cél annak   |
|                                   | vizsgálata, hogy a tesztek        |
|                                   | képesek-e a hibás állapotokat     |
|                                   | megfelelően detektálni.           |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | tesztek pontosan érzékelik a      |
|                                   | hibákat, és ennek megfelelő       |
|                                   | hibajelzést generálnak.           |
+-----------------------------------+-----------------------------------+
