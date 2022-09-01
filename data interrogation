/*Purpose: understand DB schema*/
SELECT *
FROM unpopular_songs
LIMIT 5;

/* Puprose: understand how many rows in dataset. It yielded 10877 rows*/
SELECT COUNT(*)
FROM unpopular_songs;

/* Puprose: checked for dupes, as track_id should be unique to each track. Query yielded 10877, meaning no dupes are in the csv file. */
SELECT COUNT(DISTINCT track_id)
FROM unpopular_songs;

/* 'mode' tells whether the song is major or minor. The output of this query shows that 64% of the unpopular songs are in a major key*/
SELECT COUNT(1), mode
	FROM unpopular_songs 
GROUP BY mode;

/* I wanted to see the number of times each artist appeared in the unpopular_songs table. The top 5 least popular artists are:
Alei Islah
Ocean Sounds
Blackjesus Yoshua
Sounds Of Nature : Thunderstorm, Rain
Paris Street*/

SELECT COUNT(1) AS Tracks_contributed, track_artist 
	FROM unpopular_songs
GROUP BY track_artist
ORDER BY Tracks_contributed DESC;
