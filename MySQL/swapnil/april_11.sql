Enter password: ****
mysql> \h

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
notee     (\t) Don't write into outfile.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command, if enabled
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.
resetconnection(\x) Clean session context.
query_attributes Sets string parameters (name1 value1 name2 value2 ...) for the next query to pick up.
ssl_session_data_print Serializes the current SSL session data to stdout or file

For server side help, type 'help contents'

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
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
| sakila             |
| sys                |
| today              |
| world              |
+--------------------+
10 rows in set (0.00 sec)

mysql> create database ak2;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ak1                |
| ak2                |
| hwllo              |
| information_schema |
| mysql              |
| performance_schema |
| product            |
| sakila             |
| sys                |
| today              |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> use ak2;
Database changed
mysql> show tables;
Empty set (0.01 sec)

mysql> CREATE TABLE student {
    -> id INT,
    -> name VARCHAR(50)
    -> };
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '{
id INT,
name VARCHAR(50)
}' at line 1
mysql> CREATE TABLE student (
    -> id INT,
    -> name VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+---------------+
| Tables_in_ak2 |
+---------------+
| student       |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM student;
Empty set (0.00 sec)

mysql> DESCRIBE student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSER TINTO student VALUES
    -> (01, "AVINASH");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSER TINTO student VALUES
(01, "AVINASH")' at line 1
mysql> INSERT INTO student VALUES
    -> (01, "AVINASH");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM student;
+------+---------+
| id   | name    |
+------+---------+
|    1 | AVINASH |
+------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO student VALUES
    -> (02, "AVINASH1"), (03,"Avv"), (04, "Aviiii"), (05, "AAAAviii");
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM student;
+------+----------+
| id   | name     |
+------+----------+
|    1 | AVINASH  |
|    2 | AVINASH1 |
|    3 | Avv      |
|    4 | Aviiii   |
|    5 | AAAAviii |
+------+----------+
5 rows in set (0.00 sec)

mysql>

