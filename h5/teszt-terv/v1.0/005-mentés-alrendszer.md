# Adatkezelés és mentés alrendszer

## Automatikus tesztek

### Mentés létrehozása teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem         A saveGame() metódust hívjuk meg. A
  megfelelően menti a játékállapotot  visszaolvasott mentés pontosan
  az SRS dokumentáció szerint. Az     megegyezik az eredeti állapottal,
  aktuális játékállapotot a           ez garantálja a teszt sikerességét.
  saveGame() metódussal mentjük, majd
  a fájlt visszaolvasva
  összehasonlítjuk az eredeti
  állapottal.

  -----------------------------------------------------------------------

### Mentett fájl elérési út teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem         A getSaveFilePath() metódust hívjuk
  megfelelő fájlelérési utat generál  meg. Az elérési út pontosan egyezik
  az adott mentés számára. Egy        a várt útvonal formátumával, ez
  mentést hozunk létre, majd a        biztosítja a teszt sikerességét.
  getSaveFilePath() metódus
  eredményét összehasonlítjuk a várt
  elérési úttal.

  -----------------------------------------------------------------------

### Törlés funkció teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem         A deleteSavedGame() metódust
  megfelelően törli a kiválasztott    használjuk. A törölt mentés már nem
  mentéseket. Egy mentést hozunk      található meg a mentések
  létre, majd a deleteSavedGame()     listájában, ami a teszt sikerességi
  metódust hívjuk meg. Ezután         feltétele.
  ellenőrizzük, hogy a mentés már nem
  létezik.

  -----------------------------------------------------------------------

### Szinkronizáció teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a                    A syncWithCloud() metódust
  LocalCloudSavedGameList             alkalmazzuk. A mentés elérhetővé
  szinkronizálja-e a mentéseket       válik a felhőben és a helyi
  helyben és a felhőben. Helyi        listában is, ami a teszt
  mentést hozunk létre, majd a        sikerességét jelenti.
  syncWithCloud() metódussal
  szinkronizáljuk.

  -----------------------------------------------------------------------

### Importált mentés validálása teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy az ImportGame        A validateImportedGame() metódust
  validálja-e az importált            hívjuk meg. A sérült mentés
  mentéseket. Egy sérült mentést      validálása nem sikerül (hamis
  próbálunk importálni a              eredmény), ez a teszt sikerességi
  validateImportedGame() metódussal.  feltétele.

  -----------------------------------------------------------------------

## Manuális tesztek

### Új mentés létrehozás UI teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem UI      A mentést a UI-n keresztül végezzük
  megfelelően jelzi-e a sikeres       el. A mentés azonnal megjelenik a
  mentést. A felhasználó új játékot   mentések listájában a megfelelő
  ment a játék UI-ján keresztül, majd névvel és dátummal, ami a teszt
  ellenőrzi, hogy a mentés            sikerességét jelenti.
  megjelenik-e a mentések listájában.

  -----------------------------------------------------------------------

### Mentett játék betöltése UI teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem UI-n    A mentést a betöltési képernyőn
  keresztül betöltött mentés helyesen keresztül választjuk ki. A játék
  visszaállítja a játékállapotot. Egy pontosan az adott mentett
  mentést választunk ki a betöltési   állapotban indul, ez biztosítja a
  képernyőről, majd ellenőrizzük,     teszt sikerességét.
  hogy a játék az adott állapotban
  indul-e.

  -----------------------------------------------------------------------

### Felhőszinkronizáció állapotjelzés teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a                    A szinkronizációt manuálisan
  LocalCloudSavedGameList UI helyesen végezzük. Az állapotjelző a
  jelzi-e a szinkronizáció állapotát. szinkronizáció eredményét pontosan
  A felhőszinkronizációt manuálisan   tükrözi, ez garantálja a teszt
  elindítjuk, majd ellenőrizzük, hogy sikerességét.
  az állapotjelző pontosan frissül-e.

  -----------------------------------------------------------------------

### Importálás hibajelzés teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy az ImportGame UI     A hibás fájlt az UI-n keresztül
  megfelelően jelzi-e a hibás         importáljuk. A rendszer érthető
  importálást. Egy hibás fájlt        hibaüzenetet jelenít meg a
  próbálunk importálni a játék UI-ján felhasználónak, ez a teszt
  keresztül, és megfigyeljük a        sikerességi feltétele.
  hibajelzést.

  -----------------------------------------------------------------------

### Törlés megerősítése teszt

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a SaveSystem UI      A törlést a UI-n keresztül
  helyesen kezeli a törlés            végezzük. A rendszer csak akkor
  megerősítését. Egy mentés törlését  törli a mentést, ha a felhasználó
  kezdeményezzük a UI-n keresztül,    megerősíti a műveletet, ami a teszt
  majd megvizsgáljuk, hogy a rendszer sikerességét jelenti.
  kéri-e a törlés megerősítését.

  -----------------------------------------------------------------------
