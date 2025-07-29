Absolutely, Prof. Avinash. Here's a **pure `matplotlib` version** of your in-depth tutorial — no Seaborn, no GeoPandas. All charts, from basic to advanced, are created using only **Matplotlib**, which gives you full control and helps you understand low-level plotting.

---

# 📊 Data Visualization & Analysis with Matplotlib Only

---

## ✅ 1. Graphs and Plotting

### Line Plot

```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y, label='Sine Wave', color='green')
plt.title("Line Plot Example")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.legend()
plt.grid(True)
plt.show()
```

### Scatter Plot

```python
import pandas as pd

df = pd.read_csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')
plt.scatter(df['total_bill'], df['tip'], c='blue', alpha=0.5)
plt.title("Total Bill vs Tip")
plt.xlabel("Total Bill")
plt.ylabel("Tip")
plt.grid(True)
plt.show()
```

---

## ✅ 2. Distribution Plot

### Histogram with KDE Approximation (Manual)

```python
from scipy.stats import gaussian_kde

data = df['total_bill']
plt.hist(data, bins=20, color='lightblue', alpha=0.7, edgecolor='black', density=True)

# KDE
kde = gaussian_kde(data)
x_vals = np.linspace(min(data), max(data), 200)
plt.plot(x_vals, kde(x_vals), color='red')

plt.title("Distribution of Total Bill with KDE")
plt.xlabel("Total Bill")
plt.ylabel("Density")
plt.grid(True)
plt.show()
```

---

## ✅ 3. Categorical Plot

### Boxplot by Day

```python
days = ['Thur', 'Fri', 'Sat', 'Sun']
data = [df[df['day'] == day]['total_bill'] for day in days]

plt.boxplot(data, labels=days)
plt.title("Total Bill by Day (Boxplot)")
plt.xlabel("Day")
plt.ylabel("Total Bill")
plt.grid(True)
plt.show()
```

### Bar Plot (Mean tip per gender)

```python
grouped = df.groupby('sex')['tip'].mean()

plt.bar(grouped.index, grouped.values, color=['purple', 'orange'])
plt.title("Average Tip by Gender")
plt.xlabel("Gender")
plt.ylabel("Average Tip")
plt.grid(True, axis='y')
plt.show()
```

---

## ✅ 4. Spatial Data (Using Matplotlib Only)

Matplotlib alone can't read shapefiles or geospatial data. But you can simulate with coordinates.

### Example: Plotting points on a map-like grid

```python
lat = np.random.uniform(10, 50, 100)
lon = np.random.uniform(-100, 100, 100)

plt.scatter(lon, lat, alpha=0.6, c='green')
plt.title("Mock Spatial Data (Latitude vs Longitude)")
plt.xlabel("Longitude")
plt.ylabel("Latitude")
plt.grid(True)
plt.show()
```

> For real-world spatial plotting with Matplotlib, use `Basemap` or `Cartopy` — but those are add-ons.

---

## ✅ 5. Data Cleaning (Pandas + Visual Feedback via Matplotlib)

```python
print("Missing values:\n", df.isnull().sum())

# Fill missing numeric with mean
df['total_bill'].fillna(df['total_bill'].mean(), inplace=True)

# Drop extreme outliers
df = df[df['tip'] < df['tip'].quantile(0.99)]

# Fix column names
df.rename(columns={'total_bill': 'TotalBill'}, inplace=True)

# Confirm visually
plt.hist(df['TotalBill'], bins=20, color='gray')
plt.title("Cleaned TotalBill Histogram")
plt.show()
```

---

## ✅ 6. Univariate & Bivariate Analysis

### Univariate Histogram

```python
plt.hist(df['tip'], bins=20, color='coral', edgecolor='black')
plt.title("Histogram of Tips")
plt.xlabel("Tip Amount")
plt.ylabel("Frequency")
plt.grid(True)
plt.show()
```

### Bivariate Scatter (Numerical vs Numerical)

```python
plt.scatter(df['TotalBill'], df['tip'], alpha=0.6, c='darkblue')
plt.title("TotalBill vs Tip")
plt.xlabel("Total Bill")
plt.ylabel("Tip")
plt.grid(True)
plt.show()
```

### Bivariate Boxplot (Categorical vs Numerical)

```python
days = sorted(df['day'].unique())
data = [df[df['day'] == day]['tip'] for day in days]

plt.boxplot(data, labels=days)
plt.title("Tip by Day (Boxplot)")
plt.xlabel("Day")
plt.ylabel("Tip")
plt.grid(True)
plt.show()
```

---

## ✅ Bonus: Correlation Heatmap (Matplotlib Only)

```python
import numpy as np

corr = df.corr(numeric_only=True)
fig, ax = plt.subplots()
cax = ax.matshow(corr, cmap='coolwarm')

plt.xticks(range(len(corr.columns)), corr.columns, rotation=45)
plt.yticks(range(len(corr.columns)), corr.columns)

fig.colorbar(cax)
plt.title("Correlation Matrix", pad=20)
plt.show()
```

---

## 🧠 Summary Table (Matplotlib Version)

| Task                  | Plot Type            | Command/Tool                 |
| --------------------- | -------------------- | ---------------------------- |
| Univariate Analysis   | `hist`, `boxplot`    | `plt.hist`, `plt.boxplot`    |
| Bivariate Analysis    | `scatter`, `boxplot` | `plt.scatter`, `plt.boxplot` |
| Categorical Analysis  | `bar`, `boxplot`     | `plt.bar`, `plt.boxplot`     |
| Spatial Data (Basic)  | `scatter`            | `plt.scatter (lat/lon)`      |
| Cleaning Visual Check | `hist`, `scatter`    | `plt.hist`, `plt.scatter`    |

---

Would you like this as:

* 📁 A ready-to-run `.ipynb` Jupyter Notebook?
* 💡 A tutorial script with comments (`.py`)?
* 🎯 Practice questions + assignments based only on Matplotlib?

Let me know and I’ll prepare it accordingly.
