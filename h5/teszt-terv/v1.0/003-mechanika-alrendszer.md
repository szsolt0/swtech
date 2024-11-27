# Játék mechanika alrendszer tesztek

## Automatikus tesztek

### Támadás kalkuláció teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a támadások        | Az entitások `get_attacked()`     |
| kalkulációja a rendszerben az SRS | függvényét hívjuk meg előre       |
| dokumentációban leírt             | definiált, manuálisan kalkulált   |
| specifikációk szerint történik-e. | paraméterekkel. A teszt           |
|                                   | összehasonlítja az entitás új     |
|                                   | állapotát az előre kézzel         |
|                                   | kiszámolt elvárt eredménnyel.     |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | entitás új állapota pontosan meg  |
|                                   | kell egyezzen a kézzel számított  |
|                                   | referenciaértékekkel.             |
+-----------------------------------+-----------------------------------+



### Stat kalkuláció teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a `Stat` típusú    | Több `Stat` típusó objektum kerül |
| objektumok "összeadása" a         | összeadásra az `add()` függvényt  |
| megfelelő eredményt adja.         | használva. A teszt során a        |
|                                   | keletkező `Stat` objektumok       |
|                                   | értékeit összehasonlítjuk a       |
|                                   | kézzel előre kalkulált            |
|                                   | referenciaértékekkel.             |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | keletkezett `Stat` objektumok     |
|                                   | értékeinek pontosan meg kell      |
|                                   | egyezniük a kézzel számított      |
|                                   | referenciaértékekkel.             |
+-----------------------------------+-----------------------------------+



### Stat kalkuláció teszt 2



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az entitás         | Az entitások `base_stat` értékei  |
| `current_stat` értékei (azaz az   | és egyéb releváns tulajdonságai   |
| entitások jelenlegi stat-jai, a   | előre definiálva lesznek.         |
| stat módosító tényezőkkel együtt) | Emellett az entitások különféle,  |
| kiszámítása a rendszerben az SRS  | stat-okat módosító item-eket      |
| dokumentációban rögzített         | fognak hordozni. A teszt során az |
| specifikációknak megfelelően      | entitások `current_stat` értékeit |
| történik-e.                       | összehasonlítjuk a kézzel előre   |
|                                   | kalkulált referenciaértékekkel.   |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | entitás `current_stat` értékeinek |
|                                   | pontosan meg kell egyezniük a     |
|                                   | kézzel számított                  |
|                                   | referenciaértékekkel.             |
+-----------------------------------+-----------------------------------+



### Párhuzamos item felvétel teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy két entitás nem    | Két különböző `FightEntity`       |
| képes egyszerre felvenni ugyanazt | entitás számára meghívjuk a       |
| az item-et, elkerülve a           | `try_pick_up_item()` függvényt    |
| versenyhelyzetből adódó hibákat.  | ugyanarra az item-re, minimális   |
|                                   | időeltéréssel. A szituációt úgy   |
|                                   | hozzuk létre, hogy az entitásokat |
|                                   | fizikailag közel helyezzük el     |
|                                   | egymáshoz, és gyorsan             |
|                                   | `ItemEntity`-ket spawn-olunk a    |
|                                   | környezetükben. A teszt végén     |
|                                   | ellenőrizzük, hogy egyik entitás  |
|                                   | inventory-jában sincs ugyanaz az  |
|                                   | item többször.                    |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Egyik   |
|                                   | entitás sem veheti fel kétszer    |
|                                   | ugyanazt az item-et, és nem       |
|                                   | fordulhat elő versenyhelyzet      |
|                                   | miatti duplikáció.                |
+-----------------------------------+-----------------------------------+



### Párhuzamos támadás teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy egymással közeli   | Több konkurens támadást hajtunk   |
| időben bekövetkező támadások      | végre egyetlen `FightEntity`      |
| sorrendje helyes, és a rendszer   | entitás ellen. A támadások        |
| elkerüli a nem-atomikus konkurens | intenzitása és sebessége          |
| módosításokból eredő              | jelentősen meghaladja a normál    |
| adatinkonzisztenciát.             | játékmenet során elvárható        |
|                                   | szintet, ezzel szimulálva extrém  |
|                                   | terhelési körülményeket.          |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | támadások hatása és sorrendje     |
|                                   | pontosan egyezik az előre         |
|                                   | meghatározott                     |
|                                   | referenciaértékekkel.             |
+-----------------------------------+-----------------------------------+



### Friendly fire teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Ellenőrzi, hogy az egymással      | Az entitások megpróbálják         |
| "friendly fire" kapcsolatban álló | megtámadni azokat az entitásokat, |
| entitások nem tudnak kárt okozni  | amelyekkel "friendly fire"        |
| egymásnak.                        | kapcsolatban állnak.              |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | entitások nem okozhatnak sérülést |
|                                   | a "friendly fire" viszonyban lévő |
|                                   | társaknak.                        |
+-----------------------------------+-----------------------------------+



## Manuális tesztek

### Item eldobás teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy amikor a játékos   | A tesztelő eldob egy item-et,     |
| eldob egy item-et, az megfelelő   | majd manuálisan ellenőrzi, hogy a |
| ikonú item entitásként jelenik    | létrejött entitás ikonja          |
| meg a játék világában.            | megfelel-e az eldobott item-nek.  |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | eldobott item megfelelő ikonú     |
|                                   | entitásként jön létre.            |
+-----------------------------------+-----------------------------------+



### Támadás bekövetkezés teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a játékos által    | A teszt során a játékos különböző |
| kezdeményezett támadások          | típusú fegyverekkel (közeli,      |
| megfelelően bekövetkeznek, és a   | távoli, és "area of effect")      |
| támadások hatásai helyesen        | támad ellenséges entitásokat,     |
| kerülnek alkalmazásra.            | miközben ő maga is támadások      |
|                                   | célpontja lesz. A debugger        |
|                                   | segítségével ellenőrizzük, hogy   |
|                                   | minden támadás megfelelő módon    |
|                                   | hajtódik végre és a várható       |
|                                   | hatások bekövetkeznek.            |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Minden  |
|                                   | támadás pontosan az elvárásoknak  |
|                                   | megfelelően következik be, és a   |
|                                   | hatások helyesen jelennek meg.    |
+-----------------------------------+-----------------------------------+



### Irányítás teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a játékos által    | A teszt során a tesztelő az adott |
| generált beviteli jelek (például  | vezérlő eszköz (billentyűzet,     |
| mozgás, támadás gomb) megfelelő   | egér, kontroller) segítségével    |
| akciókat váltanak-e ki, hogy a    | különböző beviteli jeleket        |
| hibás bemenetek (például          | generál. A teszt során            |
| egyszerre előre és hátra mozgás)  | szándékosan hibás bemeneteket is  |
| nem okoznak problémát, valamint   | adunk, például ellentétes irányú  |
| hogy a bemenetek és azok hatásai  | mozgás parancsokat. A játékbeli   |
| között nincs észrevehető          | vizuális visszajelzések alapján a |
| késleltetés.                      | tesztelő ellenőrzi, hogy a        |
|                                   | bemenetek megfelelő akciókat      |
|                                   | váltanak ki, illetve nincs-e      |
|                                   | észrevehető késés.                |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | összes bemenet pontosan a hozzá   |
|                                   | rendelt műveletet hajtja végre, a |
|                                   | hibás bemenetek nem okoznak nem   |
|                                   | várt problémát, és a bemenetek    |
|                                   | hatása késedelem nélkül jelenik   |
|                                   | meg.                              |
+-----------------------------------+-----------------------------------+



### Őrültség teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Vizsgálja, hogy az őrült          | A teszt során a tesztelő          |
| állapotban lévő játékosok         | manuálisan őrült állapotba        |
| (`is_insane` attribútum igaz)     | állítja a játékost, például       |
| viselkedése és a kapcsolódó       | fejlesztői konzol vagy debugger   |
| mechanikák az SRS dokumentációban | használatával, hogy felgyorsítsa  |
| meghatározottak szerint           | a folyamatot. Ezután minden egyes |
| működnek-e, valamint ellenőrzi az | őrültségi típus (összesen négy)   |
| őrültségből való helyreállítás    | esetében megfigyeli a játékos     |
| folyamatának helyességét.         | viselkedését, például az          |
|                                   | irányítás, a mozgás, a támadások  |
|                                   | és egyéb akciók tekintetében.     |
|                                   | Emellett ellenőrzi, hogy az       |
|                                   | őrültség megszüntetése (az SP     |
|                                   | értékének maximálisra töltésével) |
|                                   | pontosan és az elvárt módon       |
|                                   | történik-e.                       |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | őrült állapot minden esetben az   |
|                                   | SRS dokumentációban meghatározott |
|                                   | viselkedési minták szerint        |
|                                   | zajlik, és az őrültség            |
|                                   | megszüntetése hibátlanul          |
|                                   | végrehajtódik.                    |
+-----------------------------------+-----------------------------------+



### Ellenséges AI teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Vizsgálja, hogy az ellenséges     | A teszt során a tesztelő          |
| entitások megfelelően reagálnak-e | különböző helyszíneken és         |
| a játékos jelenlétére, valamint   | szituációkban lép interakcióba az |
| ellenőrzi, hogy a nehézségi       | ellenséges entitásokkal.          |
| szintek közötti eltérések         | Összehasonlítja ezek viselkedését |
| megfelelő arányban vannak-e, és a | az SRS dokumentációban            |
| harc dinamikája                   | meghatározott specifikációkkal.   |
| kiegyensúlyozott-e.               | Olyan zónákban is elvégzi a       |
|                                   | tesztelést, ahol az ellenségek    |
|                                   | szintje a játékos szintjéhez      |
|                                   | igazodik. Figyeli, hogy az        |
|                                   | ellenségek képességei, támadási   |
|                                   | stratégiái és szintjük a játékos  |
|                                   | aktuális szintjéhez képest        |
|                                   | kiegyensúlyozottak-e, és hogy a   |
|                                   | harc tisztességes és élvezetes-e  |
|                                   | mindkét fél számára.              |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | ellenséges entitások pontosan az  |
|                                   | SRS dokumentációban leírt módon   |
|                                   | működnek, a szintjük és           |
|                                   | képességeik megfelelően           |
|                                   | illeszkednek a játékos            |
|                                   | szintjéhez, valamint a harc       |
|                                   | minden esetben kiegyensúlyozott   |
|                                   | és a játékmenet szempontjából     |
|                                   | élvezetes.                        |
+-----------------------------------+-----------------------------------+



### NPC interakció és quest rendszer teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az NPC-vel való    | A tesztelő NPC-kkel lép           |
| interakció, a küldetések kiadása, | interakcióba, különböző           |
| elfogadása és teljesítése a       | küldetéseket fogad el és          |
| rendszerterv szerint történik-e,  | teljesít. Az interakciók során    |
| valamint hogy a nem teljesíthető  | megfigyeli, hogy a küldetések     |
| állapotban lévő küldetések nem    | állapotváltozásai (elfogadás,     |
| aktiválhatók véletlenül.          | teljesítés, jutalom kiosztás)     |
|                                   | helyesen zajlanak-e. A teszt      |
|                                   | során mesterséges körülmények     |
|                                   | között (pl. konzol parancsokkal)  |
|                                   | módosíthatja a küldetések         |
|                                   | állapotát, hogy gyorsabban        |
|                                   | tesztelhesse az összes            |
|                                   | lehetőséget. Különös figyelmet    |
|                                   | fordít arra, hogy:                |
|                                   |                                   |
|                                   | -   Nem teljesített küldetés      |
|                                   |     esetén az NPC ne adhassa ki a |
|                                   |     küldetés jutalmát.            |
|                                   |                                   |
|                                   | -   Már befejezett küldetés ne    |
|                                   |     legyen ismét elfogadható,     |
|                                   |     hacsak a rendszer nem engedi  |
|                                   |     azt szabályosan.              |
|                                   |                                   |
|                                   | -   Mellékküldetések egyedi       |
|                                   |     szabályai szerint történjenek |
|                                   |     az interakciók.               |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az      |
|                                   | NPC-k megfelelően adják ki a      |
|                                   | küldetéseket, kezelik azok        |
|                                   | állapotait, és minden egyes       |
|                                   | interakció pontosan az SRS        |
|                                   | dokumentációban meghatározott     |
|                                   | módon zajlik le. A teszt akkor    |
|                                   | számít sikeresnek, ha az összes   |
|                                   | vizsgált küldetésfolyamat         |
|                                   | hibamentesen működik.             |
+-----------------------------------+-----------------------------------+
