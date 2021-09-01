CREATE TABLE IF NOT EXISTS movies (
movieId INT UNIQUE PRIMARY KEY,
titles VARCHAR NOT NULL,
genres VARCHAR NOT NULL);

CREATE TABLE IF NOT EXISTS links (
movieId INT PRIMARY KEY NOT NULL,
imdbId INT,
tmdbId INT,
FOREIGN KEY (movieId) REFERENCES movies(movieId));

CREATE TABLE IF NOT EXISTS ratings (
userId INT NOT NULL,
movieId INT NOT NULL,
rating REAL NOT NULL,
timestamp INT NOT NULL,
PRIMARY KEY (userId, movieId),
foreign key(movieId) REFERENCES movies(movieId));

CREATE TABLE IF NOT EXISTS tags (
userId INT NOT NULL,
movieId INT NOT NULL,
tag VARCHAR NOT NULL,
timestamp INT NOT NULL,
FOREIGN KEY (movieId) REFERENCES movies(movieId));

