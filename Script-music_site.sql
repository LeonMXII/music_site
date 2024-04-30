create table if not exists Genres (
	id SERIAL primary key,
	genre VARCHAR(20) unique not null 
	);
create table if not exists Performers (
	id SERIAL primary key,
	performer VARCHAR(80) not null
	);
create table if not exists Albums (
	id SERIAL primary key,
	album VARCHAR(30) unique not null,
	year_of_issue integer check(year_of_issue >= 1977) not null, 
	);
create table if not exists Tracks (
	id SERIAL primary key,
	track VARCHAR(20) unique not null,
	duration integer check(duration <= 300) not null,
	album VARCHAR(30) unique not null
	);
create table if not exists Collection (
	id SERIAL primary key,
	names VARCHAR(30) unique not null,
	year_of_issue integer check(year_of_issue <= 2024) not null,
	);
create table if not exists genres_performers(
	primary key(genres_id, performers_id),
	genres_id integer not null references Genres(id),
	performers_id integer not null references Performers(id)
	);
create table if not exists performers_albums(
	primary key(performers_id, albums_id),
	performers_id integer not null references Performers(id),
	albums_id integer not null references Albums(id)
	);
create table if not exists trakcs_collection (
	primary key(tracks_id, collection_id),
	tracks_id integer not null references Tracks(id),
	collection_id integer not null references Collection(id)
	);