---
title: "Tipy a triky"
type: docs
---
# SSL
Pokud potřebujete měřit i stránky zabezpečené pomocí protokolu SSL, stačí upravit měřící kód tak, aby použival tento protokol (https://). Nebo lze vygenerovat a použít nový kód, který už SSL používá.

# XML výstup
Data o návštěvnosti je nyní možné získávat i ve formátu XML. Fungují na podobném principu jako Infopanel, tj. nedochází k vlastnímu měření. Pro něj je nutné použít nějaký klasický měřící kód. Dostupná data jsou stejná jako pro větší verzi panelu: návštěvnost celkem, dnes, za týden, pořadí celkové a v kategorii a počet uživatelů online. Adresa pro volání je:
```
https://toplist.cz/images/counter.asp?a=xml&id=ID_stranky
```
Poznámka: jen připomínám, že pokud budete tento způsob využívat k zobrazení návštěvnosti přímo ve stránce, nebude v ní započítáno její aktuální zobrazení, které je zaznamenáno až načtením měřícího kódu.

# Bezpečnostní kód - blokování měření na cizích stránkách {#bezpecnostni-kod}
Může se stát, že zjistíte (např. ve statistikách měřených stránek), že je váš měřící kód umistěn na cizích stránkách. Nejjednodušší je domluvit se s autorem těch stránek, aby svůj omyl opravil. Pokud to ale není možné, lze měření zamezit tak, že v nastavení na TOPlistu definujete Bezpečnostní kód (číslo v rozsahu 1 až 200). A do měřícího kódu přidáte parametr „seed“ s touto hodnotou. Tím se bude měřit pouze kód, který tuto hodnotu obsahuje. Hodnotu lze libovolně měnit, pouze musí být pro měření stejná s nastavení i měřícím kódu. Funkci lze vypnout nastavením Bezpečnostního kódu na nulu.