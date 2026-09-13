# 🧹 Nädal 2: SQL Puhastamine – Ristvalideerimine ja Kvaliteedikontroll (Roll D) 🔍

## 🎯 Projekti ülevaade
Analüüsisin programmi **DACA – Andmeanalüütiku Karjäärikiirendi** 2. nädala grupitöös ettevõtte UrbanStyle andmebaasi andmekvaliteeti ja terviklikkust tabelite vahel. Minu rolliks oli **Kvaliteedikontrollija** (*Data Quality Analyst*), mille raames kontrollisin, kas müügiandmed viitavad olemasolevatele klientidele ja toodetele ning leidsin süsteemist loogikavead.

## 🔍 Mida ma tegin
- 🔗 **Orblike kirjete leidmine**: Tuvastasin müügikatsed, mis viitasid olematutele klientidele või toodetele, kasutades `NOT IN` alampäringuid.
- 👻 **Tegevuseta andmete tuvastamine**: Leidsin andmebaasist "vaimkliendid" (ostuajaloota kliendid) ja "vaimtooted" (müümata tooted).
- 💰 **Hinna ebakõlade kontroll (edasijõudnute tase)**: Võrdlesin `JOIN` päringuga müügihindu toodete tegelike jaehindadega, et tuvastada võimalikud valed arvutused või tegemata allahindlused.
- 📋 **Kvaliteediraporti koostamine**: Dokumenteerisin kõik leitud ebakõlad ja esitasin meeskonnale ning juhtkonnale parandusettepanekud.

## 💡 Peamised õppetunnid ja SQL-oskused
- 🛠️ **`NOT IN` alampäringud**: Tõhus meetod andmete ristkontrolliks ja sidususe hindamiseks enne tabelite liitmist.
- 🛑 **Andmete terviklikkus (*Data Integrity*)**: Mõistsin, miks võõrvõtmete ehk seoste katkused võivad ärianalüüsis tekitada valeandmeid.
- 🔀 **`JOIN` eelvaade**: Õppisin võrdlema kahe eri tabeli veerge ja tuvastama hinnakõikumisi.

## 📁 Kaustas olevad failid
- 📜 `individual/week2_cross_validation.sql` – minu ristvalideerimise ja kvaliteedikontrolli SQL-päringud.
- 📄 `team/week2_team_cleaning_report.md` – meeskonna ühine puhastamise koondraport.
