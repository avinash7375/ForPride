

### **1. Print a Right-Angled Triangle of Stars**
**Question**: Write a program to print a right-angled triangle of stars for a given number of rows.  
```python
rows = 5
for i in range(1, rows + 1):
    print("*" * i)
```



### **2. Reverse a String**
**Question**: Write a program to reverse a given string.  
```python
string = "Python"
print("Reversed String:", string[::-1])
```

---

### **3. Check for Palindrome**
**Question**: Write a program to check if a given string is a palindrome.  
```python
string = "madam"
if string == string[::-1]:
    print(f"{string} is a palindrome.")
else:
    print(f"{string} is not a palindrome.")
```

---

### **4. Print the Fibonacci Sequence**
**Question**: Write a program to print the first `n` numbers of the Fibonacci sequence.  
```python
n = 10
a, b = 0, 1
for _ in range(n):
    print(a, end=" ")
    a, b = b, a + b
```

---

### **5. Factorial of a Number**
**Question**: Write a program to calculate the factorial of a given number.  
```python
num = 5
factorial = 1
for i in range(1, num + 1):
    factorial *= i
print("Factorial:", factorial)
```

---

### **6. Print a Pyramid Pattern**
**Question**: Write a program to print a pyramid pattern of stars for a given number of rows.  
```python
rows = 5
for i in range(1, rows + 1):
    print(" " * (rows - i) + "*" * (2 * i - 1))
```

---

### **7. Check Prime Number**
**Question**: Write a program to check if a number is prime.  
```python
num = 29
is_prime = all(num % i != 0 for i in range(2, int(num**0.5) + 1))
print(f"{num} is prime.") if is_prime else print(f"{num} is not prime.")
```

---

### **8. Count Vowels in a String**
**Question**: Write a program to count the number of vowels in a string.  
```python
string = "Hello World"
vowels = "aeiouAEIOU"
count = sum(1 for char in string if char in vowels)
print("Number of vowels:", count)
```

---

### **9. Sum of Digits**
**Question**: Write a program to calculate the sum of the digits of a number.  
```python
num = 12345
total = sum(int(digit) for digit in str(num))
print("Sum of digits:", total)
```

---

### **10. Armstrong Number**
**Question**: Write a program to check if a number is an Armstrong number.  
```python
num = 153
n = len(str(num))
if sum(int(digit)**n for digit in str(num)) == num:
    print(f"{num} is an Armstrong number.")
else:
    print(f"{num} is not an Armstrong number.")
```

---

### **11. Find GCD of Two Numbers**
**Question**: Write a program to find the GCD of two numbers using Euclid's algorithm.  
```python
a, b = 48, 18
while b:
    a, b = b, a % b
print("GCD:", a)
```

---

### **12. Check for Anagram**
**Question**: Write a program to check if two strings are anagrams.  
```python
str1, str2 = "listen", "silent"
if sorted(str1) == sorted(str2):
    print("The strings are anagrams.")
else:
    print("The strings are not anagrams.")
```

---

### **13. Print Pascal's Triangle**
**Question**: Write a program to print Pascal's triangle for a given number of rows.  
```python
rows = 5
triangle = [[1]]
for i in range(1, rows):
    row = [1] + [triangle[i-1][j] + triangle[i-1][j+1] for j in range(len(triangle[i-1])-1)] + [1]
    triangle.append(row)
for row in triangle:
    print(row)
```

---

### **14. Find the Largest Element in a List**
**Question**: Write a program to find the largest element in a list.  
```python
numbers = [10, 20, 30, 40, 50]
print("Largest element:", max(numbers))
```

---

### **15. Generate a Diamond Pattern**
**Question**: Write a program to print a diamond pattern of stars for a given number of rows.  
```python
rows = 5
for i in range(1, rows + 1):
    print(" " * (rows - i) + "*" * (2 * i - 1))
for i in range(rows - 1, 0, -1):
    print(" " * (rows - i) + "*" * (2 * i - 1))
```

---

### **16. Find All Prime Numbers in a Range**
**Question**: Write a program to find all prime numbers between two given numbers.  
```python
start, end = 10, 50
primes = [num for num in range(start, end + 1) if all(num % i != 0 for i in range(2, int(num**0.5) + 1))]
print("Prime numbers:", primes)
```

---

### **17. Count Words in a String**
**Question**: Write a program to count the number of words in a string.  
```python
string = "Python is amazing"
words = string.split()
print("Number of words:", len(words))
```

---

### **18. Find the Second Largest Number in a List**
**Question**: Write a program to find the second largest number in a list.  
```python
numbers = [10, 20, 30, 40, 50]
numbers.remove(max(numbers))
print("Second largest number:", max(numbers))
```

---

### **19. Check for Perfect Number**
**Question**: Write a program to check if a number is a perfect number.  
```python
num = 28
divisors = [i for i in range(1, num) if num % i == 0]
if sum(divisors) == num:
    print(f"{num} is a perfect number.")
else:
    print(f"{num} is not a perfect number.")
```

---

### **20. Print the ASCII Value of Characters**
**Question**: Write a program to print the ASCII value of each character in a string.  
```python
string = "Python"
ascii_values = {char: ord(char) for char in string}
print("ASCII values:", ascii_values)
```

---

### Next Steps:
You can use these problems for practice, exams, or assignments. Let me know if you have any doubts!!


------

From **File Handling**, **Exception Handling**, and **Regular Expressions** in Python.

---

### **1. File Handling in Python**
#### Key Concepts
- **File Modes**: `r`, `w`, `a`, `r+`, etc.
- **Reading Files**: `read()`, `readline()`, `readlines()`
- **Writing Files**: `write()`, `writelines()`
- Using **context managers** (`with` statement)

#### Example Code
```python
# Writing to a file
with open("example.txt", "w") as file:
    file.write("Hello, World!\n")
    file.write("This is a file handling example.")

# Reading from a file
with open("example.txt", "r") as file:
    content = file.read()
    print("File Content:")
    print(content)

# Appending to a file
with open("example.txt", "a") as file:
    file.write("\nAppending more data.")
```

---

### **2. Exception Handling**
#### Key Concepts
- **Try-Except Block**: Catch exceptions
- **Finally Block**: Execute cleanup code
- **Raise Exception**: Custom errors
- **Built-in Exceptions**: `ValueError`, `TypeError`, `FileNotFoundError`, etc.

#### Example Code
```python
# Basic try-except
try:
    num = int(input("Enter a number: "))
    print(f"The number is {num}")
except ValueError:
    print("Invalid input! Please enter a valid number.")

# File handling with exceptions
try:
    with open("non_existent_file.txt", "r") as file:
        data = file.read()
except FileNotFoundError as e:
    print(f"Error: {e}")
finally:
    print("Execution completed.")

# Raising an exception
def divide(a, b):
    if b == 0:
        raise ZeroDivisionError("Cannot divide by zero!")
    return a / b

try:
    result = divide(10, 0)
except ZeroDivisionError as e:
    print(e)
```

---

### **3. Regular Expressions**
#### Key Concepts
- **Matching Patterns**: `match()`, `search()`, `findall()`
- **Substitution**: `sub()`
- **Common Patterns**:
  - `\d`: Digits
  - `\w`: Alphanumeric
  - `\s`: Whitespace
  - `.`: Any character
  - `*`, `+`, `?`: Quantifiers
  - `^`, `$`: Anchors

#### Example Code
```python
import re

# Pattern matching
pattern = r"\b[A-Za-z]+\b"
text = "Regular expressions are powerful!"

# Find all words
words = re.findall(pattern, text)
print("Words:", words)

# Validating an email
email_pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
email = "example@example.com"
if re.match(email_pattern, email):
    print(f"{email} is a valid email.")
else:
    print(f"{email} is not a valid email.")

# Replacing text
text = "The color is red."
updated_text = re.sub(r"red", "blue", text)
print("Updated Text:", updated_text)
```

---

### **Combining Concepts**
#### Example: Log File Analysis
```python
import re

try:
    with open("logfile.txt", "r") as file:
        logs = file.readlines()
    
    error_pattern = r"ERROR: (.+)"
    errors = [re.search(error_pattern, log).group(1) for log in logs if "ERROR" in log]
    print("Errors Found:")
    print("\n".join(errors))
except FileNotFoundError:
    print("Log file not found.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
finally:
    print("Log analysis complete.")
```

---

### **Conclusion**
- File handling helps manage persistent storage.
- Exception handling ensures robust and error-resistant code.
- Regular expressions enable powerful text processing.
