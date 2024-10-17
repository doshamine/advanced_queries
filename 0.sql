CREATE TABLE artist (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	stage_name VARCHAR(50)
);


CREATE TABLE genre (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL
);


CREATE TABLE genre_artist (
	id SERIAL PRIMARY KEY NOT NULL,
	id_genre INT NOT NULL REFERENCES genre(id),
	id_artist INT NOT NULL REFERENCES artist(id)
);


CREATE TABLE album (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	year INT
);


CREATE TABLE album_artist (
	id SERIAL PRIMARY KEY NOT NULL,
	id_album INT NOT NULL REFERENCES album(id),
	id_artist INT NOT NULL REFERENCES artist(id)
);


CREATE TABLE track (
	id SERIAL PRIMARY KEY NOT NULL,
	id_album INT NOT NULL REFERENCES album(id),
	name VARCHAR(50) NOT NULL,
	duration INT
);


CREATE TABLE collection (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	year INT
);


CREATE TABLE track_collection (
	id SERIAL NOT NULL,
	id_track INT NOT NULL REFERENCES track(id),
	id_collection INT NOT NULL REFERENCES collection(id)
);
