### 1. **Balanced Parentheses**

**Problem**:
Given a string containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['`, and `']'`, determine if the input string is valid.
A string is valid if:

* Open brackets are closed by the same type of brackets.
* Open brackets are closed in the correct order.

**Example**:

```cpp
Input: "({[]})"
Output: true
```

---

### 2. **Next Greater Element**

**Problem**:
Given an array of integers, print the next greater element for every element. The next greater element of a number `x` is the first greater number to the right of `x` in the array. If no such number exists, print `-1`.

**Example**:

```cpp
Input: [4, 5, 2, 25]
Output: 5 25 25 -1
```

---

### 3. **Implement a Stack using Two Queues**

**Problem**:
Create a class `MyStack` that implements a stack using two queues (`std::queue`), supporting typical stack operations: `push`, `pop`, `top`, and `empty`.

---

### 4. **Stock Span Problem**

**Problem**:
The **stock span problem** is a financial problem where we have a series of `n` daily price quotes for a stock. For each day, compute the span of that stock’s price, defined as the number of consecutive days before the current day where the price was less than or equal to the current day’s price.

**Example**:

```cpp
Input: [100, 80, 60, 70, 60, 75, 85]
Output: 1 1 1 2 1 4 6
```
