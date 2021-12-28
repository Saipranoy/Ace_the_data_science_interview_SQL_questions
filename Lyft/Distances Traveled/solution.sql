
SELECT 
 lu.id,
 lu.name,
 SUM(lg.distance) AS total_distance
FROM lyft_rides_log lg
JOIN lyft_users lu
ON lg.user_id = lu.id
GROUP BY lu.id,lu.name
ORDER BY total_distance DESC
LIMIT 10;
