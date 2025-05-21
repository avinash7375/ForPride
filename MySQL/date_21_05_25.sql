[avii@avii ~]$ mysql -u root -p
mysql: Deprecated program name. It will be removed in a future release, use '/usr/bin/mariadb' instead
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 11.7.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| QS1                |
| employees          |
| information_schema |
| lms                |
| mysql              |
| performance_schema |
| pride              |
| sharad             |
| std                |
| sys                |
| tms                |
+--------------------+
11 rows in set (0.012 sec)

MariaDB [(none)]> use sharad;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [sharad]> id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100) UNIQUE,
    ->     age INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(1...' at line 1
MariaDB [sharad]> id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100) UNIQUE,
    ->     age INT);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(1...' at line 1
MariaDB [sharad]> CREATE TABLE Akshay (id INT AUTO_INCREMENT PRIMARY KEY,     name VARCHAR(100),     email VARCHAR(100) UNIQUE,     age INT);
Query OK, 0 rows affected (0.017 sec)

MariaDB [sharad]> INSERT INTO users (name, email, age) VALUES ('John Doe', 'john@example.com', 30);
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> INSERT INTO users (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25);
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> INSERT INTO Akshay (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25);
Query OK, 1 row affected (0.005 sec)

MariaDB [sharad]> SELECT FROM Akshay;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM Akshay' at line 1
MariaDB [sharad]> SELECT * FROM Akshay;
+----+------------+------------------+------+
| id | name       | email            | age  |
+----+------------+------------------+------+
|  1 | Jane Smith | jane@example.com |   25 |
+----+------------+------------------+------+
1 row in set (0.001 sec)

MariaDB [sharad]> INSERT INTO users (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25), ('Viraj Bhosle', 'viraj@gmail.com', 30);
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> INSERT INTO Akshay (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25), ('Viraj Bhosle', 'viraj@gmail.com', 30);
ERROR 1062 (23000): Duplicate entry 'jane@example.com' for key 'email'
MariaDB [sharad]> INSERT INTO Akshay (name, email, age) VALUES ('Viraj Bhosle', 'viraj@gmail.com', 30);
Query OK, 1 row affected (0.006 sec)

MariaDB [sharad]> SELECT * FROM Akshay;
+----+--------------+------------------+------+
| id | name         | email            | age  |
+----+--------------+------------------+------+
|  1 | Jane Smith   | jane@example.com |   25 |
|  4 | Viraj Bhosle | viraj@gmail.com  |   30 |
+----+--------------+------------------+------+
2 rows in set (0.001 sec)

MariaDB [sharad]> SELECT * FROM users LIMIT 1;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> SELECT * FROM Akshay LIMIT 1;
+----+------------+------------------+------+
| id | name       | email            | age  |
+----+------------+------------------+------+
|  1 | Jane Smith | jane@example.com |   25 |
+----+------------+------------------+------+
1 row in set (0.001 sec)

MariaDB [sharad]> SELECT COUNT(*) FROM Akshay;
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.006 sec)

MariaDB [sharad]> SELECT AVG(age) FROM users;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> 
MariaDB [sharad]> SELECT AVG(age) FROM users;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> SELECT AVG(age) FROM Akshay;
+----------+
| AVG(age) |
+----------+
|  27.5000 |
+----------+
1 row in set (0.001 sec)

MariaDB [sharad]> SELECT MAX(age) FROM Akshay;
+----------+
| MAX(age) |
+----------+
|       30 |
+----------+
1 row in set (0.001 sec)

MariaDB [sharad]> SELECT age, COUNT(*) FROM users GROUP BY age;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> 
MariaDB [sharad]> SELECT age, COUNT(*) FROM Akshay GROUP BY age;
+------+----------+
| age  | COUNT(*) |
+------+----------+
|   25 |        1 |
|   30 |        1 |
+------+----------+
2 rows in set (0.001 sec)

MariaDB [sharad]> SELECT age, COUNT(*) FROM users GROUP BY age;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> 
MariaDB [sharad]> SELECT age, COUNT(*) FROM users GROUP BY age;
ERROR 1146 (42S02): Table 'sharad.users' doesn't exist
MariaDB [sharad]> 
MariaDB [sharad]> 
MariaDB [sharad]> 
MariaDB [sharad]> 


MariaDB [sharad]> 








































MariaDB [sharad]> create table orders (
    ->     user_id INT,
    ->     amount DECIMAL(10, 2),
    ->     FOREIGN KEY (user_id) REFERENCES users(id)
    -> );
ERROR 1005 (HY000): Can't create table `sharad`.`orders` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [sharad]> create table orders (     user_id INT,     amount DECIMAL(10, 2),     FOREIGN KEY (user_id) REFERENCES Akshay(id) );
Query OK, 0 rows affected (0.017 sec)

MariaDB [sharad]> clear
MariaDB [sharad]> select * from Akshay;
+----+--------------+------------------+------+
| id | name         | email            | age  |
+----+--------------+------------------+------+
|  1 | Jane Smith   | jane@example.com |   25 |
|  4 | Viraj Bhosle | viraj@gmail.com  |   30 |
+----+--------------+------------------+------+
2 rows in set (0.001 sec)

MariaDB [sharad]> 
MariaDB [sharad]> INSERT INTO orders (user_id, amount) VALUES (1, 99.99);
Query OK, 1 row affected (0.006 sec)

MariaDB [sharad]> INSERT INTO orders (user_id, amount) VALUES (1, 149.50);
Query OK, 1 row affected (0.001 sec)

MariaDB [sharad]> INSERT INTO orders (user_id, amount) VALUES (2, 200.00);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`sharad`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Akshay` (`id`))
MariaDB [sharad]> INSERT INTO orders (user_id, amount) VALUES (2, 200.00);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`sharad`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Akshay` (`id`))
MariaDB [sharad]> INSERT INTO orders (user_id, amount) VALUES (4, 300.99);
Query OK, 1 row affected (0.006 sec)

MariaDB [sharad]> select * from orders;
+---------+--------+
| user_id | amount |
+---------+--------+
|       1 |  99.99 |
|       1 | 149.50 |
|       4 | 300.99 |
+---------+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> SELECT Akshay.name, orders.amount FROM Akshay
    -> INNER JOIN orders ON Akshay.id = orders.user_id;
+--------------+--------+
| name         | amount |
+--------------+--------+
| Jane Smith   |  99.99 |
| Jane Smith   | 149.50 |
| Viraj Bhosle | 300.99 |
+--------------+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> 
MariaDB [sharad]> SELECT Akshay.name, orders.amount FROM Akshay
    -> LEFT JOIN orders ON Akshay.id = orders.user_id;
+--------------+--------+
| name         | amount |
+--------------+--------+
| Jane Smith   |  99.99 |
| Jane Smith   | 149.50 |
| Viraj Bhosle | 300.99 |
+--------------+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> select * from orders;
+---------+--------+
| user_id | amount |
+---------+--------+
|       1 |  99.99 |
|       1 | 149.50 |
|       4 | 300.99 |
+---------+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> 
MariaDB [sharad]> SELECT orders.amount FROM Akshay
    -> LEFT JOIN orders ON Akshay.id = orders.user_id;
+--------+
| amount |
+--------+
|  99.99 |
| 149.50 |
| 300.99 |
+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> 
MariaDB [sharad]> SELECT Akshay.name, orders.amount FROM Akshay
    -> RIGHT JOIN orders ON Akshay.id = orders.user_id;
+--------------+--------+
| name         | amount |
+--------------+--------+
| Jane Smith   |  99.99 |
| Jane Smith   | 149.50 |
| Viraj Bhosle | 300.99 |
+--------------+--------+
3 rows in set (0.001 sec)

MariaDB [sharad]> 
MariaDB [sharad]> SELECT Akshay.name FROM Akshay
    -> RIGHT JOIN orders ON Akshay.id = orders.user_id;
+--------------+
| name         |
+--------------+
| Jane Smith   |
| Jane Smith   |
| Viraj Bhosle |
+--------------+
3 rows in set (0.001 sec)

MariaDB [sharad]> 
