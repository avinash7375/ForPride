Here’s a beginner-friendly tutorial for **Seaborn**, based on the official documentation at [seaborn.pydata.org](https://seaborn.pydata.org):

---

# **Introduction to Seaborn**

Seaborn is a Python data visualization library based on Matplotlib. It provides a high-level interface for creating informative and attractive statistical graphics. Seaborn works seamlessly with Pandas DataFrames, making it ideal for exploratory data analysis.

---

## **1. Installing Seaborn**

Install Seaborn using pip:

```bash
pip install seaborn
```

Or if you’re using Anaconda:

```bash
conda install seaborn
```

---

## **2. Importing Seaborn**

To use Seaborn in your Python script:

```python
import seaborn as sns
import matplotlib.pyplot as plt
```

---

## **3. Built-in Datasets**

Seaborn comes with several built-in datasets that can be loaded using `sns.load_dataset`:

```python
# Load the 'tips' dataset
tips = sns.load_dataset("tips")
print(tips.head())
```

---

## **4. Basic Plot Types**

### **4.1 Scatter Plot**
Use `sns.scatterplot` to visualize the relationship between two numerical variables:

```python
sns.scatterplot(data=tips, x="total_bill", y="tip", hue="time")
plt.title("Scatter Plot of Total Bill vs Tip")
plt.show()
```

- **`hue`**: Differentiates data points by color based on a categorical variable.
- **`style`**: Differentiates data points by marker style.

---

### **4.2 Line Plot**
Use `sns.lineplot` to display trends over time or continuous variables:

```python
fmri = sns.load_dataset("fmri")
sns.lineplot(data=fmri, x="timepoint", y="signal", hue="event", style="region")
plt.title("Line Plot")
plt.show()
```

---

### **4.3 Bar Plot**
Bar plots are used to show aggregated values for categories:

```python
sns.barplot(data=tips, x="day", y="total_bill", hue="sex")
plt.title("Bar Plot of Total Bill by Day and Gender")
plt.show()
```

---

### **4.4 Histogram**
Use `sns.histplot` to visualize the distribution of a single variable:

```python
sns.histplot(data=tips, x="total_bill", kde=True, bins=20)
plt.title("Histogram of Total Bill")
plt.show()
```

---

### **4.5 Box Plot**
Box plots show the distribution of a numerical variable and its outliers:

```python
sns.boxplot(data=tips, x="day", y="total_bill", hue="sex")
plt.title("Box Plot of Total Bill by Day and Gender")
plt.show()
```

---

### **4.6 Violin Plot**
Violin plots combine box plots and kernel density estimates:

```python
sns.violinplot(data=tips, x="day", y="total_bill", hue="sex", split=True)
plt.title("Violin Plot of Total Bill by Day and Gender")
plt.show()
```

---

## **5. Pairwise Relationships**

### Pair Plot
Visualize relationships between all numerical variables in a dataset:

```python
sns.pairplot(tips, hue="sex", diag_kind="kde")
plt.show()
```

---

## **6. Heatmaps**

Heatmaps are used to visualize 2D data with color-coded values:

```python
flights = sns.load_dataset("flights")
pivot = flights.pivot("month", "year", "passengers")

sns.heatmap(pivot, annot=True, fmt="d", cmap="YlGnBu")
plt.title("Heatmap of Flight Passengers")
plt.show()
```

---

## **7. Customizing Visualizations**

### Changing the Style
Seaborn offers several themes for styling plots:

```python
sns.set_style("darkgrid")  # Options: "whitegrid", "darkgrid", "dark", "white", "ticks"
sns.scatterplot(data=tips, x="total_bill", y="tip")
plt.show()
```

### Adjusting Figure Size
```python
plt.figure(figsize=(8, 6))
sns.boxplot(data=tips, x="day", y="total_bill")
plt.show()
```

### Adding Titles and Labels
```python
sns.scatterplot(data=tips, x="total_bill", y="tip")
plt.title("Scatter Plot of Total Bill vs Tip")
plt.xlabel("Total Bill ($)")
plt.ylabel("Tip ($)")
plt.show()
```

---

## **8. Statistical Functions**

Seaborn includes built-in statistical tools like regression:

### Regression Plot
```python
sns.lmplot(data=tips, x="total_bill", y="tip", hue="sex")
plt.title("Regression Plot")
plt.show()
```

---

## **9. Multi-Plot Grids**

### Facet Grid
Use `sns.FacetGrid` to create multi-plot grids based on subsets of data:

```python
g = sns.FacetGrid(tips, col="time", row="sex")
g.map(sns.scatterplot, "total_bill", "tip")
plt.show()
```

### Relational Grids
```python
sns.relplot(data=tips, x="total_bill", y="tip", hue="time", col="day", kind="scatter")
plt.show()
```

---

## **10. Saving Plots**

Save your visualizations as files:

```python
sns.scatterplot(data=tips, x="total_bill", y="tip")
plt.savefig("scatter_plot.png", dpi=300)
```

---

## **11. Advanced Topics**

### Categorical Scatter Plots
- **Swarm Plot**: Avoids overlapping points.
```python
sns.swarmplot(data=tips, x="day", y="total_bill", hue="sex", dodge=True)
plt.title("Swarm Plot")
plt.show()
```

- **Strip Plot**: Similar to a swarm plot but with no adjustment for overlap.
```python
sns.stripplot(data=tips, x="day", y="total_bill", hue="sex", dodge=True)
plt.title("Strip Plot")
plt.show()
```

### Joint Plot
Combine scatterplots and histograms:

```python
sns.jointplot(data=tips, x="total_bill", y="tip", kind="reg")
plt.show()
```

---

## **12. Seaborn Documentation**

For more advanced features, visit the [Seaborn documentation](https://seaborn.pydata.org/).

---

Would you like this tutorial as a downloadable PDF or interactive Jupyter Notebook?
