### NumPy Tutorial

---

#### **1. Creating Arrays**

NumPy arrays are created using the `numpy.array()` function.

```python
import numpy as np

# Creating 1D array
arr1 = np.array([1, 2, 3])
print("1D Array:", arr1)

# Creating 2D array
arr2 = np.array([[1, 2], [3, 4]])
print("2D Array:\n", arr2)

# Creating arrays with default values
zeros = np.zeros((2, 3))  # 2x3 array of zeros
ones = np.ones((3, 2))    # 3x2 array of ones
randoms = np.random.random((2, 2))  # Random numbers in a 2x2 array

print("Zeros Array:\n", zeros)
print("Ones Array:\n", ones)
print("Random Array:\n", randoms)
```

---

#### **2. Environment Setup**

- Install NumPy:  
  ```bash
  pip install numpy
  ```
- Verify installation:
  ```python
  import numpy as np
  print(np.__version__)
  ```

---

#### **3. Dimensions and Indexing**

- **Dimensions**: NumPy arrays can have multiple dimensions. Use `.ndim` to check the number of dimensions.

```python
arr = np.array([[1, 2, 3], [4, 5, 6]])
print("Array:\n", arr)
print("Number of dimensions:", arr.ndim)
```

- **Indexing**: Access elements using indices.

```python
print("Element at [0, 1]:", arr[0, 1])  # Second element of the first row
```

---

#### **4. Slicing, Reshaping, and Iterating**

- **Slicing**: Extract portions of the array.

```python
print("First row:", arr[0, :])  # All columns of the first row
print("First two columns:", arr[:, :2])  # First two columns of all rows
```

- **Reshaping**: Change the shape of an array.

```python
reshaped = arr.reshape(3, 2)
print("Reshaped Array:\n", reshaped)
```

- **Iterating**: Loop through elements.

```python
for row in arr:
    print("Row:", row)
```

---

#### **5. Joining and Splitting Arrays**

- **Joining**: Combine arrays.

```python
arr1 = np.array([1, 2])
arr2 = np.array([3, 4])
joined = np.concatenate((arr1, arr2))
print("Joined Array:", joined)
```

- **Splitting**: Split arrays.

```python
split = np.array_split(arr, 2)
print("Split Arrays:", split)
```

---

#### **6. Copy vs. View**

- **Copy**: Creates a new independent array.

```python
original = np.array([1, 2, 3])
copy = original.copy()
copy[0] = 100
print("Original:", original)
print("Copy:", copy)
```

- **View**: A view reflects changes in the original array.

```python
view = original.view()
view[0] = 200
print("Original after view modification:", original)
```

---

#### **7. Array Search**

Search for specific values or indices using `numpy.where()`.

```python
arr = np.array([10, 20, 30, 40, 50])
indices = np.where(arr > 30)
print("Indices where values are greater than 30:", indices)
```

---
