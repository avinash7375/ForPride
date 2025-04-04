To make the **Student Management System** more complex and realistic, we can add multiple related tables and expand the system to handle more features, such as:

- **Courses**: Where students enroll in different courses.
- **Enrollments**: To track which student is enrolled in which course.
- **Grades**: To track the grades of students in each course.
- **Address**: To store student address details.

### Step 1: Database Structure

We will have the following tables:

1. **students**: Stores student details.
2. **courses**: Stores information about the courses.
3. **enrollments**: Links students to courses they are enrolled in.
4. **grades**: Stores the grades for students in each course.
5. **addresses**: Stores student address details.

### Step 2: Create the Database and Tables

```sql
-- Create the database for the student management system
CREATE DATABASE StudentManagement;

-- Use the database
USE StudentManagement;

-- Create the students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create the courses table
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(10),
    description TEXT
);

-- Create the enrollments table to track which students are enrolled in which courses
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Create the grades table to store grades for students in each course
CREATE TABLE grades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Create the addresses table to store student address details
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    address_line1 VARCHAR(100),
    address_line2 VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(id)
);
```

### Step 3: Insert Sample Data

Now, let's add some sample data to these tables.

```sql
-- Insert some sample students
INSERT INTO students (first_name, last_name, dob, email, phone)
VALUES
('John', 'Doe', '2000-01-15', 'johndoe@example.com', '123-456-7890'),
('Jane', 'Smith', '2001-05-22', 'janesmith@example.com', '234-567-8901'),
('Mark', 'Johnson', '1999-08-10', 'markjohnson@example.com', '345-678-9012');

-- Insert some sample courses
INSERT INTO courses (course_name, course_code, description)
VALUES
('Introduction to Programming', 'CS101', 'A beginner’s course on programming in C.'),
('Database Systems', 'CS201', 'Learn about database management systems and SQL.'),
('Web Development', 'CS301', 'A comprehensive course on building web applications.');

-- Insert some sample enrollments (which students are enrolled in which courses)
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2025-01-10'),
(1, 2, '2025-01-15'),
(2, 1, '2025-01-12'),
(3, 3, '2025-01-16');

-- Insert some sample grades for students in courses
INSERT INTO grades (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(3, 3, 'C');

-- Insert sample address data
INSERT INTO addresses (student_id, address_line1, address_line2, city, state, zip_code)
VALUES
(1, '123 Main St', 'Apt 101', 'New York', 'NY', '10001'),
(2, '456 Oak St', NULL, 'Los Angeles', 'CA', '90001'),
(3, '789 Pine St', 'Suite 3B', 'Chicago', 'IL', '60001');
```

### Step 4: Querying the Data

Now that we have a more complex database structure, let's explore some queries that involve joining multiple tables.

#### 1. **View All Students with Their Enrolled Courses**

This query retrieves a list of students and the courses they are enrolled in:

```sql
SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id;
```

#### 2. **View Student Grades for All Courses**

This query shows the grades of each student in the courses they are enrolled in:

```sql
SELECT s.first_name, s.last_name, c.course_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN courses c ON g.course_id = c.id;
```

#### 3. **Find Students Who Have a Specific Grade in a Course**

This query finds all students who have a grade 'A' in the course 'Database Systems':

```sql
SELECT s.first_name, s.last_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN courses c ON g.course_id = c.id
WHERE c.course_name = 'Database Systems' AND g.grade = 'A';
```

#### 4. **View Student Address Information**

This query shows the addresses of all students:

```sql
SELECT s.first_name, s.last_name, a.address_line1, a.address_line2, a.city, a.state, a.zip_code
FROM students s
JOIN addresses a ON s.id = a.student_id;
```

#### 5. **View the Number of Students Enrolled in Each Course**

This query shows how many students are enrolled in each course:

```sql
SELECT c.course_name, COUNT(e.student_id) AS student_count
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
GROUP BY c.course_name;
```

### Step 5: Update and Delete Records

#### 1. **Update a Student’s Grade**

To update a student's grade (e.g., update Mark Johnson’s grade in 'Web Development'):

```sql
UPDATE grades
SET grade = 'B'
WHERE student_id = 3 AND course_id = 3;
```

#### 2. **Delete a Student’s Enrollment**

To remove a student from a course (e.g., remove John Doe from 'Introduction to Programming'):

```sql
DELETE FROM enrollments
WHERE student_id = 1 AND course_id = 1;
```

### Final Code Summary

Here's a summary of the SQL structure:

```sql
-- Create Database
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Create Students Table
CREATE TABLE students ( ... );

-- Create Courses Table
CREATE TABLE courses ( ... );

-- Create Enrollments Table
CREATE TABLE enrollments ( ... );

-- Create Grades Table
CREATE TABLE grades ( ... );

-- Create Addresses Table
CREATE TABLE addresses ( ... );

-- Insert Data (students, courses, enrollments, grades, addresses)
INSERT INTO students ( ... );
INSERT INTO courses ( ... );
INSERT INTO enrollments ( ... );
INSERT INTO grades ( ... );
INSERT INTO addresses ( ... );

-- Select Data Queries
SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date FROM students s JOIN enrollments e ...;
SELECT s.first_name, s.last_name, c.course_name, g.grade FROM students s JOIN grades g ...;
SELECT s.first_name, s.last_name, g.grade FROM students s JOIN grades g ... WHERE c.course_name = 'Database Systems' AND g.grade = 'A';
SELECT s.first_name, s.last_name, a.address_line1, a.address_line2, a.city, a.state, a.zip_code FROM students s JOIN addresses a ...;
SELECT c.course_name, COUNT(e.student_id) AS student_count FROM courses c LEFT JOIN enrollments e ... GROUP BY c.course_name;

-- Update and Delete Queries
UPDATE grades SET grade = 'B' WHERE student_id = 3 AND course_id = 3;
DELETE FROM enrollments WHERE student_id = 1 AND course_id = 1;
```

### Conclusion

This more complex version of the Student Management System allows you to manage students, courses, enrollments, grades, and addresses. You can perform various queries to get insights into student enrollments, grades, and course statistics. 

This structure can be expanded even further by adding more features, such as:
- **Assignments and submission tracking**
- **Attendance tracking**
- **Timetable management**

Let me know if you need additional features or help with further expansion!
