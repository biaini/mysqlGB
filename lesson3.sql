--Student Avakian Andranik

USE vk;

DROP TABLE IF EXISTS music_album;
CREATE TABLE music_album (
	album_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	album_name VARCHAR(50) NOT NULL,
	album_artist VARCHAR(50) NOT NULL,
	album_genre VARCHAR(50),
	album_year VARCHAR(50),
	PRIMARY KEY(album_id),
	FOREIGN KEY(user_id) REFERENCES users(id)
	
);

DROP TABLE IF EXISTS music_track;
CREATE TABLE music_track (
	track_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	--file blob,
	size INT,
	track_artist VARCHAR(50) NOT NULL,
	track_genre VARCHAR(50),
	track_year VARCHAR(50),
	PRIMARY KEY(track_id),
	FOREIGN KEY(album_id) REFERENCES music_album(album_id),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS podcast;
CREATE TABLE podcast (
	podcast_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	podcast_name VARCHAR(50) NOT NULL,
	podcast_author VARCHAR(50) NOT NULL,
	podcast_genre VARCHAR(50),
	podcast_url VARCHAR(50) NOT NULL,
	PRIMARY KEY(podcast_id),
);


