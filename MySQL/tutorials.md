# SQL Tutorial: Basic to Advanced

## Part 1: Basic SQL
### 1. Introduction to SQL
SQL (Structured Query Language) is used to interact with relational databases. It allows users to store, retrieve, and manipulate data efficiently.

### 2. Basic SQL Commands
#### a. Selecting Data
```sql
SELECT column1, column2 FROM table_name; -- Get specific columns from a table
```
To select all columns:
```sql
SELECT * FROM table_name; -- Get all columns from a table
```

#### b. Filtering Data
```sql
SELECT * FROM employees WHERE department = 'IT'; -- Get employees from IT department
SELECT * FROM employees WHERE salary > 50000 AND age < 30; -- Get employees earning more than 50K and younger than 30
SELECT * FROM employees WHERE name LIKE 'A%'; -- Get employees whose name starts with 'A'
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 60000; -- Get employees with salary between 30K and 60K
```

#### c. Sorting Data
```sql
SELECT * FROM employees ORDER BY salary DESC; -- Sort employees by salary (highest to lowest)
```

#### d. Limiting Results
```sql
SELECT * FROM employees LIMIT 5; -- Get only the first 5 employees
```

#### e. Aliases
```sql
SELECT name AS employee_name, salary AS employee_salary FROM employees; -- Rename columns in output
```

### 3. Aggregate Functions
```sql
SELECT COUNT(*) FROM employees; -- Count total employees
SELECT AVG(salary) FROM employees; -- Get average salary
SELECT SUM(salary) FROM employees; -- Get total salary
SELECT MIN(salary), MAX(salary) FROM employees; -- Get minimum and maximum salary
```

### 4. Grouping Data
```sql
SELECT department, COUNT(*) FROM employees GROUP BY department; -- Count employees in each department
SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 50000; -- Get departments with average salary above 50K
```

---

## Part 2: Intermediate SQL
### 5. Joins
#### a. Inner Join
```sql
SELECT employees.name, departments.name FROM employees 
INNER JOIN departments ON employees.department_id = departments.id; -- Get employees with their department names
```
#### b. Left Join
```sql
SELECT employees.name, departments.name FROM employees 
LEFT JOIN departments ON employees.department_id = departments.id; -- Get all employees, even those without departments
```
#### c. Right Join
```sql
SELECT employees.name, departments.name FROM employees 
RIGHT JOIN departments ON employees.department_id = departments.id; -- Get all departments, even those without employees
```
#### d. Full Outer Join
```sql
SELECT employees.name, departments.name FROM employees 
FULL OUTER JOIN departments ON employees.department_id = departments.id; -- Get all employees and departments
```

### 6. Subqueries
```sql
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees); -- Get employees earning above average salary
```

### 7. Common Table Expressions (CTEs)
```sql
WITH HighSalaryEmployees AS (
    SELECT * FROM employees WHERE salary > 60000
)
SELECT * FROM HighSalaryEmployees; -- Create a temporary table for high salary employees
```

### 8. Unions
```sql
SELECT name FROM employees_it
UNION
SELECT name FROM employees_hr; -- Combine results from two queries without duplicates
```

### 9. Case Statements
```sql
SELECT name, salary,
CASE 
    WHEN salary > 60000 THEN 'High'
    WHEN salary BETWEEN 30000 AND 60000 THEN 'Medium'
    ELSE 'Low'
END AS salary_category
FROM employees; -- Categorize salary levels
```

### 10. Indexing for Performance Optimization
```sql
CREATE INDEX idx_salary ON employees(salary); -- Create an index to speed up salary searches
```

---

## Part 3: Advanced SQL
### 11. Window Functions
```sql
SELECT name, salary, RANK() OVER (PARTITION BY department ORDER BY salary DESC) as rank 
FROM employees; -- Rank employees within each department by salary
```

### 12. Transactions and ACID Properties
```sql
BEGIN TRANSACTION; -- Start a transaction
UPDATE employees SET salary = salary * 1.1 WHERE department = 'IT'; -- Increase IT employees' salary by 10%
COMMIT; -- Save changes permanently

-- If something goes wrong, use:
ROLLBACK; -- Undo the transaction
```

### 13. Stored Procedures
```sql
CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT * FROM employees;
END;

CALL GetEmployees(); -- Create and call a stored procedure to fetch employees
```

### 14. Triggers
```sql
CREATE TRIGGER salary_update BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < 30000 THEN
        SET NEW.salary = 30000;
    END IF;
END; -- Prevent salary from dropping below 30K before update
```

### 15. Recursive Queries
```sql
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT id, name, manager_id FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.id, e.name, e.manager_id FROM employees e
    INNER JOIN EmployeeHierarchy eh ON e.manager_id = eh.id
)
SELECT * FROM EmployeeHierarchy; -- Get hierarchical employee structure
```

### 16. Pivoting & Unpivoting Data
#### a. Pivoting
```sql
SELECT * FROM (
    SELECT department, salary FROM employees
) AS SourceTable
PIVOT (
    AVG(salary) FOR department IN ('IT', 'HR', 'Finance')
) AS PivotTable; -- Convert row data into column format
```
#### b. Unpivoting
```sql
SELECT department, salary_category, amount FROM PivotTable
UNPIVOT (
    amount FOR salary_category IN (High, Medium, Low)
) AS UnpivotTable; -- Convert column data back into row format
```

### 17. Performance Tuning & Query Optimization
- Use **Indexes** to speed up searches.
- Avoid **SELECT *** in large datasets.
- Optimize **joins** with proper indexing.
- Use **EXPLAIN PLAN** to analyze queries before execution.
- Avoid **redundant subqueries**.

## Conclusion
This tutorial covers the most important SQL concepts from basic to advanced levels. Mastering these will help you effectively interact with databases, optimize queries, and manage data efficiently.

