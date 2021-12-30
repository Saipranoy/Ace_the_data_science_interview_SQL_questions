SELECT title AS project,
       round((budget/count(emp_id)::float)::numeric, 0) budget_emp_ratio
FROM ms_projects a
INNER JOIN ms_emp_projects b 
ON a.id = b.project_id
GROUP BY title,
         budget
ORDER BY budget_emp_ratio DESC
