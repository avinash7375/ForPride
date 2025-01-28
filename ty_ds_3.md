### Data Wrangling, Feature Engineering, and Scaling Techniques

---

#### **1. Data Wrangling Techniques**

Data wrangling involves preparing and transforming raw data into a format that is easier to analyze. Key techniques include:

---

##### **a) Reshaping Data**

- **Purpose**: Reshape data to adjust its structure for better analysis.
- **Methods**:
  - `melt()`: Converts wide-format data to long-format.
  - `pivot()`: Converts long-format data to wide-format.

**Example**:
```python
import pandas as pd

# Sample dataset
data = {'ID': [1, 2], 'Math': [85, 90], 'Science': [80, 95]}
df = pd.DataFrame(data)

# Melting
melted = pd.melt(df, id_vars=['ID'], var_name='Subject', value_name='Score')
print(melted)

# Pivoting
pivoted = melted.pivot(index='ID', columns='Subject', values='Score')
print(pivoted)
```

---

##### **b) Aggregating Data**

- **Purpose**: Summarize data using operations like sum, mean, or count.
- **Methods**:
  - `groupby()`: Group data by one or more columns.
  - Aggregation functions: `.mean()`, `.sum()`, `.count()`

**Example**:
```python
# Aggregation
grouped = melted.groupby('Subject')['Score'].mean()
print(grouped)
```

---

#### **2. Feature Engineering**

Feature engineering improves model performance by transforming raw data into meaningful features.

---

##### **a) Creating New Features**

- Combine existing columns or derive new metrics.
  
**Example**:
```python
# Adding a new feature
df['Total'] = df['Math'] + df['Science']
df['Average'] = df[['Math', 'Science']].mean(axis=1)
print(df)
```

---

##### **b) Handling Time-Series Data**

- Extract meaningful information like day, month, or year from datetime objects.

**Example**:
```python
# Time-series features
df_time = pd.DataFrame({'Date': pd.to_datetime(['2025-01-01', '2025-01-02'])})
df_time['Year'] = df_time['Date'].dt.year
df_time['Month'] = df_time['Date'].dt.month
print(df_time)
```

---

#### **3. Dummification**

Convert categorical variables into binary indicators.

**Example**:
```python
# Dummification
df_cat = pd.DataFrame({'City': ['Mumbai', 'Pune', 'Mumbai']})
df_dummies = pd.get_dummies(df_cat, columns=['City'], drop_first=True)
print(df_dummies)
```

---

#### **4. Feature Scaling**

Scaling ensures that all features contribute equally to the model by bringing them to a similar range.

---

##### **a) Standardization**

- Centers data to have a mean of 0 and a standard deviation of 1.
  
**Example**:
```python
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()
scaled = scaler.fit_transform(df[['Math', 'Science']])
print(scaled)
```

---

##### **b) Normalization**

- Scales data to a range between 0 and 1.

**Example**:
```python
from sklearn.preprocessing import MinMaxScaler

scaler = MinMaxScaler()
normalized = scaler.fit_transform(df[['Math', 'Science']])
print(normalized)
```

---