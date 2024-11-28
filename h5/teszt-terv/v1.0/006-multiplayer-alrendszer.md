# Multiplayer alrendszer tesztek

## Automatikus tesztek

### Kliens-szerver kapcsolat stabilitása

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Annak ellenőrzése, hogy a kliens    A kliens csatlakozik a szerverhez,
  képes-e stabilan kapcsolódni a      és ellenőrizzük, hogy a kapcsolat
  szerverhez egy hosszabb időszak     stabil marad-e egy meghatározott
  alatt.                              időszakon (pl. 1 órán) keresztül.
                                      Ezt úgy teszteljük, hogy a kliens
                                      kapcsolódását figyeljük egy előre
                                      beállított időn keresztül, és a
                                      végén újra ellenőrizzük a kapcsolat
                                      állapotát. Ha a kapcsolat végig
                                      fennmaradt, a teszt sikeres.

  -----------------------------------------------------------------------

### Játékos adatok szinkronizációja

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Annak ellenőrzése, hogy a játékos   Mozgást indítunk a klienssel, majd
  pozíciója és állapota helyesen      ellenőrizzük, hogy a szerver
  szinkronizálódik a szerver és a     frissítette-e a játékos pozícióját.
  többi játékos között.               A teszt során a kliens pozícióját
                                      elküldjük a szervernek, amelyet
                                      később összevetünk a szerveren
                                      tárolt pozícióval. Ha az adatok
                                      helyesen szinkronizálódtak, a teszt
                                      sikeres.

  -----------------------------------------------------------------------

### Játékosok közötti interakció

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Automatikusan ellenőrizzük, hogy a  Egy játékos támadást indít a másik
  játékosok képesek-e egymással       ellen, és figyeljük, hogy a támadás
  interakcióba lépni (pl. harc vagy   csökkenti-e a célpont életerejét. A
  kereskedelem).                      kliens elküldi a támadási parancsot
                                      a szervernek, amely ezt
                                      feldolgozza, és frissíti a másik
                                      játékos állapotát. Ha a támadás
                                      sikeres és a másik játékos
                                      életereje csökken, a teszt sikeres.

  -----------------------------------------------------------------------

### Üzenet késleltetés (lag) mérése

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  A szerver és a kliens közötti       Egy ping üzenetet küldünk a
  késleltetés (lag) mérésének         szervernek, és megmérjük az időt,
  tesztelése.                         amíg a válasz visszaérkezik. Ha az
                                      üzenet késleltetése kevesebb, mint
                                      egy adott időkorlát (pl. 500 ms),
                                      akkor a teszt sikeres. A kliens
                                      elküldi a ping üzenetet, a szerver
                                      fogadja és visszaküldi a választ,
                                      amelynek időzítését figyeljük.

  -----------------------------------------------------------------------

### Helyes adatmentés és visszaállítás

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  A játékos adatai helyes mentésének  A játék során elmentjük a játékos
  és visszaállításának és             állapotát, majd kilépünk és újra
  frissítésének ellenőrzése.          betöltjük a játékot. A
                                      visszatöltött állapotot összevetjük
                                      az elmentett adatokkal. Ha az
                                      adatok helyesen mentődtek el, és
                                      visszaállítás után megegyeznek az
                                      eredeti állapotokkal, akkor a teszt
                                      sikeres.

  -----------------------------------------------------------------------

## Manuális tesztek

### Közös térképen való megjelenés ellenőrzése

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteli, hogy a játékos és egy     Elindítjuk két játékos karakterét
  másik játékos ugyanabba a térképbe  két külön kliensről, majd
  lépnek, és meg kell győződni arról, mindkettővel csatlakozunk a
  hogy mindketten látják egymást a    multiplayer szerverhez. A
  térképen.                           karaktereket ugyanabba a térképbe
                                      visszük. Figyeljük meg, hogy a
                                      másik játékos karaktere látható-e
                                      mindkét kliensen. Ha mindkét
                                      karakter jól látható, a teszt
                                      sikeres.

  -----------------------------------------------------------------------

### Tárgyak kereskedelme más játékossal

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Egyik karakterünk átad egy tárgyat  Belépünk két különböző karakterrel
  egy másik karakternek, és           a játékba, és kezdeményezünk
  ellenőrizzük a kereskedelem helyes  kereskedelmet közöttük. Áthelyezünk
  működését.                          egy tárgyat az egyik karaktertől a
                                      másikhoz, majd megfigyeljük, hogy a
                                      tárgy megjelenik-e a másik karakter
                                      tárgylistájában. Ha a tárgyat
                                      sikeresen átadtuk, a teszt sikeres.

  -----------------------------------------------------------------------

### Chat üzenetek küldése és fogadása

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteljük, hogy a két karakterünk  Elindítunk két játékos karaktert,
  között megfelelően működik-e a chat és mindkettőt csatlakoztatjuk a
  funkció.                            szerverhez. Az egyik karakterünkkel
                                      küldünk egy chat üzenetet a másik
                                      karakternek. Ezután ellenőrizzük,
                                      hogy az üzenet azonnal megérkezik-e
                                      a másik karakterhez. Ha az üzenet
                                      időben megjelenik, a teszt sikeres.

  -----------------------------------------------------------------------

### Multiplayer harc indítása

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Harcot kezdeményezünk két           Két karakterünkkel csatlakozunk a
  karakterünk között, és ellenőrizzük multiplayer játékhoz, és az egyik
  a harci mechanizmusok helyes        karakterünkkel kezdeményezünk egy
  működését.                          harcot a másikkal. A harc során
                                      figyelemmel kísérjük az akciók
                                      (támadások, védekezések) helyes
                                      működését, valamint az életerő
                                      csökkenését. Ha a harc megfelelően
                                      zajlik le, a teszt sikeres.

  -----------------------------------------------------------------------

### Játékos kilépése a csapatból

  -----------------------------------------------------------------------
  Teszt                               Metódus
  ----------------------------------- -----------------------------------
  Teszteljük, hogy mi történik,       Létrehozunk egy csapatot két
  amikor egy karakterünk kilép egy    karakterünkkel. Miután a csapatot
  többjátékos csapatból.              létrehoztuk, az egyik karakterünket
                                      kiléptetjük a csapatból. Ezután
                                      ellenőrizzük, hogy a másik karakter
                                      látja-e, hogy az első karakter
                                      kilépett. Ha a kilépés megfelelően
                                      frissül a másik karakter kliensén,
                                      a teszt sikeres.

  -----------------------------------------------------------------------
