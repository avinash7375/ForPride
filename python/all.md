Certainly, Prof. Avinash. Below are **5 examples each** of **file handling**, **exception handling**, and **regular expressions** in Python:

---

## 🔹 **File Handling Examples**

### 1. Writing to a file

```python
with open("example.txt", "w") as file:
    file.write("Hello, Prof. Avinash!")
```

### 2. Reading from a file

```python
with open("example.txt", "r") as file:
    content = file.read()
    print(content)
```

### 3. Appending to a file

```python
with open("example.txt", "a") as file:
    file.write("\nWelcome to Python file handling.")
```

### 4. Reading file line by line

```python
with open("example.txt", "r") as file:
    for line in file:
        print(line.strip())
```

### 5. Checking if file exists before reading

```python
import os

if os.path.exists("example.txt"):
    with open("example.txt", "r") as file:
        print(file.read())
else:
    print("File not found.")
```

---

## 🔹 **Exception Handling Examples**

### 1. Handling division by zero

```python
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero.")
```

### 2. Handling multiple exceptions

```python
try:
    x = int("abc")
except (ValueError, TypeError) as e:
    print(f"Error occurred: {e}")
```

### 3. Using `finally` block

```python
try:
    file = open("example.txt", "r")
    print(file.read())
except FileNotFoundError:
    print("File not found.")
finally:
    print("Execution completed.")
```

### 4. Raising a custom exception

```python
def check_age(age):
    if age < 18:
        raise ValueError("Must be 18 or older.")
    return "Access granted."

try:
    print(check_age(16))
except ValueError as e:
    print(e)
```

### 5. Catching all exceptions

```python
try:
    x = 10 / int("a")
except Exception as e:
    print(f"Unexpected error: {e}")
```

---

## 🔹 **Regular Expression Examples**

### 1. Matching a pattern

```python
import re

pattern = r"\d+"
text = "There are 42 apples."
match = re.search(pattern, text)
if match:
    print("Found:", match.group())
```

### 2. Finding all matches

```python
text = "My numbers are 123, 456, and 789."
matches = re.findall(r"\d+", text)
print(matches)
```

### 3. Validating an email

```python
email = "prof.avinash@example.com"
if re.match(r"[^@]+@[^@]+\.[^@]+", email):
    print("Valid email.")
else:
    print("Invalid email.")
```

### 4. Substituting text

```python
text = "I love cats. Cats are great."
new_text = re.sub(r"cats?", "dogs", text, flags=re.IGNORECASE)
print(new_text)
```

### 5. Splitting a string by delimiter

```python
text = "one,two;three four"
parts = re.split(r"[;, ]", text)
print(parts)
```

---

Let me know if you’d like these examples packaged as a Jupyter notebook or included in a handout format for your classes.
