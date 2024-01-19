---
title: Memcached
type: posts
date: 2005-01-20
authors:
  - franci
tags:
    - databáze
---
## distribuovaná memory storage
Doteď jsem informace o právě aktivních sessions ukládal klasicky do databáze.

Jelikož se nyní dosti zvedlo množství sledovaných návštěvníků, obsahovala ve špičce přes 3 milióny záznamů (součet všech online návštěvníků na všech měřených serverech) a počet dotazů do ní byl v řádech stovek za vteřinu. Proto jsem se rozhodl vyzkoušet na jejich uložení paměťový daemon. Nejsem příznivcem akademického „urob-si-sám“ a tak jsem použil [memcached](http://www.danga.com/memcached/), který už na jiných projektech nějakou dobu používáme.

Jedná se o jednoduchý prográmek, který umožňuje uložení víceméně libovolné struktury (klientské knihovny jsou pro Perl, Python, PHP, C ad. – samotný protokol je také primitivní) pod klíč.

Během dneška uvidím, jaký vliv to bude mít na samotné statistiky, ale metodika zůstává nezměněná (proč taky měnit to, co 8 let funguje), tj. min. 30 minut interval mezi návštěvami jednoho uživatele.