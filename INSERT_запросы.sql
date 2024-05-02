INSERT INTO Genres (id, genre) values (1, 'Metal');
INSERT INTO Genres (id, genre) values (2, 'Punk-rock');
INSERT INTO Genres (id, genre) values (3, 'Grunge-rock');

INSERT INTO Artists (id, artist) values (1, 'System of a down');
INSERT INTO Artists (id, artist) values (2, 'Misfits');
INSERT INTO Artists (id, artist) values (3, 'Nirvana');
INSERT INTO Artists (id, artist) values (4, 'Pearl Jam');

INSERT INTO Albums (id, album, released) values (1, 'Toxicite', 2019);
INSERT INTO Albums (id, album, released) values (2, 'American Psycho', 2020);
INSERT INTO Albums (id, album, released) values (3, 'In Utero', 2020);

INSERT INTO Tracks (id, track, duration, album) values (1, 'Chop Suey', 210, 'Toxicite');
INSERT INTO Tracks (id, track, duration, album) values (2, 'Eyeless', 236, 'Toxicite');
INSERT INTO Tracks (id, track, duration, album) values (3, 'I am Your Face', 255, 'American Psycho');
INSERT INTO Tracks (id, track, duration, album) values (4, 'American Psycho', 126, 'American Psycho');
INSERT INTO Tracks (id, track, duration, album) values (5, 'Dumb', 149, 'In Utero');
INSERT INTO Tracks (id, track, duration, album) values (6, 'Check my brain', 237, 'In Utero');

INSERT INTO Collection (id, names, released) values (1, 'Faith', 2018);
INSERT INTO Collection (id, names, released) values (2, 'Hope', 2019);
INSERT INTO Collection (id, names, released) values (3, 'Love', 2020);
INSERT INTO Collection (id, names, released) values (4, 'Death', 2020);





