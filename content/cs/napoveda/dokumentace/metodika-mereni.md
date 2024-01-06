# Jak se měří?

K měření návštěvnosti sledované stránky se používá kód, který je nutné na ni umístit (další informace viz [Jak začít?](../jak-zacit)). Jedná se vlastně o obrázek (může to být buď standardní ikona o rozměrech 88×31 bodů nebo „neviditelný“ bod o velikosti 1×1 bod). Z toho plyne určitá možná nepřesnost měření, způsobená např. vypnutým zobrazováním grafiky na straně návštěvníka. Na druhou stranu to daleko lépe odráží např. reklamní možnosti plochy (komu se nezobrazí ikona TOPlistu, tomu se nezobrazí ani reklamní banner). Navíc lze toto částečně eliminovat současným použitím i textového počítadla, které systém TOPlist také nabízí.
# Jaké hodnoty se měří?
## Návštěvy (visits)

Jedná se o základní veličinu měřenou TOPlistem. Podle obecných pravidel se jedná o zobrazení stránky v prohlížeči za určitou dobu. Podle pravidel používaných ve světě (viz. Wikipedie http://en.wikipedia.org/wiki/Bounce_Rate) je tato doba 30 minut. To znamená, že pokud se uživatel ze stejného počítače vrátí po více než 30 minutách na stránku zpět, je započítána nová návštěva. Denní hodnoty jsou archivovány za celou dobu od registrace.
## Zhlédnutí (pageviews)

Tato hodnota znamená každé zobrazení stránky (nebo stránek, pokud je kód umístěn na více). A to i v případě, kdy uživatel použije třeba tlačítko Obnovit.
## Unikátní IP (unique IP)

Ukazuje z kolika různých počítačů přišli návštěvníci za určité období. TOPlist počítá unikátní IP po hodinách a za celý den. V případě, že jsou uživatelé např. „za“ proxy serverem, může se poměrně velké množství různých počítačů přihlašovat pod jednou IP. Proto měření Návštěv víc odpovídá skutečnosti.

Toto jsou hlavní veličiny, které TOPlist měří o návštěvnosti. Další hodnoty jsou doplňkové a umožňují další upřesnění informací o návštěvnících. Patří k nim informace o používaných prohlížečích, operačních systémech, domény návštěvníků, rozlišení a barevná hloubka monitorů ad.

Další popis zobrazovaných hodnot naleznete také v Často kladených otázkách
# Pojmy
## IP

unikátní číselná adresa každého počítače, který je připojen k internetu.
## cookie

krátká textová informace, kterou lze uložit v prohlížeči návštěvníka webové stránky a později zpět vyzvednout. Měření TOPlistem cookies nepoužívá.