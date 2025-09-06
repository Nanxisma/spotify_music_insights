--QUERIES--
	USE music_insights;
-- 1) Top 10 songs with most streams(overall) and top 10 songs released in 2023 with most streams 
 SELECT  track_name,
		artist_name,
        released_year, 
        streams,
	    'overall top 10' AS category
FROM (SELECT *
	FROM music_insights.spotify_data
	ORDER BY streams DESC 
	LIMIT 10 ) AS overall
UNION ALL
SELECT  track_name,
		artist_name,
        released_year,
        streams,
        '2023 top 10' AS category
FROM (SELECT *
	FROM music_insights.spotify_data
	WHERE released_year = 2023
	ORDER BY streams DESC
	LIMIT 10) AS top_2023; 
    
	 -- 2) Songs with "Die For You" in the title, ordered by streams
SELECT track_name, released_year, streams
FROM music_insights.spotify_data
WHERE track_name LIKE '%Die For You%'
ORDER BY streams DESC;

	 -- 3) Top 10 songs ranked by average rank across platforms
SELECT track_name,
	   artist_name,
       in_spotify_charts AS spotify_rank,
	   in_apple_charts AS apple_rank,
       in_shazam_charts AS shazam_rank,
       in_deezer_charts AS deezer_rank,
	   (in_spotify_charts + in_apple_charts + in_deezer_charts + in_shazam_charts) AS total_rank,
	   (in_spotify_charts + in_apple_charts + in_deezer_charts + in_shazam_charts) / 4 AS avg_rank
FROM music_insights.spotify_data
WHERE in_shazam_charts >0
  AND in_spotify_charts >0
  AND in_deezer_charts >0
  AND in_apple_charts>0
ORDER BY avg_rank ASC
LIMIT 10;

     -- 4) valence VS streams (grouped buckets)
SELECT 
	CASE 
    WHEN valence >= 65 THEN 'High valence'
    WHEN valence >=35 THEN 'Medium valence'
    ELSE 'Low valence'
	END AS valence_level,
    AVG(streams) AS AVG_streams 
FROM music_insights.spotify_data
GROUP BY valence_level
ORDER BY AVG_streams DESC;

	--  5) danceability VS streams
SELECT 
	CASE 
    WHEN danceability >= 60 THEN 'High danceability'
    WHEN danceability >=30 THEN 'Medium danceability'
    ELSE 'Low danceability'
	END AS danceability_level,
    AVG(streams) AS AVG_streams 
FROM music_insights.spotify_data
GROUP BY danceability_level
ORDER BY AVG_streams DESC;

	-- 6) Energy VS streams
SELECT 
	CASE 
    WHEN energy >= 60 THEN 'High energy'
    WHEN energy >= 30 THEN 'Medium energy'
    ELSE 'Low energy'
	END AS energy_level,
    AVG(streams) AS AVG_streams 
FROM music_insights.spotify_data
GROUP BY energy_level
ORDER BY AVG_streams DESC;
