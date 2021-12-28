# Distances Traveled

Find the top 10 users that have traveled the greatet distance. Output their id, name and a total distance traveled.

## Tables 

**lyft_rides_log**

Column     | Data type
-----------|-----------
id         |  int
user_id    |  int
distance   |  int

**lyft_users**

Column     |  Data type
-----------|------------
id         |   int
name       |   varchar

## Steps taken to solve

- INNER JOIN both the tables using user_id in riders and id in users table
- GROUP BY user_id and name
- SUM up the distance travelled
- Descending order of total_distance
- Display id, name, total_distance
- Limit to 10
