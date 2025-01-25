# PostgreSQL Complete Tutorial

## 1. Installation
### Linux
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### macOS
```bash
brew install postgresql
brew services start postgresql
```

### Windows
Download installer from official PostgreSQL website and follow installation wizard.

## 2. Basic Connection
```bash
# Connect to default database
psql postgres

# Connect with specific user
psql -U username -d database_name
```

## 3. Database Management
### Create Database
```sql
CREATE DATABASE mydb;
```

### List Databases
```sql
\l
```

### Switch Database
```sql
\c mydb
```

## 4. Table Operations
### Create Table
```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Insert Data
```sql
INSERT INTO users (username, email) 
VALUES ('john_doe', 'john@example.com');
```

### Select Data
```sql
-- All columns
SELECT * FROM users;

-- Specific columns
SELECT username, email FROM users;

-- With conditions
SELECT * FROM users WHERE username = 'john_doe';
```

## 5. Advanced Queries
### Joins
```sql
-- Inner Join
SELECT users.username, orders.product 
FROM users 
JOIN orders ON users.id = orders.user_id;

-- Left Join
SELECT users.username, orders.product 
FROM users 
LEFT JOIN orders ON users.id = orders.user_id;
```

### Aggregations
```sql
-- Count
SELECT COUNT(*) FROM users;

-- Group By
SELECT username, COUNT(orders.id) as order_count
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY username;
```

## 6. Indexing
```sql
-- Create Index
CREATE INDEX idx_username ON users(username);

-- Unique Index
CREATE UNIQUE INDEX idx_email ON users(email);
```

## 7. Transactions
```sql
BEGIN;
    UPDATE accounts SET balance = balance - 100 WHERE id = 1;
    UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;
```

## 8. User Management
```sql
-- Create User
CREATE USER myuser WITH PASSWORD 'password';

-- Grant Permissions
GRANT SELECT, INSERT ON users TO myuser;
```

## 9. Performance Tips
- Use appropriate indexing
- Analyze and VACUUM regularly
- Use prepared statements
- Avoid N+1 query patterns

## 10. Backup and Restore
```bash
# Backup
pg_dump mydb > backup.sql

# Restore
psql mydb < backup.sql
```

## Common PostgreSQL Extensions
- `postgis` for geospatial data
- `uuid-ossp` for UUID generation
- `hstore` for key-value storage

## Best Practices
1. Use transactions for data integrity
2. Implement proper indexing
3. Normalize database design
4. Use connection pooling
5. Regularly update and maintain database
