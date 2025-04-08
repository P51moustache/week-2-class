-- How many lifetime hits does Barry Bonds have?

SELECT SUM(s.hits) AS total_hits
FROM stats s
JOIN players p ON s.player_id = p.id
WHERE p.first_name = 'Barry' AND p.last_name = 'Bonds';

-- Expected result:
-- 2935


