---
title: XML výstup
type: posts
date: 2008-01-21
authors:
  - franci
---
Data o návštěvnosti je nyní možné získávat i ve formátu XML.

Fungují na podobném principu jako [Infopanel](https://www.toplist.cz/infopanel/), tj. nedochází k vlastnímu měření. Pro něj je nutné použít nějaký klasický měřící kód.

Dostupná data jsou stejná jako pro větší verzi panelu: návštěvnost celkem, dnes, za týden, pořadí celkové a v kategorii a počet uživatelů online.

Adresa pro volání je http://toplist.cz/images/counter.asp?a=xml&id=**ID_stranky**

Poznámka: jen připomínám, že pokud budete tento způsob využívat k zobrazení návštěvnosti přímo ve stránce, nebude v ní započítáno její aktuální zobrazení, které je zaznamenáno až načtením měřícího kódu.