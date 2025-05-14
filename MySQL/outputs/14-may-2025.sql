[avii@avii ~]$ 
[avii@avii ~]$ 
[avii@avii ~]$ 
[avii@avii ~]$ pysql -u root -p
bash: pysql: command not found
[avii@avii ~]$ pysql -u root -q
bash: pysql: command not found
[avii@avii ~]$ mysql -u root -q
mysql: Deprecated program name. It will be removed in a future release, use '/usr/bin/mariadb' instead
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
[avii@avii ~]$ mysql -u root -p
mysql: Deprecated program name. It will be removed in a future release, use '/usr/bin/mariadb' instead
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 4
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
| sys                |
| tms                |
+--------------------+
9 rows in set (0.012 sec)

MariaDB [(none)]> create database std;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use std;
Database changed
MariaDB [std]> CREATE TABLE students (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     dob DATE,
    ->     email VARCHAR(100),
    ->     phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.018 sec)

MariaDB [std]> CREATE TABLE courses (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     course_name VARCHAR(100),
    ->     course_code VARCHAR(10),
    ->     description TEXT
    -> );
Query OK, 0 rows affected (0.015 sec)

MariaDB [std]> CREATE TABLE enrollments (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id INT,
    ->     course_id INT,
    ->     enrollment_date DATE,
    ->     FOREIGN KEY (student_id) REFERENCES students(id),
    ->     FOREIGN KEY (course_id) REFERENCES courses(id)
    -> );
Query OK, 0 rows affected (0.013 sec)

MariaDB [std]> INSERT INTO students (first_name, last_name, dob, email, phone)
    -> VALUES
    -> ('John', 'Doe', '2000-01-15', 'johndoe@example.com', '123-456-7890'),
    -> ('Jane', 'Smith', '2001-05-22', 'janesmith@example.com', '234-567-8901'),
    -> ('Mark', 'Johnson', '1999-08-10', 'markjohnson@example.com', '345-678-9012');
Query OK, 3 rows affected (0.007 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [std]> INSERT INTO courses (course_name, course_code, description)
    -> VALUES
    -> ('Introduction to Programming', 'CS101', 'A beginner’s course on programming in C.'),
    -> ('Database Systems', 'CS201', 'Learn about database management systems and SQL.'),
    -> ('Web Development', 'CS301', 'A comprehensive course on building web applications.');
Query OK, 3 rows affected (0.007 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [std]> INSERT INTO enrollments (student_id, course_id, enrollment_date)
    -> VALUES
    -> (1, 1, '2025-01-10'),
    -> (1, 2, '2025-01-15'),
    -> (2, 1, '2025-01-12'),
    -> (3, 3, '2025-01-16');
Query OK, 4 rows affected (0.007 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [std]> 
MariaDB [std]> 
MariaDB [std]> 
MariaDB [std]> 
MariaDB [std]> SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date
    -> FROM students s
    -> JOIN enrollments e ON s.id = e.student_id
    -> JOIN courses c ON e.course_id = c.id;
+------------+-----------+-----------------------------+-----------------+
| first_name | last_name | course_name                 | enrollment_date |
+------------+-----------+-----------------------------+-----------------+
| John       | Doe       | Introduction to Programming | 2025-01-10      |
| John       | Doe       | Database Systems            | 2025-01-15      |
| Jane       | Smith     | Introduction to Programming | 2025-01-12      |
| Mark       | Johnson   | Web Development             | 2025-01-16      |
+------------+-----------+-----------------------------+-----------------+
4 rows in set (0.001 sec)

MariaDB [std]> CREATE TABLE grades (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id INT,
    ->     course_id INT,
    ->     grade VARCHAR(5),
    ->     FOREIGN KEY (student_id) REFERENCES students(id),
    ->     FOREIGN KEY (course_id) REFERENCES courses(id)
    -> );
Query OK, 0 rows affected (0.019 sec)

MariaDB [std]> CREATE TABLE addresses (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id INT,
    ->     address_line1 VARCHAR(100),
    ->     address_line2 VARCHAR(100),
    ->     city VARCHAR(50),
    ->     state VARCHAR(50),
    ->     zip_code VARCHAR(20),
    ->     FOREIGN KEY (student_id) REFERENCES students(id)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [std]> INSERT INTO grades (student_id, course_id, grade)
    -> VALUES
    -> (1, 1, 'A'),
    -> (1, 2, 'B'),
    -> (2, 1, 'A'),
    -> (3, 3, 'C');
Query OK, 4 rows affected (0.007 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [std]> INSERT INTO addresses (student_id, address_line1, address_line2, city, state, zip_code)
    -> VALUES
    -> (1, '123 Main St', 'Apt 101', 'New York', 'NY', '10001'),
    -> (2, '456 Oak St', NULL, 'Los Angeles', 'CA', '90001'),
    -> (3, '789 Pine St', 'Suite 3B', 'Chicago', 'IL', '60001');
Query OK, 3 rows affected (0.006 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [std]> SELECT s.first_name, s.last_name, c.course_name, g.grade
    -> FROM students s
    -> JOIN grades g ON s.id = g.student_id
    -> JOIN courses c ON g.course_id = c.id;
+------------+-----------+-----------------------------+-------+
| first_name | last_name | course_name                 | grade |
+------------+-----------+-----------------------------+-------+
| John       | Doe       | Introduction to Programming | A     |
| John       | Doe       | Database Systems            | B     |
| Jane       | Smith     | Introduction to Programming | A     |
| Mark       | Johnson   | Web Development             | C     |
+------------+-----------+-----------------------------+-------+
4 rows in set (0.001 sec)

MariaDB [std]> SELECT s.first_name, s.last_name, g.grade
    -> FROM students s
    -> JOIN grades g ON s.id = g.student_id
    -> JOIN courses c ON g.course_id = c.id
    -> WHERE c.course_name = 'Database Systems' AND g.grade = 'A';
Empty set (0.001 sec)

MariaDB [std]> SELECT s.first_name, s.last_name, g.grade FROM students s JOIN grades g ON s.id = g.student_id JOIN courses c ON g.course_id = c.id WHERE c.course_name = 'Database Systems' AND g.grade = 'B';
+------------+-----------+-------+
| first_name | last_name | grade |
+------------+-----------+-------+
| John       | Doe       | B     |
+------------+-----------+-------+
1 row in set (0.001 sec)

MariaDB [std]> SELECT s.first_name, s.last_name, a.address_line1, a.address_line2, a.city, a.state, a.zip_code
    -> FROM students s
    -> JOIN addresses a ON s.id = a.student_id;
+------------+-----------+---------------+---------------+-------------+-------+----------+
| first_name | last_name | address_line1 | address_line2 | city        | state | zip_code |
+------------+-----------+---------------+---------------+-------------+-------+----------+
| John       | Doe       | 123 Main St   | Apt 101       | New York    | NY    | 10001    |
| Jane       | Smith     | 456 Oak St    | NULL          | Los Angeles | CA    | 90001    |
| Mark       | Johnson   | 789 Pine St   | Suite 3B      | Chicago     | IL    | 60001    |
+------------+-----------+---------------+---------------+-------------+-------+----------+
3 rows in set (0.001 sec)

MariaDB [std]> 
