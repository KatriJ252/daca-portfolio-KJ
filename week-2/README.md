# Nädal 2: SQL Cleaning
🛡️ Roll D — Ristvalideerimine ja Kvaliteedikontroll

🎯Eesmärk: Kontrollida, kas müügid viitavad olemasolevatele klientidele ja toodetele, tuvastada orbid, vaimkliendid, vaimtooted ja koostada kvaliteediraport.

📁 Sisend
Tabelid:

-sales

-customers

-products

📤 Väljund
✔ Ristvalideerimise raport
✔ SQL skript (.sql fail)
✔ Leitud orbid + ebakõlad + soovitused

1️⃣ Orbid kliendid — kas müük viitab olematule kliendile?

<img width="684" height="164" alt="image" src="https://github.com/user-attachments/assets/0bd37dfb-c7c8-4a63-9a06-fd9e4a0d6a87" />

Äriline tähendus:  
Kui müük viitab kliendile, keda pole olemas, siis:

-CRM andmed on katki

-kliendi ajalugu ei saa analüüsida

-lojaalsusprogrammi arvutused lähevad valeks

-müügiaruanded muutuvad ebatäpseteks

2️⃣ Orbid tooted — kas müük viitab olematule tootele?

<img width="691" height="143" alt="image" src="https://github.com/user-attachments/assets/4f60acfc-000f-4c84-9437-bba5d5d47acc" />

Äriline tähendus:  
Kui müük viitab tootele, mida pole olemas, siis:

-laoseisu ei saa õigesti arvutada

-toote kasumlikkust ei saa hinnata

-inventuuriaruanded muutuvad ebatäpseteks

3️⃣ Vaimkliendid — kliendid, kes pole kunagi ostnud

<img width="692" height="108" alt="image" src="https://github.com/user-attachments/assets/5eba2ab4-3ec2-4e69-b10a-d2242b4fbb81" />

Äriline tähendus:

-kliendid on süsteemi lisatud, kuid pole kunagi ostnud

-võib viidata testandmetele, vigadele või turunduspotentsiaalile

-hea segment sihtkampaaniate jaoks

4️⃣ Vaimtooted — tooted, mida pole kunagi müüdud

<img width="671" height="99" alt="image" src="https://github.com/user-attachments/assets/a9e1cf92-066e-430f-8a2e-0808fc45a130" />

Äriline tähendus:

-tooted seisavad laos

-hinnastamine võib olla vale

-turundus puudub

-võimalikud “surnud varud”

5️⃣ Ristvalideerimise raport
Kategooria	Leitud probleeme	Kirjeldus

Orbid kliendid	0	  Müük viitab olematule kliendile

Orbid tooted    0	  Müük viitab olematule tootele

Vaimkliendid   592  Klient ei ole kunagi ostnud

Vaimtooted     12 	Toodet pole kunagi müüdud

KOKKU probleeme 604	Vaimkliendid ja tooted- Kliendid pole kunagi toonud sisse tulu 


🎯 Soovitus Toomasele
Kõige kriitilisem probleem on orbid kliendid ja orbid tooted, sest need rikuvad müügiandmete terviklikkuse ja teevad analüütika ebatäpseks. Ilma korrektselt seostatud klientide ja toodeteta ei saa teha usaldusväärseid müügi-, inventuuri- ega kasumlikkuse analüüse.

✔ Kvaliteedikontroll
☑ Orbid kliendid tuvastatud (NOT IN)
☑ Orbid tooted tuvastatud
☑ Vaimkliendid ja vaimtooted leitud
☑ Raport sisaldab konkreetseid numbreid
☑ Soovitus Toomasele lisatud

💡 AI vihje
Küsi:
“Kas see NOT IN alampäring leiab kõik orbid kirjed? Mida tähendab äriliselt, kui müük viitab olematule kliendile?”
