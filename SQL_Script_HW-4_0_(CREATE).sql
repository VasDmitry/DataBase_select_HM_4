-- Создаем таблицу жанров
CREATE TABLE IF NOT EXISTS Genres (
	  genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) NOT NULL
);

-- Создаем таблицу исполнителей
CREATE TABLE IF NOT EXISTS Artists (
	  artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(80) NOT NULL
);

-- Создаем промежуточную таблицу между жанрами и исполнителями, чтобы организовать связь многие ко многим
CREATE TABLE IF NOT EXISTS Genres_Artists (
	genre_artist_id SERIAL PRIMARY KEY,
	       genre_id INTEGER NOT NULL REFERENCES Genres (genre_id),
	      artist_id INTEGER NOT NULL REFERENCES Artists (artist_id)
);

-- Создаем таблицу альбомов
CREATE TABLE IF NOT EXISTS Albums (
	    album_id SERIAL PRIMARY KEY,
	  album_name VARCHAR(80) NOT NULL,
	release_year DATE 
);

-- Создаем промежуточную таблицу между альбомами и исполнителями, чтобы организовать связь многие ко многим
CREATE TABLE IF NOT EXISTS Albums_Artists (
	album_artist_id SERIAL PRIMARY KEY,	
	      artist_id INTEGER NOT NULL REFERENCES Artists (artist_id),
	       album_id INTEGER NOT NULL REFERENCES Albums (album_id)
);

-- Создаем таблицу для песен
CREATE TABLE IF NOT EXISTS Songs (
	  song_id SERIAL PRIMARY KEY,
	song_name TEXT NOT NULL,
	 album_id INTEGER NOT NULL REFERENCES Albums (album_id),
	 duration INTEGER NOT NULL 
);

-- Создаем таблицу для сборников
CREATE TABLE IF NOT EXISTS Compilations (
	  compilation_id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(80) NOT NULL,
	    release_year DATE 
);

-- Создаем промежуточную таблицу между песнями и сборниками, чтобы организовать связь многие ко многим
CREATE TABLE IF NOT EXISTS Compilations_Songs (
	compilation_song_id SERIAL PRIMARY KEY,	
	            song_id INTEGER NOT NULL REFERENCES Songs (song_id),
	     compilation_id INTEGER NOT NULL REFERENCES Compilations (compilation_id)
);