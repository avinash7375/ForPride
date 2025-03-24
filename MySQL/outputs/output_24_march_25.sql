Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ak1                |
| hwllo              |
| information_schema |
| mysql              |
| performance_schema |
| product            |
| sys                |
| world              |
+--------------------+
8 rows in set (0.04 sec)

mysql> use ak1;
Database changed
mysql> show tables;
+---------------+
| Tables_in_ak1 |
+---------------+
| customers     |
| management    |
| orders        |
+---------------+
3 rows in set (0.01 sec)

mysql> select * from customers;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
|           3 | avii       | avii@avii.com     |
+-------------+------------+-------------------+
3 rows in set (0.03 sec)

mysql> UPDATE customers SET first_name = "Avinash" WHERE customer_id = 3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
|           3 | Avinash    | avii@avii.com     |
+-------------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> DELETE FROM customers WHERE name = "Bob";
ERROR 1054 (42S22): Unknown column 'name' in 'where clause'
mysql> DELETE FROM customers WHERE first_name = "Bob";
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`ak1`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
mysql> DELETE FROM customers WHERE customer_id = 2;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`ak1`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
mysql> desc customers;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| customer_id | int          | NO   | PRI | NULL    | auto_increment |
| first_name  | varchar(50)  | YES  |     | NULL    |                |
| email       | varchar(100) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> show tables;
+---------------+
| Tables_in_ak1 |
+---------------+
| customers     |
| management    |
| orders        |
+---------------+
3 rows in set (0.00 sec)

mysql> describe management;
+-----------+-------------+------+-----+-------------------+-------------------+
| Field     | Type        | Null | Key | Default           | Extra             |
+-----------+-------------+------+-----+-------------------+-------------------+
| mid       | int         | YES  |     | NULL              |                   |
| m_name    | varchar(30) | YES  |     | NULL              |                   |
| regi_date | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-----------+-------------+------+-----+-------------------+-------------------+
3 rows in set (0.00 sec)

mysql> select * from management;
+------+-----------------+---------------------+
| mid  | m_name          | regi_date           |
+------+-----------------+---------------------+
|    1 | PRIDE COMPUTERS | 2025-03-12 13:54:03 |
|    2 | AviiLabs        | 2025-03-12 13:54:03 |
+------+-----------------+---------------------+
2 rows in set (0.02 sec)

mysql> DELETE FROM management WHERE m_name = "PRIDE COMPUTERS";
Query OK, 1 row affected (0.01 sec)

mysql> select * from management;
+------+----------+---------------------+
| mid  | m_name   | regi_date           |
+------+----------+---------------------+
|    2 | AviiLabs | 2025-03-12 13:54:03 |
+------+----------+---------------------+
1 row in set (0.00 sec)

mysql> show tables;
+---------------+
| Tables_in_ak1 |
+---------------+
| customers     |
| management    |
| orders        |
+---------------+
3 rows in set (0.00 sec)

mysql> select * from customers;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
|           3 | Avinash    | avii@avii.com     |
+-------------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customers WHERE customer_id <3;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
+-------------+------------+-------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customers ORDER BY customer_id DESC;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           3 | Avinash    | avii@avii.com     |
|           2 | Bob        | bob@example.com   |
|           1 | Alice      | alice@example.com |
+-------------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customers ORDER BY customer_id;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
|           3 | Avinash    | avii@avii.com     |
+-------------+------------+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customers LIMIT 2;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
|           2 | Bob        | bob@example.com   |
+-------------+------------+-------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customers LIMIT ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT * FROM customers LIMIT 1;
+-------------+------------+-------------------+
| customer_id | first_name | email             |
+-------------+------------+-------------------+
|           1 | Alice      | alice@example.com |
+-------------+------------+-------------------+
1 row in set (0.00 sec)

mysql>
