WITH first_play AS (
             SELECT
			      artist_name,
				  MIN(ts) AS first_played
			 FROM public."spotify_streaming_history"
			 GROUP BY artist_name
)
SELECT
     CASE 
	    WHEN s.ts = f.first_played THEN 'New Artist Discovery'
		ELSE 'Replay of Favourite'
	 END AS stream_type,
	 COUNT(*) AS count,
	 ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM public."spotify_streaming_history" s
LEFT JOIN first_play f ON s.artist_name = f.artist_name
GROUP BY stream_type
ORDER BY count DESC;