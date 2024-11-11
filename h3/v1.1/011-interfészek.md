# Interfészek

Interfaces

Ebben a fejezetben specifikáljuk a rendszer külső kapcsolatait és a szükséges interfészeket.

Figyelembe véve a több platform támogatásának lehetőségét es az átláthatóságot!

## Felhasználói interfészek

User Interfaces

A _Knights Age_ felhasználói interfésze egy középkori hangulatot idéző, könnyen navigálható rendszer,
amely támogatja a játékosokat abban, hogy egyedi lovagjukat válasszák és fejlesszék. A lovagok irányítása
középpontban áll, és a játék során elérhető eszközök és felszerelések menedzsmentje egyértelmű és intuitív módon történik.

- **Főmenü:** A játék kezdésekor a játékos a főmenüvel találkozik:

- **Játék indítása:** A játék kezdetén a játékos kiválaszthatja, melyik elérhető lovagot szeretné irányítani.
  Ezzel minden alkalommal egy új játékot hozunk létre. Lehet több mentett játékunk is.

- **Folytatás:** A korábban mentett játék folytatása.

- **Beállítások:** Itt a játékos módosíthatja a játék grafikai, audio- és irányítási beállításait.

- **Kilépés:** A játékból való kilépési lehetőség.

- **Karakterválasztó képernyő:** A játékos választhat a király még életben lévő lovagjai közül. Minden lovag egyedi tulajdonságokkal rendelkezik, és a halál után hosszabb ideig nem használhatók.

- **Lovag ikonok:** Minden lovaghoz egy ikon tartozik, amely megjeleníti az aktuális állapotát (pl. elérhető, pihenő fázisban a halál miatt).

- **Tulajdonságok kijelzése:** Minden lovaghoz tartoznak tulajdonságok (életerő, páncél, fegyver erőssége), amelyek segítenek a játékosnak dönteni.

- **Fejlesztési szint:** Minden lovag aktuális fejlesztési szintje (pl. jobb páncél, kard) szintén megjelenik.

- **Karakter kiválasztása:** A játékos kiválaszt egy lovagot, akivel elindítja a játékot.

- **Halott lovagok:** A halott lovagok egyértelműen jelölve vannak, és nem elérhetők egy ideig, amíg újra használhatóvá nem válnak. A lovagot egy idő nem lehet újra használni.

- **Játék közbeni felület (HUD):** A HUD biztosítja, hogy a játékos folyamatosan figyelemmel kísérhesse a lovag aktuális állapotát:

- **Életerő csík:** Az életerő csík a lovag aktuális életerejét mutatja.

- **Józansági csík:** Ez a lovag józansagát méri.

- **Felszerelés állapota:** A felszerelések (pl. kard, páncél) állapotát is nyomon követhetjük.

- **Mana kijelző:** A varázslatokhoz szükséges mana állapota.

- **Inventory ikon:** A lovag inventory-jának megnyitása, ahol a játékos a felszereléseit kezelheti.

- **Küldetések:** Az aktuális küldetések rövid leírása jelenik meg a képernyőn.

- **Minimap:** A lovag és a környezet helyzetének megjelenítése.

- **Inventory és felszerelés képernyő:** A játékban a lovag fejleszthető különböző páncélokkal, fegyverekkel és eszközökkel. Az inventory és felszerelés képernyő lehetővé teszi a játékos számára a tárgyak kezelését:

- **Tárgyak listája:** Az inventory a középkori stílusú tárgyak listáját jeleníti meg.

- **Felszerelés slotok:** A játékos páncélokat, fegyvereket és más eszközöket helyezhet el a megfelelő slotokba.

- **Tárgyak fejlesztése:** Az inventory-ban a fejleszthető tárgyak állapotát és szintjét is meg lehet nézni.

- **Leírás:** Minden tárgyhoz tartozik egy leírás, amely bemutatja annak hatását a lovagra.

- **Küldetés napló:** A küldetések nyomon követése segít a játékosnak az előrehaladásban:

- **Aktív küldetések:** A játékos aktuális küldetései és céljai megjelennek.

- **Befejezett küldetések:** A korábbi küldetések listája.

- **Beállítások képernyő:** A beállítások menü lehetőséget ad a játék testreszabására:

- **Audio beállítások:** A zene és a hanghatások külön vezérlése.

- **Grafikai beállítások:** A képernyőfelbontás és grafikai minőség testreszabása.

- **Irányítás:** A billentyűzet és az egér gombjainak konfigurálása.

- **Multiplayer felület (jövőbeni tervek):** A multiplayer mód később kerül bevezetésre, amely lehetővé
  teszi, hogy több játékos egyszerre játsszon:

- **Lobby:** Játék előtti várakozóhely.

- **Chat rendszer:** A játékosok közötti kommunikáció.

## Hardware interfészek

Hardware Interfaces

A _Knights Age_ játék nem igényel speciális hardvereket, de a következőkre optimalizálva van:

- **Platformok:** A játék elsősorban PC-re készül (Windows, Linux, és macOS rendszerek), de a későbbiekben mobil
  platformok (Android, iOS) is célba vehetők.

- **Bemeneti eszközök:** Billentyűzet és egér a fő vezérlő eszközök, de gamepad támogatás tervezett a későbbi verziókban.
  A játék támogatja a fogyatékkal élők játékélményét. Ezért az olyan eszközöket is támogatja amik segítik a játékban.

## Software interfészek

Software Interfaces

A _Knights Age_ játékban a multiplayer mód egy co-op rendszer, ahol legfeljebb négy játékos játszhat egyszerre,
és minden játékos egy lovagot irányít a játékban elérhető lovagok közül. A multiplayer rendszer működéséhez a
szerverrel történő kommunikáció és a _Steam_ multiplayer támogatásának integrációja kulcsfontosságú. Az
alábbiakban a multiplayer funkcionalitás és a szoftver interfészek részletezése található:

**Multiplayer co-op rendszer:**

- **Játékosok száma:** A multiplayer mód maximum négy játékost támogat, mindegyik játékos egy lovagot irányít egyszerre.

- **Lovagok megosztása:** A játékosok egy közös lovagkészletből választhatnak, így mindenkinek egyszerre csak egy
  lovagja lehet, amelyet fejleszthet és irányíthat.

- **Kommunikáció:** A játékosok számára lehetőség lesz egy beépített chat rendszer használatára, amely lehetővé teszi
  a játék közbeni kommunikációt.

**Szerverrel való kommunikáció:**

- **Szerver-hozzáférés:** A multiplayer rendszer szerveralapú, így a játékosoknak egy központi szerverhez kell
  csatlakozniuk. Az információk szinkronizálása (pl. lovag állapotok, inventory kezelés) valós időben történik a
  szerver és a kliens között.

- **Kliens-szerver architektúra:** A játék kliens-szerver architektúrát használ a játékállapot és a játékosok közötti
  kommunikáció szinkronizálására. A szerver felelős az összes játékos adatainak központi kezeléséért, míg a kliensek
  csatlakoznak a szerverhez.

- **Szerver oldali mentés:** A multiplayer játék előrehaladása a szerveren kerül mentésre, hogy a játékosok később
  visszatérhessenek a játékhoz.

**Steam multiplayer integráció:**

Amennyiben a játék Steam multiplayer támogatást is nyújt, az alábbi funkciók és interfészek integrációja szükséges:

- **Steamworks SDK használata:** A _Steamworks SDK_-t kell használni a _Steam_ multiplayer szolgáltatások, például a _Steam_
  matchmaking és a lobby rendszerek integrálásához.

- **Steam barátlista integráció:** A játékosok meghívhatják barátaikat a _Steam_ barátlista alapján, és privát vagy
  nyilvános játékokat hozhatnak létre.

- **Steam matchmaking:** A _Steam_ matchmaking rendszere lehetővé teszi a játékosok számára, hogy gyorsan találjanak
  csapattársakat vagy csatlakozzanak meglévő játékokhoz.

- **Steam lobby rendszer:** A játék előtt a játékosok egy lobby-ban várakozhatnak, ahol beállíthatják a játék
  opcióit, és várhatják a többi játékos csatlakozását.

- **Achievements és statisztikák szinkronizálása:** A _Steam_ platform achievement rendszere és statisztikái
  szinkronban lesznek a játékosok teljesítményeivel.

**Hálózati követelmények:**

- **Portok és protokollok:** A szerver és a kliensek közötti kommunikáció TCP és UDP protokollokon keresztül történik.
  A pontos portszámok és beállítások az üzemeltetési dokumentációban kerülnek meghatározásra.

- **Biztonság:** A szerverrel való kommunikáció titkosított kapcsolatot használ, hogy biztosítsa az adatbiztonságot
  és megakadályozza a csalásokat.

**Jövőbeli bővítési lehetőségek:**

- **Platformok közötti multiplayer támogatás:** A jövőben lehetőség van a platformok közötti multiplayer támogatásra,
  ahol a PC és a mobil játékosok egyazon szerveren játszhatnak együtt.

- **Ranglisták:** A játék _Steam_ ranglisták támogatásával később lehetőséget biztosít arra, hogy a játékosok összehasonlíthassák
  teljesítményeiket más játékosokkal, pl. a küldetések teljesítési ideje alapján.

- Az akadályozott képességűek segítésére a hangok vizuális megjelenítése  és a játék eseményeinek narrálása áll rendelkezésre.

## Kommunikációs interfészek

Communications Interfaces

A _Knights Age_ több kommunikációs interfészt is felhasznál:

- **Internetkapcsolat:** A játékhoz nem szükséges folyamatos internetkapcsolat, kivéve a ranglisták és a multiplayer mód eléréséhez.

- **Mobil verzió:** Az Android és iOS verziók speciális érintőképernyős interfészt kapnak, amely illeszkedik az adott platformhoz.
