## New Products

You are given a table of product launches by company by year. Write a query to count the net difference between the number of products companies launched in 2020 for the first time with the number of products companies launched in the previous year. Output the name of the companies and a net difference of net products released for 2020 compared to the previous year. If a company is new or had no products in 2019, then any product released in 2020 would be considered as new.

# Table

**car_launches**

Column       |  Data Type
-------------|------------
year         |    int      
company_name |   varchar   
product_name |   varchar

## Steps taken to solve

- First made a table with row_numbers 
   - row numbers are asiigned based on year and company name
- Made 2019 table of companies with respective year having maximum row number
- Similar to above step for table 2020
- Then joined 2019 & 2020 tables to find net difference of net products launched in 2020
