---
title: Statistiky
type: docs
---

https://www.toplist.cz/statistics/
{.h1 class="text-center mb-5"}

## Přihlášení

{{< image src="/img/statistics/login.png" wrapper="col-10 mx-auto mb-5" >}}

Statistiky umožňují příhlášení buď pomocí TOPlist ID stránky a hesla (stejného jako do editace záznamu). Druhá možnost je pomocí emailu. To předpokládá registraci do služby TOPlist Profi (bezplatně) a [přiřazení měřených stránek k účtu](/napoveda/toplist-profi/pridani-noveho-webu/).

{{< image src="/img/statistics/login-profi.png" wrapper="col-6 mx-auto mb-5" >}}

## Menu

{{< image src="/img/statistics/menu.png" wrapper="col-10 mx-auto mb-5" >}}

V pravé horní části obrazovky je základní menu pro změnu zobrazeného období:

  {{< mark color="success" >}}&lt;{{< /mark >}} - posun do historie
  {{< mark color="success" >}}&gt;{{< /mark >}} - posun do budoucnosti
  {{< mark color="success" >}}&gt;|{{< /mark >}} - posun na dnešní datum

U velkých monitoru je ještě tlačíčko na přepnutí zobrazení ve dvou nebo třech sloupcích {{< mark color="info" >}}2 [|]{{< /mark >}}

{{< image src="/img/statistics/menu-hover.png" wrapper="col-10 mx-auto mb-5" >}}

Při najetí na menu se rozbalí další možnosti. 

V levé části jsou rychlé odkazy na konkrétní statistiky.

V pravé je možnost zvolit statistiky za delší období (týden, měsíc, rok). Další je výběr zobrazené stránky. V případě přihlášení přes email můžete mít k němu přiřazeno víc stránek a zde mezi nimi rychle přepínat. A poslední volba je odhlášení.

Podle vybraného období se mění i krok (minimální časový interval) podle následující tabulky:

{{< table class="table-striped" >}}
|celé období|krok|
|-|-|
|den|hodina|
|týden|den|
|měsíc|den|
|rok|týden|
{{< /table >}}


## Info

{{< image src="/img/statistics/info.png" wrapper="col-10 mx-auto mb-5" >}}


## Celková historie návštěvnosti

{{< image src="/img/statistics/all-stats.png" wrapper="col-10 mx-auto mb-5" >}}

První statistikou je celkový přehled návštěvnosti ([počet návštěv a zhlédnutí](/napoveda/dokumentace/metodika-mereni/#jake-hodnoty-se-meri)) za celou dobu od registrace. Standardně je zobrazený plovoucí týdenní průměr, který není ovlivněn rozdílem návštěvností během pracovních dní a víkendu. V menu "krok" jde změnit na počet za 1 den, týden a 30 dní.

## Záznam

{{< image src="/img/statistics/live.png" wrapper="col-10 mx-auto mb-5" >}}

Následuje výpis posledních zaznamenaných návštěv. V pravém horním rohu je aktualizovaný počet dnešních návštěv, zhlédnutí a aktuální počet online návštěvníků.

Ve verzi Profi je možné aktivovat volbu "live", kdy dochází v automatické aktualizaci zobrazení včetně přehledu dalších zhlédnutí v rámci jedné návštěvy.

Informace, které jsou zobrazeny:
* čas návštěvy, anonymizovaný hostname a IP návštěvy, ikona s vlajkou země (v popisku je dvouznakový kód země)
* referer návštěvy
* titulek stránky, její URL a odkaz na stránku
* ikona typu zařízení (mobil, počítač atd.), ikona prohlížeče, verze prohlížeče a op. systému, rozlišení ve tvaru šířka x výška x barevná hloubka
* ikony další zhlednutí s odkazem na stránku (v popisku je čas, titulek stránky)

## Statistiky

Statistiky umožňují dva nebo tři typu zobrazení. To je přepíná pomocí ikon v pravém horním rohu bloku:
![Graf|Pie|Tabulka](/img/statistics/graph-change.png)

Např. v případě zemí původu lze přepínat mezi zobrazením:

{{< image src="/img/statistics/graph-trend.png" wrapper="col-8 mx-auto" >}}
{{< image src="/img/statistics/graph-pie.png" wrapper="col-8 mx-auto" >}}
{{< image src="/img/statistics/table.png" wrapper="col-8 mx-auto" >}}

V případě, kdy graf zobrazuje jeden typ hodnoty, zárověň ve spodní části ukazuje
**součet**, průměr, maximum a minimum za období. Maximum a minimum v závorce ukazuje v kterém čase k nim došlo.

### Návštěvnost

Sekce zobrazující základní statistiky související s přístupy uživatelů na vaše stránky.

#### návštěvy
{{< image src="/img/statistics/visits.png" wrapper="col-10 mx-auto mb-5" >}}

Graf návštěv v měřeném období. 

#### zhlédnutí
{{< image src="/img/statistics/pageviews.png" wrapper="col-10 mx-auto mb-5" >}}

Průběh počtu zobrazení v období. 

#### země
{{< image src="/img/statistics/country.png" wrapper="col-10 mx-auto mb-5" >}}

#### hodinová návštěvnost
{{< image src="/img/statistics/hour.png" wrapper="col-10 mx-auto mb-5" >}}

Průměrná návštevnost podle hodiny za celé měřené období.

#### návštěvnost podle dne v týdnu
{{< image src="/img/statistics/weekday.png" wrapper="col-10 mx-auto mb-5" >}}

Průměrná návštevnost podle dne v týdnu za celé měřené období.

#### návštěvy - domény
{{< image src="/img/statistics/domain.png" wrapper="col-10 mx-auto mb-5" >}}

#### návštěvy - TLD
{{< image src="/img/statistics/tld.png" wrapper="col-10 mx-auto mb-5" >}}

#### reporty Profi
{{< image src="/img/statistics/profi.png" wrapper="col-10 mx-auto mb-5" >}}

Poslední reporty vygenerované službou Profi.

### Zařízení

Druhá sekce zobrazuje statistiky související s použitými zařízeními.

#### prohlížeče
{{< image src="/img/statistics/browser.png" wrapper="col-10 mx-auto mb-5" >}}
Časový vývoj podílu jednotlivých prohlížečů.

#### operační systémy
{{< image src="/img/statistics/os.png" wrapper="col-10 mx-auto mb-5" >}}

#### verze prohlížeče
{{< image src="/img/statistics/browser_version.png" wrapper="col-10 mx-auto mb-5" >}}

#### verze op. systému
{{< image src="/img/statistics/os_version.png" wrapper="col-10 mx-auto mb-5" >}}

#### typ zařízení
{{< image src="/img/statistics/device_type.png" wrapper="col-10 mx-auto mb-5" >}}

#### engine prohlížeče
{{< image src="/img/statistics/engine.png" wrapper="col-10 mx-auto mb-5" >}}

#### rozlišení monitoru
{{< image src="/img/statistics/resolution.png" wrapper="col-10 mx-auto mb-5" >}}


### Zdroje

Další sekce zobrazuje statistiky související se zdroji odkud přichází návštěvníci vašich stránek.

#### všechny

Tabulka všech refererů, odkazujících na vaše stránky.

#### domény

Tabulka refererů, odkazujících na vaše stránky, seskupených podle domény 2.řádu.

#### vyhledávače

Graf průběhu počtů návštěv z vyhledávačů.

### Obsah

Sekce se statistikami souvisejícími s obsahem vašich stránek.

#### vstupní stránky
Tabulka vstupních stránek, tj. stránky, které byly první navštívené v rámci návštěvy.

#### stránky
Tabulka všech zhlédnutých stránek.

#### výstupní stránky
Tabulka výstupních stránek, tj. stránky, které byly poslední navštívené v rámci návštěvy.

#### lokální hledání

Pokud v [nastavení vašeho webu v službě Profi](https://profi.toplist.cz/#server_setting) nastavíte klíčové slovo, které znamená parametr pro vyhledávání na vašem webu (např. pokud adresa výsledků hledání na vašem serveru vypadá jako *www.server.cz/?search=novinky*, bude klíčové slovo "**search**"), budou zde zobrazeny statistiky hledání.

### Kampaně

#### zdroje
{{< image src="/img/statistics/utmSource.png" wrapper="col-10 mx-auto mb-5" >}}
Graf zdrojů podle parametru `utm_source`

#### kampaně
{{< image src="/img/statistics/utmCampaign.png" wrapper="col-10 mx-auto mb-5" >}}
Graf kampaní podle parametru `utm_campaign`
