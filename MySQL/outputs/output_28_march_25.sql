Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> clear
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| books              |
| customers          |
| dt                 |
| employees          |
| hospital           |
| information_schema |
| it_company         |
| mydatabase         |
| mydb               |
| mysql              |
| performance_schema |
| pride              |
| school             |
| soniya             |
| sonu               |
| swiggy             |
| sys                |
+--------------------+
17 rows in set (0.01 sec)

mysql> cd customers
    -> ^C
mysql> use customers;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_customers |
+---------------------+
| paymentmodes        |
+---------------------+
1 row in set (0.01 sec)

mysql>
mysql>
mysql>
mysql> desc paymentmodes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| customer    | varchar(50) | YES  |     | NULL    |       |
| mode        | varchar(80) | YES  |     | NULL    |       |
| city        | varchar(60) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> SELECT customer_id AS CID;
ERROR 1054 (42S22): Unknown column 'customer_id' in 'field list'
mysql> SELECT customer_id AS CID from paymentmodes;
+-----+
| CID |
+-----+
| 101 |
| 102 |
| 103 |
| 104 |
| 105 |
| 106 |
| 107 |
| 108 |
| 109 |
| 110 |
+-----+
10 rows in set (0.03 sec)

mysql> select * from paymentmodes;
+-------------+------------+-------------+-----------+
| customer_id | customer   | mode        | city      |
+-------------+------------+-------------+-----------+
|         101 | Alessandro | Netbanking  | Rome      |
|         102 | March      | Credit card | Turin     |
|         103 | Roberto    | Netbanking  | Bolongo   |
|         104 | Guilia     | debit card  | Milan     |
|         105 | Stefano    | Debit card  | Paleroma  |
|         106 | Angelo     | Netbanking  | Floreance |
|         107 | Francesco  | Credit card | Bologna   |
|         108 | Mario      | Netbanking  | Bari      |
|         109 | Laura      | Credit card | Taranto   |
|         110 | Valentina  | Netbanking  | Modena    |
+-------------+------------+-------------+-----------+
10 rows in set (0.00 sec)

mysql> SELECT customer_id AS CID from paymentmodes;
+-----+
| CID |
+-----+
| 101 |
| 102 |
| 103 |
| 104 |
| 105 |
| 106 |
| 107 |
| 108 |
| 109 |
| 110 |
+-----+
10 rows in set (0.00 sec)

mysql> select * from paymentmodes;
+-------------+------------+-------------+-----------+
| customer_id | customer   | mode        | city      |
+-------------+------------+-------------+-----------+
|         101 | Alessandro | Netbanking  | Rome      |
|         102 | March      | Credit card | Turin     |
|         103 | Roberto    | Netbanking  | Bolongo   |
|         104 | Guilia     | debit card  | Milan     |
|         105 | Stefano    | Debit card  | Paleroma  |
|         106 | Angelo     | Netbanking  | Floreance |
|         107 | Francesco  | Credit card | Bologna   |
|         108 | Mario      | Netbanking  | Bari      |
|         109 | Laura      | Credit card | Taranto   |
|         110 | Valentina  | Netbanking  | Modena    |
+-------------+------------+-------------+-----------+
10 rows in set (0.00 sec)

mysql> SELECT COUNT(*) FROM paymentmodes;
+----------+
| COUNT(*) |
+----------+
|       10 |
+----------+
1 row in set (0.01 sec)

mysql> ALTER table paymentmodes
    -> ADD COLUMN c_bal;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> ADD COLUMN c_bal INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADD COLUMN c_bal INT' at line 1
mysql> ALTER paymentmodes
    -> ADD COLUMN c_bal INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'paymentmodes
ADD COLUMN c_bal INT' at line 1
mysql> ALTER TABLE paymentmodes
    -> ADD COLUMN c_bal INT;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe paymentmodes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| customer    | varchar(50) | YES  |     | NULL    |       |
| mode        | varchar(80) | YES  |     | NULL    |       |
| city        | varchar(60) | YES  |     | NULL    |       |
| c_bal       | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM paymentmodes;
+-------------+------------+-------------+-----------+-------+
| customer_id | customer   | mode        | city      | c_bal |
+-------------+------------+-------------+-----------+-------+
|         101 | Alessandro | Netbanking  | Rome      |  NULL |
|         102 | March      | Credit card | Turin     |  NULL |
|         103 | Roberto    | Netbanking  | Bolongo   |  NULL |
|         104 | Guilia     | debit card  | Milan     |  NULL |
|         105 | Stefano    | Debit card  | Paleroma  |  NULL |
|         106 | Angelo     | Netbanking  | Floreance |  NULL |
|         107 | Francesco  | Credit card | Bologna   |  NULL |
|         108 | Mario      | Netbanking  | Bari      |  NULL |
|         109 | Laura      | Credit card | Taranto   |  NULL |
|         110 | Valentina  | Netbanking  | Modena    |  NULL |
+-------------+------------+-------------+-----------+-------+
10 rows in set (0.00 sec)

mysql> UPDATE TABLE paymentmodes
    -> SET c_bal = 10000 WHERE customer_id > 100;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE paymentmodes
SET c_bal = 10000 WHERE customer_id > 100' at line 1
mysql> UPDATE paymentmodes
    -> SET c_bal = 10000 WHERE customer_id > 100;
Query OK, 10 rows affected (0.01 sec)
Rows matched: 10  Changed: 10  Warnings: 0

mysql> describe paymentmodes;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| customer    | varchar(50) | YES  |     | NULL    |       |
| mode        | varchar(80) | YES  |     | NULL    |       |
| city        | varchar(60) | YES  |     | NULL    |       |
| c_bal       | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from paymentmodes;
+-------------+------------+-------------+-----------+-------+
| customer_id | customer   | mode        | city      | c_bal |
+-------------+------------+-------------+-----------+-------+
|         101 | Alessandro | Netbanking  | Rome      | 10000 |
|         102 | March      | Credit card | Turin     | 10000 |
|         103 | Roberto    | Netbanking  | Bolongo   | 10000 |
|         104 | Guilia     | debit card  | Milan     | 10000 |
|         105 | Stefano    | Debit card  | Paleroma  | 10000 |
|         106 | Angelo     | Netbanking  | Floreance | 10000 |
|         107 | Francesco  | Credit card | Bologna   | 10000 |
|         108 | Mario      | Netbanking  | Bari      | 10000 |
|         109 | Laura      | Credit card | Taranto   | 10000 |
|         110 | Valentina  | Netbanking  | Modena    | 10000 |
+-------------+------------+-------------+-----------+-------+
10 rows in set (0.00 sec)

mysql> SELECT SUM(c_bal) FROM paymentmodes;
+------------+
| SUM(c_bal) |
+------------+
|     100000 |
+------------+
1 row in set (0.00 sec)

mysql> UPDATE paymentmodes
    -> SET c_bal = 25000 WHERE customer_id%3==0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==0' at line 2
mysql> SET c_bal = 25000 WHERE customer_id%3 = 0;
ERROR 1193 (HY000): Unknown system variable 'c_bal'
mysql> UPDATE paymentmodes
    -> SET c_bal = 25000 WHERE customer_id%3 = 0;
Query OK, 3 rows affected (0.00 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from paymentmodes;
+-------------+------------+-------------+-----------+-------+
| customer_id | customer   | mode        | city      | c_bal |
+-------------+------------+-------------+-----------+-------+
|         101 | Alessandro | Netbanking  | Rome      | 10000 |
|         102 | March      | Credit card | Turin     | 25000 |
|         103 | Roberto    | Netbanking  | Bolongo   | 10000 |
|         104 | Guilia     | debit card  | Milan     | 10000 |
|         105 | Stefano    | Debit card  | Paleroma  | 25000 |
|         106 | Angelo     | Netbanking  | Floreance | 10000 |
|         107 | Francesco  | Credit card | Bologna   | 10000 |
|         108 | Mario      | Netbanking  | Bari      | 25000 |
|         109 | Laura      | Credit card | Taranto   | 10000 |
|         110 | Valentina  | Netbanking  | Modena    | 10000 |
+-------------+------------+-------------+-----------+-------+
10 rows in set (0.00 sec)

mysql> SELECT AVG(c_bal) FROM paymentmodes;
+------------+
| AVG(c_bal) |
+------------+
| 14500.0000 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT mode, COUNT(*) FROM paymentmodes GROUP BY modes;
ERROR 1054 (42S22): Unknown column 'modes' in 'group statement'
mysql> SELECT mode, COUNT(*) FROM paymentmodes GROUP BY mode;
+-------------+----------+
| mode        | COUNT(*) |
+-------------+----------+
| Netbanking  |        5 |
| Credit card |        3 |
| debit card  |        2 |
+-------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT c_bal, COUNT(*) FROM paymentmodes GROUP BY c_bal HAVING AVG(c_bal)>10000;;
+-------+----------+
| c_bal | COUNT(*) |
+-------+----------+
| 25000 |        3 |
+-------+----------+
1 row in set (0.00 sec)

ERROR:
No query specified

mysql>
