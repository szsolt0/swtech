# Kezdeti Osztálydiagram

## Osztálydiagram

## Osztályok felsorolása

- **Main Menu:** A játék főmenüjét kezeli, ahol a játékos választhat különböző játékmódok, beállítások és egyéb opciók közül.
- **Play:** A játékmódokat tartalmazó opció, ahol a játékos egyjátékos vagy többjátékos módot indíthat.
- **Single Player:** Az egyjátékos mód beállításai, ahol a játékos új játékot indíthat, és meghatározhatja a játékmenet különböző paramétereit.
- **New Game:** Egy új egyjátékos játék indításához szükséges beállításokat tartalmazza, mint a világ neve, nehézség és láthatósági beállítások.
- **World Name:** Az új világ nevének megadására szolgáló mező.
- **Difficulty:** A játék nehézségi szintjének beállítása az egyjátékos módhoz.
- **Import Game:** Lehetővé teszi egy korábban mentett játék importálását, különböző forrásokból.
- **Local:** A helyileg mentett játékok importálásának lehetősége.
- **Visibility:** Meghatározza, hogy az egyjátékos játék privát, csak barátok számára elérhető, vagy nyilvános legyen.
- **Private/Friends/Public:** A láthatósági opciók, amelyek meghatározzák, ki férhet hozzá a játékhoz.
- **Multiplayer:** A többjátékos mód beállításait tartalmazza, ahol a játékos saját játékot hozhat létre vagy csatlakozhat más játékokhoz.
- **Host Game:** Lehetővé teszi, hogy a játékos saját többjátékos játékot hozzon létre.
- **My Games:** A játékos által létrehozott játékok listája a többjátékos módban.
- **List Games:** A többjátékos játékok listájának megtekintésére szolgál, ahol mások által létrehozott játékokhoz lehet csatlakozni.
- **Direct Connect:** Lehetővé teszi, hogy a játékos közvetlen kapcsolatot létesítsen egy adott többjátékos játékkal.
- **Join:** Csatlakozás mások által létrehozott többjátékos játékokhoz.
- **Continue:** Lehetővé teszi egy korábban mentett játék folytatását helyi vagy felhőből mentett állományokból.
- **Local/Cloud Saved Games List:** A helyileg és a felhőben mentett játékállások listája.
- **Settings:** A játék beállításainak menüje, ahol a videó, audió és vezérlési beállításokat lehet módosítani.
- **Video:** A játék vizuális beállításait tartalmazza, mint a felbontás, grafikai minőség és egyéb grafikai opciók.
- **Resolution:** A játék felbontásának beállításai különböző opciókkal.
- **Scale:** A felbontás méretezésének beállítása.
- **FPS Limit:** Az FPS korlát beállítása, amely meghatározza a játék maximális képkockaszámát másodpercenként.
- **V-Sync:** A vertikális szinkronizáció opciójának beállítása a képtörés elkerülése érdekében.
- **Graphics Quality:** A grafikai minőség beállítása, amely befolyásolja a játék látványvilágát.
- **Anti-Aliasing:** A kép simaságát biztosító élsimítás beállítása különböző opciókkal.
- **Texture Quality:** A textúra minőségének beállítása a grafikai részletesség érdekében.
- **Shadows:** Az árnyékok részletességi szintjének beállítása.
- **Shadow Distance:** Az árnyékok megjelenítési távolságának beállítása.
- **Ambient Occlusion:** A környezeti árnyékolás effektusának beállítása a valósághűbb árnyékok érdekében.
- **Bloom Effect:** A bloom effektus beállítása, amely fényesebb részeket emel ki a játékban.
- **Motion Blur:** Mozgáselmosás hatásának beállítása, hogy a gyors mozgás során élesebb élményt nyújtson.
- **Field of View (FOV):** A látószög beállítása a játék látványának szélesítéséhez.
- **Depth of Field:** A mélységélesség hatásának bekapcsolása a valósághűbb megjelenítéshez.
- **Render Distance:** A renderelési távolság beállítása, amely meghatározza, milyen messze jelenjenek meg az objektumok.
- **Anisotropic Filtering:** Az anizotropikus szűrés beállítása, amely a textúrák részletességét növeli távoli szögekből.
- **Audio:** A hangbeállítások menüje, ahol a zene, effektusok és egyéb hangok hangereje állítható.
- **Master Volume:** Az összes hangforrás hangerejének beállítása.
- **Music Volume:** A zenei hangforrások hangerejének beállítása.
- **SFX Volume:** A hangeffektek hangerejének beállítása.
- **Dialogue Volume:** A párbeszédek hangerejének beállítása a játék során.
- **Controls:** A vezérlési beállítások menüje, ahol a billentyűkiosztás és egyéb vezérlési opciók testreszabhatók.
- **Key Bindings:** A billentyűkiosztás beállítása, ahol a játékos testreszabhatja az egyes akciókhoz rendelt billentyűket.
- **Mouse Sensitivity:** Az egér érzékenységének beállítása a játékban.
- **Gamepad Configuration:** A gamepad beállítási opciói, ahol a játékos testreszabhatja a gamepad kiosztást.
- **Quit:** Kilépés a játékból és visszatérés az operációs rendszerbe.

- **GAMEPLAY UI (3):** A játék felhasználói felülete, amely az összes fontos információt megjeleníti a játékmenet során.
- **Pause Menus:** Szünet menü, ahol a játékos megállíthatja a játékot és elérheti a beállításokat.
- **Quit:** Kilépés opció, amely lehetővé teszi a játék bezárását.
- **Map:** Térkép, amely megmutatja a játék világának felfedezett területeit.
- **Active Quests:** A játékos által aktívan teljesítendő küldetések listája.
- **HP:** Életerő, amely a karakter egészségi állapotát jelzi.
- **Mana:** Mana pontok, amelyek varázslatok és különleges képességek használatához szükségesek.
- **HUD (only online elements):** A játékban kizárólag az online játékhoz kapcsolódó elemeket megjelenítő felület.
- **Sanity Points:** Mentális egészség pontok, amelyek a karakter lelkiállapotát mutatják.
- **Quests:** A játékos által elvállalt összes küldetés listája, aktív és teljesített egyaránt.
- **Minimap:** Kisméretű térkép, amely valós időben mutatja a játékos közvetlen környezetét.
- **Chat:** Csevegési lehetőség, ahol a játékos kommunikálhat más játékosokkal.
- **Inventory:** A játékos tárgyainak listája, ahol minden begyűjtött tárgyat tárol.
- **Online Players List:** Az online játékban résztvevő többi játékos listája.
- **HUD:** A játékos általános felhasználói felülete, amely az információkat és eszközöket mutatja a játékmenet során.
- **Skills:** A játékos által tanult és feloldott képességek listája.
- **Completed Quests:** A már teljesített küldetések listája.
- **Head:** A karakter által viselhető fejfedők és sisakok.
- **Wearable:** Viselhető felszerelések, mint páncél és ruhák.
- **Body:** A karakter törzsére viselhető ruházat vagy páncél.
- **Tool:** Eszközök, mint például fejsze vagy csákány, amelyek gyűjtésre és barkácsolásra használhatók.
- **Shoes:** Cipők és csizmák, amelyeket a karakter viselhet.
- **Notifications:** Értesítések, amelyek fontos eseményekről vagy figyelmeztetésekről tájékoztatnak.
- **Active Skills:** Aktív képességek, amelyeket a játékos használhat a harc vagy más interakciók során.
- **Special Skills:** Speciális képességek, amelyek különleges hatásokat biztosítanak.
- **Shield:** Pajzs, amely védekezésre használható a harc során.
- **Passive Skills:** Passzív képességek, amelyek folyamatosan aktívak és bónuszokat nyújtanak.
- **Dialogue Box:** Párbeszédablak, ahol a játékos párbeszédeket folytathat NPC-kkel.
- **Buffs/Debuffs:** Ideiglenes erősítő vagy gyengítő hatások, amelyek befolyásolják a játékos statisztikáit.
- **Bag:** Táska, amely extra tárhelyet biztosít a játékos tárgyainak.
- **Level Indicator:** A játékos karakterének aktuális szintjét jelző sáv.
- **Active Effects:** Az aktív hatások listája, mint például buffok vagy debuffok, amelyek jelenleg a karakterre hatnak.
- **XP Bar:** Tapasztalati pontok sávja, amely a szintlépésig szükséges pontokat mutatja.
- **Gold (Currency):** A játék pénzneme, amelyet tárgyak vásárlására használhat a játékos.
- **Extra Item:** Különleges tárgy, amely különbözik a normál felszerelésektől és erősebb hatással bírhat.
- **List of Items:** A játékos összes birtokolt tárgyának listája.
- **Quest Items (Infinite Slots):** Küldetéstárgyak, amelyeknek külön tárhelye van és nincs mennyiségi korlátja.
- **Achievements:** Teljesítmények, amelyeket a játékos érhet el különféle kihívások teljesítésével.
- **System Messages:** Rendszerüzenetek, amelyek a játékkal kapcsolatos információkat közölnek, például hibajelzéseket vagy rendszerfrissítéseket.

- **Bushes:** Cserjék a játék világában, dekoratív vagy erőforrásként szolgálhatnak.
- **Stones:** Kövek, amelyeket gyűjteni lehet vagy akadályként jelenhetnek meg.
- **Path:** Útvonalak, amelyek segítik a játékost az eligazodásban.
- **Grass:** Fű, amely a játék világának természetes része, díszítő elem vagy forrás lehet.
- **Smithing:** Kovácsolás képesség, amely lehetővé teszi fegyverek és páncélok készítését.
- **Herbalism:** Gyógynövénytan képesség, amely lehetővé teszi a gyógynövények gyűjtését és felhasználását.
- **Trees:** Fák, amelyek részei a környezetnek, vagy akár erőforrásként használhatók.
- **Lava:** Láva, amely akadályokat képezhet vagy veszélyforrás lehet.
- **Rocks:** Sziklák, amelyeket gyűjthetők vagy akadályként funkcionálhatnak.
- **Trees on Fire:** Égő fák, amelyek veszélyforrást jelentenek.
- **Evil World:** Egy gonosz világ vagy birodalom a játékban, amely kihívásokat tartogat.
- **Desert:** Sivatagos terület, amely sajátos környezeti elemeket tartalmaz.
- **Ashes:** Hamvak, amelyek a környezet részei vagy akadályok lehetnek.
- **Cactus:** Kaktuszok a sivatagos területeken, amelyek dekorációként vagy akadályként jelenhetnek meg.
- **Tumbleweed:** Szélfújta növények, amelyek a sivatag hangulatát fokozzák.
- **Melee, Ranged:** Közelharci és távolsági támadási típusok.
- **Dried Tree:** Száraz fa, amely a sivatagos vagy elhagyatott területeken található.
- **Forest:** Erdős terület, amely gazdag növény- és állatvilágot tartalmaz.
- **Res Gathering:** Erőforrás-gyűjtés a játékos által szükséges alapanyagok megszerzésére.
- **NPC Dialogue System:** NPC-kel való párbeszédek rendszere.
- **Trading:** Kereskedelem, amely lehetővé teszi tárgyak cseréjét NPC-kkel.
- **Crafting and Gathering:** Tárgyak készítését és alapanyagok gyűjtését lehetővé tevő rendszer.
- **Faction Reputation:** A játékos hírneve különböző frakciókkal.
- **Quest Acceptance:** Küldetések elfogadása a játékos számára.
- **Environmental Elements:** A környezet elemei, amelyek befolyásolják a játékmenetet.
- **Interactions:** Interakciók különféle játékbeli elemekkel.
- **GAMEPLAY UI:** A játék felhasználói felülete, amely az információkat jeleníti meg.
- **Reputation System:** Hírnév rendszere, amely a játékos viszonyait szabályozza.
- **Combat System:** A harcrendszer, amely a játékbeli csatákat szabályozza.
- **Weather System:** Időjárási rendszer, amely dinamikus környezeti változásokat biztosít.
- **Day/Night:** Nappali és éjszakai ciklus a játékban.
- **Basic Attacks:** Alapvető támadások, amelyeket a játékos használhat.
- **Environments:** Különféle környezeti területek a játékban, mint erdők, sivatagok stb.
- **AOE Magic Spells:** Területre ható mágikus varázslatok.
- **Special Abilities:** Különleges képességek, amelyeket a játékos feloldhat.
- **Party System:** Csapatformálási rendszer, amely több karakter közös játékát teszi lehetővé.
- **Enemy AI:** Az ellenséges karakterek mesterséges intelligenciája.
- **Def Abilities:** Védekező képességek, amelyek csökkentik a sebzést.
- **Party Formation:** Csapat felállítása a játék során.
- **Aggro System:** Az ellenségek figyelmének vonzása.
- **World Objects:** Tárgyak a játék világában, amelyekkel a játékos kölcsönhatásba léphet.
- **Enemy Skills:** Az ellenségek speciális képességei.
- **KNIGHTS AGE:** A játék világa, amely különböző időszakokra oszlik.
- **Player:** A játékos által irányított karakter.
- **Quest System:** A küldetések rendszere, amely feladatokat kínál a játékosnak.
- **Quest Types:** Különféle küldetéstípusok, például fő, mellék és frakcióküldetések.
- **Main Quests:** Főküldetések, amelyek a játék fő történetét viszik előre.
- **NPCs:** Nem játékos karakterek, akikkel a játékos kommunikálhat.
- **Entity:** Minden élőlény és objektum a játék világában.
- **Mob:** Az ellenséges lények, amelyek a játékosra támadnak.
- **Side Quests:** Mellékküldetések, amelyek extra tartalmat nyújtanak.
- **Progression System:** Fejlődési rendszer, amely a karakter előrehaladását szabályozza.
- **Objectives:** A küldetések céljai.
- **Faction Quests:** Frakcióküldetések, amelyek a frakcióhoz kapcsolódnak.
- **AI Behaviour:** Az NPC-k és ellenfelek viselkedését irányító mesterséges intelligencia.
- **Enemies:** Az ellenségek, amelyek a játékosra veszélyt jelentenek.
- **Structures:** Építmények, amelyek dekorációként vagy funkcionális elemekként szolgálnak.
- **Attributes:** A játékos karakterének jellemzői, mint az erő vagy ügyesség.
- **Skill Points Allocation:** A képességpontok elosztása a játékos karaktere számára.
- **Leveling (max 5):** A játékos szintlépése, maximum 5 szintig.
- **Rewards:** Jutalmak, amelyeket a küldetések és kihívások teljesítéséért kap.
- **Dialogue Options:** Párbeszéd opciók az NPC-kel való interakció során.
- **Quest Givers, Merchants etc:** Küldetésadók és kereskedők, akiktől a játékos küldetéseket és tárgyakat kaphat.
- **Unlockable Abilities:** Képességek, amelyeket a játékos feloldhat.
- **Faction Allegiances:** A játékos kapcsolata a frakciókkal.
- **Traps:** Csapdák, amelyek akadályozzák vagy sebesítik a játékost.
- **Interactive Objects:** Olyan tárgyak, amelyekkel a játékos közvetlenül interakcióba léphet.
- **Items:** Tárgyak, amelyeket a játékos gyűjthet és használhat.
- **Weapons:** Fegyverek, amelyek a játékos harci képességeit növelik.
- **Xp, Gold, Equipment, Reputation:** Tapasztalati pontok, arany, felszerelések és hírnév, amelyeket a játékos megszerezhet.
- **Exploration Quests:** Felfedezéshez kötődő küldetések.
- **Collect Quests:** Gyűjtögetéshez kapcsolódó küldeté

## Alrendszerek

[INSERT UML DIAGRAM HERE]

### Felhasználói felület alrendszer

Ez az alrendszer felelős a játékban megjelenő elemek és menük kezeléséért, beleértve a HUD-ot, a főmenüt, és a különféle játékbeállítási opciókat.

**Osztályok:** MainMenu, Settings, Audio, Video, HUD, Inventory, Active Quests, Completed Quests, Map, Chat, Notifications, Dialogue Box, Online Players List, Achievements

### Játék mechanika alrendszer

Ez az alrendszer tartalmazza a játék főbb funkcióit, például a harcrendszert, a képességeket, a fejlesztési rendszert, és a küldetéseket.

**Osztályok:** Combat system, Progression system, Skills, Active skills, Passive skills, Special skills, Quests, Quest system, Quest types, Objectives, Rewards, Party system, Aggro system, Enemy AI

### Világ alrendszer

Ez az alrendszer felelős a játék világának felépítéséért, a különböző helyszínekért, elemekért, valamint a környezeti és időjárási hatásokért.

**Osztályok:** World objects, Environments, Weather system, Day/night, Forest, Desert, Evil world, Environmental elements, trees, stones, lava, NPC dialogue system

### Adatkezelés és mentés alrendszer

Ez az alrendszer kezeli a játékállások mentését és betöltését, valamint a felhő alapú mentéseket és a helyi mentési lehetőségeket.

**Osztályok:** Save system, Local/Cloud saved Games List, New Game, Continue, Import Game

### Multiplayer alrendszer

A többjátékos funkciókért felelős alrendszer, beleértve a csatlakozási lehetőségeket, játékok listáját, és a különböző többjátékos beállításokat.

**Osztályok:** Multiplayer, List Game, Host Game, Direct Connect, Join, My Games, New Game
