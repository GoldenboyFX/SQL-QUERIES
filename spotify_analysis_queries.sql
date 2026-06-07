SELECT * FROM public."spotify_streaming_history"
ORDER BY ms_played
LIMIT 10;

SELECT
     'spotify_track_uri' AS column_name,
	 COUNT (*) - COUNT(spotify_track_uri) AS missing_count,
	 ROUND(100.0 *(COUNT(*) - COUNT(spotify_track_uri))::numeric / COUNT(*),2) AS missing_percentage
FROM public."spotify_streaming_history"

UNION ALL 
SELECT
     'ts',
	 COUNT(*) - COUNT(ts),
	 ROUND(100.0*(COUNT(*) - COUNT(ts))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'platform',
	 COUNT(*) - COUNT(platform),
	 ROUND(100.0*(COUNT(*) - COUNT(platform))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL 
SELECT
     'ms_played',
	 COUNT(*) - COUNT(ms_played),
	 ROUND(100.0*(COUNT(*) - COUNT(ms_played))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'track_name',
	 COUNT(*) - COUNT(track_name),
	 ROUND(100.0*(COUNT(*) - COUNT(track_name))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'artist_name',
	 COUNT(*) - COUNT(artist_name),
	 ROUND(100.0*(COUNT(*) - COUNT(artist_name))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'album_name',
	 COUNT(*) - COUNT(album_name),
	 ROUND(100.0*(COUNT(*) - COUNT(album_name))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'reason_start',
	 COUNT(*) - COUNT(reason_start),
	 ROUND(100.0*(COUNT(*) - COUNT(reason_start))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'reason_end',
	 COUNT(*) - COUNT(reason_end),
	 ROUND(100.0*(COUNT(*) - COUNT(reason_end))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL
SELECT
     'shuffle',
	 COUNT(*) - COUNT(shuffle),
	 ROUND(100.0*(COUNT(*) - COUNT(shuffle))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

UNION ALL 
SELECT
     'skipped',
	 COUNT(*) - COUNT(skipped),
	 ROUND(100.0*(COUNT(*) - COUNT(skipped))::numeric / COUNT(*),2)
FROM public."spotify_streaming_history"

ORDER BY missing_percentage DESC;