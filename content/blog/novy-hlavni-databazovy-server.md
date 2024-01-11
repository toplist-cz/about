---
title: nový hlavní databázový server
type: posts
date: 2008-02-02
author: Pavel Francírek
tags:
  - databáze
  - hardware
---
V posledních dnech, kdy objem denních statistik přesáhl 170 miliónů zhlédnutí, se ukázala nutnost výměny hlavního databázového serveru.

Je docela překvapivé, že na svém místě vydrzel víc než tři roky. Ale je pravda, že z něj byla během té doby podstatná část zátěže přesunuta na další dva pomocné servery.
Takže původní [dual Xeon na 3GHz a 2GB paměti](../toplist-zakulisi) byl vyměnen za nový s parametry 2x quad-core Xeon E5335 2GHz, 8GB RAM, 4x 76GB 15krpm SAS v RAID 10.

Bylo nutné systém ještě trochu vyladit (raid je softwarový, ale server obsahuje i HW RAID s 256 MB vyrovnávací paměti a to trochu mate systém při zápisech), ale jinak se zdá, že by měl mít dostatečný výkon. A je jenom otázka, jestli vydrzí tak dlouho jako jeho předchůdce.

A jedna perlička na závěr. Když to spočítám, tak TOPlist dnes bězí na 15 procesorech, celkem s 32 jádry, 24 GB RAM a 4TB disků. Nebýt toho, že ty požadavky stoupaly postupně během posledních 4 let (tenkrát ještě všechno běželo na jednom stroji), dalo se to všechno nacpat do jednoho blade serveru 🙂.