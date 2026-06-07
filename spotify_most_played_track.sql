SELECT
     track_name,
	 artist_name,
	 COUNT(*) AS play_count,
	 ROUND(SUM(ms_played)::numeric / 60000, 1) AS total_minutes_played
FROM public."spotify_streaming_history"
GROUP BY track_name, artist_name
ORDER BY play_count DESC 
LIMIT 15;