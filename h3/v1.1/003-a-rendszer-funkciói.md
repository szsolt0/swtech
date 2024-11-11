# A rendszer funkciói

- **Többnyelvűség támogatás:** A játék több nyelven érhető el, biztosítva a globális elérhetőséget. Ezen felül
  támogatott a közösség által készített fordítások integrálása is, amely lehetővé teszi a közreműködők számára
  a játék saját nyelvi bővítését.

- **Grafikai beállítások testreszabása:** A játék különféle grafikai beállításokat biztosít annak érdekében,
  hogy gyengébb és erősebb hardvereken egyaránt optimálisan fusson. Az alacsonyabb teljesítményű eszközökön
  minimalizált grafikai igényű mód érhető el, míg a nagy teljesítményű eszközökön részletgazdagabb látványt
  kínál, kihasználva a modernebb hardverek grafikai kapacitását.

- **Korlátlan manuális mentés lehetősége:** A játékos igény szerint több mentést is létrehozhat,
  amelyek egymástól függetlenül tárolódnak, amennyiben elegendő tárhely áll rendelkezésre. Ez lehetőséget
  biztosít különböző játékszakaszok mentésére, és megkönnyíti a visszatérést a korábbi állapotokhoz.

- **Automatikus mentési rendszer:** A játék automatikus mentési funkcióval rendelkezik, amely meghatározott
  időközönként (például 5 percenként) rögzíti az aktuális játékállapotot. Ez a funkció hasznos az előre nem
  látható események, például áramszünetek esetén, így minimalizálva az adatvesztés kockázatát.

- **Felhőalapú mentési támogatás platformszinten:** A rendszer biztosítja, hogy a felhasználók választhassanak
  a központi szerver vagy a platform-specifikus felhőszolgáltatások között, és ezáltal testre szabható legyen
  a játékállások kezelése.

- **Felhasználói fiókok kezelése saját szerveren:** A játékhoz kapcsolódó felhasználói fiókokat egy központi,
  a játékot üzemeltető csapat által kezelt szerveren tároljuk. Bár a szerver fizikai elhelyezése nem helyben
  történik, az üzemeltetés és adatkezelés a szolgáltató felügyelete alatt áll, biztosítva a biztonságos
  és folyamatos adatkezelést.

- **A fogyatékossággal élők támogatása:** A játék teljes értékű játékélményt biztosít
  minden játékos számára, függetlenül az érzékszervi korlátoktól. Az egyes támogatási funkciók célzott
  megoldásokat kínálnak a különböző igényeknek megfelelően, lehetővé téve a teljes élményhez való egyenlő hozzáférést.

## Többnyelvűség támogatás

A játék többnyelvűségre épülő támogatása lehetővé teszi, hogy a játék különböző nyelveken legyen elérhető a felhasználók számára.
A többnyelvűségi rendszer biztosítja, hogy a játékosok könnyedén válthassanak nyelvek között, és lehetőséget biztosít a közösség számára a
fordítások egyszerű bővítésére is.

**Nyelvi fájlok struktúrája:**

- **Központi fordítási könyvtár:** A fordítási fájlok a játék könyvtárában egy külön mappában, a `translations` könyvtárban kerülnek tárolásra.
  A fordítások ebben a mappában találhatók, és minden nyelv saját, külön almappával rendelkezik, amely biztosítja a nyelvek egyértelmű
  és rendezett kezelését.

- **ISO-kód szerinti struktúra:** Az egyes nyelvek almappái az ISO-kód szerinti szabványos jelölést követik, amely formátuma `xx_yy`
  ahol az `xx` az országkódot, a `yy` pedig a nyelvet jelöli. Például az amerikai angol nyelv `en_US`, míg a magyar nyelv `hu_HU` formátumban
  kerül elnevezésre. Ez a jelölési rendszer biztosítja az egyértelműséget, és megkönnyíti a különböző nyelvek közötti gyors eligazodást.

- **Egyszerű, szöveges formátum:** A fordítási fájlok egyszerű szöveges ("plain text") formátumot használnak (például JSON vagy XML), így semmilyen
  speciális szoftverre nincs szükség a fájlok szerkesztéséhez. Az egységes formátum megkönnyíti az új nyelvi csomagok létrehozását, hiszen elég egy
  meglévő mappát lemásolni, majd benne a szöveget lefordítani az adott nyelvre.

**Nyelv kiválasztása és beállítása:**

A játék alapértelmezés szerint megpróbálja a felhasználói környezetből automatikusan felismerni a megfelelő nyelvet. Például UNIX-alapú rendszerek esetén a
`$LANG` környezeti változó alapján állítja be a nyelvet, ha az megfelel az elérhető fordítások egyikének. Ha a rendszer nyelve nem található meg a fordítások között,
a játék alapértelmezett nyelvi csomagot használ, amely angol (`en_US`).

**Előnyök:**

- **Egyszerű fordítási folyamat:** A felhasználók számára könnyen szerkeszthető és átlátható nyelvi fájlok biztosítják a gyors fordítást és bővítést.
- **Automatikus nyelvfelismerés:** A rendszer környezeti változókon keresztül képes a nyelvet automatikusan beállítani, így a felhasználói élmény zökkenőmentes.
- **Közösségi bővítés lehetősége:** A szabványosított formátum támogatja, hogy a játékos közösség új nyelveket adjon hozzá, biztosítva a játék széles körű elérhetőségét.

## Grafikai beállítások testreszabása

A játék különféle grafikai beállítási lehetőségeket biztosít annak érdekében, hogy különböző
teljesítményű hardvereszközökön is optimálisan fusson. A grafikai beállítások testreszabása lehetővé teszi
a játékosok számára, hogy a játékot a rendelkezésre álló hardver teljesítményéhez igazítsák.

**Funkciók:**

- **Grafikai részletesség szintezése:** A játék különböző szintű grafikai beállításokat kínál. Az alacsony
  grafikai szintek csökkentik az erőforrás-igényt, míg a magasabb szintek részletgazdagabb textúrákat és
  vizuális effektusokat biztosítanak, maximálva a vizuális élményt nagyobb teljesítményű eszközökön.

- **Automatikus optimalizáció:** A grafikai beállítások automatikusan is konfigurálhatók a hardver
  teljesítményének felmérésével. Ennek eredményeképp a játék automatikusan beállítja az optimális
  grafikai szintet a stabil működés és a lehető legjobb élmény biztosítása érdekében.

- **Felbontás és képkockasebesség szabályozása:** A játék lehetőséget biztosít különböző felbontások
  és képkockasebességi beállítások kiválasztására, amely lehetővé teszi a teljesítmény és a grafikai
  minőség egyensúlyának szabályozását.

- **Speciális grafikai effektusok kezelése:** A játékban az árnyékok, részecskeeffektusok és egyéb speciális
  effektusok külön kezelhetők. A játékosok letilthatják vagy engedélyezhetik ezeket az elemeket, attól
  függően, hogy milyen teljesítményt kívánnak elérni.


**Előnyök:**

- **Gyengébb teljesítményű eszközök támogatása:** Az alacsonyabb grafikai szintek biztosítják a megfelelő
  működést régebbi vagy alacsonyabb teljesítményű hardvereken.
- **Vizuális minőség fokozása nagyobb teljesítményű eszközökön:** A részletesebb grafikai beállítások kihasználják
  a modern hardverek képességeit a vizuális élmény maximalizálása érdekében.
- **Felhasználóbarát konfiguráció:** Az automatikus optimalizálás révén az összes felhasználói szint számára
  elérhető beállítási lehetőségek biztosítják a zavartalan működést.

## Korlátlan manuális mentés lehetősége

A játék lehetőséget biztosít a játékos számára, hogy saját mentési fájlokat hozzon létre és kezeljen,
amelyek a haladás és az egyéni beállítások biztonságos tárolására szolgálnak.

**Funkciók:**

- **Korlátlan számú mentési lehetőség:** A játékos tetszőleges számú mentési fájlt hozhat létre, amelyeket a belépési
  menüben kiválaszthat, létrehozhat vagy törölhet. Ezzel biztosítható, hogy különböző játékállásokat külön fájlokként
  tárolhasson, amennyiben rendelkezik elegendő tárhellyel.

- **Önálló fájlként tárolt mentések:** A mentések önálló, self-contained fájlok formájában kerülnek létrehozásra,
  így minden adatot egyetlen `.knightsage` kiterjesztésű fájl tárol. Ez biztosítja, hogy egy mentés áthelyezéséhez
  vagy másolásához nincs szükség további fájlokra; a mentési állomány minden szükséges adatot tartalmaz.

- **Mentési fájlok kezelése és áthelyezése:** A mentések a játék fő könyvtárában, a "saves" mappában kerülnek tárolásra,
  ahonnan a fájlok egyszerűen áthelyezhetők vagy megoszthatók más eszközök között. Ezáltal a játékos a játékállást akár
  különböző gépeken is folytathatja.

- **Visszafelé kompatibilitás:** A mentési fájlformátum visszamenőlegesen kompatibilis, így a későbbi játékváltozatok is
  támogatják a korábban létrehozott mentési fájlok betöltését (a technológiai korlátok figyelembevételével). Ez biztosítja,
  hogy a játékos akár hosszabb idő után is hozzáférjen a korábbi mentési állapotokhoz.

**Előnyök:**

- **Független mentési fájlok:** Minden mentési fájl önálló, így nincs szükség kiegészítő fájlok mozgatására.
- **Mentések áthelyezhetősége:** A játékállások egyszerűen átmásolhatók különböző eszközök között.
- **Hosszú távú hozzáférés:** A visszafelé kompatibilitásnak köszönhetően a régi mentési állapotok hosszabb távon is elérhetők maradnak.

## Automatikus mentési rendszer

A automatikus mentési rendszere biztosítja, hogy a játék során rögzített haladás minden körülmények között megőrzésre kerüljön,
minimálisra csökkentve az adatvesztés lehetőségét váratlan események --- például áramszünet, vagy a folyamat idő előtti megszakítása --- esetén.

**Mentési folyamat:**

Az automatikus mentés során a következő lépések biztosítják a mentések integritását:

1. **Biztonsági mentés létrehozása:** A meglévő mentési fájl (`.knightsage`) átnevezésre kerül biztonsági mentésként:
    `.knightsage.old`. Ez a fájl a legutóbbi sikeres mentést tartalmazza, és szükség esetén visszaállítható.

2. **Új mentési fájl létrehozása:** A játék létrehozza az új mentési állapotot tartalmazó fájlt, amely az eredeti
    fájlnévvel (`.knightsage`) kerül tárolásra. Amennyiben a mentési folyamat megszakítás nélkül befejeződik,
	a fájl automatikusan az aktuális játékállást fogja tartalmazni.

3.  **Biztonsági fájl törlése:** A sikeres mentést követően az előző mentésként tárolt `.knightsage.old` fájl törlésre kerül.
    Ezzel biztosítjuk, hogy a mentési könyvtár tiszta maradjon, és csak a legfrissebb állapotot tartalmazza.

**Betöltési folyamat:**

A játék betöltésekor az automatikus mentési rendszer ellenőrzi a mentési könyvtárat egy esetleges `.knightsage.old` fájl jelenlétére.
Ha ilyen fájl található, a rendszer jelzi, hogy az előző mentési folyamat nem zárult le megfelelően. Ebben az esetben a játékos választhat,
hogy a biztonsági mentésként tárolt `.knightsage.old` fájlt használja, amely tartalmazza a legutóbbi, épségben rögzített játékállást.

**Előnyök:**

- **Adatbiztonság:** Az előző mentés automatikus áthelyezése biztonsági fájlba megelőzi az adatvesztést megszakítás esetén.
- **Stabil működés:** A folyamat biztosítja, hogy csak a sikeresen befejezett mentés kerüljön az alapértelmezett mentési fájlba.
- **Egyszerű visszaállítási lehetőség:** Ha egy mentés sikertelen, a rendszer automatikusan visszaállítható az
  `.knightsage.old` fájlból, fenntartva a játék folytonosságát.

## Felhőalapú mentési támogatás platformszinten

A játék több szintű felhőalapú mentési rendszert kínál a játékállások biztonságos és rugalmas tárolása érdekében.
A felhasználók fiók létrehozásakor választhatják, hogy a mentéseiket szinkronizálják-e a központi szerveren, amelyet a játékot
üzemeltető csapat kezel, vagy kizárólag a platform-specifikus felhőszolgáltatásokat használják, mint például a _Steam Cloud_ vagy
a _Google Cloud_. Ezáltal a játékosok szabadon dönthetnek arról, hogy mely mentési megoldásokat részesítik előnyben a kapacitás
és a hozzáférhetőség szempontjából.

**Funkciók:**

- **Központi felhőalapú mentés a szerverünkön:** Ha a játékos regisztrál egy fiókot a központi szerveren, akkor lehetősége van
  játékállásait a saját felhőnkben tárolni. Mivel a központi szerver kapacitása korlátozottabb lehet a külső platformokhoz
  képest, a felhasználók eldönthetik, hogy csak az aktuálisan használt mentéseiket szinkronizálják-e, optimalizálva a
  felhasználható tárhelyet.

- **Platform-specifikus felhőintegráció:** A játék platformspecifikus felhőalapú mentési szolgáltatásokkal, például a _Steam Cloud_
  vagy a _Google Cloud_ rendszerével is kompatibilis. Ezek a külső felhők kiegészítik a központi szerver funkcióit, biztosítva,
  hogy a játékállások automatikusan szinkronizálódjanak és több eszközön is elérhetők legyenek.

- **Felhasználói beállítások a mentés szinkronizálására:** A játékosok dönthetnek arról, hogy kívánják-e a mentéseiket a központi
  szerverrel szinkronizálni, vagy csak a platform által biztosított felhőszolgáltatást veszik igénybe. Ez a megközelítés nagyobb
  rugalmasságot biztosít, és lehetővé teszi a felhasználók számára, hogy tárhelyüket optimálisan kihasználják,
  különösen a központi szerver korlátozott kapacitása esetén.

**Előnyök:**

- **Rugalmas mentési opciók:** A játékos szabadon dönthet, hogy a központi szerveren, a platform-specifikus felhőszolgáltatásokon,
  vagy mindkettőn kívánja-e tárolni a mentéseit.
- **Adatbiztonság és redundancia:** Az egyidejű platformspecifikus és központi mentési lehetőségek több szintű biztonságot
  nyújtanak a játékállások megőrzésére.
- **Optimális tárhelyhasználat:** A felhasználók személyre szabottan választhatnak a központi szerver korlátozott tárhelye és
  a platformok által biztosított nagyobb kapacitás között.
- **Könnyebb platformváltás:** A központi szerveren történő tárolásnak köszönhetően a mentési fájlok egyszerűbben átvihetők
  különböző platformok között, anélkül hogy a fájlokat kézzel kellene másolni.

## Felhasználói fiókok kezelése saját szerveren

A játék központi szerverén kezelt felhasználói fiókok biztosítják a többjátékos élményhez szükséges adatkezelést
és a játékosok közötti kapcsolattartást. A központi szerver funkciói között szerepel a felhasználók adatainak kezelése,
a játékszerverek összekapcsolása, mentések tárolása, valamint a fiókkal kapcsolatos információk, mint például az elért
teljesítmények (achievementek) tárolása.

**Funkciók:**

- **Felhasználói adatok kezelése:** A központi szerver tárolja a felhasználói fiókok alapvető adatait, többek között a játékos
  játékidejét és elért teljesítményeit. Ezen adatok tárolása lehetővé teszi, hogy a játékosok folyamatosan nyomon követhessék
  fejlődésüket, még a többjátékos mód hivatalos kiadása előtt is.

- **Multiplayer szerverek kezelése:** A központi szerver tárolja az egyes játékosok által hostolt szerverek adatait.
  A játékszerverek azonban közvetlenül a host játékos eszközén futnak, és a központi szerver csupán összekötő szerepet
  tölt be, hogy megkönnyítse a játékosok csatlakozását és a szerverek közötti kommunikációt.

- **Chat és kommunikáció**: A központi szerver támogatja a játékosok közötti kommunikációt a pályákon belüli chat-funkció
  segítségével, ami lehetővé teszi az azonnali üzenetváltást és koordinációt a többjátékos környezetben. A chat-funkció
  készen áll a többjátékos mód jövőbeli bevezetésére, ahol a szerver feladata lesz a chat-üzenetek továbbítása.

- **Többjátékos mód későbbi bevezetése:** A többjátékos mód a játék kiadása után válik elérhetővé, de a központi szerver már
  most is készen áll a többjátékos adatkezelési és kommunikációs feladatok ellátására.

- **Központi felhőalapú mentés támogatása:** Az opcionális központi felhőalapú mentés lehetőséget biztosít a játékállások
  szerverünkön történő tárolására. (lásd _Felhőalapú mentési támogatás platformszinten_)


**Előnyök:**

- **Központi adatkezelés:** A felhasználói adatok biztonságos tárolása és könnyű hozzáférhetősége a központi szerveren.
- **Multiplayer támogatás:** A központi szerver összekötő szerepet tölt be a játékosok között, megkönnyítve a többjátékos
  szerverek kezelését és a kommunikációt.
- **Későbbi multiplayer integráció:** A szerver már a többjátékos mód bevezetése előtt biztosítja az adatkezelési alapokat,
  felkészítve a játékot a jövőbeli multiplayer funkciókhoz.
- **Valós idejű kommunikáció:** A chat-funkcióval a játékosok gyorsan és közvetlenül kommunikálhatnak a játékon belül.
- **Platformváltás egyszerűsítése:** lásd _Felhőalapú mentési támogatás platformszinten_

## A fogyatékossággal élők támogatása

A játék fejlesztése során különös figyelmet fordítunk a fogyatékossággal élő felhasználók számára biztosított
támogatási lehetőségekre, hogy a játék minél szélesebb körben hozzáférhető legyen. Az alábbiakban ismertetjük
a támogatási funkciók kategóriáit és azok tervezett megvalósítását.

- **Színvak támogatás:** A különböző típusú színvakságban szenvedő játékosok számára a játék lehetőséget biztosít a
  felhasználói felület bizonyos elemeinek testreszabására. Ennek érdekében a felhasználó megváltoztathatja az olyan
  kritikus játékelemek, mint az ellenségek, szövetségesek, és fontos tárgyak jelölőszíneit. Ez a beállítás kifejezetten
  a protanópia, deuteranópia, és tritanópia típusú színvakságok támogatására szolgál. A színváltoztatási lehetőségek
  révén biztosítható, hogy minden játékos könnyen azonosíthassa az alapvető vizuális információkat, függetlenül a színérzékelési korlátoktól.

- **Halláskárosult és süket támogatás:** A játék minden olyan jelentős hanghatását, amely a játékmenet szempontjából releváns információkat hordoz,
  automatikusan feliratozza. A feliratok közé tartoznak például a környezeti zajok, eseményekhez kapcsolódó hangjelzések (például közelgő
  ellenségek vagy figyelmeztetések), valamint a fontos események során hallható hanghatások. A feliratok a képernyőn jól látható helyen,
  megfelelő szín- és kontrasztbeállításokkal jelennek meg, így minden halláskárosult és süket játékos számára biztosított a játék
  eseményeinek követhetősége.

- **Látássérült és vak támogatás:** A látássérült és vak felhasználók számára tervezett támogatási rendszer összetett és több fázisban
  valósul meg. A játék minden játékon belüli eseményt részletes narrációval lát el, amely lehetővé teszi a játékos számára, hogy hallás
  útján pontos információkat kapjon a játékmenetről. Ez a narrációs rendszer többek között a következőket foglalja magában:

  - A karakterek helyzetének és mozgásának leírása.
  - A harci események és környezeti változások pontos ismertetése.
  - A stratégiai döntésekhez szükséges információk (pl. tárgyak, ellenségek, és akadályok) részletes bemutatása.

  A látássérült mód a játékmenet speciális beállításainak megfelelően működik: a valós idejű (real-time) játékelemek automatikusan turn-alapú
  rendszerré alakulnak, lehetőséget biztosítva a játékos számára, hogy minden narrált esemény után cselekvési döntéseket hozzon. Ez a mód a
  stratégiai gondolkodást és a történet követését helyezi előtérbe, a valós idejű reakciókészség helyett.
  
  Mivel ez a megoldás külön mechanikai és narrációs fejlesztést igényel, a látássérült mód nem lesz elérhető a játék kezdeti kiadásában;
  tervezett megjelenése a későbbi frissítések során valósul meg. Fontos továbbá, hogy a különböző nyelvekhez szükséges narrátorhangok
  lokalizációja és az új tartalmakhoz kapcsolódó bővítések szakaszosan, az új tartalmak megjelenését követően kerülnek kiadásra.

**Előnyök:**

- **Széles körű elérhetőség:** A különböző fogyatékossággal élők támogatása révén a játék szélesebb közönség számára válik elérhetővé.
- **Egyedi beállítási lehetőségek:** A testreszabható vizuális és hangalapú támogatás segíti az egyéni igényekhez igazodó élmény biztosítását.
- **Kihívások nélküli hozzáférhetőség:** A látássérült mód lehetővé teszi a real-time játékmenettől eltérő, turn-alapú játékélmény biztosítását,
  a stratégiai és történetkövetési élmény előtérbe helyezésével.
