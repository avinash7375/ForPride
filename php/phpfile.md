## 🧠 What is PHP?

**PHP** (Hypertext Preprocessor) is a **server-side scripting language** used to create **dynamic web pages**. It's embedded in HTML and works well with databases like **MySQL**.

---

## ✅ Prerequisites

* Basic understanding of **HTML**
* A local server like **XAMPP** or **MAMP** installed
* Code editor like **VS Code** or **Sublime Text**

---

## 🛠️ Setting Up PHP

1. **Download XAMPP**: [https://www.apachefriends.org](https://www.apachefriends.org)
2. **Start Apache Server**
3. Create a folder inside `htdocs/`, e.g., `myphp/`
4. Save your PHP files in `C:/xampp/htdocs/myphp/`
5. Access your file in browser via `http://localhost/myphp/filename.php`

---

## 🖊️ Writing Your First PHP Script

```php
<?php
  echo "Hello, World!";
?>
```

**Explanation:**

* `<?php` starts PHP code
* `echo` prints output to the browser

---

## 🧮 PHP Variables and Data Types

```php
<?php
$name = "Avinash";
$age = 24;
$price = 49.99;
$is_student = true;

echo "Name: $name, Age: $age";
?>
```

---

## 🔁 Control Structures

### If Statement

```php
<?php
$score = 85;

if ($score >= 50) {
  echo "You passed!";
} else {
  echo "You failed!";
}
?>
```

### Loops

```php
<?php
for ($i = 1; $i <= 5; $i++) {
  echo "Number: $i<br>";
}
?>
```

---

## 🧰 Functions

```php
<?php
function greet($name) {
  return "Hello, $name!";
}

echo greet("Avinash");
?>
```

---

## 📄 Forms and PHP

### HTML Form

```html
<form method="POST" action="process.php">
  <input type="text" name="username">
  <input type="submit" value="Submit">
</form>
```

### `process.php`

```php
<?php
$username = $_POST['username'];
echo "Welcome, $username!";
?>
```

---

## 💽 Connecting PHP with MySQL

```php
<?php
$conn = new mysqli("localhost", "root", "", "testdb");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully!";
?>
```

---

## 📦 Projects You Can Try

* Contact Form with Email
* Login/Signup System
* To-Do List with Database
* Simple Blog Engine

---

## 🏁 What's Next?

* Learn about **Sessions & Cookies**
* Use **PDO** for secure database operations
* Try **OOP in PHP**
* Explore **Laravel Framework**

---

Would you like this in a downloadable PDF or want a tutorial series with each topic explained in detail (with code + outputs)?
