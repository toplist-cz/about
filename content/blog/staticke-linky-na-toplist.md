---
title: Statické linky na TOPlist
type: posts
date: 2004-02-05
authors:
  - franci
---
Jelikož:

1. se teď webserver celkem fláká
2. jsem si chtěl vyzkoušet mod_rewrite
3. mě štve Google tou svojí ignorací dynamických stránek

nastavil jsem [Apache](http://www.apache.org/) tak, aby bral i linky do kategorií jako adresáře. Takže žebříček weblogů nyní funguje i na adrese http://www.toplist.cz/weblogy. Odstránkování se děje přes „podadresář“, např. http://www.toplist.cz/weblogy/50.

Když už jsem byl v tom, tak jsem zprovoznil i jednodušší přístup k podrobným statistikám, které jsou přes adresář stat a ID. Viz. http://toplist.cz/stat/50427.

Původní cesty přes dynamické adresy zůstávají zachovány.