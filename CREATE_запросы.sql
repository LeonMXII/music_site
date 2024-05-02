CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(20) UNIQUE NOT NULL 
	);
CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	artist VARCHAR(80) NOT NULL
	);
CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album VARCHAR(30) NOT NULL,
	released INTEGER CHECK(released >= 1977) NOT NULL 
	);
CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	track VARCHAR(20) NOT NULL,
	duration INTEGER CHECK(duration <= 300) NOT NULL,
	album VARCHAR(30) NOT NULL
	);
CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	names VARCHAR(30) UNIQUE NOT NULL,
	released INTEGER CHECK(released <= 2024) NOT NULL
	);
CREATE TABLE IF NOT EXISTS genres_artists(
	PRIMARY KEY(genre_id, artist_id),
	genre_id INTEGER NOT NULL REFERENCES Genres(id),
	artist_id INTEGER NOT NULL REFERENCES Artists(id)
	);
CREATE TABLE IF NOT EXISTS artists_albums(
	PRIMARY KEY(artist_id, album_id),
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	album_id INTEGER NOT NULL REFERENCES Albums(id)
--	constraint aa primary key(artist_id, album_id)
	);
CREATE TABLE IF NOT EXISTS trakcs_collection (
	PRIMARY KEY(track_id, collection_id),
	track_id INTEGER NOT NULL REFERENCES Tracks(id),
	collection_id INTEGER NOT NULL REFERENCES Collection(id)
--	constraint tc primary key(track_id, collection_id)
	);