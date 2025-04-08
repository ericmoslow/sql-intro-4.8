-- How many lifetime hits does Barry Bonds have?

SELECT players.first_name, players.last_name, sum(stats.hits)
FROM stats INNER JOIN players on players.id = stats.player_id
WHERE players.last_name = "Bonds" AND players.first_name = "Barry";

SELECT sum(stats.hits)
FROM stats INNER JOIN players on players.id = stats.player_id
WHERE players.last_name = "Bonds" AND players.first_name = "Barry";

--His solution
SELECT SUM(stats.hits)
FROM players
INNER JOIN stats ON players.id = stats.player_id
WHERE first_name= "Barry"
AND last_name ="Bonds";


-- Expected result:
-- 2935


