show databases;

create database hr_analytics;

USE hr_analytics;

-- View All Employees
SELECT * FROM employees LIMIT 10;

-- Show Employee Count
SELECT COUNT(*) AS Total_Employees
FROM employees;

-- Department Wise Employee Count
SELECT Department,
COUNT(*) AS Employee_Count
FROM employees
GROUP BY Department;

-- Gender Distribution
SELECT Gender,
COUNT(*) AS Total
FROM employees
GROUP BY Gender;

-- Attrition Count
SELECT Attrition,
COUNT(*) AS Total
FROM employees
GROUP BY Attrition;

-- Employees Working Overtime
SELECT OverTime,
COUNT(*) AS Employees
FROM employees
GROUP BY OverTime;

-- Average Salary
SELECT AVG(MonthlyIncome) AS Average_Salary
FROM employees;

-- Highest Salary Employee
SELECT *
FROM employees
ORDER BY MonthlyIncome DESC
LIMIT 1;

-- Lowest Salary Employee
SELECT *
FROM employees
ORDER BY MonthlyIncome ASC
LIMIT 1;

-- Average Salary by Department
SELECT Department,
AVG(MonthlyIncome) AS Avg_Salary
FROM employees
GROUP BY Department;

-- Average Job Satisfaction
SELECT AVG(JobSatisfaction) AS Avg_Satisfaction
FROM employees;

-- Job Satisfaction by Department
SELECT Department,
AVG(JobSatisfaction) AS Avg_Satisfaction
FROM employees
GROUP BY Department;

-- Attrition by Department
SELECT Department,
Attrition,
COUNT(*) AS Employees
FROM employees
GROUP BY Department, Attrition;

-- Overtime vs Attrition
SELECT OverTime,
Attrition,
COUNT(*) AS Employees
FROM employees
GROUP BY OverTime, Attrition;

-- 	Average Experience
SELECT AVG(TotalWorkingYears) AS Avg_Experience
FROM employees;

-- Employees with High Salary
SELECT *
FROM employees
WHERE MonthlyIncome > 10000;

-- Employees with Low Job Satisfaction
SELECT *
FROM employees
WHERE JobSatisfaction <= 2;

-- Employees Likely to Leave
SELECT *
FROM employees
WHERE OverTime='Yes'
AND JobSatisfaction <= 2;

-- Work Life Balance Analysis
SELECT WorkLifeBalance,
COUNT(*) AS Employees
FROM employees
GROUP BY WorkLifeBalance;

-- Job Role Wise Salary Analysis
SELECT JobRole,
AVG(MonthlyIncome) AS Avg_Salary
FROM employees
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

-- Top 5 Highest Paid Employees
SELECT *
FROM employees
ORDER BY MonthlyIncome DESC
LIMIT 5;

-- Attrition Percentage
SELECT 
(
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
    * 100.0
    / COUNT(*)
) AS Attrition_Rate
FROM employees;

-- Department with Highest Attrition
SELECT Department,
COUNT(*) AS Attrition_Count
FROM employees
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- Average Salary by Gender
SELECT Gender,
AVG(MonthlyIncome) AS Avg_Salary
FROM employees
GROUP BY Gender;

-- Most Common Job Role
SELECT JobRole,
COUNT(*) AS Employees
FROM employees
GROUP BY JobRole
ORDER BY Employees DESC
LIMIT 1;

