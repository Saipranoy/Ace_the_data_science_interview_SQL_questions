
WITH required_table AS (
select 
*,
ROW_NUMBER() OVER (PARTITION BY year,company_name) AS rownum
from car_launches
),
table_2019 AS(
SELECT
 year,
 company_name,
 MAX(rownum) as num_of_products
FROM required_table
WHERE year = 2019
GROUP BY year,company_name
),
table_2020 AS (
SELECT
 year,
 company_name,
 MAX(rownum) as num_of_products
FROM required_table
WHERE year = 2020
GROUP BY year,company_name
)

SELECT 
 t1.company_name,
 t2.num_of_products - t1.num_of_products AS net_difference
FROM table_2019 t1
RIGHT JOIN table_2020 t2 
ON t1.company_name = t2.company_name
