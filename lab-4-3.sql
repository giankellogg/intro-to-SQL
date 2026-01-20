-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT t.name, p.first_name, p.last_name, SUM(s.home_runs) AS hr
FROM stats s
JOIN players p ON p.id = s.player_id
JOIN teams t   ON t.id = s.team_id
WHERE t.year = 2019
GROUP BY t.name, p.id
ORDER BY hr DESC
LIMIT 1;

