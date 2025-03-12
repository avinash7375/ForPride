mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| hwllo              |
| information_schema |
| mysql              |
| performance_schema |
| product            |
| sys                |
| world              |
+--------------------+
7 rows in set (0.01 sec)

mysql> create database ak1;
Query OK, 1 row affected (0.14 sec)

mysql> use ak1;
Database changed
mysql> create table management (
    -> mid INT,
    -> m_name VARCHAR(30),
    -> regi_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO management
    -> (mid, m_name)
    -> VALUES (01, "PRIDE COMPUTERS"), (02, "AviiLabs");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from management;
+------+-----------------+---------------------+
| mid  | m_name          | regi_date           |
+------+-----------------+---------------------+
|    1 | PRIDE COMPUTERS | 2025-03-12 13:54:03 |
|    2 | AviiLabs        | 2025-03-12 13:54:03 |
+------+-----------------+---------------------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE customers (
    ->     customer_id INT AUTO_INCREMENT,
    ->     first_name VARCHAR(50),
    ->     email VARCHAR(100),
    ->     PRIMARY KEY (customer_id)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE orders (order_id INT AUTO_INCREMENT,    customer_id INT,    order_date DATE,
    -> ^C
mysql> CREATE TABLE orders (
    -> order_id INT AUTO_INCREMENT,
    -> customer_id INT,
    -> order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> PRIMARY KEY (order_id),
    -> FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO customers (first_name, email) VALUES
    -> ('Alice', 'alice@example.com'),
    -> ('Bob', 'bob@example.com'),
    -> ('avii', 'avii@avii.com')
    -> ;
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> describe orders;
+-------------+-----------+------+-----+-------------------+-------------------+
| Field       | Type      | Null | Key | Default           | Extra             |
+-------------+-----------+------+-----+-------------------+-------------------+
| order_id    | int       | NO   | PRI | NULL              | auto_increment    |
| customer_id | int       | YES  | MUL | NULL              |                   |
| order_date  | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------+-----------+------+-----+-------------------+-------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO orders (customer_id)
    -> VALUES (1), (2), (1);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO orders (customer_id)
    -> VALUES (3), (4);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ak1`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
mysql> INSERT INTO orders (customer_id)
    -> VALUES (3);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO orders (customer_id)
    -> VALUES (4);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ak1`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
mysql> describe customers;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| customer_id | int          | NO   | PRI | NULL    | auto_increment |
| first_name  | varchar(50)  | YES  |     | NULL    |                |
| email       | varchar(100) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> select * from customers;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
|           3 | avii       | avii@avii.com     |
+-------------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT c.first_name, o.order_id, o.order_date
    -> FROM customers c
    -> JOIN orders o ON c.customer_id = o.customer_id;
+------------+----------+---------------------+
| first_name | order_id | order_date          |
+------------+----------+---------------------+
| Alice      |        1 | 2025-03-12 14:11:41 |
| Alice      |        3 | 2025-03-12 14:11:41 |
| Bob        |        2 | 2025-03-12 14:11:41 |
| avii       |        6 | 2025-03-12 14:13:07 |
+------------+----------+---------------------+
4 rows in set (0.00 sec)

mysql> select * from orders;
+----------+-------------+---------------------+
| order_id | customer_id | order_date          |
+----------+-------------+---------------------+
|        1 |           1 | 2025-03-12 14:11:41 |
|        2 |           2 | 2025-03-12 14:11:41 |
|        3 |           1 | 2025-03-12 14:11:41 |
|        6 |           3 | 2025-03-12 14:13:07 |
+----------+-------------+---------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO orders (customer_id)
    -> VALUES (5);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ak1`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
mysql> INSERT INTO orders (customer_id)
    -> VALUES (3);
Query OK, 1 row affected (0.01 sec)

mysql> select * from orders;
+----------+-------------+---------------------+
| order_id | customer_id | order_date          |
+----------+-------------+---------------------+
|        1 |           1 | 2025-03-12 14:11:41 |
|        2 |           2 | 2025-03-12 14:11:41 |
|        3 |           1 | 2025-03-12 14:11:41 |
|        6 |           3 | 2025-03-12 14:13:07 |
|        9 |           3 | 2025-03-12 14:17:49 |
+----------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql>





