WITH list AS (
(SELECT
 user1 AS user_name,
 SUM(msg_count) AS total_msgs
FROM fb_messages
GROUP BY user1
)

UNION ALL

(SELECT 
 user2 AS user_name,
 SUM(msg_count) AS total_msgs
FROM fb_messages
GROUP BY user2
)
)

 SELECT 
  user_name,
  SUM(total_msgs) AS total_messages
 FROM list
 GROUP BY user_name
 ORDER BY total_messages DESC
 LIMIT 10
