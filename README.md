# SQL
Purpose of repo to show abilities with SQL. Raw queries can be found in file = data interrogation.sql
<br>Data Source: https://www.kaggle.com/datasets/estienneggx/spotify-unpopular-songs
<br><br><u> Goal of Analysis</u>: discover trends in unpopular song categorization via Spotify export.</br>
<br><b>Method<b>: Downloaded dataset from Kaggle as csv which shows dataset of unpopular songs from Spotify.
<br>
<br> Lessons Learned
* Selected all all with a limit of 5 rows to understand schema but not overwhelm DB. File "schema example" shows 5 lines of example data from dataset
* Checked for dupes by checking the COUNT DISTINCT of the track_id, which is the table primary key.
* 64% of the unpopular songs are in a major key
* Artists appear multiple times in the data set. The top 5 most unpopular artists are Alei Islah Ocean Sounds, Blackjesus Yoshua, Sounds Of Nature : Thunderstorm, Rain, Paris Street
* Via pace % analysis I found that most of the songs feell within the following tempo tiers: 170+, 120-129, 130-139. (used CASE WHEN and created tempo tiers)
* 91% of unpopular songs below .5 on liveness scales, indicating an overwhelming amount weighed in as "less live"
<br>
<br> Future Analysis  
  
* It would be great to have the same output for the most popular songs. We could join the tables using UNION and add a column indicating if the track came from the popular or unpopular table originally.
* We could then coorelate these attributes such as liveness, tempo, loudness, and valence in order to see which values coorelate to popular or unpopular songs specifically.
* Ultimately, these results could predict and provide a guide for what makes a song popular, guiding the song creator towards making a hit!
  
