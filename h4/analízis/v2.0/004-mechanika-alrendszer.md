# Játék mechanika alrendszer modellje

## Statikus modell
 
### Kapcsolatok pontosítása

- **Item --- Inventory**  
  - Az `Inventory` osztály feladata az `Item` típusú objektumok rendszerezett tárolása.

- **Item --- ItemEntity**  
  - Az `ItemEntity` az `Item` egy eldobott állapotának reprezentációját valósítja meg.

- **FightEntity --- Inventory**  
  - Minden harcban résztvevő entitás rendelkezik egy `Inventory`-val, még akkor is, ha ez a felhasználói felületen nem jelenik meg.

- **FightEntity --- Attack**  
  - A harcban résztvevő entitások `Attack` típusú támadásokat hajtanak végre egymáson. A támadás hatása elsősorban a célpontot érinti, és a `get_attacked()` függvényen keresztül kerül végrehajtásra.

- **Consumable --- FightEntity**  
  - A harcban résztvevő entitások képesek `Consumable` típusú tárgyakat elfogyasztani, amelyek különböző hatásokat fejtenek ki. A leggyakoribb hatások elérhetők attribútumok formájában.

- **Attack --- AtkType**  
  - Az `AtkType` az `Attack` objektum típusát definiálja.

- **Player --- AtkType**  
  - A játékos esetében az `insanity_type()` függvény `AtkType` típusban adja vissza az őrület kategóriáját.

- **FightEntity --- Stats**  
  - A `Stats` osztály a harcban résztvevő entitások különböző tulajdonságait és paramétereit írja le.

- **Entity --- NPC**  
  - Az NPC-k (nem játékos karakterek) az `Entity` osztály kiterjesztései.

- **Entity --- FightEntity**  
  - A harcban résztvevő entitások az `Entity` osztály leszármazottai.

- **Shield --- FightEntity**  
  - A harcban résztvevő entitások pajzsot használhatnak védekezésre.

- **Armor --- FightEntity**  
  - A páncél szintén egy védekezésre alkalmas eszköz, amelyet a harcban résztvevő entitások használhatnak.

- **Weapon --- Attack**  
  - A fegyverek képesek `Attack` típusú támadások végrehajtására.

- **Weapon --- Projectile**  
  - Egyes fegyverek lövedékek kilövésére is alkalmasak.

- **Projectile --- Attack**  
  - A lövedékek szintén `Attack` típusú támadásokat hajtanak végre, így a `Weapon` és `Projectile` által végzett támadások egységesen kezelhetők.

- **EnvironEntity --- Entity**  
  - A környezeti entitások, például mozgatható kövek vagy talicskák, az `Entity` osztályhoz tartoznak.

- **EnvironEntity --- StorageEntity**  
  - A tárolásra szolgáló környezeti entitások, például ládák vagy hordók, szintén az `EnvironEntity` osztály leszármazottai. Ezek nem rendelkeznek `Inventory`-val, mivel nem bírnak olyan tulajdonságokkal (például kéz vagy fej), amelyek tárolást tennének lehetővé.

- **Entity --- Location**  
  - A `Location` az entitások térbeli elhelyezkedését és orientációját írja le.

- **Entity --- Movement**  
  - Az `Entity` mozgási tulajdonságait definiálja, beleértve az irányt és a sebességet, amely meghatározza, hogyan és milyen gyorsan változtatják helyüket.

- **Location --- Movement**  
  - A `Location` és a `Movement` szorosan összefügg, és együtt alkotják a fizikai szimuláció alapját.

- **Enemy --- FightEntity**  
  - Az ellenségek a harcrendszer résztvevő entitásai, azaz a `FightEntity` osztály leszármazottai.

- **Player --- FightEntity**  
  - A játékos szintén a `FightEntity` osztályba tartozik, és teljes értékű résztvevője a harcrendszernek.


### Attribútumok azonosítása

- **Entity**  
  - **location:** Az entitások térbeli elhelyezkedését és orientációját írja le.  
  - **movement:** Az entitások mozgási tulajdonságait, irányát és sebességét definiálja.  
  - **weight:** Az entitások tömegének meghatározására szolgál.  
  - **texture:** Az entitások megjelenését, vizuális reprezentációját határozza meg.

- **Consumable**  
  - **delta_hp:** Az adott tárgy által okozott változás a HP-ban (életerő).  
  - **delta_sp:** Az SP (mentális állóképesség) módosításának mértéke.  
  - **delta_manna:** A manna (mágikus energia) változásának értéke.  
  - **is_esoteric:** Meghatározza, hogy a tárgy rendelkezik-e ezoterikus hatással. Az ezoterikus hatások speciális függvényekkel egyedi módosításokat eredményezhetnek, bár az esetek túlnyomó többsége (kb. 95%) nem ilyen.

- **FightEntity**  
  - **lvl:** A harcban résztvevő entitás szintje (1-5 közötti érték), amely kulcsszerepet játszik a sebzés számításában.  
  - **max_hp:** Az entitás maximális életereje.  
  - **hp:** Az entitás aktuális életereje.  
  - **max_sp:** Az entitás maximális mentális állóképessége.  
  - **sp:** Az entitás aktuális mentális állóképessége.  
  - **manna:** Az entitás rendelkezésére álló mágikus energia.  
  - **max_manna:** Az entitás maximális mágikus energiája.  
  - **inventory:** Az entitáshoz társított `Inventory`, amely a birtokolt tárgyakat kezeli.

- **ItemEntity**  
  - **item:** Az `Item`, amelyet az entitás reprezentál.

- **Item**  
  - **name:** Az adott tárgy statikus neve.  
  - **costum_name:** A tárgy egyedi neve, amelyet a játékos opcionálisan megadhat.  
  - **description:** A tárgy részletes leírása.  
  - **icon:** A tárgyhoz társított ikon, amely a felhasználói felületen jelenik meg.  
  - **durability:** Az aktuális tartósság, amely az élettartam fennmaradó részét jelöli.  
  - **max_durability:** A tárgy eredeti tartóssága; nullával jelölve, ha a tárgy végtelen élettartamú.  
  - **max_nr:** A tárgyból egy slotban tárolható maximális mennyiség.  
  - **nr:** Az adott slotban jelenleg tárolt tárgyak száma.

- **Shield**  
  - Nincs különálló tulajdonsága, mivel az `Item` osztály már tartalmazza a szükséges attribútumokat.

- **Inventory**  
  - **gold:** Az entitásnál található arany mennyisége.  
  - **items:** Az általános tárgyak listája, amelyeket az entitás birtokol.  
  - **quest_items:** A küldetésekhez kapcsolódó tárgyak, amelyek nem foglalnak helyet a normál tárgylistában, és korlátlan mennyiségben tárolhatók.  
  - **head:** A sisak helye.  
  - **up_body:** A testpáncél helye.  
  - **low_body:** A lábpáncél helye.  
  - **pri_arm:** Az elsődleges kézben lévő tárgy; támadás kizárólag ebből a kézből hajtható végre.  
  - **sec_arm:** A másodlagos kézben lévő tárgy; védekezésre, például pajzs használatára szolgál.

- **Weapon**  
  - **attacks:** Egy támadás és valószínűség párosokat tartalmazó tömb. A támadás típusa a valószínűségi súlyok alapján kerül kiválasztásra.  
  - **manna_cost:** A fegyver használatához szükséges manna mennyisége. Ha nincs elegendő manna, a fegyver nem használható.

- **Attack**  
  - **atk_type:** A támadás típusa.  
  - **is_magic:** Meghatározza, hogy a támadás mágikus vagy fizikai eredetű.  
  - **range:** A sebzés lehetséges értékeit leíró intervallum. A tényleges sebzés egy véletlenszerűen kiválasztott érték az intervallumon belül.  
  - **push_back:** A támadás hátralökő hatásának értéke.  
  - **mpx_weights:** Négy nem-negatív szám, amelyek a `Multiplex` típusú támadások valószínűségeit határozzák meg (`Physical`, `Mental`, `Combined`, és `Percent` típusokra).

- **Projectile**  
  - **atk:** A lövedék által végrehajtott támadás.  
  - **owner:** A lövedéket kilövő entitás referenciája.

- **Player**  
  - **skill_set:** A játékos képességfája.  
  - **name:** A játékos neve.  
  - **active_quests:** Az aktív, még nem teljesített küldetések.  
  - **finished_quests:** A játékos által teljesített küldetések.  
  - **target:** Amennyiben a játékos őrült állapotban van, itt kerül tárolásra a célpont, akire az őrültsége irányul.

- **Enemy**  
  - **name:** Az ellenség statikus neve.  
  - **target:** Az entitás, amelyet az ellenség támadni szándékozik.  
  - **personality:** Az ellenség viselkedését és mesterséges intelligenciáját leíró attribútum.

- **NPC**  
  - **name:** Az NPC statikus neve.  
  - **quests:** Az NPC által kiadható küldetések listája.

- **EnvironEntity**  
  - **name:** Az entitás statikus neve.

- **StorageEntity**  
  - **costum_name:** Az egyedi, játékos által megadható név.  
  - **items:** Az entitás által tárolt tárgyak listája.

- **Armor**  
  - **lvl:** A páncél szintje.  
  - **armor_type:** A páncél típusa (sisak, testpáncél, lábpáncél).  
  - **orig_magic:** Az eredeti mágikus támadások elleni védelem.  
  - **orig_physics:** Az eredeti fizikai támadások elleni védelem.  
  - **type_physics:** A specifikus fizikai típusú támadások elleni védelem.  
  - **type_mental:** A specifikus mentális típusú támadások elleni védelem.  
  - **type_combined:** A kombinált támadások elleni védelem.  
  - **type_percent:** A százalékos alapú támadások elleni védelem.  
  - **anti_push_back:** A hátralökő hatás csökkentésének mértéke.

- **Stats**  
  - **strength:** Az entitás ereje.  
  - **intel:** Az entitás intelligenciája.  
  - **faith:** Az entitás hite (teológiai értelemben).  
  - **spirit_strength_ex:** Az alap hit értéktől való eltérés a spirituális erő szempontjából.  
  - **determination_ex:** Az alap hit értéktől való eltérés az eltökéltség szempontjából.  
  - **speed:** Az entitás mozgási sebessége.  
  - **move_speed_ex:** Az alap sebességtől való eltérés a mozgási sebesség szempontjából.
  - **atk_speed_ex:** A sebességhez képest a támadási sebesség eltérése. (alapértelmezetten azonos a sebességgel.)


### Bázisosztályok keresése

**Már azonosított bázis osztályok:**

- **Entity:** Az összes fizikai szimulációban részt vevő objektum általános bázisosztálya. Ez magában foglal minden olyan entitást, amely interakcióba léphet a környezettel.

- **FightEntity:** A harcrendszerben részt vevő entitások bázisosztálya. Ezek az entitások képesek támadások végrehajtására, illetve különböző harci interakciókban való részvételre.

- **Item:** A rendszerben használható tárgyak bázisosztálya. Az `Item` objektumokat az entitások különféle célokra használhatják.

- **Attack:** Az `Attack` osztály egy `FightEntity`-t érő támadást reprezentál, amely a harcrendszer egyik központi eleme.

**Azonosított, de elvetett bázis osztályok:**

- **NamedEntity:** Névvel rendelkező entitásokat leíró bázisosztály. Az osztály túl egyszerű koncepcióval rendelkezik ahhoz, hogy jelentős funkcionalitást vagy hozzáadott értéket biztosítson.

- **FightItem:** A harcrendszerben használatos tárgyakat (`Weapon`, `Shield`, `Armor`) összefogó bázisosztály. Azonban ezen elemek funkcionalitása és viselkedése túl eltérő ahhoz, hogy érdemi egységesítést biztosítson.

- **ItemOwnerEntity:** Azoknak az entitásoknak a bázisosztálya, amelyek képesek `Item`-ek tárolására. Mivel az osztály túlságosan általános és semmitmondó lenne, nem indokolt a használata.

- **BasicInventory:**  Egy egyszerű `Inventory` megvalósítás, amely kizárólag `Item`-ek tárolására szolgál fej-, kéz-, vagy egyéb speciális szegmensek nélkül. Gyakorlatilag csak egy `Item` tömböt reprezentálna, így nem indokolt külön osztályként kezelni.

- **ItemPickerEntity:** Az `ItemEntity` felvételére alkalmas entitásokat definiáló osztály. Jelenleg csak a `FightEntity` rendelkezik ilyen képességgel, így az osztály felesleges. Emellett ez a funkcionalitás hatékonyabban megvalósítható lenne az `Entity` osztály egy tulajdonságaként.


## Dinamikus modell

<div class="img-wrap">
<a href="mechanika-01.png" target="_blank"><img src="mechanika-01.png" alt="Játék mechanika alrendszer dinamikus modell" title="Játék mechanika alrendszer dinamikus modell"></a>
</div>
 
## Funkcionális modell

<div class="img-wrap">
<a href="mechanika-02.png" target="_blank"><img src="mechanika-02.png" alt="Játék mechanika alrendszer funkcionális modell" title="Játék mechanika alrendszer funkcionális modell"></a>
</div>

## Operációk azonosítása

## Az analízis modell osztálydiagramja

<div class="img-wrap">
<a href="mechanika-03.svg" target="_blank"><img src="mechanika-03.svg" alt="Játék mechanika alrendszer analízis modell osztálydiagramja" title="Játék mechanika alrendszer analízis modell osztálydiagramja"></a>
</div>

## Az analízis modell osztályainak listája

### Armor

- **Felelőssége, feladata:** Az Armor osztály a páncélokat reprezentálja a játékban. Feladata az, hogy kezelje a páncél típusát, szintjét, valamint a különböző védekezési tulajdonságokat (fizikai, mágikus stb.).
- **Együttműködők:** `FightEntity`, `Inventory`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`lvl`</td>
      <td>`uint`</td>
      <td>A páncél szintje</td>
    </tr>
    <tr>
      <td>`armor_type`</td>
      <td>`ArmorType`</td>
      <td>A páncél típusa</td>
    </tr>
    <tr>
      <td>`orig_physics`</td>
      <td>`float`</td>
      <td>Alapértelmezett fizikai eredetű támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`orig_magic`</td>
      <td>`float`</td>
      <td>Alapértelmezett mágikus eredetű támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`type_physics`</td>
      <td>`float`</td>
      <td>Páncél által nyújtott fizikai típusú támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`type_mental`</td>
      <td>`float`</td>
      <td>Páncél által nyújtott mentális típusú támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`type_combined`</td>
      <td>`float`</td>
      <td>Páncél által nyújtott kompinált típusú támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`type_percent`</td>
      <td>`float`</td>
      <td>Páncél által nyújtott százalékos típusú támadás elleni védelem</td>
    </tr>
    <tr>
      <td>`anti_push_back`</td>
      <td>`float`</td>
      <td>Visszalökődés elleni védelem</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Stats

- **Felelőssége, feladata:** A `Stats` osztály a játékban szereplő entitások alapvető statisztikáit kezeli, beleértve az erőt, intelligenciát, hitet és ezek különböző módosítóit. Feladata ezen értékek tárolása és számított statisztikák biztosítása.
- **Együttműködők:** `FightEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`strength`</td>
      <td>`int`</td>
      <td>A fizikai erő értéke</td>
    </tr>
    <tr>
      <td>`intel`</td>
      <td>`int`</td>
      <td>Az intelligencia értéke</td>
    </tr>
    <tr>
      <td>`faith`</td>
      <td>`int`</td>
      <td>A hit értéke</td>
    </tr>
    <tr>
      <td>`spirit_strength_ex`</td>
      <td>`int`</td>
      <td>A szellemi erő módosított értéke a hithez képest</td>
    </tr>
    <tr>
      <td>`determination_ex`</td>
      <td>`int`</td>
      <td>Az elszántság módosított értéke a hithez képest</td>
    </tr>
    <tr>
      <td>`speed`</td>
      <td>`int`</td>
      <td>Az alap sebesség értéke</td>
    </tr>
    <tr>
      <td>`move_speed_ex`</td>
      <td>`int`</td>
      <td>A mozgási sebesség módosított értéke a sebességhez képest</td>
    </tr>
    <tr>
      <td>`atk_speed_ex`</td>
      <td>`int`</td>
      <td>A támadási sebesség módosított értéke a sebességhez képest</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`spirit_strength()`</td>
      <td>Nincs</td>
      <td>Visszaadja a szellemi erő aktuális értékét</td>
    </tr>
    <tr>
      <td>`determination()`</td>
      <td>Nincs</td>
      <td>Visszaadja az elszántság aktuális értékét</td>
    </tr>
    <tr>
      <td>`mov_speed()`</td>
      <td>Nincs</td>
      <td>Visszaadja a mozgási sebesség értékét (`speed` + `move_speed_ex`)</td>
    </tr>
    <tr>
      <td>`atk_speed()`</td>
      <td>Nincs</td>
      <td>Visszaadja az támadási sebesség értékét (`speed` + `atk_speed_ex`)</td>
    </tr>
    <tr>
      <td>`strength_lvl()`</td>
      <td>Nincs</td>
      <td>Visszaadja az erő szintjét (a szint a tényleges érték alapján jön létre, attól függően, hogy eléri vagy nem a szükséges minimum értéket a szinthez)</td>
    <tr>
      <td>`intel_lvl()`</td>
      <td>Nincs</td>
      <td>Visszaadja az intelligencia szintjét (a szint a tényleges érték alapján jön létre, attól függően, hogy eléri vagy nem a szükséges minimum értéket a szinthez)</td>
    </tr>
    <tr>
      <td>`faith_lvl()`</td>
      <td>Nincs</td>
      <td>Visszaadja a hit szintjét (a szint a tényleges érték alapján jön létre, attól függően, hogy eléri vagy nem a szükséges minimum értéket a szinthez)</td>
    </tr>
    <tr>
      <td>`speed_lvl()`</td>
      <td>Nincs</td>
      <td>Visszaadja a sebesség szintjét (a szint a tényleges érték alapján jön létre, attól függően, hogy eléri vagy nem a szükséges minimum értéket a szinthez)</td>
    </tr>
    </tr>
    <tr>
      <td>`full_lvl()`</td>
      <td>Nincs</td>
      <td>Visszaadja a játékos szintjét, ami a fentebb említett 4 szint átlaga</td>
    </tr>
  </tbody>
</table>

### Entity

- **Felelőssége, feladata:** Az alapvető entitások közös tulajdonságait reprezentálja a játékban. Ez az osztály szolgál alapként a többi entitáshoz.
- **Együttműködők:** `FightEntity`, `NPC`, `EnvironEntity`, `StorageEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`location`</td>
      <td>`Location`</td>
      <td>Az entitás aktuális helyzete a világban</td>
    </tr>
    <tr>
      <td>`movement`</td>
      <td>`Movement`</td>
      <td>Az entitás mozgási adatai</td>
    </tr>
    <tr>
      <td>`weight`</td>
      <td>`float`</td>
      <td>Az entitás súlya</td>
    </tr>
    <tr>
      <td>`texture`</td>
      <td>`Texture`</td>
      <td>Az entitás vizuális megjelenéséhez tartozó textúra</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`_ready()`</td>
      <td>Nincs</td>
      <td>Az entitás inicializálására szolgáló belső metódus</td>
    </tr>
    <tr>
      <td>`_physics_process()`</td>
      <td>`delta: float`</td>
      <td>A fizikai szimuláció minden frissítésében lefutó metódus</td>
    </tr>
    <tr>
      <td>`destroy()`</td>
      <td>Nincs</td>
      <td>Az entitás elpusztulásakor lefutó metódus</td>
    </tr>
  </tbody>
</table>

### FightEntity

- **Felelőssége, feladata:** A harcban résztvevő entitásokat reprezentálja. Tartalmazza az életpontokkal, mannával és statisztikákkal kapcsolatos adatokat, valamint az inventory-t.
- **Együttműködők:** `Entity`, `Stats`, `Inventory`, `Attack`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`lvl`</td>
      <td>`uint`</td>
      <td>Az entitás szintje</td>
    </tr>
    <tr>
      <td>`max_hp`</td>
      <td>`uint`</td>
      <td>Az entitás maximális életereje</td>
    </tr>
    <tr>
      <td>`max_sp`</td>
      <td>`uint`</td>
      <td>Az entitás maximális SP értéke</td>
    </tr>
    <tr>
      <td>`max_mana`</td>
      <td>`uint`</td>
      <td>Az entitás maximális mannája</td>
    </tr>
    <tr>
      <td>`hp`</td>
      <td>`uint`</td>
      <td>Az entitás aktuális életereje</td>
    </tr>
    <tr>
      <td>`sp`</td>
      <td>`uint`</td>
      <td>Az entitás aktuális SP értéke</td>
    </tr>
    <tr>
      <td>`mana`</td>
      <td>`uint`</td>
      <td>Az entitás aktuális mannája</td>
    </tr>
    <tr>
      <td>`inventory`</td>
      <td>`Inventory`</td>
      <td>Az entitás által birtokolt tárgyak</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`get_attacked()`</td>
      <td>`by: &FightEntity`, `atk: Attack`</td>
      <td>Kezeli a harci támadást egy másik entitás részéről. A _támadott_ entitáson hívodik meg a _támadó_ által. A `by` argumentum a támadó.</td>
    </tr>
    <tr>
      <td>`try_pick_up_item()`</td>
      <td>`item_entity: &ItemEntity`</td>
      <td>Megpróbálja felvenni a megadott tárgyat. Visszaadja, hogy skerült-e felvenni.</td>
    </tr>
    <tr>
      <td>`drop_item()`</td>
      <td>`item: &Item`</td>
      <td>Kidobja a megadott tárgyat az inventory-ból.</td>
    </tr>
  </tbody>
</table>

### Inventory

- **Felelőssége, feladata:** A játékos vagy más entitás által birtokolt tárgyak kezeléséért felel. Tárolja a normál tárgyakat, a küldetéshez kötődő tárgyakat, valamint a felszerelt páncélokat.
- **Együttműködők:** `Item`, `Armor`, `ItemEntity`, `Weapon`, `Shield`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`gold`</td>
      <td>`int`</td>
      <td>Az enttás által birtokolt arany mennyisége</td>
    </tr>
    <tr>
      <td>`items`</td>
      <td>`[Item]`</td>
      <td>Az entitás inventory-jában lévő tárgyak listája</td>
    </tr>
    <tr>
      <td>`quest_items`</td>
      <td>`[Item]`</td>
      <td>Küldetéshez kötődő tárgyak listája</td>
    </tr>
    <tr>
      <td>`head`</td>
      <td>`Armor`</td>
      <td>Az entitás által viselt sisak</td>
    </tr>
    <tr>
      <td>`up_body`</td>
      <td>`Armor`</td>
      <td>Az entitás által viselt testpáncél</td>
    </tr>
    <tr>
      <td>`low_body`</td>
      <td>`Armor`</td>
      <td>Az entitás által viselt lábpáncél</td>
    </tr>
    <tr>
      <td>`pri_arm`</td>
      <td>`Item`</td>
      <td>Az entitás által viselt elsődleges item</td>
    </tr>
    <tr>
      <td>`sec_arm`</td>
      <td>`Item`</td>
      <td>Az entitás által viselt másodlagos item</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>


### Item

- **Felelőssége, feladata:** Az összes tárgy alapját képezi a játékban. Leírja a tárgy nevét, kinézetét, leírását, és alapvető tulajdonságait, például a tartósságot.
- **Együttműködők:** `Inventory`, `ItemEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`name`</td>
      <td>`static str`</td>
      <td>A tárgy neve</td>
    </tr>
    <tr>
      <td>`custom_name`</td>
      <td>`String`</td>
      <td>A tárgy egyedi neve, amelyet a játékos adhat meg</td>
    </tr>
    <tr>
      <td>`description`</td>
      <td>`Description`</td>
      <td>A tárgy részletes leírása</td>
    </tr>
    <tr>
      <td>`icon`</td>
      <td>`Image`</td>
      <td>A tárgyhoz tartozó ikon</td>
    </tr>
    <tr>
      <td>`durability`</td>
      <td>`uint`</td>
      <td>A tárgy jelenlegi tartóssága</td>
    </tr>
    <tr>
      <td>`max_durability`</td>
      <td>`uint`</td>
      <td>A tárgy maximális tartóssága</td>
    </tr>
    <tr>
      <td>`nr`</td>
      <td>`uint`</td>
      <td>A tárgy aktuális darabszáma</td>
    </tr>
    <tr>
      <td>`max_nr`</td>
      <td>`uint`</td>
      <td>A tárgy maximális darabszáma egy slotban</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### ItemEntity

- **Felelőssége, feladata:** Eldobott, "földön lévő" `Item` represzentációja.
- **Együttműködők:** `Item`, `FightEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`item`</td>
      <td>`Item`</td>
      <td>A tárgy referencia, amelyet az `ItemEntity` képvisel</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Shield

- **Felelőssége, feladata:** Pajzs. Felére csökkent minden támadást, ha az entitás éppen védekezik vele. Csak másodlagos kézben (`sec_arm`) lehet használni.
- **Együttműködők:** `Item`, `FightEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Enemy

- **Felelőssége, feladata:** A játékban szereplő ellenségeket reprezentálja. Leírja az ellenség nevét, személyiségét, és azt, hogy melyik entitást támadják.
- **Együttműködők:** `FightEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`name`</td>
      <td>`static str`</td>
      <td>Az ellenség neve</td>
    </tr>
    <tr>
      <td>`personality`</td>
      <td>`Personality`</td>
      <td>Az ellenség viselkedési mintája</td>
    </tr>
    <tr>
      <td>`target`</td>
      <td>`Optional<&FightEntity>`</td>
      <td>Az ellenség célpontja a harcban</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### NPC

- **Felelőssége, feladata:** A nem játékos karaktereket (Non-Player Characters) írja le. Kezeli az NPC-hez kapcsolódó küldetéseket és párbeszédeket.
- **Együttműködők:** `Quest`, `Player`, `Entity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`name`</td>
      <td>`static str`</td>
      <td>Az NPC neve</td>
    </tr>
    <tr>
      <td>`quests`</td>
      <td>`[Quest]`</td>
      <td>Az NPC által adott küldetések listája</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`enter_dialog`</td>
      <td>Nincs</td>
      <td>Elindít egy párbeszédet az NPC-vel</td>
    </tr>
  </tbody>
</table>

### Consumable

- **Felelőssége, feladata:** A fogyasztható tárgyakat írja le, amelyek hatással vannak az életerőre, mannára vagy SP-re. Különleges hatásokat is biztosíthat.
- **Együttműködők:** `Item`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`delta_hp`</td>
      <td>`int`</td>
      <td>A tárgy által visszaadott vagy elvett életerő</td>
    </tr>
    <tr>
      <td>`delta_sp`</td>
      <td>`int`</td>
      <td>A tárgy által visszaadott vagy elvett SP</td>
    </tr>
    <tr>
      <td>`delta_manna`</td>
      <td>`int`</td>
      <td>A tárgy által visszaadott vagy elvett manna</td>
    </tr>
    <tr>
      <td>`is_esoteric`</td>
      <td>`bool`</td>
      <td>Jelöli, hogy a tárgy ezotérikus hatásokkal bír-e</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`esoteric_effect`</td>
      <td>`consumer: &FightEntity`</td>
      <td>Ezotérikus hatás alkalmazása. Csak akkor hívódik meg, ha az `is_esoteric` igaz.</td>
    </tr>
  </tbody>
</table>

### Projectile

- **Felelőssége, feladata:** A játékban kilőtt lövedékeket írja le. Kezeli a lövedék támadásának típusát és tulajdonosát.
- **Együttműködők:** `Attack`, `FightEntity`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`atk`</td>
      <td>`Attack`</td>
      <td>A lövedék támadási adatai</td>
    </tr>
    <tr>
      <td>`owner`</td>
      <td>`&FightEntity`</td>
      <td>A lövedéket kilövő entitásra mutató referencia</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Attack

- **Felelőssége, feladata:** A támadások adatait írja le, beleértve a támadás típusát, távolságát, lökéshatását és egyéb paramétereket.
- **Együttműködők:** `Weapon`, `Projectile`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`atk_type`</td>
      <td>`AtkType`</td>
      <td>A támadás típusa</td>
    </tr>
    <tr>
      <td>`is_magic`</td>
      <td>`bool`</td>
      <td>Jelöli, hogy a támadás mágikus eredetű-e</td>
    </tr>
    <tr>
      <td>`range`</td>
      <td>`[uint; 2]`</td>
      <td>A támadás álltal okozott sebzés intervalluma. Támadás során ebből az intervallumból lesz választódik egy random érték.</td>
    </tr>
    <tr>
      <td>`push_back`</td>
      <td>`uint`</td>
      <td>A támadás által okozott lökéshatás mértéke</td>
    </tr>
    <tr>
      <td>`mpx_weights`</td>
      <td>`[uint; 4]`</td>
      <td>Multiplex típusú támadás esetén, hogy melyik támadásra mennyi esély van a normáls típusúak közül</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`esoteric_atk`</td>
      <td>`from: &FightEntity`, `to: &FightEntity`</td>
      <td>Ezotérikus támadási hatás végrehajtása. Csak akkor, ha a támadás típusa `Esoteric`.</td>
    </tr>
  </tbody>
</table>

### EnvironEntity

- **Felelőssége, feladata:** A játék "környezeti" entitásait reprezentálja. Ezek általában a térképen található objektumok.
- **Együttműködők:** `Entity`.

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`name`</td>
      <td>`static str`</td>
      <td>A környezeti entitás neve</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### StorageEntity

- **Felelőssége, feladata:** Azokat az objektumokat írja le, amelyekben tárgyakat lehet tárolni, például ládákat.
- **Együttműködők:** `Item`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`costum_name`</td>
      <td>`String`</td>
      <td>A tároló egyedi neve, amit a játékos adhat meg.</td>
    </tr>
    <tr>
      <td>`items`</td>
      <td>`[Item]`</td>
      <td>A tárolóban található tárgyak listája</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Weapon

- **Felelőssége, feladata:** A játékban használható fegyvereket írja le, beleértve a támadásokat és a manna költséget.
- **Együttműködők:** `Attack`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`attacks`</td>
      <td>`[(Attack, uint)]`</td>
      <td>A fegyver támadásai, és azok valószínűségének "súlyai". A támadás során random dől el, hogy melyik következik be.</td>
    </tr>
    <tr>
      <td>`manna_cost`</td>
      <td>`uint`</td>
      <td>A támadásokhoz szükséges manna mennyisége</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

### Player

- **Felelőssége, feladata:** A játékos karaktert írja le, beleértve a képességeket, a teljesített küldetéseket és az aktuális célpontot.
- **Együttműködők:** `FightEntity`, `Quest`, `Stats`

**Attribútumok:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Típus</th>
      <th>Leírás</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`skill_set`</td>
      <td>`Skills`</td>
      <td>A játékos képességei</td>
    </tr>
    <tr>
      <td>`name`</td>
      <td>`String`</td>
      <td>A játékos neve</td>
    </tr>
    <tr>
      <td>`active_quests`</td>
      <td>`[Quest]`</td>
      <td>A játékos által aktívan végzett küldetések</td>
    </tr>
    <tr>
      <td>`finished_quests`</td>
      <td>`[Quest]`</td>
      <td>A játékos által befejezett küldetések</td>
    </tr>
    <tr>
      <td>`target`</td>
      <td>`Optional<FightEntity>`</td>
      <td>A játékos aktuális célpontja, ha épp elmezavart állapotban van</td>
    </tr>
  </tbody>
</table>

**Operációk:**

<table>
  <thead>
    <tr>
      <th>Név</th>
      <th>Argumentumok</th>
      <th>Működése, feladata</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>`insanity_type()`</td>
      <td>Nincs</td>
      <td>A játékos elmezavar típusát adja vissza. Csak "normális" típus (nem `Multiplex` vagy `Esoteric`) lehet. A `Stats` alapján számítódik ki.</td>
    </tr>
    <tr>
      <td>`process_input()`</td>
      <td>`Input`</td>
      <td>Feldolgozza a játékos bemenetét (pl. irányítás)</td>
    </tr>
  </tbody>
</table>
