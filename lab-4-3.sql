-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT 
    t.name AS team_name,
    p.first_name,
    p.last_name,
    s.home_runs
FROM players p
JOIN stats s ON p.id = s.player_id
JOIN teams t ON s.team_id = t.id
WHERE t.year = 2019
ORDER BY s.home_runs DESC
LIMIT 1;


