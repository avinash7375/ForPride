Here's a full guide on using **pandas** for data manipulation while only relying on **NumPy** (without additional libraries like Matplotlib or Seaborn).

---

## **1. Importing Pandas and NumPy**
```python
import pandas as pd
import numpy as np
```

---

## **2. Series (One-Dimensional Data)**
A **Series** is like a column in a table or an array with labels.

### **Creating a Series**
```python
data = np.array([10, 20, 30, 40])
s = pd.Series(data)
print(s)
```

### **Series with Custom Index**
```python
s = pd.Series(data, index=['a', 'b', 'c', 'd'])
print(s)
```

### **Accessing Elements**
```python
print(s['b'])  # Access by index
print(s[1])    # Access by position
```

---

## **3. DataFrame (Two-Dimensional Data)**
A **DataFrame** is like a table (a collection of Series).

### **Creating a DataFrame from a Dictionary**
```python
data = {
    'A': np.array([1, 2, 3]),
    'B': np.array([4, 5, 6])
}
df = pd.DataFrame(data)
print(df)
```

### **Creating a DataFrame with Custom Index**
```python
df = pd.DataFrame(data, index=['x', 'y', 'z'])
print(df)
```

---

## **4. Analyzing Data (Basic Stats & Info)**
### **Basic Information**
```python
print(df.info())  # Summary of dataset
print(df.describe())  # Statistical summary
print(df.head(2))  # First 2 rows
print(df.tail(2))  # Last 2 rows
```

### **Finding Null Values**
```python
print(df.isnull().sum())  # Count of missing values
```

### **Adding a New Column**
```python
df['C'] = np.array([7, 8, 9])
print(df)
```

---

## **5. Data Cleaning (Handling Missing & Wrong Data)**
### **Filling Missing Data**
```python
df.fillna(0, inplace=True)  # Replace NaN with 0
```

### **Dropping Rows with Missing Data**
```python
df.dropna(inplace=True)  # Remove rows with NaN
```

### **Replacing Wrong Values**
```python
df.replace(999, np.nan, inplace=True)  # Replace 999 with NaN
```

### **Changing Data Type**
```python
df['A'] = df['A'].astype(float)  # Convert to float
```

---

## **6. Handling Wrong Format & Removing Duplicates**
### **Fixing Wrong Data**
```python
df.loc[df['A'] < 0, 'A'] = np.nan  # Replace negative values with NaN
```

### **Removing Duplicates**
```python
df.drop_duplicates(inplace=True)
```

---

## **7. Correlations (Relationships between Columns)**
```python
corr_matrix = df.corr()
print(corr_matrix)
```

---

## **8. Reading CSV & JSON Files**
### **Read CSV**
```python
df = pd.read_csv('data.csv')
print(df.head())
```

### **Read JSON**
```python
df = pd.read_json('data.json')
print(df.head())
```

---

This guide covers the core **pandas** functionalities using only **NumPy**. Let me know if you need any specific examples! 🚀
