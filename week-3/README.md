# Nädal 3: SQL JOINs

🧾 Roll A — Müük + Kliendid (INNER JOIN)

🎯 Eesmärk: Ühendada müügid klientidega, leida TOP kliendid kogumüügi järgi ja koostada Anna jaoks ülevaade parimatest klientidest.

📁 Sisend
Tabelid:

-sales

-customers

📤 Väljund
✔ SQL päringud (.sql fail)
✔ Tulemuste screenshot
✔ Lühike kokkuvõte Annale

1️⃣ INNER JOIN — kliendid, kes on ostnud

<img width="409" height="115" alt="image" src="https://github.com/user-attachments/assets/09499b6e-7261-4536-acfd-8bb052ef3e06" />

Mida see näitab?

-Ainult kliendid, kellel on vähemalt üks ost

-Müügid koos kliendi info ja linnaga

-Kiire kontroll, kas JOIN töötab

2️⃣ TOP 10 klienti kogumüügi järgi

<img width="571" height="123" alt="image" src="https://github.com/user-attachments/assets/08af1ce1-a4e1-45d7-a5e9-15c3b735c3f0" />

Mida see näitab?

-Kes ostavad kõige rohkem

-Millisest linnast parimad kliendid tulevad

-Kogumüügi maht kliendi kohta

3️⃣ Müük linnade kaupa

<img width="548" height="110" alt="image" src="https://github.com/user-attachments/assets/f84867a5-0103-42ec-9f47-5ecf17e2d3b9" />

Mida see näitab?

-Millised linnad toovad kõige rohkem tulu

-Kas mõnes linnas on palju kliente, aga vähe oste

-Müügi geograafiline jaotus

4️⃣ Müük lojaalsustasemete kaupa

<img width="516" height="108" alt="image" src="https://github.com/user-attachments/assets/92d5a318-9760-4dab-8bfd-ce5105dcd7d3" />

Mida see näitab?

-Milline loyalty_tier on kõige kasumlikum

-Kas kõrgema taseme kliendid ostavad rohkem

-Lojaalsusprogrammi mõju müügile

5️⃣ Failid ja screenshotid
📌 Salvesta SQL fail nimega:
week3_roll_a_myyk_kliendid.sql

📌 Lisa Supabase SQL Editorist screenshotid:

INNER JOIN tulemus

TOP 10 kliendid

Müük linnade kaupa

Loyalty_tier müügid

6️⃣ Kokkuvõte Annale (3–5 lauset)
Näidis kokkuvõte (kohanda vastavalt sinu tulemustele):

UrbanStyle’i parimad kliendid tulevad peamiselt linnadest, kus on tugev ostujõud ja aktiivne lojaalsusprogramm. TOP 10 kliendi kogumüügi analüüs näitab, et suurimad ostjad teevad korduvaid oste ja kuuluvad enamasti kõrgematesse loyalty_tier tasemetesse. Linnade võrdlusest selgub, et müük on koondunud mõne võtmelinna ümber, mis tähendab, et turundust võiks tugevdada piirkondades, kus kliente on palju, kuid ostude arv madalam. Lojaalsustasemete analüüs kinnitab, et kõrgema taseme kliendid toovad märkimisväärselt rohkem tulu — seega tasub investeerida lojaalsusprogrammi laiendamisse.

✔ Kvaliteedikontroll
☑ INNER JOIN päringud töötavad
☑ TOP 10 klienti leitud
☑ Linnade ja loyalty_tier analüüs tehtud
☑ Kokkuvõte sisaldab numbreid ja ärilisi soovitusi
☑ Failid ja screenshotid lisatud
