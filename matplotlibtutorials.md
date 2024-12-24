Here’s a beginner-friendly tutorial for **Matplotlib**, structured and inspired by the [official documentation](https://matplotlib.org/).

---

# **Introduction to Matplotlib**

Matplotlib is a powerful Python library for creating static, interactive, and animated visualizations. It is widely used for 2D plotting and integrates well with other libraries like NumPy and Pandas.

---

## **1. Installing Matplotlib**

Install Matplotlib using pip:

```bash
pip install matplotlib
```

Or if you’re using Anaconda:

```bash
conda install matplotlib
```

---

## **2. Importing Matplotlib**

The most common way to use Matplotlib is by importing its `pyplot` module:

```python
import matplotlib.pyplot as plt
```

---

## **3. Basic Plotting**

### Line Plot
A simple line plot can be created with:

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4]
y = [10, 20, 25, 30]

plt.plot(x, y)
plt.title("Basic Line Plot")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.show()
```

---

## **4. Customizing Plots**

### Adding Markers, Line Styles, and Colors
```python
plt.plot(x, y, marker='o', linestyle='--', color='r')
plt.title("Customized Line Plot")
plt.show()
```

### Setting Axes Limits
```python
plt.plot(x, y)
plt.xlim(0, 5)
plt.ylim(5, 35)
plt.show()
```

---

## **5. Common Plot Types**

### 5.1 Bar Plot
```python
categories = ['A', 'B', 'C', 'D']
values = [3, 7, 8, 5]

plt.bar(categories, values, color='skyblue')
plt.title("Bar Plot")
plt.show()
```

### 5.2 Scatter Plot
```python
x = [5, 7, 8, 7]
y = [12, 16, 18, 10]

plt.scatter(x, y, color='green', s=100)  # s controls marker size
plt.title("Scatter Plot")
plt.show()
```

### 5.3 Histogram
```python
data = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

plt.hist(data, bins=4, color='purple', edgecolor='black')
plt.title("Histogram")
plt.show()
```

### 5.4 Pie Chart
```python
labels = ['A', 'B', 'C', 'D']
sizes = [15, 30, 45, 10]

plt.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
plt.title("Pie Chart")
plt.show()
```

---

## **6. Subplots**

Create multiple plots in a single figure using `subplots`:

```python
# Create 2 subplots (1 row, 2 columns)
fig, ax = plt.subplots(1, 2, figsize=(10, 4))

# First subplot
ax[0].plot(x, y)
ax[0].set_title("Line Plot")

# Second subplot
ax[1].bar(categories, values)
ax[1].set_title("Bar Plot")

plt.tight_layout()
plt.show()
```

---

## **7. Working with Data**

### Plotting with NumPy
```python
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y)
plt.title("Sine Wave")
plt.show()
```

### Plotting with Pandas
```python
import pandas as pd

data = pd.DataFrame({
    'x': [1, 2, 3, 4],
    'y': [10, 20, 30, 40]
})

plt.plot(data['x'], data['y'])
plt.title("Plot from Pandas DataFrame")
plt.show()
```

---

## **8. Advanced Features**

### Adding Legends
```python
plt.plot(x, y, label='Line 1')
plt.plot(x, [i*2 for i in y], label='Line 2')
plt.legend()
plt.show()
```

### Adding Grid
```python
plt.plot(x, y)
plt.grid(True)
plt.show()
```

### Annotating Points
```python
plt.plot(x, y, marker='o')
plt.annotate("Peak", xy=(3, 25), xytext=(2, 28),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()
```

---

## **9. Saving Figures**

You can save a plot to a file instead of displaying it:

```python
plt.plot(x, y)
plt.title("Save Plot Example")
plt.savefig("plot.png", dpi=300, bbox_inches='tight')
```

---

## **10. Interactive Plots**

If you're working in Jupyter Notebook, you can enable interactive plots:

```python
%matplotlib inline  # Displays static plots
%matplotlib notebook  # Enables interactive plots
```

---

## **11. Exploring Styles**

Matplotlib supports predefined styles to change the appearance of plots:

```python
plt.style.use('ggplot')  # Try 'seaborn', 'classic', 'fivethirtyeight', etc.
plt.plot(x, y)
plt.show()
```

---

## **12. 3D Plots**

For 3D visualizations, use the `mpl_toolkits.mplot3d` module:

```python
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

x = [1, 2, 3, 4]
y = [5, 6, 7, 8]
z = [10, 20, 30, 40]

ax.scatter(x, y, z)
plt.title("3D Scatter Plot")
plt.show()
```

---

## **13. Matplotlib Documentation**

Explore the full range of features and advanced topics in the [official documentation](https://matplotlib.org/stable/contents.html).

---

Would you like this tutorial as a PDF, or should I generate an interactive Jupyter Notebook?
