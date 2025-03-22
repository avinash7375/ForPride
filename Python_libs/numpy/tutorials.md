Here’s a detailed tutorial covering all the topics related to NumPy arrays.

---

# **NumPy Arrays Tutorial**

## **1. Creating an Array**
NumPy arrays are created using the `numpy.array()` function. 

### **Example 1: Creating a 1D Array**
```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```
**Output:**
```
[1 2 3 4 5]
```

### **Example 2: Creating a 2D Array**
```python
arr2D = np.array([[1, 2, 3], [4, 5, 6]])
print(arr2D)
```
**Output:**
```
[[1 2 3]
 [4 5 6]]
```

### **Example 3: Creating an Array with a Specific Data Type**
```python
arr_float = np.array([1, 2, 3, 4], dtype='float')
print(arr_float)
```
**Output:**
```
[1. 2. 3. 4.]
```

---

## **2. Array Slicing**
Slicing allows you to extract specific elements from an array.

### **Example 1: Slicing a 1D Array**
```python
arr = np.array([10, 20, 30, 40, 50, 60])
print(arr[1:4])  # Extract elements from index 1 to 3
```
**Output:**
```
[20 30 40]
```

### **Example 2: Slicing a 2D Array**
```python
arr2D = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(arr2D[0:2, 1:3])  # Extract rows 0-1 and columns 1-2
```
**Output:**
```
[[2 3]
 [5 6]]
```

---

## **3. Array Copy vs View**
- **Copy** creates a new array, modifying the original won’t affect it.
- **View** is a reference to the original data, modifying it affects the original array.

### **Example: Copy**
```python
arr = np.array([1, 2, 3, 4])
copy_arr = arr.copy()
copy_arr[0] = 99
print(arr)       # Original remains unchanged
print(copy_arr)  # Copy is modified
```

**Output:**
```
[1 2 3 4]
[99  2  3  4]
```

### **Example: View**
```python
arr = np.array([1, 2, 3, 4])
view_arr = arr.view()
view_arr[0] = 99
print(arr)       # Original is changed
print(view_arr)  # View reflects changes
```

**Output:**
```
[99  2  3  4]
[99  2  3  4]
```

---

## **4. Array Reshape**
Changing the shape of an array without changing its data.

### **Example 1: Reshape a 1D Array to 2D**
```python
arr = np.array([1, 2, 3, 4, 5, 6])
reshaped = arr.reshape(2, 3)
print(reshaped)
```
**Output:**
```
[[1 2 3]
 [4 5 6]]
```

---

## **5. Array Iterating**
Looping through array elements.

### **Example 1: Iterating a 1D Array**
```python
arr = np.array([10, 20, 30])
for x in arr:
    print(x)
```
**Output:**
```
10
20
30
```

### **Example 2: Iterating a 2D Array**
```python
arr2D = np.array([[1, 2, 3], [4, 5, 6]])
for row in arr2D:
    for element in row:
        print(element, end=" ")
```
**Output:**
```
1 2 3 4 5 6
```

---

## **6. Array Join**
Joining two arrays using `concatenate()`.

### **Example: Joining Two 1D Arrays**
```python
arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
joined = np.concatenate((arr1, arr2))
print(joined)
```
**Output:**
```
[1 2 3 4 5 6]
```

---

## **7. Array Split**
Splitting an array into multiple smaller arrays.

### **Example: Splitting a 1D Array**
```python
arr = np.array([10, 20, 30, 40, 50, 60])
split_arr = np.array_split(arr, 3)
print(split_arr)
```
**Output:**
```
[array([10, 20]), array([30, 40]), array([50, 60])]
```

---

## **8. Array Search**
Finding elements in an array using `where()`.

### **Example: Find Indices of Elements Equal to 5**
```python
arr = np.array([1, 2, 3, 4, 5, 5, 6])
indices = np.where(arr == 5)
print(indices)
```
**Output:**
```
(array([4, 5]),)
```

---

## **9. Array Sort**
Sorting arrays using `sort()`.

### **Example: Sorting a 1D Array**
```python
arr = np.array([30, 10, 50, 20])
sorted_arr = np.sort(arr)
print(sorted_arr)
```
**Output:**
```
[10 20 30 50]
```

---

## **10. NumPy Functions**
NumPy provides several useful functions.

### **Example 1: Mean, Median, and Standard Deviation**
```python
arr = np.array([10, 20, 30, 40])
print(np.mean(arr))   # 25.0
print(np.median(arr)) # 25.0
print(np.std(arr))    # Standard deviation
```

### **Example 2: Finding Maximum and Minimum**
```python
arr = np.array([3, 6, 9, 2, 8])
print(np.max(arr))  # 9
print(np.min(arr))  # 2
```

---

## **11. Array Filter**
Filtering elements based on conditions.

### **Example: Filtering Even Numbers**
```python
arr = np.array([1, 2, 3, 4, 5, 6])
filtered = arr[arr % 2 == 0]
print(filtered)
```
**Output:**
```
[2 4 6]
```

---

## **Final Revision**
Here’s a summary of what we covered:
1. Creating NumPy arrays.
2. Slicing arrays.
3. Copy vs. View.
4. Reshaping arrays.
5. Iterating through arrays.
6. Joining arrays.
7. Splitting arrays.
8. Searching in arrays.
9. Sorting arrays.
10. Useful NumPy functions.
11. Filtering arrays.

Would you like me to add more advanced topics like broadcasting, fancy indexing, or matrix operations? 🚀
