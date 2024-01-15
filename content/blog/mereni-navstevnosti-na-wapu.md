---
title: Měření návštěvnosti na WAPu
type: posts
date: 2005-07-05
author: Pavel Francírek
---
Není to úplná novinka, ale asi jsem o tom ještě nikde nepsal 🙂 Kdysi jsem si hrál s WAPem, takže stačí použít kód:

```html
<img src=“http://toplist.cz/wap.asp?ID=xxx“ alt=“.“/>
```

kde xxx je pochopitelně ID stránky. Posílá to WBMP bílý bod. Nejsou tam žadná rozšiření pomocí Javaskriptu atp. Další omezení je, že WAP neposílá referrer, takže stránky jsou označeny ve statistikách jednotně jako „W@P“. Ještě není udělaná nějaká bližší identifikace mobilů, ale pokud bude zájem a hlavně data, tak se to dá dodělat.