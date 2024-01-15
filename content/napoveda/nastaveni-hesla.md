---
title: "Nastavení hesla"
type: docs
---
Jeden z nejčastějších dotazů, které řešíme jsou otázky typu: ‘Jsem nový majitel webu a jak získám heslo, když nemám přístup k emailům v registraci’ nebo ‘Nepamatuju si, jaký email je registrovaný’. Nyní lze tuto situaci jednoduše řešit.

Ve formuláři pro obnovu hesla je ještě jeden formulář. V něm se zobrazí adresa z vašeho webu, na které budeme čekat kontrolní klíč. Patrně to bude stránka, která ještě neexistuje. Není tak potřeba zasahovat do současného webu a stačí tuto novou stránku vytvořit. Nemusí to být ani plnohodnotná stránka (např. i bez designu apod.). Může být i jen obyčejný textový soubor.

Pak stačí nechat zkontrolovat, že obsahuje klíč. A pokud ano, tak umožníme heslo změnit.

Konkrétní příklad:

{{< image src="img/16939385_10154081065916403_8651534652836594531_n.png" wrapper="col-md-8 mx-auto" caption="Formulář pro obnovu hesla" >}}

Pro TOPlist je nastavení hesla na adrese https://www.toplist.cz/password/reset/1. Po zmáčknutí tlačítka to vypíše požadovanu adresu (každý návštěvník uvidí jinou). Pro náš příklad to může být třeba: `www.toplist.cz/jvdrv.html`. A také klíč *WY3NqZRsbZQPfHbGksyOE7b2SMGLWVU7*. Takže stačí, abych vytvořil soubor na požadováné adrese. A po zkontrolování bude možné heslo změnit.
