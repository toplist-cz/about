---
title: TOPlist ❤️ Can I Use
type: posts
date: 2026-09-09
authors:
  - toplist
thumbnail: /img/blog/caniuse-title.png
tags:
    - javascript
    - statistiky
---
Asi znáte web [caniuse.com](https://caniuse.com/) — velmi užitečnou službu, která vám řekne, jestli daný prohlížeč danou vlastnost JavaScriptu/CSS podporuje. Jenže odpovídá na otázku *„zvládne to prohlížeč?"*, nikoli *„zvládají to *moji* návštěvníci?"*. A to jsou dvě odlišné věci.

Proto jsem si řekl, že je spojím. Vytvořil jsem **Can I Use @ TOPlist** — jednoduchou aplikaci, která vezme seznam vlastností z Can I Use a doplní k nim **reálná data o tom, jestli je mají vaši návštěvníci ve skutečnosti k dispozici**. Namísto statické matice prohlížečů dostanete časovou osu: jak se podpora jednotlivých funkcí měnila v čase, na reálném provozu, který TOPlist měří přímo na vašem webu.

## Jak to funguje

1. Vyberete svůj web.
2. Zvolíte časový rozsah (30 dní, rok, 5 let, nebo vlastní interval).
3. Přidáte funkce a vlastnosti, které vás zajímají.

A aplikace nakreslí graf — po jednom grafu na funkci — s tím, kolik vašich návštěvníků tu funkci mělo k dispozici v daném okamžiku. Tím vidíte, jestli se „bezpečná" funkce, na kterou se chcete spolehnout, ve vašem provozu skutečně ujala, případně její historii (jestli je to funkce jejíž podpora klesá nebo naopak bude časem použitelnější).

{{< image src="/img/blog/caniuse-graph.png" wrapper="col-10 mx-auto">}}

## Co potřebujete

Jedná se o osobní nástroj, nikoli o veřejnou službu. Stačí si vytvořit **serverKey** v [TOPlist Profi](https://profi.toplist.cz) (povolení `read_basic_stats` a `read_profi_stats`) a vložit ho do souboru `secrets.js`. Aplikace je čistě statická — žádné instalace, stačí stránku otevřít a běží. Delší časové rozsahy vyžadují aktivní předplatné.

Kód aplikace je dostupný na [GitHubu](https://github.com/toplist-cz/caniuse), případně [Codebergu](https://codeberg.org/toplist/caniuse). Je publikovaný pod licencí [MIT](https://opensource.org/licenses/MIT), takže jej můžete volně používat, upravovat (budu rád, pokud přispějete zpět) nebo použít jako referenci při integraci do vlastních nástrojů.

Poznámka: seznam funkcí i jejich označení pochází z projektu [Can I Use](https://caniuse.com/), jehož podpora tabulek je licencována jako [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). S projektem Can I Use nejsem nijak spjatý — jen od něj čerpám a zde uvádím.

Takže příště, když se ptáte *„můžu to použít?"*, máte k dispozici i odpověď na druhou polovinu otázky: *„… a může to použít i můj návštěvník?"*
