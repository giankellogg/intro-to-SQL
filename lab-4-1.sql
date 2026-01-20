-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT SUM(s.hits) AS lifetime_hits
FROM stats s
JOIN players p ON p.id = s.player_id
WHERE p.first_name = 'Barry'
  AND p.last_name  = 'Bonds';
