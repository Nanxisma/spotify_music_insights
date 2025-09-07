**Spotify Data Analysis (SQL Project)**

## summary
 This project explores music streaming data using SQL to uncover trends and insights. 
 The dataset includes information about tracks, artists, charts, playlists, and song characteristics.

##  Project Files
- **schema.sql** --> Database and table creation script  
- **queries.sql** --> Analytical SQL queries used to extract insights

## How to Run
1. Open MySQL / MySQL Workbench.  
2. Run `schema.sql` to create the database and table.  
3. Load your dataset into `spotify_data` (via CSV import).  
4. Run `queries.sql` to reproduce the analysis.
   
Note: Dataset used for this project is available on Kaggle. Please download a similar Spotify dataset and load it into the table.

 ##  Key Analyses
- Top 10 most streamed songs overall and in 2023  
- Songs with "Die For You" in the title (ranked by streams)  
- Top 10 songs ranked across Spotify, Apple Music, Shazam, and Deezer  
- Impact of song characteristics (danceability, valence, energy) on streams  

 ##  Tools Used
- MySQL Workbench  
- SQL (DDL & DML)
- kaggle dataset 

 ##  key takeaways
   **Popularity Dynamics** :
 - The overall top 10 most streamed tracks differ significantly from the top 10 tracks released in 2023, highlighting how long-standing hits continue to dominate streams across years.
 - “Die For You” (The Weeknd) appears in both lists — the original version in the overall chart, while the remix (with Ariana Grande) secures a spot in the 2023 chart, showing how collaborations and re-releases can rejuvenate a song’s popularity.
   
   **Multi-platform Rankings** :
 -  Tracks like Arcángel, Bizarrap – Bzrp Music Sessions and Pipoco ranked Top 3 consistently across Spotify, Apple, Shazam, and Deezer, proving they were true global hits.
 -  Some songs (e.g., Lilith feat. SUGA) ranked well on Spotify but much lower on Apple/Shazam, suggesting regional or platform-specific fanbases.
 -  High Shazam ranks for certain songs show they were being searched/discovered, even when Spotify/Apple placements were weaker.

   **Audio features vs streams** :
   - Medium danceability songs (~390M avg streams) slightly outperform high danceability tracks (~357M) and strongly outperform low (~268M). Suggests that moderately danceable songs appeal most broadly.
   - Low-energy songs (~430M avg streams) outperform both medium (~365M) and high (~363M). Shows that chill/laid-back tracks often drive bigger streaming success than high-energy ones.
   - Low-valence (sad/melancholic) songs (~391M avg streams) top the chart, followed by medium (~376M), with high-valence “happy” songs trailing (~330M). It confirms the trend that sad/bittersweet songs resonate most with listeners.

 ##  Sample Outputs
Exported query results :
- Top 10 most streamed songs overall and in 2023 (`top10_overall_and_2023.csv`)
- ranking by average across different platforms (`avg_rank_across_platforms.csv`)
- Relationship between valence and streams (`valence_vs_streams.csv`)

