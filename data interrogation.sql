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

/* I created "tempo tier" groups to determine the most common tempos of the unpopular songs*/

SELECT tempo,
	CASE 
		 WHEN tempo < 40 THEN '1'
		 WHEN tempo >= '40' AND tempo < '50' THEN '2'
		 WHEN tempo >= '50' AND tempo < '60' THEN '3'
		 WHEN tempo >= '60' AND tempo < '70' THEN '4'
		 WHEN tempo >= '70' AND tempo < '80' THEN '5'
		 WHEN tempo >= '80' AND tempo < '90' THEN '6'
		 WHEN tempo >= '90' AND tempo < '100' THEN '7'
		 WHEN tempo >= '100' AND tempo < '110' THEN '8'
		 WHEN tempo >= '110' AND tempo < '120' THEN '9'
		 WHEN tempo >= '120' AND tempo < '130' THEN '10'
		 WHEN tempo >= '130' AND tempo < '140' THEN '11'
		 WHEN tempo >= '140' AND tempo < '150' THEN '12'
		 WHEN tempo >= '150' AND tempo < '160' THEN '13'
		 WHEN tempo >= '160' AND tempo < '170' THEN '14'
		 WHEN tempo >= '170' THEN '15'
		 ELSE NULL
	END AS Pace
FROM unpopular_songs 
ORDER BY Pace DESC
;
