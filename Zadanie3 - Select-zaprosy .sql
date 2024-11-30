 
SELECT ispolnitely_ganry.id_ispolnitel_ganr, ispolnitely_ganry.id_ganra, ispolnitely_ganry.id_ispolnitelya, ganry.nazvanie_ganra, COUNT (*) FROM ispolnitely_ganry
JOIN ganry ON ganry.id_ganra = ispolnitely_ganry.id_ganra
GROUP BY ispolnitely_ganry.id_ganra, ispolnitely_ganry.id_ispolnitelya, ispolnitely_ganry.id_ispolnitel_ganr, ganry.nazvanie_ganra
ORDER BY ispolnitely_ganry.id_ganra;

SELECT ganry.id_ganra, ganry.nazvanie_ganra FROM ganry
 RIGHT  JOIN ispolnitely_ganry ON ispolnitely_ganry.id_ganra = ganry.id_ganra
 WHERE ispolnitely_ganry.id_ganra.KEY IS NULL; 
#  RIGHT JOIN ispolniteli ON ispolniteli.id_ispolnitelya = ispolnitely_ganry.id_ispolnitelya;

# 1.Количество исполнителей в каждом жанре
SELECT ganry.id_ganra, ganry.nazvanie_ganra, COUNT(ispolnitely_ganry.id_ganra) FROM ganry
  LEFT JOIN ispolnitely_ganry ON ispolnitely_ganry.id_ganra = ganry.id_ganra
  GROUP BY ganry.id_ganra ;

# 2. Количество треков, вошедших в альбомы 2019–2020 годов
SELECT albomy.id_alboma, albomy.nazvanie_alboma, albomy.god_vypuska, COUNT (treki.id_treka) FROM albomy 
JOIN treki ON treki.id_alboma = albomy.id_alboma
WHERE albomy.god_vypuska >= 2020 AND albomy.god_vypuska <= 2022
GROUP BY albomy.id_alboma;

# 3. Средняя продолжительность треков по каждому альбому.
SELECT albomy.id_alboma, albomy.nazvanie_alboma, albomy.god_vypuska, AVG(treki.dlitelnost) FROM albomy 
JOIN treki ON treki.id_alboma = albomy.id_alboma
GROUP BY albomy.id_alboma;


# 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ispolniteli.id_ispolnitelya, ispolniteli.imya_ispolnitelya, ispolnitely_albomy.id_alboma, albomy.nazvanie_alboma, albomy.god_vypuska FROM ispolniteli
JOIN ispolnitely_albomy ON ispolnitely_albomy.id_ispolnitelya = ispolniteli.id_ispolnitelya
JOIN albomy ON albomy.id_alboma = ispolnitely_albomy.id_alboma
WHERE albomy.god_vypuska <> 2020
GROUP BY ispolniteli.id_ispolnitelya UNIQUE;

# 4. Все исполнители, которые не выпустили альбомы в 2020 году (исключены повторения). 
SELECT DISTINCT ispolniteli.id_ispolnitelya, ispolniteli.imya_ispolnitelya FROM ispolniteli
JOIN ispolnitely_albomy ON ispolnitely_albomy.id_ispolnitelya = ispolniteli.id_ispolnitelya
JOIN albomy ON albomy.id_alboma = ispolnitely_albomy.id_alboma
WHERE albomy.god_vypuska <> 2020;
