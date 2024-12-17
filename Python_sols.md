Here are **Python problem-solving examples** related to **Control Structures** (if-else, loops, break/continue, etc.) that you can use to sharpen your skills.

---

## **1. Check if a Number is Positive, Negative, or Zero**

### **Problem:**  
Write a program to check whether a number entered by the user is positive, negative, or zero.

### **Solution:**
```python
# Input: User enters a number
num = float(input("Enter a number: "))

# Check the conditions using if-else
if num > 0:
    print("The number is Positive.")
elif num < 0:
    print("The number is Negative.")
else:
    print("The number is Zero.")
```

---

## **2. Find the Largest of Three Numbers**

### **Problem:**  
Write a program to find the largest of three numbers using nested if-else statements.

### **Solution:**
```python
# Input: User enters three numbers
a = float(input("Enter the first number: "))
b = float(input("Enter the second number: "))
c = float(input("Enter the third number: "))

# Check for the largest number
if a > b:
    if a > c:
        print(f"The largest number is: {a}")
    else:
        print(f"The largest number is: {c}")
else:
    if b > c:
        print(f"The largest number is: {b}")
    else:
        print(f"The largest number is: {c}")
```

---

## **3. Print Even Numbers in a Range**

### **Problem:**  
Print all even numbers between 1 and 50 using a **for loop**.

### **Solution:**
```python
# Loop through numbers from 1 to 50
print("Even numbers between 1 and 50 are:")
for num in range(1, 51):
    if num % 2 == 0:
        print(num, end=" ")
```

---

## **4. Sum of Digits of a Number**

### **Problem:**  
Write a program to calculate the sum of digits of a given number using a **while loop**.

### **Solution:**
```python
# Input: User enters a number
num = int(input("Enter a number: "))
sum_of_digits = 0

# While loop to calculate sum of digits
while num > 0:
    digit = num % 10
    sum_of_digits += digit
    num = num // 10

print(f"The sum of digits is: {sum_of_digits}")
```

---

## **5. Check for Prime Number**

### **Problem:**  
Write a program to check whether a number is prime or not using a **for loop**.

### **Solution:**
```python
# Input: User enters a number
num = int(input("Enter a number: "))

if num > 1:
    for i in range(2, int(num ** 0.5) + 1):  # Check up to square root of num
        if num % i == 0:
            print(f"{num} is not a prime number.")
            break
    else:
        print(f"{num} is a prime number.")
else:
    print(f"{num} is not a prime number.")
```

---

## **6. Generate Fibonacci Series (Using a Loop)**

### **Problem:**  
Write a program to generate the first `n` terms of the Fibonacci sequence.

### **Solution:**
```python
# Input: Number of terms
n = int(input("Enter the number of Fibonacci terms: "))

# Initialize first two terms
a, b = 0, 1
print("Fibonacci Series:")
for _ in range(n):
    print(a, end=" ")
    a, b = b, a + b
```

---

## **7. Reverse a Given Number**

### **Problem:**  
Write a program to reverse a number using a **while loop**.

### **Solution:**
```python
# Input: User enters a number
num = int(input("Enter a number: "))
reversed_num = 0

# While loop to reverse the number
while num > 0:
    digit = num % 10
    reversed_num = reversed_num * 10 + digit
    num = num // 10

print(f"Reversed Number: {reversed_num}")
```

---

## **8. Count Vowels in a String**

### **Problem:**  
Write a program to count the number of vowels in a given string.

### **Solution:**
```python
# Input: User enters a string
text = input("Enter a string: ")
vowels = "aeiouAEIOU"
count = 0

# Loop through the string to count vowels
for char in text:
    if char in vowels:
        count += 1

print(f"Number of vowels: {count}")
```

---

## **9. Print Multiplication Table**

### **Problem:**  
Write a program to print the multiplication table of a given number.

### **Solution:**
```python
# Input: Number for which table is to be printed
num = int(input("Enter a number: "))

# Print multiplication table using a loop
print(f"Multiplication Table for {num}:")
for i in range(1, 11):
    print(f"{num} x {i} = {num * i}")
```

---

## **10. Break and Continue Example**

### **Problem:**  
Write a program to print numbers from 1 to 20 but skip multiples of 3. Stop the loop if the number is greater than 15.

### **Solution:**
```python
# Loop from 1 to 20
for num in range(1, 21):
    if num % 3 == 0:
        continue  # Skip multiples of 3
    if num > 15:
        break  # Stop the loop if the number is greater than 15
    print(num, end=" ")
```

---

## **11. Check for Palindrome Number**

### **Problem:**  
Write a program to check if a number is a palindrome (reads the same backward and forward).

### **Solution:**
```python
# Input: User enters a number
num = input("Enter a number: ")

# Check if the number is the same when reversed
if num == num[::-1]:
    print(f"{num} is a palindrome.")
else:
    print(f"{num} is not a palindrome.")
```

---

## **12. Guess the Number Game**

### **Problem:**  
Write a program where the user guesses a random number generated by the computer.

### **Solution:**
```python
import random

# Random number between 1 and 100
target = random.randint(1, 100)
print("Guess the number (between 1 and 100):")

while True:
    guess = int(input("Enter your guess: "))
    if guess == target:
        print("Congratulations! You guessed the correct number.")
        break
    elif guess < target:
        print("Too low, try again.")
    else:
        print("Too high, try again.")
```

---

## Summary of Control Structures Used:
1. **If-else**: Conditional checks.  
2. **For loop**: Iterating over a range, string, or list.  
3. **While loop**: Executing code until a condition is false.  
4. **Break**: Exits a loop immediately.  
5. **Continue**: Skips the current iteration of the loop.  

These examples provide a strong foundation for mastering **control structures** in Python. Let me know if you'd like further clarification or additional examples! 🚀
