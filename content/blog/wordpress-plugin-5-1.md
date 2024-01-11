---
title: "WordPress plugin 5.1"
date: 2019-10-27
lastmod: 2019-10-27
type: "posts"
author: "Pavel Francírek"
---
Připravil sem novou verzi [pluginu pro WordPress](https://wordpress.org/plugins/toplist/). Změny jsou:

- **zrušení cachování statistik**<br>
Protože je nové stahování dat přes API (viz [předchozí verze](https://o.toplist.cz/blog/wordpress-plugin/)) rychlejší, není potřeba výsledky ukládat do lokální databáze.
- **možnost nastavení počáteční hodnoty počítadla**<br>
Parametr start lze nastavit přímo v konfiguraci widgetu.
- **překlad pomocí translate.wordpress.org**<br>
Příprava na překlady pomocí jednotného prostředí, které vytvořil WordPress.com. Pokud na vás v pluginu někde vyskočí angličtina, tak mi napište a dopřeložím to.

Pokud již používáte novou verzi (tj. 5.0), tak by se vám měla nabídnout aktualizace automaticky.

OPRAVA [28. října]: Takže se mi opravdu v těch překladech podařila chyba, takže se pokaždé zobrazoval jenom anglický text. Proto vyšla verze **5.1.1**, která to již opravuje.
