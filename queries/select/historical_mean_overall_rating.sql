WITH season_overall_rating AS (
	SELECT
	
		CASE 
			WHEN cast(strftime('%m', pa.date) as int) > 6 THEN CAST(strftime('%Y', pa.date) AS TEXT) || '/' || CAST((strftime('%Y', pa.date) + 1) AS TEXT)
			ELSE CAST((strftime('%Y', pa.date) - 1) AS TEXT) || '/' || CAST(strftime('%Y', pa.date) AS TEXT)
		END AS season,
		
		p.player_api_id,
		p.player_fifa_api_id,
		p.player_name,
		AVG((pa.overall_rating + pa.potential)/2) season_mean_overall_rating
		
	FROM Player p
	LEFT JOIN Player_Attributes pa ON p.player_api_id = pa.player_api_id
	GROUP BY 1,2
	
)

SELECT
	player_api_id,
	player_fifa_api_id,
	player_name,
	AVG(season_mean_overall_rating) historical_mean_overall_reating
FROM season_overall_rating
GROUP BY 1,2
ORDER BY 4 DESC