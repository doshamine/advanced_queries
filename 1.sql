-- заполнение таблиц

INSERT INTO genre (name)
VALUES ('альтернативный рок'),
       ('хард-рок'),
       ('прогрессивный рок'),
       ('новая волна');


INSERT INTO collection (name, year)
VALUES ('Любимые треки', 2024),
       ('Greatest hits III', 1999),
       ('Part lies part heart part truth part garbage', 2011),
       ('Relevant theme', 2024);


INSERT INTO album(name, year)
VALUES ('Collapse into now', 2011),
       ('Automatic for the people', 1992),
       ('Innuendo', 1991),
       ('Absolution', 2003),
       ('Невидимка', 1985),
       ('Титаник', 1994),
       ('Out of time', 1991);

 
INSERT INTO artist(name, stage_name)
VALUES ('Bill Berry, Peter Buck, Mike Mills, Michael Stipe', 'R.E.M.'),
       ('Freddie Mercury, Brian May, Roger Taylor, John Deacon', 'Queen'),
       ('Matt Bellamy, Dominic Howard, Chris Wolstenholme', 'Muse'),
       ('Илья Кормильцев, Вячеслав Бутусов, Гога Копылов, Николай Петров, Альберт Потапкин, Алексей Могилевский', 'Nautilus Pompilius');

      
INSERT INTO track(id_album, name, duration)
VALUES (1, 'Blue', 345),
       (2, 'Everybody hurts', 316),
       (3, 'Innuendo', 390),
       (3, 'Show must go on', 277),
       (4, 'Hysteria', 227),
       (5, 'Князь тишины', 210),
       (6, 'Титаник', 304),
       (7, 'Loosing my religion', 268);
      
INSERT INTO track(id_album, name, duration)
VALUES (1, 'my own', 345),
       (2, 'own my', 316),
       (3, 'my', 390),
       (3, 'oh my god', 277),
       (4, 'myself', 227),
       (5, 'by myself', 210),
       (6, 'bemy self', 304),
       (7, 'myself by', 268),
       (5, 'by myself by', 210),
       (6, 'beemy', 304),
       (7, 'premyne', 268);
      

INSERT INTO genre_artist(id_genre, id_artist)
VALUES (1, 1),
       (2, 1),
       (2, 2),
       (3, 3),
       (4, 4);
      
      
INSERT INTO album_artist(id_album, id_artist)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (5, 4),
       (6, 4),
       (7, 1);


INSERT into track_collection(id_track, id_collection)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (3, 2),
       (4, 2),
       (1, 3),
       (2, 3),
       (8, 3),
       (3, 4),
       (6, 4),
       (7, 4);