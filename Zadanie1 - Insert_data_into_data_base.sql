-- Исполнители
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('Pink Floyd');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('Dire Straits');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('Led Zeppelin');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('Deep Purlple');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('The Doors');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('ПростоИсполнитель');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('RADIO TAPOK');
INSERT INTO ispolniteli (imya_ispolnitelya) VALUES('Рэй Чарльз');

-- Жанры   
INSERT INTO ganry (nazvanie_ganra) VALUES ('Hard Rock');
INSERT INTO ganry (nazvanie_ganra) VALUES ('Rock');
INSERT INTO ganry (nazvanie_ganra) VALUES ('Rock and Roll');
INSERT INTO ganry (nazvanie_ganra) VALUES ('Blues');
INSERT INTO ganry (nazvanie_ganra) VALUES ('Psychedelic rock'); 
INSERT INTO ganry (nazvanie_ganra) VALUES ('Blues-rock'); 

INSERT INTO ganry (nazvanie_ganra) VALUES ('Progressive rock');

INSERT INTO ganry (nazvanie_ganra) VALUES ('Art rock'); 



# Исполнители <=> Жанры
INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'The Doors'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Psychedelic rock'));
INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'The Doors'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Blues-rock'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'The Doors'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Progressive rock'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Pink Floyd'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Art rock'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Pink Floyd'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Psychedelic rock'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Pink Floyd'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Rock and Roll'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Dire Straits'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Rock and Roll'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Led Zeppelin'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Hard Rock'));

INSERT INTO ispolnitely_ganry (id_ispolnitelya, id_ganra) 
VALUES ((SELECT id_ispolnitelya FROM ispolniteli WHERE imya_ispolnitelya = 'Deep Purlple'), (SELECT id_ganra FROM ganry WHERE nazvanie_ganra = 'Hard Rock'));





-- Альбомы
-- Pink Floyd
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('The Division Bell', 1994);

-- Pink Floyd
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('The Wall', 1979);


-- Dire Straits
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Dire Straits', 1978);

-- The Doors
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('The Doors', 1970);

INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Morrison Hotel', 1970);

INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Live in Detroit', 2000);

-- Led Zeppelin
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('The Song Remains the Same', 1976);

INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Physical Graffiti', 1975);


-- Deep Purlple
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Machine Head', 1972);
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Deep Purple in Rock', 1970); 

--  RADIO TAPOK
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('Наследие', 2022);

-- Рэй Чарльз
INSERT INTO albomy (nazvanie_alboma, god_vypuska) VALUES ('The Genius Hits the Road', 1960);

-- Заполняем таблицу Исолнители <=> Альбомы
-- Pink Floyd
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'The Division Bell'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Pink Floyd') );

INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'The Wall'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Pink Floyd') );

-- Dire Straits
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Dire Straits'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Dire Straits') );

-- The Doors
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'The Doors'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'The Doors') );

INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Morrison Hotel'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'The Doors') );

INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Live in Detroit'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'The Doors') );

--  Led Zeppelin
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'The Song Remains the Same'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Led Zeppelin') );

INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Physical Graffiti'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Led Zeppelin') );

--  Deep Purlple
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Machine Head'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Deep Purlple') );

INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Deep Purple in Rock'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Deep Purlple') );

--   RADIO TAPOK
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'Наследие'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'RADIO TAPOK') );

--  Рэй Чарльз
INSERT INTO ispolnitely_albomy (id_alboma, id_ispolnitelya)
VALUES ((SELECT albomy.id_alboma FROM albomy WHERE albomy.nazvanie_alboma = 'The Genius Hits the Road'),
        (SELECT ispolniteli.id_ispolnitelya FROM ispolniteli WHERE ispolniteli.imya_ispolnitelya = 'Рэй Чарльз') );

--  Треки
--  Pink Floyd - The Division Bell
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Cluster One', 358, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Division Bell')
);
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'A Great Day for Freedom', 257, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Division Bell')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Take It Back', 372, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Division Bell')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Lost for Words', 314, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Division Bell')
);

--  Pink Floyd - The Wall
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'In the Flesh?', 191, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Wall')
);

--  Dire Straits - Dire Straits
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Down to the Waterline', 235, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Water of Love', 323, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Setting Me Up', 318, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Six Blade Knife', 250, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits')
);

--  The Doors - The Doors
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Roadhouse Blues ', 241, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Morrison Hotel', 2141, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Alabama Song', 111, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'The End New York', 1066, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors')
);


INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Tuning', 97, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Live in Detroit')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Roadhouse Vamp', 91, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Live in Detroit')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Roadhouse Blues', 241, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Morrison Hotel')
);

--  Led Zepprlin
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Rock and Roll', 243, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'The Song Remains the Same', 353, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'The Rover', 337, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Houses of the Holy', 243, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti')
);

--  Deep Purple
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Smoke On The Water', 340, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Machine Head')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Highway Star', 367, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Machine Head')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Speed King', 352, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Deep Purple in Rock')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Child in Time', 617, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Deep Purple in Rock')
);

--  RADIO TAPOK
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Цусима', 259, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Наследие')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Жизнь за царя', 159, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Наследие')
);

INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Битва за Москву', 243, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Наследие')
);

--  Рэй Чарльз
INSERT INTO treki (nazvanie_treka, dlitelnost, id_alboma) VALUES (
'Georgia On My Mind', 279, (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Genius Hits the Road')
);


SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Morrison Hotel';


INSERT INTO sborniki (nazvanie_sbornika, god_vypuska) VALUES ('Сборник 1', 2018);
INSERT INTO sborniki (nazvanie_sbornika, god_vypuska) VALUES ('Сборник 2', 2019);
INSERT INTO sborniki (nazvanie_sbornika, god_vypuska) VALUES ('Сборник 3', 2020);
INSERT INTO sborniki (nazvanie_sbornika, god_vypuska) VALUES ('Сборник 4', 2021);

--  Наполняем 'Сборник 1', в отором только треки исполнителя 'The Doors' 

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 1'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors') AND
        nazvanie_treka = 'Morrison Hotel') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 1'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors') AND
        nazvanie_treka = 'Alabama Song') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 1'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors') AND
        nazvanie_treka = 'Roadhouse Blues ') 
    );

SELECT id_treka FROM treki WHERE 
    id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors') AND
    nazvanie_treka = 'Morrison Hotel';


--  Наполняем 'Сборник 2', в отором только треки исполнителя 'Dire Straits' 

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 2'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits') AND
        nazvanie_treka = 'Down to the Waterline') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 2'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits') AND
        nazvanie_treka = 'Setting Me Up') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 2'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Dire Straits') AND
        nazvanie_treka = 'Six Blade Knife') 
    );


--  Наполняем 'Сборник 3', в отором только треки исполнителя 'Led Zeppelin' 

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same') AND
        nazvanie_treka = 'Rock and Roll') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same') AND
        nazvanie_treka = 'The Song Remains the Same') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti') AND
        nazvanie_treka = 'The Rover') 
    );    

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti') AND
        nazvanie_treka = 'Houses of the Holy') 
    );

--  Наполняем 'Сборник 4', в отором только треки исполнителей 'Pink Floyd' и 'Deep Purple'
--  'Сборник 4' - треки 'Pink Floyd'
INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same') AND
        nazvanie_treka = 'Rock and Roll') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Song Remains the Same') AND
        nazvanie_treka = 'The Song Remains the Same') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti') AND
        nazvanie_treka = 'The Rover') 
    );    

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Physical Graffiti') AND
        nazvanie_treka = 'Houses of the Holy') 
    );

--  'Сборник 4' - треки 'Deep Purple'
INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Machine Head') AND
        nazvanie_treka = 'Smoke On The Water') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Machine Head') AND
        nazvanie_treka = 'Highway Star') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Deep Purple in Rock') AND
        nazvanie_treka = 'Speed King') 
    );    

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 3'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Deep Purple in Rock') AND
        nazvanie_treka = 'Child in Time') 
    );

INSERT INTO treki_sbornika (id_sbornika, id_treka) VALUES (
    (SELECT id_sbornika FROM sborniki WHERE nazvanie_sbornika='Сборник 4'),
    (SELECT id_treka FROM treki WHERE 
        id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'Deep Purple in Rock') AND
        nazvanie_treka = 'Child in Time') 
    );

SELECT id_treka FROM treki WHERE 
    id_alboma = (SELECT id_alboma FROM albomy WHERE nazvanie_alboma = 'The Doors') AND
    nazvanie_treka = 'Morrison Hotel';