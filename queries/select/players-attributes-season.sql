SELECT

	CASE 
		WHEN cast(strftime('%m', pa.date) as int) > 6 THEN CAST(strftime('%Y', pa.date) AS TEXT) || '/' || CAST((strftime('%Y', pa.date) + 1) AS TEXT)
		ELSE CAST((strftime('%Y', pa.date) - 1) AS TEXT) || '/' || CAST(strftime('%Y', pa.date) AS TEXT)
	END AS season,
	
	p.player_api_id,
	p.player_fifa_api_id,
	p.player_name,
	p.height,
	p.weight,
	pa.*
	
FROM Player p
LEFT JOIN Player_Attributes pa ON p.player_api_id = pa.player_api_id
