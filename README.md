# EasyFix Backend
```
Ez a vizsgaremek egy 2 személy közös munkálya volt. Sajnos az egyik közreműködő az évfolyam során megbukott, így a mákyusi vizsgán nem tudott részvenni
```
A vizsgaremek dokumentációja(mert vmiért a github nem szerette): https://drive.google.com/drive/folders/1om9AquDAzByXSRYA5DiEuk_vFaHr4Ta_?usp=sharing

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


