---
title: Memcached – 1. výsledkyu
type: posts
date: 2005-02-07
author: Pavel Francírek
tags:
  - databáze
---
Tento příspěvek je víceméně odpověď Jirkovi Pallasovi v komentáři k předchozímu, ale třeba bude zajímat i někoho dalšího 🙂

Po přibližně 14. dnech provozu je situace následující.

Průměrný provoz je přes 500 čtení a 300 nastavení za vteřinu. Při objemu dat kolem 170 MB je procesor P4@2.8GHz zatížený asi na 5%. A to ještě běží na 2.4 jádru, tj. bez podpory epollu [viz [libevent](http://www.monkey.org/%7Eprovos/libevent/)]. Na jiném projektu jej už používáme (Debian sarge a 2.6 jádro). Proklamované zrychlení o řády se sice nekonalo, ale „alespoň“ v násobcích to bylo.