Here are **two simple examples** that demonstrate how regular expressions (regex) work in Python using the `re` module.

---

### ✅ **Example 1: Validate an Email Address**

This example checks if a string is a valid email address.

```python
import re

# Email to validate
email = "example.user123@gmail.com"

# Regex pattern for email validation
pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

# Perform the match
if re.match(pattern, email):
    print("Valid email address!")
else:
    print("Invalid email address.")
```

---

### ✅ **Example 2: Find All Phone Numbers in a Text**

This example finds all phone numbers in a string that match the format `xxx-xxx-xxxx`.

```python
import re

# Sample text with phone numbers
text = "Call me at 123-456-7890 or 987-654-3210."

# Regex pattern to find phone numbers
pattern = r'\b\d{3}-\d{3}-\d{4}\b'

# Find all matches
phone_numbers = re.findall(pattern, text)

# Print results
print("Phone numbers found:", phone_numbers)
```

---

Would you like me to explain how each regex pattern works?


----
Great! Let’s go through **two examples** of **exception handling** in Python. Exception handling helps catch and manage errors gracefully using `try`, `except`, and optionally `finally` and `else`.

---

### ✅ **Example 1: Handling Division by Zero**

```python
try:
    num1 = 10
    num2 = 0
    result = num1 / num2
    print("Result:", result)
except ZeroDivisionError:
    print("Error: You can't divide by zero.")
```

🔍 **What’s happening?**
The code tries to divide by zero, which causes a `ZeroDivisionError`, and the `except` block catches and handles it.

---

### ✅ **Example 2: Handling Invalid Input (ValueError)**

```python
try:
    user_input = input("Enter an integer: ")
    number = int(user_input)
    print("You entered:", number)
except ValueError:
    print("Error: That was not a valid integer.")
```

🔍 **What’s happening?**
If the user enters something that can't be converted to an integer (like "abc"), it raises a `ValueError`, which is caught by the `except` block.

---

Would you like an example with `finally` or multiple exception types too?

---
Here’s a list of the **most common built-in exceptions in Python**, categorized for clarity. These are the ones you're most likely to encounter during coding:

---

### 🧮 **Arithmetic & Numeric Errors**

| Exception            | Description                                          |
| -------------------- | ---------------------------------------------------- |
| `ZeroDivisionError`  | Raised when dividing by zero.                        |
| `OverflowError`      | Raised when a numeric operation exceeds the limit.   |
| `FloatingPointError` | Raised when a floating point operation fails (rare). |

---

### 📂 **File & I/O Errors**

| Exception           | Description                                                           |
| ------------------- | --------------------------------------------------------------------- |
| `FileNotFoundError` | Raised when a file or directory is requested but doesn't exist.       |
| `IOError`           | Raised when an I/O operation (like a file read/write) fails.          |
| `PermissionError`   | Raised when trying to access a file without the required permissions. |

---

### 👤 **User Input & Type Errors**

| Exception    | Description                                                                          |
| ------------ | ------------------------------------------------------------------------------------ |
| `ValueError` | Raised when a function receives an argument of correct type but inappropriate value. |
| `TypeError`  | Raised when an operation is applied to an object of inappropriate type.              |

---

### 📦 **Import & Attribute Errors**

| Exception             | Description                                                      |
| --------------------- | ---------------------------------------------------------------- |
| `ImportError`         | Raised when an imported module cannot be found.                  |
| `ModuleNotFoundError` | A subclass of `ImportError` for missing modules.                 |
| `AttributeError`      | Raised when an invalid attribute reference is made on an object. |

---

### 📑 **Name & Variable Scope Errors**

| Exception           | Description                                                        |
| ------------------- | ------------------------------------------------------------------ |
| `NameError`         | Raised when a local or global name is not found.                   |
| `UnboundLocalError` | Raised when trying to access a local variable before assigning it. |

---

### 📚 **Indexing & Iteration Errors**

| Exception       | Description                                       |
| --------------- | ------------------------------------------------- |
| `IndexError`    | Raised when a sequence subscript is out of range. |
| `KeyError`      | Raised when a dictionary key isn’t found.         |
| `StopIteration` | Raised to signal the end of an iterator.          |

---

### 🚨 **Assertion & Custom Logic Errors**

| Exception        | Description                                                      |
| ---------------- | ---------------------------------------------------------------- |
| `AssertionError` | Raised when an `assert` statement fails.                         |
| `RuntimeError`   | A generic error for cases that don't fall into other categories. |

---

### 🧱 **Memory & System Related Errors**

| Exception           | Description                                            |
| ------------------- | ------------------------------------------------------ |
| `MemoryError`       | Raised when an operation runs out of memory.           |
| `RecursionError`    | Raised when the maximum recursion depth is exceeded.   |
| `SystemExit`        | Raised by the `sys.exit()` function to exit a program. |
| `KeyboardInterrupt` | Raised when the user interrupts execution (Ctrl+C).    |

---

Would you like code examples for any of these exceptions?
---

Great question. In **Data Analytics with Python**, most errors occur when working with **dataframes (e.g., with Pandas), NumPy arrays, or file inputs**. These errors often result from **bad data, incorrect assumptions, or syntax mistakes**.

Here’s a list of **common error types** and their typical causes in data analytics:

---

### 🔢 **1. ValueError**

**Cause:** Trying to convert data to the wrong type or shape.

```python
int("abc")  # Cannot convert non-numeric string
```

**In data analytics:**

```python
df["age"] = df["age"].astype(int)  # Fails if "age" has missing or non-numeric values
```

---

### ❌ **2. KeyError**

**Cause:** Referencing a column or key that doesn't exist.

```python
df["nonexistent_column"]  # Raises KeyError
```

---

### 🧮 **3. TypeError**

**Cause:** Using an operation on the wrong data type.

```python
sum("123", 10)  # You can't sum a string and an int
```

**In data analytics:**

```python
df["date"] + 10  # Adding int to a datetime object may raise TypeError if types are incompatible
```

---

### 🔍 **4. IndexError**

**Cause:** Accessing a row or index that doesn't exist.

```python
my_list = [1, 2, 3]
print(my_list[10])  # Index out of range
```

**In Pandas:**

```python
df.iloc[1000]  # Raises IndexError if df has fewer than 1001 rows
```

---

### 🗃️ **5. FileNotFoundError**

**Cause:** Trying to read a file that doesn't exist or path is wrong.

```python
pd.read_csv("missing_file.csv")
```

---

### 📉 **6. MemoryError**

**Cause:** Trying to load a file too large for memory.

```python
# Large datasets may cause memory issues
df = pd.read_csv("huge_file.csv")
```

---

### 🧩 **7. AttributeError**

**Cause:** Calling a method or attribute that doesn't exist for an object.

```python
df.meanvalue()  # Should be df.mean(), not df.meanvalue()
```

---

### ⛔ **8. ParserError (from pandas)**

**Cause:** Issues while parsing CSV or Excel data (wrong delimiter, corrupted file, etc.).

```python
# Raised internally by pandas.read_csv()
```

---

### 🧪 **9. SettingWithCopyWarning** *(not an error, but important!)*

**Cause:** Modifying data in a way that might not affect the original DataFrame.

```python
df_copy = df[df['age'] > 20]
df_copy['age'] = df_copy['age'] + 1  # May not affect df
```

You should use `.loc` to avoid this:

```python
df.loc[df['age'] > 20, 'age'] += 1
```

---

### 🔁 **10. DtypeWarning (warning, not error)**

**Cause:** Mixed types in a column when reading a CSV.

```python
# Happens when a column contains both numbers and strings
```

---

Would you like a real-world example using Pandas or NumPy to show how to handle these errors properly?
