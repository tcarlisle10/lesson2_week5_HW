CREATE DATABASE Music_Library;

USE music_library;

CREATE TABLE genre(
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(75)
);

CREATE TABLE artist(
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(75) NOT NULL,
albums INT,
FOREIGN KEY (id) REFERENCES genre(id) 
);

CREATE TABLE albums(
id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (id) REFERENCES artist(id),
album_name VARCHAR(75),
song_name VARCHAR(75) NOT NULL,
song_length FLOAT NOT NULL,
total_songs INT,
album_release_date DATE
);

USE music_library;

ALTER TABLE albums
ADD total_song_duration FLOAT; 








