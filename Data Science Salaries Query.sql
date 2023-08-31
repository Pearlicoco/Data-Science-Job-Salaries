SELECT *
FROM dbo.DS_Salaries

--To find the total job titles in the dataset

SELECT COUNT(distinct job_title) as Total_Jobs
FROM dbo.DS_Salaries

--To find the total count of people per job title in the dataset

SELECT distinct job_title, COUNT(job_title) as Total_Persons
FROM dbo.DS_Salaries
group by job_title
order by 2 desc

--To find the total count of people per experience level in the dataset

SELECT distinct experience_level, COUNT(experience_level) as Total_Persons
FROM dbo.DS_Salaries
group by experience_level
order by 2 desc

--Change SE, MI, EN, EX to Fullnames in the experience level column

SELECT experience_level
, CASE WHEN experience_level = 'SE' THEN 'Senior Level'
       WHEN experience_level = 'MI' THEN 'Mid Level'
	   WHEN experience_level = 'EN' THEN 'Entry Level'
	   WHEN experience_level = 'EX' THEN 'Executive Level'
	   ELSE experience_level
	   END
FROM dbo.DS_Salaries

--Update the table with the new names

Update DS_Salaries
Set experience_level = CASE WHEN experience_level = 'SE' THEN 'Senior Level'
       WHEN experience_level = 'MI' THEN 'Mid Level'
	   WHEN experience_level = 'EN' THEN 'Entry Level'
	   WHEN experience_level = 'EX' THEN 'Executive Level'
	   ELSE experience_level
	   END

--To find the experience level with the highest salary

SELECT experience_level, salary_in_usd
FROM dbo.DS_Salaries
order by 2 desc

--Change FT, PT, FL, CT to Fullnames in Employment Type column

SELECT employment_type
, CASE WHEN employment_type = 'FT' THEN 'Full-Time'
       WHEN employment_type = 'PT' THEN 'Part-Time'
	   WHEN employment_type = 'FL' THEN 'Freelance'
	   WHEN employment_type = 'CT' THEN 'Contract'
	   ELSE employment_type
	   END
FROM dbo.DS_Salaries

--Update the table with the new names

Update DS_Salaries
Set employment_type = CASE WHEN employment_type = 'FT' THEN 'Full-Time'
       WHEN employment_type = 'PT' THEN 'Part-Time'
	   WHEN employment_type = 'FL' THEN 'Freelance'
	   WHEN employment_type = 'CT' THEN 'Contract'
	   ELSE employment_type
	   END

--To check if the employment type affects average salary

SELECT employment_type, ROUND(AVG(salary_in_usd),2) as Avg_Salary
FROM dbo.DS_Salaries
group by employment_type
order by Avg_Salary desc

--To find the average salary per job title in USD

SELECT job_title, ROUND(AVG(salary_in_usd),2) as Avg_Salary
FROM dbo.DS_Salaries
group by job_title
order by Avg_Salary desc

--To find highest salary per job title in USD

SELECT TOP 10 job_title, ROUND(MAX(salary_in_usd),2) as Highest_Salary
FROM dbo.DS_Salaries
group by job_title
order by Highest_Salary desc

--To find the highest paying Entry level data science job

SELECT TOP 10 job_title, MAX(salary_in_usd) as Highest_Salary
FROM dbo.DS_Salaries
Where experience_level = 'Entry Level'
group by job_title
order by Highest_Salary desc

--To find the highest paying Mid level data science job

SELECT TOP 10 job_title, MAX(salary_in_usd) as Highest_Salary
FROM dbo.DS_Salaries
Where experience_level = 'Mid Level'
group by job_title
order by Highest_Salary desc

--To find the highest paying Senior level data science job

SELECT TOP 10 job_title, MAX(salary_in_usd) as Highest_Salary
FROM dbo.DS_Salaries
Where experience_level = 'Senior Level'
group by job_title
order by Highest_Salary desc

--To find the highest paying Executive level data science job

SELECT TOP 10 job_title, MAX(salary_in_usd) as Highest_Salary
FROM dbo.DS_Salaries
Where experience_level = 'Executive Level'
group by job_title
order by Highest_Salary desc

--To check the average salary per experience level

SELECT experience_level, ROUND(AVG(salary_in_usd),2) as Avg_Salary
FROM dbo.DS_Salaries
group by experience_level
order by Avg_Salary desc

--Change L, M, S to Fullnames in Company size column

SELECT company_size
, CASE WHEN company_size = 'L' THEN 'Large'
       WHEN company_size = 'M' THEN 'Medium'
	   WHEN company_size = 'S' THEN 'Small'
	   ELSE company_size
	   END
FROM dbo.DS_Salaries

Update DS_Salaries
Set company_size = CASE WHEN company_size = 'L' THEN 'Large'
       WHEN company_size = 'M' THEN 'Medium'
	   WHEN company_size = 'S' THEN 'Small'
	   ELSE company_size
	   END

--To check if the company size affects average salary

SELECT company_size, Min(salary_in_usd) as Min_Salary, Max(salary_in_usd) as Max_Salary 
FROM dbo.DS_Salaries
group by company_size
order by 2 desc

--To check if company location affects salary

SELECT CASE WHEN company_location = 'US' THEN 'In the US'
		 ELSE 'Not in the US' 
		 END AS company_loc_category,
		 ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM dbo.DS_Salaries 
GROUP BY CASE WHEN company_location = 'US' THEN 'In the US'
		 ELSE 'Not in the US' 
		 END

--To check min and max salary of company location

SELECT CASE WHEN company_location = 'US' THEN 'In the US'
		 ELSE 'Not in the US' 
		 END AS company_loc_category,
		 ROUND(Min(salary_in_usd), 2) AS Min_salary,
		 ROUND(Max(salary_in_usd), 2) AS Max_salary
FROM dbo.DS_Salaries 
GROUP BY CASE WHEN company_location = 'US' THEN 'In the US'
		 ELSE 'Not in the US' 
		 END

--To check if average salary increases with work year

SELECT work_year, ROUND(AVG(salary_in_usd),2) as Avg_Salary
FROM dbo.DS_Salaries
group by work_year
order by Avg_Salary desc