---
title: Krizová strategie
type: posts
date: 2011-11-13
authors:
  - franci
---
# Situace
Celá situace začala jako banální závada. Ve čtvrtek večer odešel v jednom databázovém serveru pevný disk. Není to nic výjimečného a servery jsou na to připraveny a standardně se celá záležitost obejde bez komplikací. Práci automaticky převezmou další disky, kterých bývá několik připravených. V tomto případě se ovšem objevily indicie, že se může jednat o něco závažnějšího. Souborový systém hlásil možné poškození. Na víkend byla proto naplánovaná důkladná kontrola. Během ní se ovšem ukázalo, že server vykazuje další podivné chování. Někdy se zdálo, jakoby docházelo k výpadkům operační paměti. Občas byly problémy se síťovým připojením. Paměť byla vyměněna, zrovna tak kabely a switch na vnitřní síti. Ve finále bylo vyměněno celé chasis serveru. A nové už začalo pracovat bez problému. Původní je už nyní na cestě k výrobci pro analýzu.

Bohužel, při opravách muselo být přesunuto přibližně 600 GB dat (včetně zpětného importu do databáze). Což probíhalo v noci ze soboty na neděli. A navic během této odstávky přibylo dalších 14 milionů nových záznamů (viz. bod 2 krizové strategie)

Nyní se statistiky dopočítávají. A já doufám, že dnešní noc už bude klidnější a já konečně doženu ty tři hodiny spánku za víkend 🙂

Tím se omlouvám za případné problémy a děkuji za pochopení.

Zároveň bych chtěl poděkovat Renatě, která obětavě i o víkendu vyřizovala dotazy zaslané na helpdesk.

PF

# Krizová strategie
## 1. Neomezovat měřené stránky
V případě problému je naší prioritou, aby se měřené stránky načítaly bez snížení rychlosti. Toho je dosaženo několika způsoby. Jednak se pro měření nepoužívá žadný externí skript, na který by se mohlo čekat. Zároveň mají měřené ikony definován rozměr, takže se stránka vykreslí ještě před jejich načtením.

Dále jsou před našimi webovými servery tzn. load balancery. A jsou nastaveny tak, že pokud náš server neodpoví během chvíle, je spojení bez milosti ukončeno, aby nedocházelo k čekání. A to, v krajním případě, i za cenu nezapočtení návštěvy. Rychlé zobrazení měřené stránky je zkrátka absolutní priorita.

## 2. Získávání dat
Další prioritou je získávání dat. Pokud dochází k problémům při jejich zpracování, je důležité, aby se naměřená data alespoň ukládala. To umožní, po vyřešení zdržení, jejich zpětné zpracování.

## 3. Zobrazení statistik
Byť je to z hlediska prezentace samotného TOPlistu na škodu (je hned vidět, že “něco nefunguje”), je samotné zobrazení výsledků statistik až na třetím místě. Chápeme, že jsou někdy potřeba data k dispozici co nejdříve. Ale věříme, že uživatele se mohou ke statistikám vrátit později (v základní verzi až 7 dni, v Profi neomezeně) a pochopí, že zabezpečení prvních dvou bodů je i z jejich hlediska důležitější.