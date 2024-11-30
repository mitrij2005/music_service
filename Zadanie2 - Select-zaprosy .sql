
# 1. Название и продолжительность самого длительного трека.
SELECT MAX (nazvanie_treka), MAX(dlitelnost) FROM treki;

# 2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT treki.nazvanie_treka FROM treki WHERE dlitelnost < 210;

# 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT sborniki.nazvanie_sbornika, sborniki.god_vypuska FROM sborniki WHERE god_vypuska >= 2018 AND god_vypuska <= 2020;

# 4. Исполнители, чьё имя состоит из одного слова.
SELECT ispolniteli.imya_ispolnitelya FROM ispolniteli WHERE POSITION(' ' IN ispolniteli.imya_ispolnitelya) = 0;

# 5. Название треков, которые содержат слово «мой» или «my»
SELECT treki.nazvanie_treka FROM treki 
WHERE UPPER(treki.nazvanie_treka) LIKE '% MY %' OR UPPER(treki.nazvanie_treka) LIKE 'MY %' OR UPPER(treki.nazvanie_treka) LIKE '% MY' OR
      UPPER(treki.nazvanie_treka) LIKE '% МОЙ %' OR UPPER(treki.nazvanie_treka) LIKE 'МОЙ %' OR UPPER(treki.nazvanie_treka) LIKE '% МОЙ' ; 