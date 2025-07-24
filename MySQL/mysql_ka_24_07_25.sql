[avii@avii Desktop]$ mysql -u root -p
mysql: Deprecated program name. It will be removed in a future release, use '/usr/bin/mariadb' instead
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 11.8.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> 

MariaDB [(none)]> 















MariaDB [(none)]> 















MariaDB [(none)]> 















MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| devices            |
| information_schema |
| mysql              |
| pen                |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.009 sec)

MariaDB [(none)]> use pen;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [pen]> ls
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ls' at line 1
MariaDB [pen]> 
MariaDB [pen]> show tables;
+---------------+
| Tables_in_pen |
+---------------+
| montex        |
+---------------+
1 row in set (0.001 sec)

MariaDB [pen]> describe montex;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| std   | char(3)     | YES  |     | NULL    |       |
| xyz   | int(11)     | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.002 sec)

MariaDB [pen]> select * from montex;
+---------+------+------+
| name    | std  | xyz  |
+---------+------+------+
| Avinash | XVI  |   12 |
+---------+------+------+
1 row in set (0.009 sec)

MariaDB [pen]> ALTER TABLE montex
    -> ;
Query OK, 0 rows affected (0.001 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [pen]> show tables;
+---------------+
| Tables_in_pen |
+---------------+
| montex        |
+---------------+
1 row in set (0.001 sec)

MariaDB [pen]> drop montex;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'montex' at line 1
MariaDB [pen]> DROP montex;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'montex' at line 1
MariaDB [pen]> 
MariaDB [pen]> DROP TABLE montex;
Query OK, 0 rows affected (0.015 sec)

MariaDB [pen]> dir
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'dir' at line 1
MariaDB [pen]> 







MariaDB [pen]> create table montex {
    -> p_id INT AUTO_INCREMENT}
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{
p_id INT AUTO_INCREMENT}' at line 1
MariaDB [pen]> create table montex {
    -> p_id INT PRIMARY KEY AUTO_INCREMENT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{
p_id INT PRIMARY KEY AUTO_INCREMENT
)' at line 1
MariaDB [pen]> create table montex ( p_id INT PRIMARY KEY AUTO_INCREMENT );
Query OK, 0 rows affected (0.013 sec)

MariaDB [pen]> show tables;
+---------------+
| Tables_in_pen |
+---------------+
| montex        |
+---------------+
1 row in set (0.001 sec)

MariaDB [pen]> describe montex;
+-------+---------+------+-----+---------+----------------+
| Field | Type    | Null | Key | Default | Extra          |
+-------+---------+------+-----+---------+----------------+
| p_id  | int(11) | NO   | PRI | NULL    | auto_increment |
+-------+---------+------+-----+---------+----------------+
1 row in set (0.002 sec)

MariaDB [pen]> INSERT INTO montex VALUES (),(),(),(),(),();
Query OK, 6 rows affected (0.006 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [pen]> select * from montex
    -> ;
+------+
| p_id |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
|    6 |
+------+
6 rows in set (0.001 sec)

MariaDB [pen]> DROP TABLE montex;
Query OK, 0 rows affected (0.010 sec)

MariaDB [pen]> 
MariaDB [pen]> create table montex(
    -> p_id INT PRIMARY KEY AUTO_INCREMENT,
    -> p_n VARCHAR(30),
    -> p_Quality INT(1),
    -> p_test char(5)
    -> );
Query OK, 0 rows affected (0.012 sec)

MariaDB [pen]> INSERT INTO montex (p_n, p_Quality, p_test) VALUES
    -> ("Butterflow", 7, "No"), ("flair", 8, "Yes"));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2
MariaDB [pen]> INSERT INTO montex (p_n, p_Quality, p_test) VALUES ("Butterflow", 7, 'No'), ("flair", 8, 'Yes'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 1
MariaDB [pen]> INSERT INTO montex (p_n, p_Quality, p_test) VALUES ("Butterflow", 7, 'No'), ("flair", 8, 'Yes');
Query OK, 2 rows affected (0.007 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [pen]> select * from montex;
+------+------------+-----------+--------+
| p_id | p_n        | p_Quality | p_test |
+------+------------+-----------+--------+
|    1 | Butterflow |         7 | No     |
|    2 | flair      |         8 | Yes    |
+------+------------+-----------+--------+
2 rows in set (0.001 sec)

MariaDB [pen]> show databases;
+--------------------+
| Database           |
+--------------------+
| devices            |
| information_schema |
| mysql              |
| pen                |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [pen]> 
MariaDB [pen]> create table cluster (
    -> id INT,
    -> FOREIGN KEY (id) REFERENCES montex(p_id)
    -> };
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '}' at line 4
MariaDB [pen]> create table cluster ( id INT, FOREIGN KEY (id) REFERENCES montex(p_id) );
Query OK, 0 rows affected (0.012 sec)

MariaDB [pen]> select * from montex;
+------+------------+-----------+--------+
| p_id | p_n        | p_Quality | p_test |
+------+------------+-----------+--------+
|    1 | Butterflow |         7 | No     |
|    2 | flair      |         8 | Yes    |
+------+------------+-----------+--------+
2 rows in set (0.001 sec)

MariaDB [pen]> INSERT INTO cluster VALUES
    -> (3);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pen`.`cluster`, CONSTRAINT `cluster_ibfk_1` FOREIGN KEY (`id`) REFERENCES `montex` (`p_id`))
MariaDB [pen]> INSERT INTO cluster VALUES (2);
Query OK, 1 row affected (0.007 sec)

MariaDB [pen]> INSERT INTO cluster VALUES (1);
Query OK, 1 row affected (0.007 sec)

MariaDB [pen]> INSERT INTO cluster VALUES (4);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pen`.`cluster`, CONSTRAINT `cluster_ibfk_1` FOREIGN KEY (`id`) REFERENCES `montex` (`p_id`))
MariaDB [pen]> 
MariaDB [pen]> 















MariaDB [pen]> 















MariaDB [pen]> 















MariaDB [pen]> quit
Bye
[avii@avii Desktop]$ 













[avii@avii Desktop]$ 















