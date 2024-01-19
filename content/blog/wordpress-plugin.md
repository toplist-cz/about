---
title: WordPress plugin
type: posts
date: 2019-05-21
authors:
  - franci
tags:
    - wordpress
---
Po mnoho let od roku 2009 vytvářel [Honza Skýpala](http://www.honza.info/) plugin, který umožňoval jednoduché vložení počítadla TOPlistu do WordPressu. Několik let jsem o tom ani nevěděl. Překvapilo a potěšilo mě, že někdo věnuje svůj volný čas zjednodušení použití TOPlistu.

Za ty roky ovšem došlo k některým změnám. Např. statistiky zobrazoval plugin tak, že stahoval přímo HTML stránky z webu TOPlistu a data vytahoval z nich. To přestalo fungovat při změně [designu stránek](../termin-spusteni-nove-verze/). Další omezení byla práce s heslem, v případě přístupu na neveřejné statistiky, která neodpovídala požadavkům GDPR a také přestala fungovat. O drobnostech typu změna loga apod. ani nemluvě.

Tyto úpravy by představovaly poměrně velké usilí a, pochopitelně, při pracovním a rodinném vytížení se čas těžko hledá.

Rozhodl jsem se, že tyto úpravy zkusím udělat sám. Ač nejsem PHPkář (tenhle plugin je asi největší kus PHP kódu, který jsem v životě spravoval 🙂 ), udělal jsem pár nezbytných úprav, které alespoň opraví hlavní věci. Vznikl tak nový plugin na adrese https://wordpress.org/plugins/toplist/

Instaluje se jednoduše. V administraci přidáte plugin „TOPlist“ (bude mít nové logo TOPlistu) a starý deaktivujete. Nastavení si převezme.

Budu rád za všechny náměty a připomínky.

Změny:

* Data pro statistiky se nyní berou z [API](https://profi.toplist.cz/api/), takže je neovlivní změna designu webu.
* Pro přístup do neveřejných statistik se generuje jednoúčelové heslo.
* Zdrojový kód jsem umístil na [Github](https://github.com/toplist-cz/wordpress). Přecejen je to lepší platforma na zpracovávání námětů a připomínek než je SVN WordPressu.
* A dovolil jsem si změnit licenci na MIT. Fakticky by se nemělo nic změnit (oboje jsou licence „dělejte si co chcete“), ale MIT alespoň nebývá vyhvězdičkovaná 🙂
