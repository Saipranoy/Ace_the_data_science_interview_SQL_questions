# Expensive Projects

Given a list of projects and employees mapped to each project, calculate by the amount of project budget allocated to each employee . The output should include the project title and the project budget per employee rounded to the closest integer. Order your list by projects with the highest budget per employee first.

## Tables

**ms_projects**

Column   |  Data Type
---------|------------
id       |    int     
title    |   varchar   
budget   |     int      

**ms_emp_projects**

Column    |   Data Type
----------|--------------
emp_id    |     int      
project_id|     int        


## Steps taken
- Seperate table with required data
   - Inner join the 2 tables with same project id
   - Assign row number to find the number of employees working on each projects
   - get budget per employee by dividing budget with row_number
- Looking at the data each project is assigned to 2 employees
- Extract title, budget_emp_ratio whise row number is equal to 2
- Arrange them in descending order according to budget per employee

There will be 2 solution pages
- solution.sql
- better_solution. sql

My solution would have worked for the respective question but in large scale there may be more than 2 employees assigned to a project and the solution won't work then.

## Steps for better solution got from the forum

- Inner join the 2 tables with same project id
- Group by title and budget
- Get the budget per emloyee by dividing budget with total (count) number of employees

