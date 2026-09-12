# Nädal 1: SQL Basics

## Sissejuhatus

Selle nädala teemaks oli SQLi põhitõed ja esimene praktiline töö andmetabelitega. Peamiselt keskendusin sellele, kuidas luua tabel, sisestada andmed ja seejärel neid päringuga välja kuvada.

## Mis õppisin?

- kuidas luua tabeli `team_members`;
- kuidas sisestada andmeid SQL-i abil;
- kuidas teha lihtsat `SELECT` ja `FROM` päringut;
- kuidas kasutada PostgreSQLi põhilisi SQL-konstruktsioone.

## Praktikavõrrand

Selle nädala ülesanne oli luua tabel, lisada enda andmed ja kontrollida tulemust.

### Tabeli loomine

```sql
CREATE TABLE IF NOT EXISTS team_members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    week INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT NOW()
);
```

### Andmete sisestamine

```sql
INSERT INTO team_members (name, role, week)
VALUES ('Katri Jutt', 'Andmeanaluutik', 0);
```

### Andmete kuvamine

```sql
SELECT * FROM team_members ORDER BY joined_at;
```

## Minu näide projektis

Failis `nädal-1/hello_urbanstyle.sql` on kasutusel järgmine esmane SQL-kood:

```sql
-- Minu esimene UrbanStyle paring
-- Nimi: Katri Jutt
-- Kuupaev: 2026-09-02

CREATE TABLE IF NOT EXISTS team_members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    week INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO team_members (name, role, week)
VALUES ('Katri Jutt', 'Andmeanaluutik', 0);

SELECT * FROM team_members ORDER BY joined_at;
```

## Tulemus

Nädala lõpuks sain valmis esimese praktilise SQL-i töö, kus ma õppisin tabeli loomist, andmete lisamist ja andmete päringut. See oli esimene oluline samm andmeanalüüsi ja SQL-i valdkonda.

## Järgmised sammud

- jätkata SQL-i harjoitusi;
- õppida rohkem filtreerimise, grupeerimise ja join-töötlusega;
- täiendada portfooliot järgmiste nädalate ülesannetega.
