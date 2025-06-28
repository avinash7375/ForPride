Got it! Here's a refined set of **10 Python condition questions** using **only basic constructs** like `if`, `elif`, `else`, logical operators (`and`, `or`, `not`), and simple variables (no functions, lists, or built-in functions like `any()`/`all()`).

---

### ✅ **1. Basic `if` condition**

```python
x = 10

if x > 5:
    print("x is greater than 5")
```

**Question:**
What will be printed if `x = 3`? Try changing the condition to `x >= 10`.

---

### ✅ **2. `if-else` condition**

```python
x = 4

if x % 2 == 0:
    print("Even")
else:
    print("Odd")
```

**Question:**
What will be printed if `x = 7`?

---

### ✅ **3. Using `if`, `elif`, `else`**

```python
x = 0

if x > 0:
    print("Positive")
elif x < 0:
    print("Negative")
else:
    print("Zero")
```

**Question:**
Try this with values `x = -1`, `x = 5`, and `x = 0`. What changes?

---

### ✅ **4. Nested conditions**

```python
x = 8

if x > 5:
    if x < 10:
        print("x is between 6 and 9")
```

**Question:**
What happens if `x = 4`? Or `x = 11`?

---

### ✅ **5. Combine with `and`**

```python
x = 7

if x > 5 and x < 10:
    print("x is in range")
```

**Question:**
Change the condition to `x > 5 and x < 7`. What will be printed for `x = 7`?

---

### ✅ **6. Use of `or`**

```python
x = 3

if x < 0 or x > 10:
    print("x is out of range")
else:
    print("x is in range")
```

**Question:**
What will be printed for `x = 5`, `x = -1`, and `x = 11`?

---

### ✅ **7. Using `not`**

```python
x = 0

if not x:
    print("x is zero or False")
```

**Question:**
What values of `x` will make the condition true? Try `x = 1`, `x = -1`, `x = ""`.

---

### ✅ **8. Ternary (one-line if-else)**

```python
x = 18
result = "Adult" if x >= 18 else "Minor"
print(result)
```

**Question:**
Change the value of `x` to `16`. What will be printed? Rewrite this using regular `if-else`.

---

### ✅ **9. Chained comparison**

```python
x = 7

if 5 < x < 10:
    print("x is between 6 and 9")
```

**Question:**
Is this same as using `x > 5 and x < 10`? Try `x = 5`, `x = 10`.

---

### ✅ **10. Equality and inequality**

```python
x = 3
y = 4

if x != y:
    print("x and y are not equal")
```

**Question:**
What will happen if you change the condition to `x == y`? Try setting both to the same value.

---

Would you like me to provide **answers and explanations** for these now?
