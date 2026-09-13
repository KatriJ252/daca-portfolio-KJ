# 🛒 Nädal 1: SQL Põhitõed – UrbanStyle'i müügikanalid ja asukohad (Roll D) 📊

## 🎯 Projekti ülevaade
Analüüsisin programmi **DACA – Andmeanalüütiku Karjäärikiirendi** 1. nädala grupitöös ettevõtte UrbanStyle `sales` tabelit müügikanalite uurijana (*Sales Dimensions Explorer*). Minu eesmärk oli selgitada välja müügikanalid, kaupluste asukohad ja makseviisid ning analüüsida tehingute jaotust.

## 🔍 Mida ma tegin
- 🏷️ **Unikaalsete väärtuste tuvastamine**: Kaardistasin kõik olemasolevad müügikanalid (`channel`), kaupluste asukohad (`store_location`) ja makseviisid (`payment_method`), kasutades päringut `SELECT DISTINCT`.
- 🌐 **Veebimüökide analüüs**: Filtreerisin välja online-tehingud (`WHERE channel = 'online'`).
- ❓ **Puuduvate väärtuste (NULL) kontroll**: Otsisin tehinguid ilma kaupluse asukohata (`WHERE store_location IS NULL`) ning mõistsin selle ärilist tähendust (asukoha puudumine tähistab veebimüüki).
- 📈 **Tehingute mahtude võrdlus**: Loendasin tehingute arvu asukohtade kaupa (`GROUP BY`) ning võrdlesin online- ja poetehingute mahte.
- 🤝 **Meeskonnatöö ja süntees**: Osalesin meeskonna ühise andmemaastiku (*Data Landscape*) ning äriliste soovituste koostamisel.

## 💡 Peamised õppetunnid ja SQL-oskused
- 🔑 **`SELECT DISTINCT`**: Unikaalsete väärtuste kiire leidmine veergudest.
- ⚠️ **`IS NULL` vs `= NULL`**: Õppisin, et puuduvate väärtuste tuvastamiseks SQL-is tuleb kindlasti kasutada operaatorit `IS NULL` (mitte `= NULL`).
- 📊 **Andmete filtreerimine ja grupeerimine**: `WHERE` ja `GROUP BY` abil täpsemate müügimustrite tuvastamine.
- 💼 **Äriline tõlgendus**: Tehniliste päringutulemuste seostamine ärikontekstiga (nt veebipood vs füüsilised poed).

## 📁 Kaustas olevad failid
- 📜 `week1_sales_channel_exploration.sql` – minu SQL-päringud koos selgitavate kommentaaridega.
- 📸 `week1_results_screenshot.png` – ekraanipilt päringutulemustest Supabase keskkonnas.

