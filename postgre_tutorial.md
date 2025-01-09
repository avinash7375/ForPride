# PostgreSQL Lecture: Installation and Basics on Windows

## Objective:
This lecture aims to guide students on how to install and use PostgreSQL on a Windows operating system. We will cover the installation process, basic configuration, and some fundamental PostgreSQL commands.

---

## 1. **What is PostgreSQL?**
- PostgreSQL is an open-source, powerful, and advanced relational database management system (RDBMS).
- Known for its robustness, extensibility, and standards compliance.
- Widely used for web, mobile, and enterprise applications.

---

## 2. **Installing PostgreSQL on Windows**

### **Step 1: Download the Installer**
1. Visit the official PostgreSQL website: https://www.postgresql.org/download/
2. Select **Windows** and download the PostgreSQL installer from the recommended source (EDB).

### **Step 2: Run the Installer**
1. Double-click the downloaded installer to start the installation.
2. Follow these steps in the installation wizard:
   - **Select Components**: Ensure "PostgreSQL Server," "pgAdmin 4," and other desired tools are selected.
   - **Data Directory**: Leave the default directory or specify a custom location for your database files.
   - **Set Password**: Create a secure password for the PostgreSQL superuser (default username: `postgres`).
   - **Port Number**: Use the default port `5432`, unless another application is using it.

### **Step 3: Complete the Installation**
- Once the wizard finishes, PostgreSQL will be installed on your Windows machine.
- The installer may prompt you to launch the Stack Builder to install additional tools (optional).

---

## 3. **Setting Up PostgreSQL**

### **Step 1: Accessing pgAdmin 4**
1. Open **pgAdmin 4** from the Start Menu.
2. Log in using the superuser password set during installation.
3. Familiarize yourself with the pgAdmin interface for managing databases visually.

### **Step 2: Using the SQL Shell (psql)**
1. Open the **SQL Shell (psql)** from the Start Menu.
2. Enter the following details:
   - **Server**: `localhost` (default)
   - **Database**: `postgres` (default database)
   - **Port**: `5432` (default)
   - **Username**: `postgres`
   - **Password**: (enter your password)
3. You should now see the `postgres=#` prompt, ready to execute SQL commands.

---

## 4. **Basic PostgreSQL Commands**

### **Creating a Database**
```sql
CREATE DATABASE my_database;
```

### **Connecting to a Database**
```sql
\c my_database;
```

### **Creating a Table**
```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);
```

### **Inserting Data**
```sql
INSERT INTO students (name, age, grade)
VALUES ('John Doe', 20, 'A');
```

### **Querying Data**
```sql
SELECT * FROM students;
```

### **Updating Data**
```sql
UPDATE students
SET grade = 'B'
WHERE name = 'John Doe';
```

### **Deleting Data**
```sql
DELETE FROM students
WHERE name = 'John Doe';
```

---

## 5. **Tips for Windows Users**
- Use **pgAdmin** for a GUI-based interaction and SQL Shell for a command-line experience.
- Backup your databases regularly using the `pg_dump` utility or the Backup feature in pgAdmin.
- Use Windows Task Scheduler to automate routine database maintenance tasks.

---

## 6. **Resources for Further Learning**
- [PostgreSQL Official Documentation](https://www.postgresql.org/docs/)
- [pgAdmin Documentation](https://www.pgadmin.org/docs/)
- [Online SQL Practice](https://www.w3schools.com/sql/)

---

## Assignment
1. Install PostgreSQL on your Windows machine.
2. Create a database named `school` and a table named `teachers` with appropriate fields.
3. Insert sample data and query it using both `psql` and `pgAdmin`.
4. Submit a screenshot of your table and the query results.

---

This concludes the lecture on PostgreSQL installation and basics on Windows. Happy learning!

