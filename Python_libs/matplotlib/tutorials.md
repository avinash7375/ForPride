Graphs and plottings<br>
Distribution plot<br>
Categorical Plot<br>
Spatial data<br>
Data  cleaning<br>
Univariate and Bivariate Analysis<br>

--
Absolutely, Prof. Avinash. Here's an **in-depth tutorial** covering each topic with detailed explanations, use cases, and example code. This will give you both conceptual clarity and practical skills for real-world data analysis.

---

# 🧠 In-Depth Python Tutorial on Data Visualization & Analysis

---

## 📊 1. Graphs and Plotting

### ✅ **Overview**
Graphical plotting is essential for EDA (Exploratory Data Analysis), helping you spot trends, patterns, outliers, and correlations.

### ✅ **Key Libraries**
- **Matplotlib**: Low-level, highly customizable.
- **Seaborn**: Built on Matplotlib, provides high-level API for statistical plotting.

### ✅ **Examples**

#### a) Line Plot

```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y, label='Sine Wave')
plt.title("Line Plot Example")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.legend()
plt.grid(True)
plt.show()
```

#### b) Scatter Plot (for correlation)

```python
import seaborn as sns
import pandas as pd

df = sns.load_dataset('tips')
sns.scatterplot(x='total_bill', y='tip', hue='sex', data=df)
plt.title("Total Bill vs Tip")
plt.show()
```

---

## 📈 2. Distribution Plot

### ✅ **Purpose**
Shows the spread of a single variable. Ideal for understanding skewness, kurtosis, modality.

### ✅ **Common Plot Types**
- Histogram
- KDE (Kernel Density Estimation)
- Rug plot

```python
sns.histplot(df['total_bill'], kde=True, bins=20, color='skyblue')
plt.title("Distribution of Total Bill")
plt.show()
```

---

## 🧃 3. Categorical Plot

### ✅ **Use Case**
Used for comparing values across categorical groups (e.g., gender, region, class).

### ✅ **Common Plots**
- **Boxplot**: Shows median, IQR, and outliers.
- **Violin Plot**: Adds distribution shape.
- **Bar Plot**: Aggregated summaries.
- **Strip & Swarm Plot**: Raw data points over categories.

```python
# Boxplot
sns.boxplot(x='day', y='total_bill', data=df, palette='Set3')
plt.title("Boxplot of Total Bill by Day")
plt.show()
```

```python
# Violin Plot
sns.violinplot(x='day', y='tip', data=df, hue='sex', split=True)
plt.title("Violin Plot of Tips by Day and Gender")
plt.show()
```

---

## 🌍 4. Spatial Data

### ✅ **Overview**
Spatial data (GeoData) includes coordinates (latitude/longitude), shapes (polygons), and projections. We use **GeoPandas**, which extends Pandas to handle spatial geometries.

```python
import geopandas as gpd

world = gpd.read_file(gpd.datasets.get_path('naturalearth_lowres'))

# Plotting with GeoPandas
world.plot(column='pop_est', cmap='viridis', legend=True, figsize=(12, 6))
plt.title("World Population Estimate")
plt.show()
```

### ✅ **Join Tabular and Spatial Data**
```python
# Suppose you have tabular GDP data keyed by 'iso_a3'
gdp_data = pd.read_csv("gdp.csv")  # with country code
merged = world.merge(gdp_data, on='iso_a3')
merged.plot(column='GDP', cmap='coolwarm', legend=True)
```

---

## 🧹 5. Data Cleaning

### ✅ **Why Important?**
Raw data is often inconsistent, incomplete, or messy. Cleaning ensures accuracy and reliability.

### ✅ **Techniques**

```python
# Missing values
print(df.isnull().sum())

# Fill missing numerical with mean
df['total_bill'].fillna(df['total_bill'].mean(), inplace=True)

# Remove outliers
df = df[df['tip'] < df['tip'].quantile(0.99)]

# Standardize formats
df['date'] = pd.to_datetime(df['date'])

# Rename columns
df.rename(columns={'total_bill': 'TotalBill'}, inplace=True)
```

---

## 🔎 6. Univariate & Bivariate Analysis

### ✅ **Univariate**
Analysis of a single variable. Focuses on frequency, central tendency, dispersion.

```python
sns.histplot(df['tip'], kde=True)
plt.title("Univariate Analysis of Tips")
plt.show()
```

```python
print(df['day'].value_counts())
```

### ✅ **Bivariate**
Analyzes relationships between two variables. Helps understand correlation, causality.

```python
# Numerical vs Numerical
sns.scatterplot(x='total_bill', y='tip', data=df)
plt.title("Total Bill vs Tip")
plt.show()

# Categorical vs Numerical
sns.boxplot(x='day', y='total_bill', data=df)
plt.title("Total Bill by Day")
plt.show()
```

---

## 📌 Bonus: Pairplot and Heatmap

```python
# Correlation Heatmap
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap='coolwarm')
plt.title("Correlation Matrix")
plt.show()

# Pairplot for multi-variable insight
sns.pairplot(df, hue='sex')
plt.show()
```

---

## 🧠 Summary Table

| Task                  | Plot Type            | Library      |
|-----------------------|----------------------|--------------|
| Univariate Analysis   | Histplot, Boxplot    | Seaborn      |
| Bivariate Analysis    | Scatter, Box, Violin | Seaborn      |
| Categorical Analysis  | Count, Strip, Swarm  | Seaborn      |
| Spatial Data          | Choropleth, Geomaps  | GeoPandas    |
| Cleaning              | Pandas Ops           | Pandas       |

---

Would you like me to:
- 📓 Create a Jupyter Notebook with all this?
- 🗃 Bundle this with example datasets?
- 🧪 Include assignments or project ideas?

Let me know how you'd like to proceed!
