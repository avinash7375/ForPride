### Pandas Tutorial

---

#### **1. DataFrames**

A DataFrame is a two-dimensional labeled data structure in Pandas.

```python
import pandas as pd

# Creating a DataFrame
data = {
    "Name": ["Alice", "Bob", "Charlie"],
    "Age": [25, 30, 35],
    "City": ["New York", "Los Angeles", "Chicago"]
}
df = pd.DataFrame(data)

print("DataFrame:\n", df)

# Accessing columns
print("\nAccess 'Name' column:\n", df["Name"])

# Adding a new column
df["Salary"] = [50000, 60000, 70000]
print("\nDataFrame with Salary column:\n", df)
```

---

#### **2. Analyzing and Cleaning Data**

- **Basic analysis**:

```python
# Display first few rows
print("\nHead:\n", df.head())

# Summary statistics
print("\nDescribe:\n", df.describe())

# Check for missing values
print("\nMissing values:\n", df.isnull().sum())
```

- **Cleaning missing data**:

```python
# Fill missing values
df["Age"].fillna(df["Age"].mean(), inplace=True)

# Drop rows with missing data
df.dropna(inplace=True)
```

---

#### **3. Plotting and Correlations**

- **Basic plotting**:

```python
import matplotlib.pyplot as plt

# Line plot
df.plot(x="Name", y="Age", kind="line", title="Age by Name")
plt.show()
```

- **Finding correlations**:

```python
# Correlation matrix
correlation = df.corr()
print("\nCorrelation matrix:\n", correlation)
```

---

#### **4. Reading CSV and JSON Files**

- **Reading a CSV file**:

```python
df_csv = pd.read_csv("data.csv")
print("\nCSV DataFrame:\n", df_csv.head())
```

- **Reading a JSON file**:

```python
df_json = pd.read_json("data.json")
print("\nJSON DataFrame:\n", df_json.head())
```

- **Writing files**:

```python
# Save to a CSV file
df.to_csv("output.csv", index=False)

# Save to a JSON file
df.to_json("output.json", orient="records")
```

---

#### **5. Cleaning Wrong, Format & Wrong Data**

- **Replacing wrong data**:

```python
# Replace incorrect city name
df["City"].replace("New York", "NYC", inplace=True)
```

- **Correcting data formats**:

```python
# Convert 'Age' to integers
df["Age"] = pd.to_numeric(df["Age"], errors="coerce")
```

- **Handling invalid data**:

```python
# Remove rows with invalid ages
df = df[df["Age"] > 0]
```

---

#### **6. Removing Duplications**

- **Identifying duplicates**:

```python
print("\nDuplicated rows:\n", df.duplicated())
```

- **Removing duplicates**:

```python
# Drop duplicate rows
df.drop_duplicates(inplace=True)
print("\nDataFrame after removing duplicates:\n", df)
```

---
