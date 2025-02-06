# PostgreSQL Tutorial: From Basics to Advanced

## 1. Installation and Setup
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install postgresql

# Start PostgreSQL service
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Access PostgreSQL
sudo -u postgres psql
```

## 2. Database Fundamentals

### Creating and Managing Databases
```sql
-- Create database
CREATE DATABASE company;

-- Connect to database
\c company

-- List all databases
\l

-- Delete database
DROP DATABASE IF EXISTS company;
```

### Creating Tables
```sql
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    salary DECIMAL(10,2)
);
```

### Basic Data Operations (CRUD)

#### Insert Data
```sql
-- Single insert
INSERT INTO employees (first_name, last_name, email, hire_date, salary)
VALUES ('John', 'Doe', 'john@example.com', '2024-01-15', 75000);

-- Multiple inserts
INSERT INTO employees (first_name, last_name, email, hire_date, salary)
VALUES 
    ('Jane', 'Smith', 'jane@example.com', '2024-01-16', 80000),
    ('Bob', 'Johnson', 'bob@example.com', '2024-01-17', 70000);
```

#### Query Data
```sql
-- Basic SELECT
SELECT * FROM employees;

-- Filtered SELECT
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > 75000;

-- Ordered results
SELECT * FROM employees 
ORDER BY hire_date DESC;

-- Aggregated data
SELECT 
    AVG(salary) as avg_salary,
    MAX(salary) as max_salary,
    MIN(salary) as min_salary
FROM employees;
```

#### Update Data
```sql
-- Update single record
UPDATE employees 
SET salary = 85000 
WHERE email = 'john@example.com';

-- Update multiple records
UPDATE employees 
SET salary = salary * 1.1 
WHERE hire_date < '2024-01-17';
```

#### Delete Data
```sql
-- Delete single record
DELETE FROM employees 
WHERE email = 'john@example.com';

-- Delete multiple records
DELETE FROM employees 
WHERE salary < 75000;
```

## 3. Advanced Concepts

### Joins
```sql
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employee_departments (
    employee_id INTEGER REFERENCES employees(id),
    department_id INTEGER REFERENCES departments(id),
    PRIMARY KEY (employee_id, department_id)
);

-- Inner Join
SELECT e.first_name, e.last_name, d.name as department
FROM employees e
INNER JOIN employee_departments ed ON e.id = ed.employee_id
INNER JOIN departments d ON ed.department_id = d.id;
```

### Indexes
```sql
-- Create index
CREATE INDEX idx_employee_email 
ON employees(email);

-- Create composite index
CREATE INDEX idx_employee_names 
ON employees(first_name, last_name);
```

### Views
```sql
CREATE VIEW employee_summary AS
SELECT 
    e.first_name,
    e.last_name,
    e.salary,
    d.name as department
FROM employees e
LEFT JOIN employee_departments ed ON e.id = ed.employee_id
LEFT JOIN departments d ON ed.department_id = d.id;
```

### Transactions
```sql
BEGIN;
    UPDATE employees SET salary = salary * 1.1;
    UPDATE departments SET name = UPPER(name);
COMMIT;

-- Rollback example
BEGIN;
    UPDATE employees SET salary = salary * 2;
    -- Oops, that's too much!
ROLLBACK;
```

### Functions and Triggers
```sql
-- Create function
CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.modified_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger
CREATE TRIGGER update_employee_modtime
    BEFORE UPDATE ON employees
    FOR EACH ROW
    EXECUTE FUNCTION update_modified_column();
```

## 4. Best Practices

### Performance Optimization
- Use appropriate indexes
- Regular VACUUM and ANALYZE
- Optimize queries using EXPLAIN ANALYZE
- Use connection pooling
- Implement proper partitioning for large tables

### Security
```sql
-- Create role
CREATE ROLE readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

-- Create user
CREATE USER john WITH PASSWORD 'secure_password';
GRANT readonly TO john;
```

### Backup and Restore
```bash
# Backup
pg_dump dbname > backup.sql

# Restore
psql dbname < backup.sql
```

## 5. Common Operations

### Table Maintenance
```sql
-- Add column
ALTER TABLE employees ADD COLUMN phone VARCHAR(20);

-- Modify column
ALTER TABLE employees ALTER COLUMN phone SET NOT NULL;

-- Remove column
ALTER TABLE employees DROP COLUMN phone;
```

### Data Import/Export
```sql
-- Import CSV
COPY employees(first_name,last_name,email,hire_date,salary) 
FROM '/path/to/file.csv' 
DELIMITER ',' 
CSV HEADER;

-- Export to CSV
COPY employees TO '/path/to/export.csv' DELIMITER ',' CSV HEADER;
```
