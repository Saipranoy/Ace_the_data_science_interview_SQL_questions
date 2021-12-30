WITH required_data AS (
select 
 ep.emp_id,
 p.title,
 p.budget, 
 ROW_NUMBER() OVER (PARTITION BY title) AS row_number,
 round((p.budget/(ROW_NUMBER() OVER (PARTITION BY title))::float)::numeric,0) AS budget_emp_ratio
from ms_emp_projects ep
JOIN ms_projects p
ON ep.project_id = p.id
)

SELECT
 title,
 budget_emp_ratio
FROM required_data
WHERE row_number = 2
ORDER BY budget_emp_ratio DESC;
