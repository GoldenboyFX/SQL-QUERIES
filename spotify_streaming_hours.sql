SELECT
     SUBSTRING(ts, 12, 2) AS hour_of_day,
	 COUNT(*) AS streams,
	 ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM public."spotify_streaming_history"
WHERE ts IS NOT NULL
GROUP BY hour_of_day
ORDER BY hour_of_day;