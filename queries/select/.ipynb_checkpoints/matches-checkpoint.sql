SELECT
    m.*,
    l.name as league_name,
    c.name AS country_name,
    home_t.team_long_name AS home_team_long_name,
    home_t.team_short_name AS home_team_short_name,
    away_t.team_long_name AS away_team_long_name,
    away_t.team_short_name AS away_team_short_name

FROM Match m
LEFT JOIN League l    ON m.league_id = l.id
LEFT JOIN Country c   ON m.country_id = c.id
LEFT JOIN Team home_t ON m.home_team_api_id = home_t.team_api_id
LEFT JOIN Team away_t ON m.home_team_api_id = away_t.team_api_id;