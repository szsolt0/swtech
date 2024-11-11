# Tervezési korlátozások (Design Constraints)

A _Knights Age_ fejlesztése során figyelembe kell venni számos tervezési és implementációs korlátozásokat:

**Architektúra előírások:**

A játékot egy háromrétegű (3-tier) architektúra szerint kell felépíteni, ahol az egyes rétegek (pl. logikai,
adatkezelési, felhasználói felület) külön vannak választva a könnyebb fejleszthetőség és
karbantarthatóság érdekében.

**Használandó programozási nyelvek:**

A fejlesztés során elsősorban a _Godot_ engine által támogatott programozási nyelveket kell használni,
például _GDScript_-et vagy _C#_-ot, a játékmechanikák, logikák és egyéb rendszerfolyamatok
megvalósításához. Viszont a projekt teljes körben _GDScript_ nyelvben lesz megvalósítva.

**Fejlesztőeszközök:**

A fejlesztési környezethez és a 3D modellekhez a _Blender_ használata előírt, míg a verziókezeléshez _Git_-et
alkalmazunk, ennek köszönhetően hatékony modellezést kapunk, aminek formátumát a _Godot_ engine
támogatja. Ezek az eszközök biztosítják a hatékony együttműködést és az integrációt a _Godot_ engine-nel.

**Újra felhasználható komponensek:**

Lehetőség szerint a játék során előre definiált _Godot_ modulok és kódkomponensek felhasználása
ajánlott, amelyekkel gyorsítható a fejlesztés. Például korábbi játékokból vagy nyílt forráskódú
könyvtárakból származó sablonok beépítése. E mellett a _Godot_ is képes önállóan pár modult létrehozni,
például alapmozgási mechanika.

**Fejlesztési módszertan:**

Az agilis fejlesztési módszertan alkalmazása szükséges, amely iteratív fejlesztési ciklusokat biztosít. A
sprint-alapú tervezés és gyakori verziófrissítések biztosítják a projekt átláthatóságát és rugalmasságát,
kiküszöbölve a felmerülő hibákat, amik, ha mégis lesznek, akkor hamar ki tudjuk majd javítani, ezzel
növelve a felhasználói élményt.
