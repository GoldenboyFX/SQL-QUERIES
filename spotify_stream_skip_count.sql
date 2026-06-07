SELECT
     COUNT(*) AS total_streams,
	 SUM(CASE WHEN skipped = TRUE THEN 1 ELSE 0 END) AS skipped_count,
	 ROUND(100.0* SUM(CASE WHEN skipped = TRUE THEN 1 ELSE 0 END) / COUNT(*),2) AS skip_percentage
FROM public."spotify_streaming_history";