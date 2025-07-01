Here are **10 mathematical problems** involving **Python loops**, complete with **solutions**. These problems are great for building logic and understanding loop-based computation.

---

### **1. Sum of First N Natural Numbers**

**Problem**: Write a program to find the sum of the first `n` natural numbers.

```python
n = 10
total = 0
for i in range(1, n + 1):
    total += i
print("Sum:", total)  # Output: 55
```

---

### **2. Factorial of a Number**

**Problem**: Write a program to calculate the factorial of a given number `n`.

```python
n = 5
fact = 1
for i in range(1, n + 1):
    fact *= i
print("Factorial:", fact)  # Output: 120
```

---

### **3. Check Prime Number**

**Problem**: Check whether a number is prime.

```python
num = 29
is_prime = True
for i in range(2, int(num ** 0.5) + 1):
    if num % i == 0:
        is_prime = False
        break
print("Prime?" , is_prime)  # Output: True
```

---

### **4. Multiplication Table**

**Problem**: Print the multiplication table of a given number.

```python
n = 7
for i in range(1, 11):
    print(f"{n} x {i} = {n*i}")
```

---

### **5. Sum of Digits**

**Problem**: Find the sum of digits of a number.

```python
num = 1234
sum_digits = 0
while num > 0:
    sum_digits += num % 10
    num //= 10
print("Sum of digits:", sum_digits)  # Output: 10
```

---

### **6. Print Fibonacci Series**

**Problem**: Print the first `n` numbers in the Fibonacci sequence.

```python
n = 10
a, b = 0, 1
for _ in range(n):
    print(a, end=' ')
    a, b = b, a + b
# Output: 0 1 1 2 3 5 8 13 21 34
```

---

### **7. Reverse a Number**

**Problem**: Reverse the digits of an integer.

```python
num = 12345
rev = 0
while num > 0:
    rev = rev * 10 + num % 10
    num //= 10
print("Reversed:", rev)  # Output: 54321
```

---

### **8. Armstrong Number**

**Problem**: Check if a number is an Armstrong number (like 153 → 1³ + 5³ + 3³ = 153).

```python
num = 153
n = num
order = len(str(num))
result = 0
while n > 0:
    digit = n % 10
    result += digit ** order
    n //= 10
print("Armstrong?" , result == num)  # Output: True
```

---

### **9. GCD of Two Numbers**

**Problem**: Find the Greatest Common Divisor (GCD) using loops.

```python
a, b = 48, 18
while b:
    a, b = b, a % b
print("GCD:", a)  # Output: 6
```

---

### **10. Print All Prime Numbers in a Range**

**Problem**: Print all prime numbers between 10 and 50.

```python
for num in range(10, 51):
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            break
    else:
        print(num, end=' ')
# Output: 11 13 17 19 23 29 31 37 41 43 47
```

---

Would you like me to create these as **exercises with blank code** or turn them into a **quiz format** next?
