Here are individual Python programs for each of the topics you mentioned:

### 1. **Program to Check Armstrong Number**
```python
# Armstrong Number Program
def is_armstrong(number):
    num_str = str(number)
    power = len(num_str)
    result = sum(int(digit) ** power for digit in num_str)
    return result == number

# Test
num = int(input("Enter a number: "))
if is_armstrong(num):
    print(f"{num} is an Armstrong number.")
else:
    print(f"{num} is not an Armstrong number.")
```

---

### 2. **Program to Check Palindrome**
```python
# Palindrome Program
def is_palindrome(string):
    return string == string[::-1]

# Test
text = input("Enter a string or number: ")
if is_palindrome(text):
    print(f"'{text}' is a palindrome.")
else:
    print(f"'{text}' is not a palindrome.")
```

---

### 3. **Simple Calculator Program**
```python
# Calculator Program
def calculator(a, b, operation):
    if operation == '+':
        return a + b
    elif operation == '-':
        return a - b
    elif operation == '*':
        return a * b
    elif operation == '/':
        if b != 0:
            return a / b
        else:
            return "Division by zero is not allowed."
    else:
        return "Invalid operation."

# Test
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
operation = input("Enter operation (+, -, *, /): ")
result = calculator(a, b, operation)
print(f"Result: {result}")
```

---

### 4. **Program to Find GCD**
```python
# GCD Program
def find_gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# Test
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
print(f"GCD of {a} and {b} is {find_gcd(a, b)}.")
```

---

### 5. **Program to Check Prime Number**
```python
# Prime Number Program
def is_prime(number):
    if number <= 1:
        return False
    for i in range(2, int(number ** 0.5) + 1):
        if number % i == 0:
            return False
    return True

# Test
num = int(input("Enter a number: "))
if is_prime(num):
    print(f"{num} is a prime number.")
else:
    print(f"{num} is not a prime number.")
```

---

### 6. **Program to Find Factorial**
```python
# Factorial Program
def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)

# Test
num = int(input("Enter a number: "))
if num < 0:
    print("Factorial is not defined for negative numbers.")
else:
    print(f"Factorial of {num} is {factorial(num)}.")
```

Let me know if you need further assistance with these programs!
