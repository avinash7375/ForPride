## 📘 Python Full Tutorial with 5 Examples per Concept

---

## 🔰 Chapter 1: Introduction to Python

### ✅ What is Python?

* High-level, interpreted language
* Great for beginners and professionals
* Used in web, data science, AI, automation, etc.

### ✅ First Python Program

```python
print("Hello, World!")
```

---

## 🧮 Chapter 2: Variables and Data Types

### ✅ Concept

* Variables store data
* Data types: `int`, `float`, `str`, `bool`

### ✅ Examples

```python
# 1. Integer
a = 10
print(a)

# 2. Float
pi = 3.14
print(pi)

# 3. String
name = "Alice"
print(name)

# 4. Boolean
is_happy = True
print(is_happy)

# 5. Multiple assignments
x, y, z = 1, 2, 3
print(x, y, z)
```

---

## 🔢 Chapter 3: Operators

### ✅ Concept

* Arithmetic: `+`, `-`, `*`, `/`, `%`, `**`, `//`
* Comparison: `==`, `!=`, `<`, `>`, `<=`, `>=`
* Logical: `and`, `or`, `not`

### ✅ Examples

```python
# 1. Arithmetic
print(5 + 3)

# 2. Comparison
print(10 > 3)

# 3. Logical
print(True and False)

# 4. Modulus
print(10 % 3)

# 5. Exponentiation
print(2 ** 3)
```

---

## 📐 Chapter 4: Conditional Statements

### ✅ Concept

* `if`, `elif`, `else`

### ✅ Examples

```python
# 1. Basic if
x = 10
if x > 5:
    print("Greater")

# 2. if-else
y = 3
if y % 2 == 0:
    print("Even")
else:
    print("Odd")

# 3. elif chain
z = 0
if z > 0:
    print("Positive")
elif z < 0:
    print("Negative")
else:
    print("Zero")

# 4. Nested if
age = 18
if age >= 18:
    if age < 60:
        print("Adult")
    else:
        print("Senior")

# 5. Ternary
a = 10
b = 20
print("A is greater" if a > b else "B is greater")
```

---

## 🔁 Chapter 5: Loops (for, while)

### ✅ Concept

* `for` loops
* `while` loops
* `break`, `continue`

### ✅ Examples

```python
# 1. For loop
for i in range(5):
    print(i)

# 2. While loop
i = 0
while i < 5:
    print(i)
    i += 1

# 3. Break
for i in range(10):
    if i == 5:
        break
    print(i)

# 4. Continue
for i in range(5):
    if i == 2:
        continue
    print(i)

# 5. Loop over list
names = ["Alice", "Bob", "Eve"]
for name in names:
    print(name)
```

---

## 🧰 Chapter 6: Functions

### ✅ Concept

* Defined using `def`
* Can take parameters
* Return values

### ✅ Examples

```python
# 1. Basic function
def greet():
    print("Hello!")
greet()

# 2. Function with parameter
def square(x):
    print(x ** 2)
square(4)

# 3. Function with return
def add(a, b):
    return a + b
print(add(3, 5))

# 4. Default parameter
def welcome(name="Guest"):
    print("Welcome", name)
welcome()
welcome("Alice")

# 5. Multiple returns
def math_ops(a, b):
    return a + b, a * b
s, p = math_ops(2, 3)
print(s, p)
```

---

## 🗃️ Chapter 7: Lists

### ✅ Concept

* Mutable sequences
* Use `[ ]`

### ✅ Examples

```python
# 1. Create list
fruits = ["apple", "banana", "cherry"]
print(fruits)

# 2. Access elements
print(fruits[1])

# 3. Modify element
fruits[0] = "mango"
print(fruits)

# 4. Append and remove
fruits.append("orange")
fruits.remove("banana")
print(fruits)

# 5. Loop through list
for f in fruits:
    print(f)
```

---

## 🔤 Chapter 8: Strings

### ✅ Concept

* Immutable
* Defined using `" "` or `' '`

### ✅ Examples

```python
# 1. Basic string
name = "Python"
print(name)

# 2. Slicing
print(name[0:3])

# 3. Length
print(len(name))

# 4. Upper/lower
print(name.upper())
print(name.lower())

# 5. Find and replace
print(name.find("t"))
print(name.replace("Py", "My"))
```

---

## 🧱 Chapter 9: Tuples and Sets

### ✅ Tuples (Immutable)

```python
# 1. Create tuple
t = (1, 2, 3)
print(t)

# 2. Access
print(t[1])

# 3. Length
print(len(t))

# 4. Concatenate
t2 = t + (4, 5)
print(t2)

# 5. Count
print(t.count(2))
```

### ✅ Sets (No duplicates)

```python
# 1. Create set
s = {1, 2, 3, 3}
print(s)

# 2. Add element
s.add(4)

# 3. Remove element
s.remove(2)

# 4. Union
s2 = {3, 5}
print(s | s2)

# 5. Intersection
print(s & s2)
```

---

## 🧾 Chapter 10: Dictionaries

### ✅ Concept

* Key-value pairs

### ✅ Examples

```python
# 1. Create dictionary
d = {"name": "Alice", "age": 25}
print(d)

# 2. Access values
print(d["name"])

# 3. Add/update
d["city"] = "New York"
d["age"] = 26

# 4. Loop through dict
for key, value in d.items():
    print(key, value)

# 5. Check key
print("name" in d)
```

---

## ⚠️ Chapter 11: Exception Handling

### ✅ Concept

* `try`, `except`, `finally`

### ✅ Examples

```python
# 1. ZeroDivisionError
try:
    print(5 / 0)
except ZeroDivisionError:
    print("Can't divide by zero")

# 2. ValueError
try:
    num = int("abc")
except ValueError:
    print("Invalid input")

# 3. Multiple exceptions
try:
    a = 1 / 0
except (ValueError, ZeroDivisionError):
    print("Handled")

# 4. finally block
try:
    print("Try block")
finally:
    print("Finally runs")

# 5. Custom exception
def check_age(age):
    if age < 0:
        raise ValueError("Negative age")
check_age(10)
```

---

## 🧱 Chapter 12: Object-Oriented Programming (OOP)

### ✅ Concept

* Classes and Objects
* Methods and Attributes

### ✅ Examples

```python
# 1. Define class
class Person:
    pass

# 2. Init and attributes
class Person:
    def __init__(self, name):
        self.name = name

p = Person("Alice")
print(p.name)

# 3. Method
class Dog:
    def bark(self):
        print("Woof!")

d = Dog()
d.bark()

# 4. Inheritance
class Animal:
    def speak(self):
        print("Animal speaks")

class Cat(Animal):
    def speak(self):
        print("Meow")

c = Cat()
c.speak()

# 5. Polymorphism
def speak_twice(animal):
    animal.speak()
    animal.speak()

speak_twice(c)
```
