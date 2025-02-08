# Seaborn Data Visualization Guide

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Basic Setup](#basic-setup)
- [Plot Types](#plot-types)
  - [Statistical Plots](#statistical-plots)
  - [Relational Plots](#relational-plots)
  - [Categorical Plots](#categorical-plots)
  - [Distribution Plots](#distribution-plots)
  - [Matrix Plots](#matrix-plots)
- [Customization](#customization)
- [Best Practices](#best-practices)
- [Common Issues](#common-issues)

## Introduction

Seaborn is a statistical data visualization library built on top of Matplotlib. It provides a high-level interface for creating attractive and informative statistical graphics. This guide will help you understand and implement various visualization techniques using Seaborn.

## Installation

```bash
pip install seaborn
```

Required dependencies:
- Python 3.7+
- NumPy
- Pandas
- Matplotlib

## Basic Setup

```python
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Set the style for better visualizations
sns.set_style("whitegrid")
```

## Plot Types

### Statistical Plots

#### Histogram and KDE
```python
# Create a histogram with kernel density estimation
sns.histplot(data=df, x='value', kde=True)
plt.title('Distribution with Histogram and KDE')
plt.show()

# Just KDE
sns.kdeplot(data=df, x='value')
plt.title('Kernel Density Estimation')
plt.show()
```

Key parameters:
- `bins`: Number of bins for histogram
- `kde`: Boolean to show/hide density estimation
- `stat`: Type of statistic ('count', 'frequency', 'density')

#### Box Plot
```python
sns.boxplot(data=df, x='category', y='value')
plt.title('Box Plot')
plt.show()
```

Shows:
- Median
- Quartiles
- Whiskers (1.5 IQR)
- Outliers

### Relational Plots

#### Scatter Plot
```python
sns.scatterplot(data=df, x='x', y='y', hue='category')
plt.title('Scatter Plot with Categories')
plt.show()
```

Key features:
- `hue`: Color-coding for categories
- `size`: Size variation based on values
- `style`: Different markers for categories

#### Line Plot
```python
sns.lineplot(data=df, x='x', y='y', ci=95)
plt.title('Line Plot with Confidence Interval')
plt.show()
```

Options:
- `ci`: Confidence interval (95% default)
- `estimator`: Statistical function to estimate (mean, median, etc.)

### Categorical Plots

#### Bar Plot
```python
sns.barplot(data=df, x='category', y='value')
plt.title('Bar Plot with Error Bars')
plt.show()
```

Features:
- Automatic error bars
- Mean calculation
- Color customization

#### Violin Plot
```python
sns.violinplot(data=df, x='category', y='value')
plt.title('Violin Plot')
plt.show()
```

Shows:
- Distribution shape
- Quartiles
- Mean/median

### Distribution Plots

#### Joint Plot
```python
sns.jointplot(data=df, x='x', y='y', kind='scatter')
plt.show()
```

Types:
- scatter
- kde
- hex
- reg (regression)

#### Pair Plot
```python
sns.pairplot(df, hue='category')
plt.show()
```

Features:
- All variable combinations
- Distribution on diagonal
- Optional regression lines

### Matrix Plots

#### Heat Map
```python
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Heatmap')
plt.show()
```

Options:
- `annot`: Show values
- `cmap`: Color scheme
- `mask`: Hide specific values

## Customization

### Themes
```python
# Available themes
sns.set_theme()  # default
sns.set_style("whitegrid")
sns.set_style("darkgrid")
sns.set_style("white")
sns.set_style("dark")
sns.set_style("ticks")
```

### Color Palettes
```python
# Built-in palettes
sns.set_palette("husl")
sns.set_palette("Set2")
sns.set_palette("deep")
sns.set_palette("muted")
```

### Figure Size and DPI
```python
plt.figure(figsize=(10, 6), dpi=300)
```

## Best Practices

1. **Choose the Right Plot**
   - Use scatter plots for correlation
   - Use line plots for trends over time
   - Use box plots for distribution comparison
   - Use heat maps for correlation matrices

2. **Data Preparation**
   - Clean data before plotting
   - Handle missing values appropriately
   - Scale data when necessary

3. **Aesthetics**
   - Use clear titles and labels
   - Choose appropriate color schemes
   - Consider colorblind-friendly palettes
   - Add legends when using categories

4. **Performance**
   - Limit data points for scatter plots
   - Use sampling for large datasets
   - Consider memory constraints

## Common Issues

1. **Figure Size Issues**
   ```python
   # Fix: Set figure size before plotting
   plt.figure(figsize=(10, 6))
   ```

2. **Label Overlap**
   ```python
   # Fix: Rotate labels
   plt.xticks(rotation=45)
   ```

3. **Memory Issues**
   ```python
   # Fix: Sample large datasets
   df_sampled = df.sample(n=1000)
   ```

4. **Color Consistency**
   ```python
   # Fix: Set color palette at start
   sns.set_palette("husl", n_colors=5)
   ```