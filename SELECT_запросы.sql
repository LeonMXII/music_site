--Название и продолжительность самого продолжительного  трека 
SELECT track, duration
FROM  Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

--Название треков продолжительность которого не более 3.5 минут (210)
SELECT track, duration 
FROM Tracks 
WHERE duration >= 210 ;

--Названия сборников, вышедших за период с 2018 по 2020 год включительно 
SELECT names, released
FROM Collection 
WHERE released BETWEEN 2018 AND 2020;

--Исполнители чье имя состоит из одного слова 
SELECT artist
FROM Artists 
WHERE artist NOT LIKE '% %';

--Название треков, которые содержат слово мой или my
SELECT track
FROM Tracks
WHERE track LIKE '%my%';

--Количество исполнителей в каждом жанре 
SELECT genre, COUNT(artist_id)
FROM Genres
LEFT JOIN genres_artists ON id = genre_id
GROUP BY genre;

--Количество треков вошедших в альбомы 2019-2020 годов
SELECT COUNT(track)
FROM Tracks
JOIN Albums ON Albums.id = Tracks.id
WHERE released BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому 
SELECT Albums.album, AVG(duration)
FROM Albums
LEFT JOIN Tracks ON Albums.id = Tracks.id
GROUP BY Albums.album;

--Все исполнители которые не впустили альбомы в 2020 году 
SELECT DISTINCT artist 
FROM Artists
WHERE artist NOT IN(
    SELECT DISTINCT artist FROM Artists
    LEFT JOIN artists_albums ON Artists.id = artist_id
    LEFT JOIN Albums ON artist_id = Albums.id
    WHERE Albums.released = 2020)
ORDER BY artist;

--Название сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT names 
FROM Collection
JOIN trakcs_collection ON Collection.id = collection_id
JOIN Tracks ON track_id = Tracks.id
JOIN Albums ON Tracks.album = Albums.album
JOIN Artists ON artists_albums.artist_id = Artists.id
WHERE Artists.artist = 'Nirvana';
