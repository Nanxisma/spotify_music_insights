# Spotify Data Analysis (SQL Project)
 # summary
This project explores music streaming data using SQL to uncover trends and insights. 
The dataset includes information about tracks, artists, charts, playlists, and song characteristics.

 ## 📂 Project Files
- **schema.sql** --> Database and table creation script  
- **queries.sql** --> Analytical SQL queries used to extract insights

  ## ⚡How to Run
1. Open MySQL / MySQL Workbench.  
2. Run `schema.sql` to create the database and table.  
3. Load your dataset into `spotify_data` (via CSV import).  
4. Run `queries.sql` to reproduce the analysis.
   
Note: Dataset used for this project is available on Kaggle. Please download a similar Spotify dataset and load it into the table.

 ## 🔍 Key Analyses
- Top 10 most streamed songs overall and in 2023  
- Songs with "Die For You" in the title (ranked by streams)  
- Top 10 songs ranked across Spotify, Apple Music, Shazam, and Deezer  
- Impact of song characteristics (danceability, valence, energy) on streams  

 ## 🛠 Tools Used
- MySQL Workbench  
- SQL (DDL & DML)  

 ## 📊 Sample Outputs
Exported query results are available in the `outputs/` folder:
- Top 10 most streamed songs overall and in 2023 (`top10_overall_and_2023.csv`)
- ranking by average across different platforms (`avg_rank_across_platforms.csv`)
- Relationship between valence and streams (`valence_vs_streams.csv`)

