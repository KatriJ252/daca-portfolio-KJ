📊 ROLL C — Inventuuristatistika
Analüüsi tootekategooriaid, laoseisu ja müüdud vs laos suhteid Supabase SQL abil.

🎯 Eesmärk
Luua ülevaade kategooriate toimimisest, tuvastada probleemsed tooted ja anda ärilised soovitused.
Kasutad: GROUP BY, HAVING, JOIN, window functions.

📁 Sisend
Tabelid:

-products

-sales

-inventory_movements

📤 Väljund
✔ 3 SQL päringut
✔ Kokkuvõtlik tabel / raport
✔ Ärisoovitused Annale

1️⃣ Tootekategooriate koondandmed
Ülevaade kategooriate suurusest ja hinnatasemest.
<img width="682" height="132" alt="image" src="https://github.com/user-attachments/assets/4db3a07b-5bf0-448c-bab0-a9e18272d544" />


Mida see näitab?

-Millised kategooriad on kõige suuremad

-Hinnavahemikud

-Kas kategoorias on väga odavaid või väga kalleid tooteid

2️⃣ Müüdud vs laos (kategooriate lõikes)
Ühendame products + sales ja arvutame müügimahud.
<img width="486" height="173" alt="image" src="https://github.com/user-attachments/assets/c7e9c726-d7bc-41c0-a90d-ce9681d6b06f" />


Mida see näitab?

Millised kategooriad müüvad hästi

Millised kategooriad ületavad sinu määratud müügipiiri

Keskmine müük toote kohta (kas kategoorias on “tühikäigu” tooteid)

3️⃣ Toodete järjestus kategooria sees (edasijõudnute tase)
Kasuta window function’it, et leida hinnapõhine järjestus.
<img width="407" height="128" alt="image" src="https://github.com/user-attachments/assets/825a058a-2dde-4edb-a7ae-0b370c2780e5" />




4️⃣ Kokkuvõte (3–5 lauset)
Näidis kokkuvõte (kohanda vastavalt sinu päringu tulemustele):

Kategooriate võrdlus näitab, et kõige kasumlikumad on kategooriad, kus on nii kõrge keskmine hind kui ka suur müügimaht. Kategooriad, kus müük on madal, kuid tooteid on palju, vajavad tähelepanu — seal võib olla liiga lai valik või nõrk turundus. TOP 3 toodete analüüs näitab, et kallimad tooted ei pruugi alati olla müügiliidrid, mis viitab hinnastrateegia ülevaatamise vajadusele. Soovitan Annale keskenduda kategooriatele, kus müük on tugev, kuid laoseis liiga suur — seal saab optimeerida tellimismahte ja vähendada kulusid.

5️⃣ Kvaliteedikontroll
☑ GROUP BY kategooria töötab
☑ HAVING filtrid on kasutatud
☑ Window function toodete järjestamiseks
☑ Kokkuvõte sisaldab ärilisi soovitusi
☑ Kontrollitud: kas COUNT(DISTINCT) ≠ COUNT? (oluline duplikaatide tuvastamiseks)

💡 AI vihje
Küsi AI-lt: “Millist diagrammitüüpi kasutada kategooriate müügivõrdluse jaoks?”  
→ Vastus: tulpdiagramm (bar chart) on parim kategooriate võrdlemiseks.
