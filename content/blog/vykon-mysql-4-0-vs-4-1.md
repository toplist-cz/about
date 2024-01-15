---
title: Výkon MySQL 4.0 vs. 4.1
type: posts
date: 2006-01-18
author: Pavel Francírek
tags:
    - databáze
---
## O tom, že aktuální verze MySQL – 4.1 je trochu náročnější se ví.

Já bych rád ukázal jeden konkrétní graf, na kterém je vidět o kolik. Jde o provoz v rozsahu 3000 – 3500 dotazů za vteřinu (modří již vědi :-)). Grafy odpovídají stejnému časovému úseku. Jak je z nich vidět, je nárůst relativně vysoký, přibližně 50%.

{{< image src="/img/1709624-1921183.png" wrapper="col-10 mx-auto" >}}

Protože se jedná o velké množství jednoduchých dotazů a hlavně dotazů modifikující obsah tabulek(insert, update), nejsou využity rozšířené možnosti jako query cache, subselecty atd. V případě, že by je projekt využíval (publikační systémy, virtuální obchody atp.) může být situace opačna. Ale pokud máte aplikaci, která používá základní sadu dotazů, je asi lepší zůstat u starší verze.