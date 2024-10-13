# A Végtermék Jellemzői, Biztosított Szolgáltatások

A játékos a csapatát felülnézetből irányítja, viszont a karakterek mozgása egy 2 dimenziós síkon történik,
ahol az előre-hátra és fel-le mozgások adják a pozícióváltás lehetőségét. A játék tempójától
függően a harcok valós időben zajlanak, így gyors döntésekre van szükség a sikeres előrehaladáshoz.

Mielőtt a játékosok belépnének a játéktérbe, egy menüben lehetőségük lesz kiválasztani, mely lovagokat
szeretnék harcba vinni, és milyen felszerelést vagy tárgyakat (item-eket) kívánnak magukkal hozni. Emellett
a játékosok új lovagokat is kérhetnek attól az intézménytől, amely a lovagok toborzásával és kiképzésével
foglalkozik ("Lovagi Rend"). Ez a menü biztosítja, hogy a játékosok felkészülten induljanak a csatába,
és stratégiájukhoz megfelelő csapatot állíthassanak össze.

A Termék többféle irányítási lehetőséget támogat, így a játékosok választhatnak a hagyományos billentyűzet/egér
kombináció, a kontroller használata, vagy akár a mobiltelefonos verzió esetén is, ha a megfelelő perifériákat
csatlakoztatják a telefonhoz. Ezáltal a játékosok szabadon dönthetnek arról, hogy melyik irányítási módot részesítik
előnyben, függetlenül attól, hogy PC-n vagy telefonon játszanak.

A Termék fejlesztésében kiemelt szerepet kap az i18n (nemzetköziesítés) támogatása,
hiszen ez lehetővé teszi, hogy világszerte több felhasználóhoz is eljuthasson. Jelenleg
azonban az angol és a magyar verziók élveznek prioritást, mivel ezek elegendőek az i18n
alrendszer kezdeti teszteléséhez. A tényleges lokalizálás (l11n) a Termék további funkcióinak
elkészítése után fog megvalósulni. Fontos cél, hogy a hozzáértő játékosok számára könnyen elérhetővé
váljon a közösségi fordítások ("Community Translations") készítése is, ezáltal biztosítva,
hogy a játék a lehető legtöbb nyelven elérhető legyen.

Fontos szempont, hogy a Termék alacsony teljesítményű eszközökön is zökkenőmentesen
fusson (lásd [_Minőségi Elvárások_](#minőségi-elvárások)), mivel nem minden felhasználó rendelkezik nagy teljesítményű
eszközökkel. A játék optimalizálása így biztosítja, hogy szélesebb közönség számára legyen
elérhető, függetlenül a hardveres korlátoktól.

A Termék teljes mértékben integrálódik az általa használt digitális áruház szolgáltatásaival,
például a Steam platform funkcióival. Ez magában foglalja a Steam Achievementek (teljesítmények)
rendszerét, amelyen keresztül a játékosok különféle mérföldköveket érhetnek el és díjakat szerezhetnek
a játékon belüli eredményeikért. A Termék további támogatást nyújt a Steam felhőalapú mentési funkcióihoz is,
lehetővé téve, hogy a játékosok több eszközön keresztül is hozzáférjenek mentéseikhez. Ezenkívül a Termék
támogatja a Steam ranglistáit is, így a játékosok összehasonlíthatják teljesítményüket globális szinten más játékosokkal.
A jövőbeni frissítések során további áruházi funkciók, például a közösségi műhelyek.

A játékosok _opcionálisan_ hozhatnak létre fiókot egy központi szerveren, amely lehetőséget biztosít arra,
hogy megosszák eredményeiket, és részt vegyenek a ranglistán. Fontos hangsúlyozni, hogy ez teljesen
választható, és a játékélmény fiók létrehozása nélkül is teljes értékű marad. Ha a játékos nem kíván
fiókot létrehozni, a játék _semmilyen_ formában nem zaklatja őt ezzel a lehetőséggel.





## Többjátékos Mód

A jövőben, a játék kiadása után, elérhetővé válik majd egy multiplayer játékmód is.
Ez a játékmód azonban teljesen független a "story mode"-tól, és lényegében egyfajta
tréningként szolgál. A multiplayerben a játékosok egymás ellen küzdhetnek, vagy közösen
szállhatnak szembe véletlenszerűen generált ellenségekkel.

Valamint később "co-op" játékmód is elérhető lesz, amelyben egy másik, kisebb történetszál kerül bevezetésre,
amihez a játékosok közötti együttműködés szükséges. Ez a játékmód külön kihívásokat és történeti elemeket tartalmaz,
amelyek csak csapatmunkával oldhatók meg. Fontos megjegyezni, hogy ez a co-op mód egy különálló DLC formájában
válik elérhetővé a játék kiadása után.

Az internetes többjátékos módhoz nem lesz szükség fiók létrehozására, mivel a játékosok "szobákat" hozhatnak
létre, és a szoba tulajdonosa lesz a host. A központi szerver csupán a szobák összekapcsolását végzi, de maga
a játékmenet és a logika a host gépén fut. Ezáltal a játékosok fiók nélkül is élvezhetik az online többjátékos
élményt, és a kapcsolódás egyszerűen, a szoba létrehozásával és csatlakozással történik.
Internetkapcsolat hiányában a többjátékos mód LAN-on keresztül is elérhető lesz.

Ez a mód tartalmazni fog egy beépített chat funkciót, amely lehetővé teszi, hogy a játékosok kommunikáljanak
egymással játék közben.

## Harcrendszer

A fő játékmechanika része, hogy
minden lovagnak van életereje (HP) és józansága (SP). Ha egy
lovag elveszti az összes életerejét, akkor meghal. Ha a józanságát, akkor őrülté válik.
Az őrült lovagokat vissza lehet téríteni, ha teljesen visszatöltjük a józanságukat. De ha úgy
véljük ez nem éri meg, akkor meg is ölhetjük őket. (Viszont ez az akció szintén rontja a többi lovag józanságát,
mivel a lovagok inkább segítenének a bajbajutott társaikon.) Ha úgy fejezünk be egy szintet hogy vannak még
ellenségessé tett lovagjaink, akkor azok meghalnak a szint végén.

Az őrült lovagok fölött a játékos elveszíti az irányítást, azonban az őrültség különböző formákban
jelentkezhet. Például, a lovag csatlakozhat az ellenséghez, mindenki ellen támadhat, beleértve a saját
csapatát is, vagy akár egy ideig mozdulatlanul maradhat. Ezek a változatos őrültségi hatások újabb kihívásokat
teremtenek a játékmenet során, és stratégiaváltásra késztetik a játékost.

Ha egy lovag meghal vagy megőrül, a következő lovag automatikusan megjelenik, és már vele folytatjuk a játékot.
Ha egy őrült lovagot sikerül visszatéríteni, a játékos választhat, hogy a visszatérített lovaggal folytatja,
vagy marad az aktuálisan irányított lovagnál. Azonban, ha az összes lovag elfogy, a játék véget ér.

Míg a HP elsősorban közvetlen támadások révén csökken, addig az SP jóval érzékenyebb, és könnyen veszíthető.
Például, ha egy lovag szemtanúja lesz egy sokkoló eseménynek, az is negatívan befolyásolja az SP-jét.
Az SP azonban idővel automatikusan visszatöltődik, ellentétben a HP-vel, és fizikai támadások sem hatnak rá.
Ez a mechanika további taktikai elemeket ad a játékhoz, mivel a játékosoknak figyelniük kell a lovagok
mentális állapotára is, nem csak a fizikai túlélésükre.

A különböző tárgyak (item-ek) szintén hozzájárulhatnak a HP és SP gyorsabb visszatöltéséhez.
Ezek a tárgyak lehetnek gyógyitalok, varázslatos eszközök, vagy egyéb speciális kiegészítők,
amelyek taktikai előnyt nyújtanak a harc során. A megfelelő item használata kritikus lehet a
lovagok életerejének vagy józanságának gyors helyreállításához, ezzel növelve a csapat túlélési
esélyeit és hatékonyságát.

Minden lovagnak, ellenségnek, és fegyvernek van egy szintje, amely az [1, 5] intervallumban mozog.
Amikor egy karakter legalább 2 szinttel magasabb, előnyt élvez az alacsonyabb szintű ellenféllel
szemben, például magasabb sebzést okoz vagy hatékonyabban védekezik
(a szintkülönbség alapján szorzók érvényesülnek).

Minden lovagnak van egy saját skill tree-je, amely lehetővé teszi a képességek fejlesztését a játék során.
A lovag szintje a feloldott skill-ek számától függ, így a játékosok különböző utakat választhatnak a fejlődés során.
Ezen kívül bizonyos fegyverek és pajzsok használata feltételekhez kötött; például egyes eszközök csak egy adott szint
elérése után, egy specifikus skill megléte esetén, vagy bizonyos statisztikai értékek felett válnak elérhetővé.

A fentebb említett feltételek között nincsenek negatív stat check-ek, vagyis az erősebb statisztikák
nem korlátozzák az eszközök használatát. A rendszer kizárólag a pozitív teljesítményre összpontosít,
így a játékosok a magasabb statok elérésére koncentrálhatnak anélkül, hogy az erősebb mutatók miatt büntetést kapnának.

A különböző statisztikák és skill-ek hozzájárulnak ahhoz, hogy a lovagok ne legyenek túl könnyen lecserélhetők.
Ez a rendszer arra ösztönzi a játékosokat, hogy stratégiailag gondolkodjanak, és mérlegeljék, hogy mennyire
"feláldozható" egy lovag. Ha ez nem lenne, akkor nem lenne kihívás, mivel ha egyforma erősségűek a lovagok,
nem lenne nagy veszteség ha meghalnak, mert könnyen szerezhetünk másikat.

A játék általában arra törekszik, hogy a játékos szintjéhez maximum 1 szinttel különböző ellenségeket
teremtsen, így biztosítva a kiegyensúlyozott kihívást. Bizonyos területeken azonban mindig ugyanazon
a szinten lévő ellenségekkel találkozhatunk, függetlenül a játékos szintjétől. A "boss" ellenségek
pedig mindenképp fix szintűek.

## Hosszútávú Játékmenet

A játékmenet több területre oszlik, és miután egy területet feloldottunk, bármikor visszatérhetünk rá.
Minden szinten számos feladat vár a játékosra, nem csak a következő szint elérése. A Termék várhatóan körülbelül
9 területet foglal majd magában, bár ez változhat a háttértörténet alakulásától függően.

Bizonyos esetekben előfordulhat, hogy egy feladatot csak akkor tudunk teljesíteni egy területen, ha egy másik
területen már előrehaladtunk, és fordítva. Ezáltal a területek közötti összefüggések is fontos szerepet kapnak a játékmenetben.

A "főellenség" legyőzése után a játékosnak lehetősége van tovább folytatni a játékot, mellékküldetéseket
teljesíteni, felfedezni rejtett tartalmakat, vagy új kihívásokat keresni. Alternatívaként visszatérhet a
játék elejére vagy egy korábbi checkpoint-ra, hogy más utat választva fejezze be a történetet, akár új
befejezést is feloldva. Az ilyen visszatérések során a megszerzett küldetések, pontok, tárgyak, fegyverek,
és lovagok megmaradnak, így a játékos folyamatosan építheti fel a karakterét és csapatát, még ha újra is kezdi a történetet.

Bizonyos küldetések csak akkor válnak elérhetővé, ha a játékos legalább egyszer végigjátszotta a játékot. Ezeknek a speciális
küldetéseknek a teljesítése lehetővé teszi titkos befejezés(ek) feloldását, amely(ek)et az első végigjátszás során lehetetlen
megszerezni. Ez a mechanika arra ösztönzi a játékosokat, hogy többször is végigjátsszák a játékot, új tartalmakat fedezzenek
fel, és alternatív befejezéseket érjenek el.
