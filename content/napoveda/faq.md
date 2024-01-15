---
title: "FAQ - často kladené otázky"
type: docs
---
## Co je tohle za stránku?
Na této stránce se budeme snažit odpovídat na některé časté dotazy, které nám chodí. Odpovědi nejsou nijak uspořádány a budou postupně přibývat, jak se budou objevovat nové otázky. Ty můžete posílat na adresu helpdesk@toplist.cz.

## Je služba placená nebo zdarma?
Služba je zdarma. Je možné přikoupit rozšířenou službu [TOPlist Profi](https://profi.toplist.cz).

## Jaký je rozdíl mezi návštěvou a zhlédnutím?
Hodnoty, které jsou měřeny, a způsob, jakým jsou zaznamenávány, je popsané v [metodice měření](/napoveda/dokumentace/metodika-mereni/).

## Co je to „reload“?
„Reload“ znamená, že bylo přistoupeno podruhé za sebou ze stejného IP a není počítán do celkového počtu přístupů (aby si někdo jednoduše „nenaklikal“ větší návštevnost). Tj. nevadí, že používáte tlačítko „obnovit“, tento pokus by měl být ignorován.

## Dají se zjistit podrobné statistiky i za delší období?
Ano. V rámci rozšířené služby TOPlist Profi lze sledovat podrobné statistiky až rok zpět.

## Jak je to s reklamou na TOPlistu?
Hlavní reklamní prostory jsou dva. Na hlavní stránce (dvě pozice) a na stránce s výpisem kategorií (také dvě pozice). Na hlavní stránce je umístění exkluzivní (tzn. že je reklama zobrazena každému návštevníkovi). Na stránkách kategorií rotuje více reklam, ale zase je zde dosahován delší čas zobrazení (view-time), takže je více času např. pro zobrazení animovaného banneru apod. O další informace a ceny si pište na adresu reklama@toplist.cz.

## Jak zjistím své ID?
ID získáte až po registraci. Zjistíte ho tak, že nejdříve najdete Vaši stránku (např. pomocí funkce Hledat ) a poté kliknete na podrobné statistiky (ikonka grafu vpravo) a v tabulce v horní části stránky je uvedeno ID. Pokud je Vaše stránka nově zaregistrována (méně než 1 den), je také v sekci Novinky.

## Co se vlastně v žebříčku zobrazuje?
Při kliknutí na kategorii se zobrazí seznam, který vypadá přibližně takto:

{{< image src="img/category.png" caption="Žebříček kategorie" >}}

1. Pozice serveru v dané kategorii. Prvních 10 serverů má pořadí označené ikonkou, ostatní písmem. Počítá se podle průměrné návštěvnosti za posledních 7 dní.
2. Šipka znázorňuje tendenci návštěvnosti (zelená – při růstu nad 10%, modrá – stagnace, červená – pokles o víc než 10%)
3. Číselné vyjádření změny návštěvnosti. Vypočítává se jako poměr mezi průměrnou návštěvností a odhadem dnešní návštěvnosti.
4. Název serveru. Pokud na něm necháte myš chvíli stát, může se – pokud je vyplněn – zobrazit podrobnější popis.
5. Průměrná návštěvnost. Počítá se za posledních 7 dní.
6. Počet návštěv od registrace serveru.
7. Návštěvy dnes – hlavní měřený údaj. Návštěva je jeden uživatel za 30 minut. Tj. pokud se na stránku vrátí po této době, je znovu započítán. Jinak se zaznamená jen jako „reload“.
8. Pageview – počet zhlédnutí stránky. Jedná se vlastně o součet „návštěv“ plus „reloadů“ bez rozlišení.
9. Datum registrace serveru.
10. Jak dlouho je server registrován.
11. Předpověď dnešní návštěvnosti. Z důvodu jednoduchosti (tj. rychlosti) výpočtu se jedná o lineární regresi.
12. Odkaz na podrobnější statistiky jednotlivých serverů. Pokud na něm necháte myš chvíli stát, zobrazí se ID stránky.

## Jak má vypadat odkaz, když chci zjistit odkud přišli návštěvníci a chci zobrazovat počítadlo začínající od 1723?
Jedná se vlastně o využití téměř všech parametrů:

```html
<a href="https://www.toplist.cz/" target="_top">
<script language="JavaScript">
</script>
<noscript>
<img SRC="https://toplist.cz/count.asp?logo=counter&start=1723&ID=vašeID" border="0" alt="TOPlist"  width="88" height="31">
</noscript>
</a>
```
POZOR: za čárkou po top.document.referrer je apostrof a uvozovka. Ne tři apostrofy !!! Ale lepší bude použít [formulář pro měřící kód](https://www.toplist.cz/code/).

## Zaregistroval jsem stránku a přesto se u ní v žebříčku stále ukazuje 0 přístupů.
Samotná registrace nestačí pro měření. Je potřeba nějakým způsobem návštěvu zaznamenat. A k tomu slouží měřící kód, který musí být na stránce umístěn. Nejrychleji jej získáte vygenerováním v tomto formuláři.

## Má se měřící kód umístit na každou stránku nebo stačí jen na úvodní?
Kód musí být umístěn na všech stránkách, jejichž návštěvnost má být započítávána. Dá se předpokládat, že se vyskytnou návštěvníci, kteří úvodní stránku „vynechají“ (např. přijdou přímo z vyhledávače na podstránku) a ti by nebyli zaznamenáni.

## Proč není v Infopanelu týdenní návštěvnost počítána od pondělí?
To by znamenalo, že by v pondělí byla návštěvnost jen za 1 den (pondělí), v úterý za dva atd. Proto je počítá tzv. plovoucí týden, tj. posledních 7 dní.

## Nechodí mi týdenní mail s návštěvností
Zkontrolujte, zda není špatně nastavený filtr na SPAM a email nekončí v koši. Také pozor na to, že se návštěvnost posílá z jiné emailové adresy (report@toplist.cz) než ostatní maily (s registraci, editaci, heslu), takže může být zahazovaná pouze ta. Každý týden je rozesláno několik stovek tisíc těchto emailů, některé mailové servery (zejména freemaily) mohou chybně považovat tento provoz za spam, je dobré se proto zeptat i administrátorů těchto serverů (ale většina velkých českých freemailů o tom ví a má filtry patřičně nastavené).

Druhá možnost je, že se z uvedené adresy vrací email (hlášení o plné schránce, automatické odpovědi apod.). Pokud takové emaily dostaneme třikrát, posílání se automaticky ukončí. Po opravení příčiny stačí editovat záznam na TOPlistu a posílání se znovu zahájí.

V každém případě můžete celou historii návštěvnosti od registrace v TOPlistu nalézt v podrobných statistikách stránky.

## Jak zruším registraci?
Nejdřív je potřeba odstranit měřící kód ze stránek. Poté lze stránku odstranit – odkaz Smazat v pravém menu v podrobných statistikách. Pokud byl ještě nalezen měřící kód (tj. v uplynulých dvou dnech došlo k zaznamenání návštěvy) je místo smazaní vypsán seznam těchto stránek pro kontrolu, zda se na nich měřící kód skutečně nenalézá.

## V měřených doménách se ukazuje nějaká cizí, co mám dělat?
„Měřené domény“ ukazují adresy, na kterých je umístěn měřící kód a které mají alespoň 10% podíl na celkové návštěvnosti. Data mají historii 2 dny, takže se každá změna projeví až po jejich uplynutí. Pokud se tam objeví cizí doména, bude na ni patrně umístěn kód s vaším ID. Konkrétní stránky lze dohledat ve statistice Vstupní stránky. Pokud nebude možná domluva s provozovatelem těchto stránek, lze využít [Bezpečnostní kód](/napoveda/tipy-a-triky/#bezpecnostni-kod) k zamezení počítání z cizích stránek.

## Po převodu stránek na SSL(HTTPS) přestalo měření fungovat
V měřícím kódu stačí nahradit znaky `http://` za `https://`. Případně znovu vygenerujte měřící kód. Nyní se vytvoří verze, která už obsahuje tuto úpravu.

## Přesunuli jsme stránky na jinou adresu. Co máme dělat?
Nemusíte dělat nic 🙂 Pokud se jedná jen o změnu adresy a stránky stále obsahují stejný měřící kód (se stejným ID), bude měření pokračovat i na nové adrese. Můžete upravit adresu v editaci záznamu na TOPlistu, aby odkaz směřoval na správnou adresu, ale na samotné měření to nemá vliv.

## Splňuje TOPlist podmínky GDPR?
Ano. Informace o získavaných osobních údajích, důvody a lhůty pro jejich zpracování naleznete na stránce [Osobní údaje](/napoveda/dokumentace/osobni-udaje/).

## Proč je ve statistikách místo adresy pomlčka?
Pomlčka místo adresy znamená, že prohlížeč návštěvníka nepředal informaci, jakou stránku si prohlíží. To se děje když je stránka zabezpečená pomocí TLS (https), ale je na ní ještě starý měřící kód, který měřil přes http. Jednoduché řešení je prostě v měřícím kódu změnit http:// za https:// (takže tam bude https://toplist.cz atd.). Nebo lze vygenerovat a použít nový měřící kód, který už obsahuje https rovnou. Na adrese https://www.toplist.cz/code/