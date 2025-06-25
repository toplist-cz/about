---
title: Z API do CSV
type: posts
date: 2025-06-25
authors:
    - franci
tags:
    - statistiky
    - api
thumbnail: "/img/blog/api2csv.png"
---
Všechny statistické výstupy TOPlistu jsou dostupné přes [API](https://profi.toplist.cz/api/). Nově je hlavní metoda pro jejich získání `/stat/process` (viz https://profi.toplist.cz/api/#!/stat/post_stat_process), která se používá i v [interaktivních statistikách](nove-statistiky).

Jeden ze zákazníků potřeboval výstup z této metody ve formátu CSV pro další zpracování. Vytvořil jsem jednoduchý skript, který tento výstup převede do CSV. Je dostupný na [Codebergu](https://codeberg.org/toplist/utils), případně na [GitHubu](https://github.com/toplist-cz/utils).

Skript (`api2csv.py`) je napsaný v čistém Pythonu, bez použití dalších knihoven (např. `requests`), takže by měl fungovat i na starších verzích Pythonu, případně i ve Windows bez nutnosti instalace dalších balíčků. Lze jej brát i jako příklad, jak pracovat s API TOPlistu. 

Použití je jednoduché:

Pro zjednodušení jsou parametry nastavitelné přímo v kódu, takže stačí upravit soubor `api2csv.py` a updavit hodnoty pro `API_TOKEN` a `POST_DATA`.

`API_TOKEN` je váš API klíč, který získáte v [administraci TOPlistu](https://profi.toplist.cz/#server_setting)
a v `POST_DATA` nastavíte parametry pro API volání, které odpovídají vašim požadavkům na statistiky. Jejich struktura je následující:

```python
POST_DATA = {
    "date": "2025-05-30",
    "interval": "day",
    "step": "hour",
    "stats": ["visits", "totalPages"],
    "rowLimit": 100
}
```
kde `date` je datum, pro které chcete získat statistiky (ve formátu `YYYY-MM-DD`), `interval` je časové rozmezí (např. `day`, `week`, `month`), `step` je krok statistik (např. `hour`, `day`, `week`), `stats` jsou požadované statistiky (viz [API metoda /sharedData/job](https://profi.toplist.cz/api/sharedData/job)), a `rowLimit` je maximální počet řádků, které chcete získat.

poté už stačí spustit skript 

```bash
python3 api2csv.py
```

v tomto případě se výsledky posílají na standardní výstup (stdout).

Pokud přidáte parametr, je použit jako prefix pro názvy souborů s jednotlivými statistikami:

```bash
python3 api2csv.py prefix
```
Výstup bude vypadat takto:

```
prefix-visits.csv
prefix-totalPages.csv
```
