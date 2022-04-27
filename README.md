# EasyFix Backend

## A backend beállítása

1. Sikeres klóbozás után a ".env.example" fájlból készíts egy másolatot ugyan arra a helyre, maly nevezd át ".env" re
2. Készíts egy adatbázist "easyfix" névvel "utf8mb4_hungarian_ci" kódolással
3. Importáld az "easyfix.sql" fájlt az adatbázisba
4. a ".env" fájlban a "DB_DATABASE" részél írd át az adatbázis nevét "easyfix"-re (az alapértelmezett az "laravel")
5. A konzolban írjuk be eme parancsokat:
```
composer install
php artisan key:generate --ansi
```
Ha minden rendesen lezajlott, akkor ezzel a parancsal indítsd el a fejlesztői szervert:
```
php artisan serve
```


