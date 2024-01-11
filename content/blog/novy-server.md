---
title: Nový server
type: posts
date: 2006-01-18
author: Pavel Francírek
tags:
    - hardware
---
Problémy začaly minulý týden, kdy na hostingu (Casablanca) vypadl proud a prý jim dvacet minut trvalo než na to vůbec přišli.
Všechno vyvrcholilo včera večer, kdy se při instalaci nového serveru zjistilo, že je na jednom stávajícím disk v takovém stavu, že po rebootu už nenaběhl (nechci spekulovat, jak moc se na této situaci výpadek projevil, ale umřelého železa bylo po serverovně vidět docela dost).
Jelikož ani rozběhnutí nového serveru nebylo zcela bez problému (např. podpora pro nový RAID řadič je až v jádře 2.6.14) byl dneska, bohužel, TOPlist v degradovaném stavu. Nyní se podařilo situaci stabilizovat. Nový server se na tom podílí nemalou měrou.

Jedná se o poměrně zajímavý kousek. Jeho výrobce je Supermicro a z oficiálních stránek se o něm nic nedovíte. Na nich se totiž zdá, se Supermicro je  čistě Intel-only výrobce. Takže až na adrese http://www.supermicro.com/Aplus/ se dá objevit, že to není úplně pravda. Tento konkrétní kousek má označení AS1020A-T. Jedná se o 1U server osazený 2GB RAM a dvěma Opterony 270 (2.0GHz, dual-core). Zatím na něm běží 32bitová verze Debianu (sarge). O tom, jakou 64bit distribuci tam dát zatím uvažuji (zatím mi běží Ubuntu a CentOS). Vaše případné tipy jsou vítány 🙂.

Ještě není celý systém úplně doladěný, ale celkový nárůst výpočetní kapacity je téměř 50%, takže skýtá rezervy. A ještě se trochu zvednou, až se zase zapojí ten odešlý server, co tam leží v koutě, to byl Opteron 144 (1,8Ghz,  single-core).