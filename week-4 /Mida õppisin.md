# 📈 Nädal 4: SQL Agregatsioon – Müügi koondandmed ja trendid (Roll A) 📊

## 🎯 Projekti ülevaade
Analüüsisin programmi **DACA – Andmeanalüütiku Karjäärikiirendi** 4. nädala grupitöös ettevõtte UrbanStyle müügi koondandmeid. Minu rolliks oli **Roll A (Müügi koondandmed / Sales Aggregation)**. Eesmärk oli luua tegevjuht Kristi Tammele ja turundusjuht Annale selge müügistatistika raport juhatuse koosolekuks, kasutades edasijõudnud SQL agregateerimise tööriistu (`GROUP BY`, `HAVING`, CTE-d ja window-funktsioone).

## 🔍 Mida ma tegin
- 📅 **Igakuise müügistatistika arvutamine**: Grupeerisin müügi kuude kaupa (`DATE_TRUNC('month', sale_date)`), et arvutada igakuine tellimuste arv (`COUNT`), kogukäive (`SUM`) ja keskmine ostusumma (`AVG`).
- 🛍️ **Kategooriate analüüs & HAVING filter**: Ühendasin `sales` ja `products` tabelid ning filtreerisin tootekategooriaid `HAVING` klausli abil vastavalt käibe piirmäärale.
- 🔄 **Kuiste trendide analüüs CTE-ga**: Koostasin CTE (*Common Table Expression*) kuise müügi koondamiseks, et analüüsida järjestikuste kuude käibemuutusi.
- 🚀 **Kuust-kuusse kasvu arvutamine (edasijõudnute tase)**: Kasutasin aknafunktsiooni `LAG() OVER (ORDER BY kuu)`, et arvutada kuine käibemuutus ja protsentuaalne kasv.
- 📊 **Ärisüntees juhatusele**: Sõnastasin lühikese 3–5 lauselise kokkuvõtte parimatest müügikuudest ja võtmetrendidest Kristi esitluse jaoks.

## 💡 Peamised õppetunnid ja SQL-oskused
- 📐 **Agregaatfunktsioonid & `GROUP BY`**: Tehingute summeerimine, loendamine ja keskmiste arvutamine ajadimensioonide kaupa.
- ⚖️ **`HAVING` vs `WHERE`**: Õppisin, et `WHERE` filtreerib ridu enne grupeerimist, samal ajal kui `HAVING` filtreerib grupeeritud koondtulemusi.
- 🧱 **CTE (`WITH ... AS`)**: Päringute liigendamine ja taaskasutatavate vahetabelite loomine keerukamate analüüside jaoks.
- 🪟 **Window Functions (`LAG`)**: Varasemate ridade väärtuste kaasamine samasse päringusse kuise kasvu hindamiseks.

## 🤖 AI kasutamine
- Kasutasin AI-d abiks CTE süntaksi kontrollimisel ja `LAG()` aknafunktsiooni abil kuust-kuusse kasvuprotsendi valemi koostamisel.

## 📁 Kaustas olevad failid
- 📜 `individual/week4_sales_aggregation.sql` – minu SQL agregatsioonipäringud koos selgitavate kommentaaridega.
- 📄 `team/week4_team_report.md` – meeskonna ühine koondraport ja ärisoovitused.
