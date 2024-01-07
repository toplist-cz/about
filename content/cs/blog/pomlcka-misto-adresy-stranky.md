---
title: "Pomlčka místo adresy stránky"
date: 2020-01-23T00:00:00+01:00
lastmod: 2020-01-23T00:00:00+01:00
author: "TOPlist"
type: "posts"
---
# Stručně

Pokud se ve statistikách na TOPlistu místo adresy měřené stránky objevuje pomlčka –, stačí v měřícím kódu změnit *http://* za *https://*
# Delší povídání

Nové prohlížeče nepředávají informaci o navštívené stránce (tzv. referer) v případě, že je stránka na šifrovaném spojení (HTTPS) a měřící prvek takové spojení nemá (má jen HTTP). Ostatní případy (obojí stejné, nebo stránka HTTP a měření HTTPS) stále fungují.
Měřící kód TOPlistu je proto od roku 2012 vytvářen s odkazem přes HTTPS.

V případě, že jste dlouhodobý uživatel TOPlistu, máte na stránce ještě starou verzi, a svou stránku začnete šifrovat, informace o adrese stránky se přestane posílat. Všechny ostatní statistiky (počet návštěv, informace o prohlížeči apod.) se měří dál.

Řešení je jednoduché. Buď, jak je napsáno v prvním odstavci, jenom upravíte měřící kód na stránce, nebo jej nahradíte nově vytvořeným ze stránky https://www.toplist.cz/code/. Ten už šifrovaný odkaz obsahuje.