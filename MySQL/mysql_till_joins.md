# MySQL Basic Tutorial

## 1. Introduction to MySQL
MySQL is an open-source relational database management system (RDBMS) that uses Structured Query Language (SQL). It is widely used for web applications, data storage, and various enterprise applications.

## 2. Installing MySQL
### Linux:
```sh
sudo apt update
sudo apt install mysql-server
```
Start MySQL:
```sh
sudo systemctl start mysql
```

### Windows:
Download MySQL Installer from the [official website](https://dev.mysql.com/downloads/) and follow the installation steps.

## 3. Connecting to MySQL
```sh
mysql -u root -p
```
Enter the password when prompted.

## 4. Basic MySQL Commands
### Creating a Database
```sql
CREATE DATABASE mydb;
```

### Selecting a Database
```sql
USE mydb;
```

### Creating a Table
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    age INT
);
```

### Inserting Data
```sql
INSERT INTO users (name, email, age) VALUES ('John Doe', 'john@example.com', 30);
INSERT INTO users (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25);
```

### Retrieving Data
```sql
SELECT * FROM users;
```

### Updating Data
```sql
UPDATE users SET age = 35 WHERE name = 'John Doe';
```

### Deleting Data
```sql
DELETE FROM users WHERE name = 'Jane Smith';
```

## 5. Filtering Data with WHERE
```sql
SELECT * FROM users WHERE age > 30;
```

## 6. Sorting Data with ORDER BY
```sql
SELECT * FROM users ORDER BY age DESC;
```

## 7. Limiting Results with LIMIT
```sql
SELECT * FROM users LIMIT 5;
```

## 8. Using Aggregate Functions
```sql
SELECT COUNT(*) FROM users;
SELECT AVG(age) FROM users;
SELECT MAX(age) FROM users;
```

## 9. GROUP BY Clause
```sql
SELECT age, COUNT(*) FROM users GROUP BY age;
```

## 10. HAVING Clause
```sql
SELECT age, COUNT(*) FROM users GROUP BY age HAVING COUNT(*) > 1;
```

## 11. JOINS
### INNER JOIN
```sql
SELECT users.name, orders.amount FROM users
INNER JOIN orders ON users.id = orders.user_id;
```

### LEFT JOIN
```sql
SELECT users.name, orders.amount FROM users
LEFT JOIN orders ON users.id = orders.user_id;
```

### RIGHT JOIN
```sql
SELECT users.name, orders.amount FROM users
RIGHT JOIN orders ON users.id = orders.user_id;
```

### FULL OUTER JOIN (Not directly supported in MySQL, use UNION)
```sql
SELECT users.name, orders.amount FROM users
LEFT JOIN orders ON users.id = orders.user_id
UNION
SELECT users.name, orders.amount FROM users
RIGHT JOIN orders ON users.id = orders.user_id;
```

## 12. Conclusion
This guide covers MySQL fundamentals up to JOINS. You can now work with databases efficiently!
