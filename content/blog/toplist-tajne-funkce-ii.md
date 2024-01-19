---
title: TOPlist – tajné funkce II.
type: posts
date: 2003-06-09
authors:
  - franci
---
Je tu další díl pondělního miniseriálu o nedokumentovaných funkcích a vlastnostech TOPlistu. Jednu má i textová verze počítadla. Ta je řešena přes kombinaci iframe a ilayer, takže funguje ve všech moderních prohlížečích a její výhodou je, že je návštěva započítaná i když má uživatel třeba vypnuto zobrazování grafiky. Kód vypadá takto:

```html
<ILAYER LEFT=1 TOP=1 SRC=“http://www.toplist.cz/count.asp?id=50427&logo=text&bc=00FF11″ WIDTH=“88″ HEIGHT=“31″>
<iframe src=“http://www.toplist.cz/count.asp?id=50427&logo=text&bc=00FF11″ SCROLLING=no STYLE=“width: 88px;height: 31px“></iframe>
</ilayer>
```

Jak vidíte, pomocí parametru **bc** (backgroung color) je možné změnit standardní bílou tak, aby víc odpovídala vašim představám. Tj. mužete třeba jej sladit s barvou pozadí stránky nebo, jako v tomto případě, použít jinou decentní barvu.

_Pozn.: pokud tuhle stránku prohlížíte v Mozille či Opeře a máte pocit, že to není ono, tak je to způsobené jen tady nějakým proteklým stylem, který teď bohužel nemám čas opravovat. Zkuste si to na čisté stránce a uvidíte, že to funguje._