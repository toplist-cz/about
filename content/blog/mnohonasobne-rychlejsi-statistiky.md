---
title: Mnohonásobně rychlejší statistiky
date: 2026-07-05
authors:
    - toplist
type: posts
thumbnail: /img/blog/new-stats.png
---
Právě byla do provozu spuštěná nová verze statistik. Vzhled a funkce zůstaly stejné, ale je úplně přepracované technické řešení, které běží na pozadí. Používá se jiná databáze a její volání přes [REST API](https://profi.toplist.cz/api/). Díky tomu je načítání dat mnohonásobně rychlejší. Proto jsou i výsledky pro stránky se [stovkami tisíc zhlédnutí denně](https://www.toplist.cz/stat/result/11657/month-graph/month/year-visit/year-visit-table/year-hit/) zobrazeny během zlomku vteřiny.