---
title: REST API - autentifikace
type: docs
---
Pro autorizace do API probíhá ve dvou krocích. Nejprve je potřeba, pomocí přístupového **klíče**, získat přístupový **token** a poté ho použít pro autorizaci v dalších požadavcích.

## Vytvoření přístupového klíče

Přístupový klíč je dvojice privátního a veřejného klíče. Vygenerujete je například pomocí nástroje `openssll`:

```bash
openssl ecparam -name prime256v1 -genkey -noout -out private.pem
openssl ec -in private.pem  -pubout > public.pem
```
Tím vzniknou dva soubory `private.pem` a `public.pem`. První obsahuje privátní klíč, který je potřeba uchovávat v bezpečí.

Druhý obsahuje veřejný klíč, který je potřeba přidat do nastavení uživatele v [TOPlist Profi](https://profi.toplist.cz/#user_setting):

![API veřejný klíč](/img/api-public-key.png)

## Získání přístupového tokenu

K získání přístupového tokenu je potřeba poslat požadavek na adresu `https://profi.toplist.cz/api/v1/login`
Autentifikace probíhá pomocí HTTP hlavičky `Authorization`. Hlavička musí obsahovat JWT podepsaný privátním klíčem.
Příklad volání v Pythonu:

```python
import jwt
import requests
import time

privateKey = open('private.pem').read()
jwtPayload = jwt.encode({
    'sub': 'user@example.com',
    'aud': 'batch',
    'iss': '0123456-789a-bcde-f012-3456789abcd',
    'nbf': int(time.time()),
    'exp': int(time.time()) + 5*60,
    'jti': '1234567890'
}, privateKey, algorithm='ES256')

token = requests.post(f"https://media.toplist.cz/api/v1/login",
    headers={
        'Accept':'application/json',
        'Authorization': jwtPayload
    }
).json()['token']
```
Význam claimů JWT:
- `sub` - email uživatele, pro kterého je token vytvořen
- `aud` - v tomto případě vždy hodnota 'batch'
- `iss` - identifikátor Provozovatele, který je uveden v nastavení serveru
- `nbf` - čas, kdy token začne platit
- `exp` - čas, kdy token přestane platit (maximálně 1 hodina)
- `jti` - unikátní identifikátor tokenu

## Použití tokenu

Vygenerovaný **token** je potřeba přidat do hlavičky `Authorization` pro každý další požadavek jako Bearer token. Tj.:
`Authorization: Bearer <token>`
