[avii@avii bin]$ mysql -u root -p
mysql: Deprecated program name. It will be removed in a future release, use '/usr/bin/mariadb' instead
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 14
Server version: 11.8.2-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.002 sec)

MariaDB [(none)]> create database pen;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| pen                |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.001 sec)

MariaDB [(none)]> use pen;
Database changed
MariaDB [pen]> 
MariaDB [pen]> create table montex{
    -> }
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{
}' at line 1
MariaDB [pen]> create table montex {
    -> name VARCHAR(30),
    -> std CHAR(3)
    -> };
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{
name VARCHAR(30),
std CHAR(3)
}' at line 1
MariaDB [pen]> create table montex ( name VARCHAR(30), std CHAR(3) );
Query OK, 0 rows affected (0.013 sec)

MariaDB [pen]> describe montex;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| std   | char(3)     | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.002 sec)

MariaDB [pen]> INSERT INTO montex VALUES("Avinash", 'XVI');
Query OK, 1 row affected (0.007 sec)

MariaDB [pen]> select * from montex;
+---------+------+
| name    | std  |
+---------+------+
| Avinash | XVI  |
+---------+------+
1 row in set (0.001 sec)

MariaDB [pen]> ALTER TABLE montex
    -> ADD COLUMN xyz INT;
Query OK, 0 rows affected (0.016 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| Avinash | XVI  | NULL |
+---------+------+------+
1 row in set (0.001 sec)

MariaDB [pen]> ALTER TABLE montex
    -> UPDATE xyz(12) WHERE name = "Avinash";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'UPDATE xyz(12) WHERE name = "Avinash"' at line 2
MariaDB [pen]> ALTER TABLE montex UPDATE xyz WHERE name = "Avinash" SET TO 12;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'UPDATE xyz WHERE name = "Avinash" SET TO 12' at line 1
MariaDB [pen]> UPDATE montex
    -> SET xyz = 12
    -> WHERE name="Avinash";
Query OK, 1 row affected (0.006 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [pen]> select * from montex;
+---------+------+------+
| name    | std  | xyz  |
+---------+------+------+
| Avinash | XVI  |   12 |
+---------+------+------+
1 row in set (0.001 sec)

MariaDB [pen]> 
