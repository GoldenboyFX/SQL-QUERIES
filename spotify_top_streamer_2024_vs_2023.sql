SELECT
   SUBSTRING(ts, 1, 4) AS year,
   COUNT(*) AS total_streams
FROM public."spotify_streaming_history"
GROUP BY SUBSTRING(ts, 1, 4)
ORDER BY year DESC;


-- TOP ARTIST: 2024 (TOP YEAR) vs 2023 (PREVIOUS YEAR)
WITH top_year AS(
         SELECT
              artist_name,
	          COUNT(*) AS play_count
         FROM public."spotify_streaming_history"
         WHERE ts LIKE '2024%'
         GROUP BY artist_name
         ORDER BY play_count DESC
         LIMIT 5
),
previous_year AS (
         SELECT
		      artist_name,
			  COUNT(*) AS play_count
		 FROM public."spotify_streaming_history"
		 WHERE ts LIKE '2023%'
		 GROUP BY artist_name
		 ORDER BY play_count DESC
		 LIMIT 5
)
SELECT
     '2024 (TOP YEAR)' AS period,
	 artist_name, 
	 play_count,
	 RANK() OVER (ORDER BY play_count DESC) AS rank
FROM top_year

UNION ALL
SELECT
     '2023 (PREVIOUS YEAR)' AS period,
	 artist_name,
	 play_count,
	 RANK() OVER (ORDER BY play_count DESC) AS rank
FROM previous_year
ORDER BY period, rank;


