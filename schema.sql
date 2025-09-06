--SCHEMA.SQL--
CREATE DATABASE music_insights;
USE music_insights;
CREATE TABLE spotify_data (
	track_name VARCHAR(225),
    artist_name VARCHAR(225),
    artist_count INT,
	released_year INT,
    released_month INT,
   	released_day INT,
	in_spotify_playlists INT,
    in_spotify_charts INT,
	streams	INT,
    in_apple_playlists INT,
	in_apple_charts INT,
	in_deezer_playlists INT,
	in_deezer_charts INT,
	in_shazam_charts INT,
    bpm INT,
	music_key VARCHAR(10),
	mode VARCHAR(10),
    danceability INT,
	valence	INT,
    energy INT,
    acousticness INT,
    instrumentalness	INT,
    liveness INT,
	speechiness INT
);



