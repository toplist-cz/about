---
title: TOPlist ❤️ Can I Use
type: posts
date: 2026-09-09
authors:
  - toplist
tags:
    - javascript
    - statistiky
---
Asi znáte web [caniuse.com](https://caniuse.com/) — tu slavnou tabulku, která vám řekne, jestli daný prohlížeč danou funkci podporuje. Je to skvělý nástroj. Jenže odpovídá na otázku *„zvládne to prohlížeč?"*, nikoli *„zvládají to *moji* návštěvníci?"*. A to jsou dvě odlišné věci.

Proto jsme si řekli, že je spojíme. Vytvořili jsme **Can I Use @ TOPlist** — jednoduchou aplikaci, která vezme seznam JavaScript funkcí z Can I Use a doplní k nim **reálná data o tom, jak je vaše návštěvnost ve skutečnosti používá**. Namísto statické matice prohlížečů dostanete časovou osu: jak podpora jednotlivých funkcí rostla v čase, na reálném provozu, který TOPlist měří (více než 10 milionů návštěvníků denně, přes 60 tisíc webů).

## Jak to funguje

1. Vyberete svůj web.
2. Zvolíte časový rozsah (30 dní, rok, 5 let, nebo vlastní interval).
3. Přidáte JavaScript funkce, které vás zajímají.

A aplikace nakreslí graf — po jednom grafu na funkci — s tím, kolik vašich reálných návštěvníků tu funkci mělo k dispozici v daném okamžiku. Tím vidíte, jestli se „bezpečná" funkce, na kterou se chcete spolehnout, ve vašem provozu skutečně ujala, nebo jestli je to zatím jen špička.

## Co potřebujete

Jedná se o osobní nástroj, nikoli o veřejnou službu. Stačí si vytvořit **serverKey** v TOPlist Profi (povolení `read_basic_stats` a `read_profi_stats`) a vložit ho do souboru `secrets.js`. Aplikace je čistě statická — žádné instalace, stačí stránku otevřít a běží. Delší časové rozsahy vyžadují aktivní předplatné [TOPlist Profi](https://profi.toplist.eu).

Poznámka: seznam funkcí i jejich označení pochází z projektu [Can I Use](https://caniuse.com/), jehož podpora tabulek je licencována jako [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). S projektem Can I Use nejsme nijak spjatí — jen od něj čerpáme a správně ho uvádíme.

Takže příště, když se ptáte *„můžu to použít?"*, máte k dispozici i odpověď na druhou polovinu otázky: *„…a používá to i můj návštěvník?"*
