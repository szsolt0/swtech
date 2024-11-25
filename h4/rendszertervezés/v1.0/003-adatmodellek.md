# Adatmodellek

## Adatbázis kezelő kiválasztása

## Szemantikai adatmodell

<div class="img-wrap">
<a href="szemantikai-modell.png" target="_blank"><img src="szemantikai-modell.png" alt="Szemantikai adatmodell" title="Szemantikai adatmodell"></a>
</div>

## Relációs adatmodell

<div class="img-wrap">
<a href="relációs-modell.png" target="_blank"><img src="relációs-modell.png" alt="Relációs adatmodell" title="Relációs adatmodell"></a>
</div>

## Az adatbázis kezelővel kapcsolatot tartó osztályok

### Adatbázis Kezelő Osztályok Áttekintése

**Definíció és Szerep**

Az adatbázis kezelővel kapcsolatot tartó osztályok felelősek az alkalmazás és az adatbázis közötti
kommunikációért. Ez magában foglalja az adatok lekérdezését, módosítását, törlését és beszúrását. Az
ilyen osztályok alapvető szerepe az, hogy biztosítsák az adatbázis műveletek hatékony és biztonságos
végrehajtását.

**Funkciók és Feladatok**

- **Kapcsolat létrehozása és kezelése:** Az adatbázis kapcsolat létrehozása, hitelesítési adatok kezelése, kapcsolat bontása, és a kapcsolat állapotának figyelése.
- **SQL lekérdezések végrehajtása:** SQL lekérdezések összeállítása, előkészítése és futtatása, valamint az eredményhalmaz kezelése.
- **Tranzakciók kezelése:** Tranzakciók indítása, elkötelezése és visszagörgetése.

## Osztályok Kialakítása és Felépítése

**Adatbázis Kapcsolat Osztály (Connection Class)**

- **Felelőssége, feladata:** Az adatbázis kapcsolat osztály felelős az adatbázishoz való csatlakozásért. Ez magában foglalja a kapcsolat létrehozását, a bejelentkezési adatok kezelését, a kapcsolat bontását és a kapcsolat állapotának figyelését.

- **Együttműködők:**
  - **ImportGame:** Adatimportáláshoz.
  - **LocalCloudSavedGameList:** Mentett játékok listájának kezeléséhez.
  - **Continue:** Mentett játék betöltéséhez.
  - **New Game:** Új játék létrehozásához.

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
            <td>`databaseURL`</td>
            <td>`String`</td>
            <td>Az adatbázis elérési útja</td>
        </tr>
        <tr>
            <td>`username`</td>
            <td>`String`</td>
            <td>A felhasználónév</td>
        </tr>
        <tr>
            <td>`password`</td>
            <td>`String`</td>
            <td>A jelszó</td>
        </tr>
        <tr>
            <td>`connection`</td>
            <td>`Connection`</td>
            <td>Az adatbázis kapcsolat objektuma</td>
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
            <td>`connect()`</td>
            <td>Nincs</td>
            <td>Létrehozza az adatbázis kapcsolatot</td>
        </tr>
        <tr>
            <td>`disconnect()`</td>
            <td>Nincs</td>
            <td>Bontja az adatbázis kapcsolatot</td>
        </tr>
        <tr>
            <td>`isConnected()`</td>
            <td>Nincs</td>
            <td>Ellenőrzi, hogy az adatbázis kapcsolat aktív-e</td>
        </tr>
    </tbody>
</table>

**Lekérdezés Kezelő Osztály (Query Handler Class)**

- **Felelőssége, feladata:** Az SQL lekérdezés kezelő osztály felelős az SQL lekérdezések összeállításáért és végrehajtásáért.
- **Együttműködők:**
  - **SaveSystem:** Az adatbázis kapcsolat osztály segítségével végrehajtott lekérdezésekhez.
  - **Continue:** Az SQL lekérdezések eredményének feldolgozásához.

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
            <td>`sqlQuery`</td>
            <td>`String`</td>
            <td>Az SQL lekérdezés szövege</td>
        </tr>
        <tr>
            <td>`resultSet`</td>
            <td>`ResultSet`</td>
            <td>Az SQL lekérdezés eredményhalmaza</td>
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
            <td>`executeQuery()`</td>
            <td>`String query`</td>
            <td>Végrehajt egy SQL lekérdezést</td>
        </tr>
        <tr>
            <td>`executeUpdate()`</td>
            <td>`String query`</td>
            <td>Végrehajt egy SQL módosító lekérdezést</td>
        </tr>
        <tr>
            <td>`prepareStatement()`</td>
            <td>`String query`</td>
            <td>Előkészít egy SQL lekérdezést</td>
        </tr>
    </tbody>
</table>


**Adatbázis Tranzakció Kezelő Osztály (Transaction Manager Class)**

- **Felelőssége, feladata:** Az adatbázis tranzakció kezelő osztály felelős az adatbázis tranzakciók kezeléséért (BEGIN, COMMIT, ROLLBACK).
- **Együttműködők:**
  - **SaveSystem:** A tranzakciók indításához és kezeléséhez.
  - **LocalCloudSavedGameList:** Tranzakciók kezeléséhez a mentett játékok szinkronizálása során.

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
            <td>`beginTransaction()`</td>
            <td>Nincs</td>
            <td>Elindít egy tranzakciót</td>
        </tr>
        <tr>
            <td>`commit()`</td>
            <td>Nincs</td>
            <td>Elkötelezi a tranzakciót</td>
        </tr>
        <tr>
            <td>`rollback()`</td>
            <td>Nincs</td>
            <td>Visszagörgeti a tranzakciót</td>
        </tr>
    </tbody>
</table>


### Tervezési Minták és Legjobb Gyakorlatok

**DAO (Data Access Object) Minta**

A DAO minta segít az adatbázis műveletek absztrakciójában és elkülönítésében az üzleti logikától. Az
adatbázis műveletek külön osztályokba szervezése tisztább és karbantarthatóbb kódot eredményez.

**Repository Minta**

A repository minta az adatelérés centralizálására szolgál, megkönnyítve ezzel a tesztelhetőséget és az
adatelérési logika újrafelhasználhatóságát.

**Singleton Minta**

A Singleton minta biztosítja, hogy egy osztályból csak egy példány létezik. Az adatbázis kapcsolat
osztály esetében a Singleton minta használata garantálja, hogy mindig ugyanazt a kapcsolatot
használjuk az alkalmazásban.

### Hibakezelés és Biztonság

**Hibakezelés**

Az adatbázis műveletek során fellépő hibák kezelése try-catch blokkok használatával történik. A hibák
loggolása is fontos a későbbi hibaelhárítás és nyomon követés érdekében.

**Biztonsági Szempontok**

Az adatbázis kapcsolatok biztonságos kezelése magában foglalja a jelszavak titkosítását, az SQL
injekció megelőzését előkészített állítások használatával és a szerepkör-alapú hozzáférés
szabályozását.
