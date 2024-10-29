# Alkalmazott szabványok

A fejlesztés során, valamint az alkalmazás készítése és üzemeltetése során betartandó előírások
rendkívül fontosak a sikeres és kompatibilis termék létrehozása érdekében. Ezek az előírások lehetnek
technikai vagy szakterületi szabványok, illetve törvényi előírások, amelyek biztosítják a szoftver
megfelelőségét, biztonságát és hatékonyságát. Az alábbiakban részletezzük a kötelezően
alkalmazandó és a választás alapján alkalmazott szabványokat.

## Kötelezően alkalmazandó szabványok

_Mandatory Standards_

Ezek a szabványok törvényi előírások vagy iparági kötelezettségek miatt szükségesek:

- **GDPR (General Data Protection Regulation):** Az EU adatvédelmi rendelete, amely előírja a
  személyes adatok védelmét és a felhasználók adatainak biztonságos kezelését. Minden olyan
  alkalmazásnak, amely EU-s állampolgárok adatait kezeli, meg kell felelnie ennek a
  szabványnak.

- **ISO/IEC 27001:** Az információbiztonsági irányítási rendszerek (ISMS) szabványa. Ez a szabvány
  biztosítja az információbiztonság magas szintjét a fejlesztés és üzemeltetés során.

- **TCP (Transmission Control Protocol):** Az interneten használt egyik alapvető kommunikációs
  protokoll, amely biztosítja az adatok megbízható átvitelét. Ez kötelező, az alkalmazás hálózati
  kommunikációjának megvalósításához.

- **HTTP/HTTPS:** Az alkalmazás webes komponensei számára kötelező protokollok. A HTTPS
  biztosítja a titkosított és biztonságos adatátvitelt a kliens és a szerver között.

- **UDP (User Datagram Protocol):** Az UDP-t, egy alternatív kommunikációs protokollt használjuk
  azokban az esetekben, amikor az alacsony késleltetés fontosabb a megbízhatóságnál, például
  valós idejű játékkommunikáció során.

- **Vulkan API:** A _Vulkan_ egy modern, többplatformos grafikus API, amely nagy teljesítményt és
  alacsony szintű hozzáférést biztosít a GPU erőforrásaihoz. Ez különösen fontos a fejlesztésünk
  során, mivel lehetővé teszi a nagy teljesítményű grafikai elemek hatékony megjelenítését a
  játékon belül.

- **Metal API:** Az _Apple_ által fejlesztett _Metal_ API-t a macOS és iOS platformokra optimalizált
  grafikus feladatokhoz használjuk, mivel natív támogatást biztosít a platform számára, így
  maximalizálja az erőforrások kihasználását és fokozza a játék teljesítményét ezeken az
  eszközökön.

## Választás alapján alkalmazott szabványok

_Optional Standards_

Ezek a szabványok a fejlesztők vagy a felhasználók által önként vállalt előírások, amelyek elősegítik a
fejlesztési folyamat hatékonyságát és a termék minőségét:

- **JSON (JavaScript Object Notation):** Könnyen olvasható és írható adatcsere-formátum,
  amelyet széles körben használnak az API-k és webszolgáltatások adatátviteléhez. Az
  egyszerűsége és kompatibilitása miatt választottuk ezt a formátumot az adatok kezelésére és
  továbbítására.

- **XML (eXtensible Markup Language):** Széles körben használt adatleíró nyelv, amelyet komplex
  adatstruktúrák kezelésére és tárolására használunk. Az XML-t főként akkor alkalmazzuk,
  amikor szükséges az adatok szigorú struktúrájának fenntartása.

- **RESTful API:** Az API-k kialakításánál a REST (Representational State Transfer) architektúrát
  követjük, amely lehetővé teszi az egyszerű és hatékony kommunikációt a kliens és a szerver
  között.

- **OAuth 2.0:** Az alkalmazás hitelesítési és autorizációs mechanizmusainak megvalósításához az
  OAuth 2.0 szabványt alkalmazzuk, amely biztonságos hozzáférést biztosít a felhasználói
  adatokhoz anélkül, hogy a felhasználói jelszavakat tárolnunk kellene.

## Egyéb alkalmazott szabványok

_Other Applicable Standards_

Ezek a szabványok további előnyöket nyújtanak a fejlesztés és üzemeltetés során:

- **ISO 9001:** Minőségirányítási rendszerek szabványa, amely segít a fejlesztési folyamatok
  optimalizálásában és a termék minőségének biztosításában.

- **IEEE 829:** A szoftvertesztelés dokumentálásának szabványa, amely segít a tesztelési
  folyamatok strukturálásában és a tesztelési dokumentumok következetes előállításában.

- **WCAG (Web Content Accessibility Guidelines):** Az alkalmazás webes komponenseinek
  akadálymentesítésére vonatkozó irányelvek, amelyek biztosítják, hogy a termék hozzáférhető
  legyen minden felhasználó számára, beleértve a fogyatékkal élőket is.

Az alkalmazott szabványok betartása nemcsak a jogi megfelelőség és a biztonság szempontjából
fontos, hanem hozzájárul a fejlesztési folyamat hatékonyságához és a végtermék minőségéhez is. Az
AI technológia integrálása, a gondosan kiválasztott harmadik fél által nyújtott komponensek és a
szabványok betartása lehetővé teszi számunkra, hogy innovatív és magas színvonalú játékélményt
nyújtsunk a felhasználók számára.
