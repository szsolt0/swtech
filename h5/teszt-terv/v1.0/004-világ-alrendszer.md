# Világ alrendszer tesztek

## Automatikus tesztek

### Térkép generálása és validálása



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Annak ellenőrzése, hogy a         | A rendszer automatikusan generál  |
| generált térkép megfelel-e az     | egy térképet, majd összeveti a    |
| előre definiált szabályoknak.     | generált elemeket (pl. akadályok, |
|                                   | utak, erőforrások) az előre       |
|                                   | meghatározott paraméterekkel. Ha  |
|                                   | az elemek helyesek és összhangban |
|                                   | vannak a szabályokkal, a teszt    |
|                                   | sikeres.                          |
+-----------------------------------+-----------------------------------+



### NPC-k helyes spawnolása



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A nem játékos karakterek (NPC-k)  | A rendszer véletlenszerű          |
| a megfelelő helyeken és           | helyszíneken spawnolja az         |
| mennyiségben jelennek-e meg.      | NPC-ket, majd ellenőrzi a         |
|                                   | spawnolási pozíciókat és          |
|                                   | számukat. Az eredményeket az      |
|                                   | elvárt adatokkal hasonlítjuk      |
|                                   | össze. Ha az NPC-k a megadott     |
|                                   | helyeken és számban jelennek meg, |
|                                   | a teszt sikeres.                  |
+-----------------------------------+-----------------------------------+



### Világváltozások szinkronizációja



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A világban történt változások     | Egy változást indítunk az egyik   |
| (pl. egy fa kivágása vagy egy     | klienssel (pl. egy tárgyat        |
| épület felépítése)                | elmozdítunk), majd ellenőrizzük,  |
| szinkronizálódnak-e minden kliens | hogy ez a változás megjelenik-e   |
| között.                           | minden másik kliens képernyőjén.  |
|                                   | Ha a változások minden kliensnél  |
|                                   | helyesen jelennek meg, a teszt    |
|                                   | sikeres.                          |
+-----------------------------------+-----------------------------------+



### Nap és éjszaka ciklus helyes működése



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A nap-éjszaka ciklus dinamikusan  | A szerver futtat egy teljes       |
| és helyesen működik-e a játékban. | nap-éjszaka ciklust gyorsított    |
|                                   | sebességgel, miközben monitorozza |
|                                   | a világ megvilágítását,           |
|                                   | árnyékokat és az idő múlását. Ha  |
|                                   | a ciklus logikusan követi az      |
|                                   | előre definiált paramétereket, a  |
|                                   | teszt sikeres.                    |
+-----------------------------------+-----------------------------------+



### Terhelés alatti működés



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A világ működése stabil marad-e   | Szimulálunk egy nagy mennyiségű   |
| nagy számú játékos és esemény     | játékost és eseményt (pl. harcok, |
| esetén.                           | építkezések, interakciók) a       |
|                                   | világban, majd figyeljük a        |
|                                   | rendszer teljesítményét és        |
|                                   | válaszidejét. Ha a válaszidők     |
|                                   | elfogadhatóak, és nincs jelentős  |
|                                   | késés vagy összeomlás, a teszt    |
|                                   | sikeres.                          |
+-----------------------------------+-----------------------------------+



## Manuális tesztek

### Felfedezhető helyek elérhetősége



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Ellenőrizzük, hogy a játékos      | Belépünk a játék világába, és     |
| képes-e eljutni minden            | manuálisan végigjárjuk az összes  |
| felfedezhető helyszínre.          | helyszínt. Figyeljük, hogy van-e  |
|                                   | olyan hely, amely elérhetetlen    |
|                                   | vagy hibásan jelenik meg. Ha      |
|                                   | minden helyszín elérhető, a teszt |
|                                   | sikeres.                          |
+-----------------------------------+-----------------------------------+



### Váratlan akadályok vizsgálata



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Az akadályok (pl. falak, hegyek)  | A játékos karakterével különböző  |
| megfelelően viselkednek-e, és nem | tereptárgyakat közelítünk meg, és |
| blokkolják a játékos mozgását     | ellenőrizzük, hogy az akadályok   |
| indokolatlanul.                   | megállítják-e a mozgást, illetve  |
|                                   | a megfelelő helyeken át lehet-e   |
|                                   | haladni. Ha nincs váratlan        |
|                                   | akadály vagy hibás átjárhatóság,  |
|                                   | a teszt sikeres.                  |
+-----------------------------------+-----------------------------------+



### Világ részleteinek betöltése



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A világ elemei (pl. épületek,     | A játékos karakterével különböző  |
| fák, terep) megfelelően           | távolságokról közelítjük meg a    |
| töltődnek-e be különböző          | világ elemeit, és figyeljük azok  |
| távolságokból.                    | betöltési folyamatát. Ha az       |
|                                   | elemek megfelelően jelennek meg   |
|                                   | és nincsenek grafikai hibák, a    |
|                                   | teszt sikeres.                    |
+-----------------------------------+-----------------------------------+



### Interaktív elemek működése



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Ellenőrizzük, hogy az interaktív  | A játékban különböző interaktív   |
| elemek (pl. ajtók, kapcsolók)     | elemekkel lépünk kapcsolatba,     |
| megfelelően reagálnak-e a játékos | majd figyeljük, hogy azok         |
| interakcióira.                    | helyesen működnek-e (pl. egy ajtó |
|                                   | kinyílik, egy kapcsoló aktivál    |
|                                   | egy eseményt). Ha az interakciók  |
|                                   | megfelelőek, a teszt sikeres.     |
+-----------------------------------+-----------------------------------+



### Környezeti hanghatások tesztelése



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| A világ különböző részein         | A világot manuálisan bejárva      |
| hallható hanghatások (pl.         | figyeljük, hogy a különböző       |
| madárcsicsergés, szélzaj) a       | hanghatások a megfelelő helyeken  |
| megfelelő helyszíneken és időben  | aktiválódnak-e, és nincsenek      |
| szólalnak-e meg.                  | hanghibák. Ha a hanghatások       |
|                                   | időzítése és helyszíne helyes, a  |
|                                   | teszt sikeres.                    |
+-----------------------------------+-----------------------------------+
