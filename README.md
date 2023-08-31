Introduction

The purpose of this analysis was to shed more light on different Data related jobs salaries and how different criteria affect these job salaries such as experience level, geography etc. The dataset was gotten from Kaggle and it contains 608 rows and 11 columns.

Data Preparation & Exploration

The first thing I did was to import the dataset into excel. This is to ensure that I know what the data is about, examine it and do some data cleaning. This dataset contained 11 columns and 608 rows. It includes the work_year column, experience level column, employment type, job title, salary, salary in usd etc.
I used the filter function to better understand the data set. There is a column called salary and another called salary_in_usd. The later is basically the conversion of the former to USD (US Dollars) which I believe is for the sake of uniformity and also to aid analysis.

The data cleaning carried out includes:

- I removed the first column which contained row number as I believe it is unnecessary for this analysis.
- I used the Remove duplicate function to check for duplicate rows. 42 duplicate rows were found and deleted. That is 566 rows left.
- I also checked for Blanks but there were no blanks
- I noticed that for the job title, there was a subtle repetition that could have affected the result of the analysis. Machine learning Engineer and ML Engineer were included and also Head of Data and Head of Data Science in the dataset. This is basically the same job title written differently.
- I used the find and replace function to find and replace one of the job titles to fit the other in the dataset.

Data Analysis

I imported the cleaned data into Microsoft SQL Server Management Studio for this analysis. For the most part of this analysis, I worked with the salary_in_usd column for the sake of uniformity.

In the course of the analysis, the following SQL functions were used: 

SELECT, FROM, WHERE, CASE STATEMENT, WINDOW CLAUSE, CTE, GROUP BY, ORDER BY, MAX, MIN, AVERAGE, ROUND, etc

Questions to be anwsered:

These are the questions I answered:
- How many job title was included in the dataset?
- Which experience level has the highest salary?
- Does the employment type affect salary?
- What is the average salary per job title in USD?
- What is the highest salary per job title in USD?
- What is the highest paying entry-level data science job?
- What is the highest paying mid-level data science job?
- What is the highest paying senior-level data science job?
- What is the highest paying Executive level data science job?
- What is the average salary per experience level?
- What is the lowest paying entry-level data science job?
- What is the lowest paying Mid-level Data Science Job?
- What is the lowest paying Senior level data science job?
- What is the lowest paying Executive level data science job?
- Does company size affect salary?
- Does company location affect Salary?

Findings

- There are 47 job titles present in the dataset
- The Executive Level earns more salary than others
- The employment type sometimes affect salary for example the analysis shnows that some Contract Jobs earns more average salary
- Majority of the data related jobs are Data Scientists
- According to the analysis, some Mid level workers earn more than some Senior level workers 

Conclusion

From the analysis carried out, it can be concluded that companies in the US tend to pay more than their counterpart in other countries. If you want to earn big money it is advisabled to go for a job in a large company in the US, preferably a job with a high pay eg. Machine Learning Engineer but most importantly go for a job you love and can function in.
