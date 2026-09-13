# 🔗 Nädal 3: SQL JOINs – Müük ja Kliendid (Roll A) 👑

## 🎯 Projekti ülevaade
Analüüsisin programmi **DACA – Andmeanalüütiku Karjäärikiirendi** 3. nädala grupitöös ettevõtte UrbanStyle andmebaasi müügi- ja kliendiandmeid. Minu rolliks oli **Roll A (Müügi ja klientide ühendamine)**, mille raames liitsin `sales` ja `customers` tabelid `INNER JOIN`-iga, et selgitada välja parimad kliendid, nende ostuharjumused ning jaotus linnade ja lojaalsustasemete kaupa.

## 🔍 Mida ma tegin
- 🤝 **Tabelite liitmine (`INNER JOIN`)**: Ühendasin müügitehingud klientide profiilidega `customer_id` võtme alusel.
- 🏆 **TOP 10 klientide tuvastamine**: Leidsin enim kulutanud kliendid, arvutades nende ostude koguarvu ja kogusumma (`SUM(s.total_price)`).
- 🏙️ **Linnade lõikes analüüsimine**: Grupeerisin müügitulemused linnade kaupa (`GROUP BY c.city`), et tuua välja enim tulu toovad piirkonnad.
- 💎 **Lojaalsustasemete uurimine**: Analüüsisin müüki lojaalsustasemete (`loyalty_tier`) kaupa, et mõista erinevate kliendirühmade panust.
- 📈 **Üle keskmise kulutajad (edasijõudnute tase)**: Kasutasin alampäringut (`subquery`), et leida kliendid, kelle ostusumma ületab keskmist kliendi kulutust.
- 📑 **Kokkuvõte turundusjuhile**: Koostasin 3–5 lauselise ülevaate Annale koos konkreetsete leidude ja numbritega.

## 💡 Peamised õppetunnid ja SQL-oskused
- 🔗 **`INNER JOIN` süntaks**: Kahe tabeli ühendamine ühise võtme (`ON s.customer_id = c.customer_id`) abil.
- 📐 **Agregeerimine ja grupeerimine**: Kasutasin funktsioone `SUM()`, `COUNT(DISTINCT ...)`, `GROUP BY` ja `ORDER BY ... DESC`.
- 🔍 **Alampäringud (`Subqueries`) & `HAVING`**: Tingimuste seadmine grupeeritud andmetele vastavalt keskmisele kulutusele.
- 💼 **Äriliste järelduste tegemine**: Müüginumbrite tõlgendamine kliendisegmentide võtmes.

## 📁 Kaustas olevad failid
- 📜 `week3_roll_a_myyk_kliendid.sql` – minu SQL JOIN päringud koos kommentaaridega.
- 📸 `week3_results_screenshot.png` – ekraanipilt päringutulemustest Supabase keskkonnas.
