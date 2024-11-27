# Felhasználói felület alrendszer tesztek

## Automatikus tesztek

## Manuális tesztek

### Menu --- Gomb működés teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli a main menu illetve a ui | A tesztelő rákattint a gombra.    |
| gombjainak megfelelő működését.   |                                   |
|                                   | **Sikerességi Feltétel:** a bal   |
|                                   | egér gomb lenyomására szürkésre   |
|                                   | változik a gomb és felengedésre   |
|                                   | pedig átnavigál a megfelelő       |
|                                   | oldalt                            |
+-----------------------------------+-----------------------------------+



### Menu --- Navigációs teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Tesztelik hogy a navigációs       | A tesztelő végig kattint az       |
| menüpontok működnek-e.            | ősszes menüponton a navigációs    |
|                                   | menüben.                          |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** minden  |
|                                   | kattintásra a megfelelő oldalra   |
|                                   | navigál                           |
+-----------------------------------+-----------------------------------+



### Menu --- World name teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az új játék        | A tesztelő beír egy világ nevet   |
| létrehozásakor megadható-e a      | az erre szolgáló mezőbe és        |
| világ neve.                       | elindítja az új játékot.          |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A világ |
|                                   | neve mentésre kerül és megjelenik |
|                                   | a mentések között az adott név.   |
+-----------------------------------+-----------------------------------+



### Menu --- Difficulty slider teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az új játék        | A tesztelő kiválaszt egy          |
| létrehozásakor kiválasztható-e a  | nehézségi szintet és elindítja az |
| nehézségi szint.                  | új játékot.                       |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | kiválasztott nehézségi szint      |
|                                   | megfelelően alkalmazásra kerül a  |
|                                   | játékban.                         |
+-----------------------------------+-----------------------------------+



### Menu --- Multiplayer test



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy létrehozható-e egy | A tesztelő kiválasztja a Host     |
| új többjátékos játék.             | Game opciót, megadja a szükséges  |
|                                   | beállításokat, és elindítja a     |
|                                   | játékot.                          |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A játék |
|                                   | megfelelően indul és más          |
|                                   | játékosok csatlakozni tudnak.     |
+-----------------------------------+-----------------------------------+



### Menu --- Local/Cloud Saved Games List teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy betölthető-e egy   | A tesztelő kiválaszt egy mentést  |
| mentett játék a helyi vagy felhő  | a listáról és betölti azt.        |
| alapú mentések listájáról.        |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | kiválasztott mentés megfelelően   |
|                                   | betöltődik és a játék             |
|                                   | folytatódik.                      |
+-----------------------------------+-----------------------------------+



### Settings --- Video --- Resolution teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a képernyő         | A tesztelő kiválaszt egy          |
| felbontás beállítása megfelelően  | felbontást a listáról és          |
| működik-e.                        | alkalmazza azt.                   |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | képernyő felbontása változik a    |
|                                   | kiválasztott beállításnak         |
|                                   | megfelelően.                      |
+-----------------------------------+-----------------------------------+



### Settings --- Audio --- Master Volume teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a fő hangerő       | A tesztelő módosítja a fő hangerő |
| beállítása megfelelően működik-e. | szintjét és ellenőrzi a változást |
|                                   | a játék hangjában.                |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A játék |
|                                   | hangereje változik a beállított   |
|                                   | szintnek megfelelően.             |
+-----------------------------------+-----------------------------------+



### Settings --- Controls --- Key Bindings teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az egyes           | A tesztelő megváltoztat egy vagy  |
| billentyűkötések megfelelően      | több billentyűkötést és ellenőrzi |
| testreszabhatók-e.                | azok működését a játékban.        |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** Az új   |
|                                   | billentyűkötések megfelelően      |
|                                   | működnek a játék során.           |
+-----------------------------------+-----------------------------------+



### HUD --- HP megjelenítés teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy az egyes           | A tesztelő megváltoztat egy vagy  |
| billentyűkötések megfelelően      | több billentyűkötést és ellenőrzi |
| testreszabhatók-e.                | azok működését a játékban.        |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
+-----------------------------------+-----------------------------------+



### HUD --- MiniMap teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a mini térkép      | A tesztelő különböző területeken  |
| megfelelően működik-e.            | mozog és figyeli a mini térkép    |
|                                   | frissülését.                      |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A mini  |
|                                   | térkép pontosan mutatja a játékos |
|                                   | aktuális helyzetét és             |
|                                   | környezetét.                      |
+-----------------------------------+-----------------------------------+



### HUD --- List of item teszt



+-----------------------------------+-----------------------------------+
| **Teszt**                         | **Metódus**                       |
+-----------------------------------+-----------------------------------+
| Teszteli, hogy a tárgylista       | A tesztelő különböző tárgyakat    |
| helyesen jeleníti-e meg az összes | vesz fel, helyez el, illetve      |
| játékos által birtokolt tárgyat.  | használ fel az inventory-ban.     |
|                                   |                                   |
|                                   | **Sikerességi Feltétel:** A       |
|                                   | tárgylista pontosan mutatja az    |
|                                   | összes aktuális tárgyat és azok   |
|                                   | mennyiségét.                      |
+-----------------------------------+-----------------------------------+
