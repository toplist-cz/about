---
title: REST API
type: docs
---
Pro přístup k datům, statistikám a správě podporuje TOPlist také rozhranní REST API. Jeho úvodní stránka je na adrese

# https://profi.toplist.cz/api/


Dostupné metody jsou rozdělené do 4 skupin:
## web

základní informace o registrované stránce, generování měřícího kódu, číselníky
## statistika

přístup k výsledkům statistik
## profi

operace dostupné při aktivní službě [TOPlist Profi](https://profi.toplist.cz)
## global

metoda pro globální statistiky
# Testování

Posílání požadavků na server lze testovat hned v dokumentaci. Stačí u metody vyplnit správně hodnoty a odeslat tlačítkem **Zkusit**. Pak je vypsán příklad volání pomocí příkazu [curl](https://curl.se/docs/manpage.html), volaná adresa, tělo požadavku a vracený kód a výsledek.
# Autorizace

{{< image src="img/api1.png" caption="Autorizace v API" wrapper="col-8 mx-auto">}}

Některé metody vyžadují autorizaci. Jsou označené ikonou (viz obrázek bod 1.). Po kliknutí na ikonu se objeví dialog na obrázku.

Ověření probíhá klíčem, který vytvoříte na adrese https://profi.toplist.cz/#server_setting, vložíte do pole „value“ (bod 2) a odešlete tlačítkem Authorize.

Při odeslání přímo na server je klíč předávaný headerem serverKey. Lze to vidět i při testu ve výpisu příkazu curl.

Pro autorizaci je nutná registrace ve službě Profi, která je zdarma a není potřeba, aby byla služba aktivní. Registrace je potřeba pro správu klíčů (těch může být víc pro různé účely) a přístupu k datům.
