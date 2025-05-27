## Sales Data Analytics
---

## 🧠 **Sales Data Analysis Problem Set: Electronic Components**

### 🎯 **Project Goal:**

Analyze the sales patterns of various electronic components to understand trends, identify high-performing products, optimize pricing, and suggest data-driven strategies to improve revenue.

---

### 📦 **Dataset Structure (Example):**

Assume your dataset (`sales_data.csv`) has the following columns:    [should be 500 rows]

| Date       | Product   | Category      | Units\_Sold | Unit\_Price | Revenue | Region     | Salesperson |
| ---------- | --------- | ------------- | ----------- | ----------- | ------- | ---------- | ----------- |
| 2025-01-01 | Resistor  | Passive       | 100         | 0.10        | 10.00   | North-East | John Smith  |
| 2025-01-01 | Capacitor | Passive       | 50          | 0.20        | 10.00   | North-East | John Smith  |
| 2025-01-02 | Microchip | Semiconductor | 30          | 5.00        | 150.00  | South-West | Jane Doe    |
| ...        | ...       | ...           | ...         | ...         | ...     | ...        | ...         |

---

### 🧩 **Problem Set (Tasks):**

---

#### 1. 📊 **Sales Overview**

* **Q1:** What is the total sales revenue over the entire period?
* **Q2:** What is the monthly trend of total sales revenue?

  * *Plot:* Line plot using `sns.lineplot()`

---

#### 2. 📈 **Product-Level Insights**

* **Q3:** Which are the top 5 best-selling products by revenue?

  * *Plot:* Bar plot using `sns.barplot()`
* **Q4:** What’s the correlation between unit price, units sold, and revenue?

  * *Plot:* Heatmap using `sns.heatmap()`

---

#### 3. 🧮 **Category Comparison**

* **Q5:** How does average revenue per unit vary by product category?

  * *Plot:* Box plot using `sns.boxplot()`
* **Q6:** Which category has the most consistent sales volume over time?

  * *Plot:* Line plot with `hue='Category'`

---

#### 4. 🧭 **Regional Analysis**

* **Q7:** Which regions contribute most to total revenue?

  * *Plot:* Bar plot using `sns.barplot()`
* **Q8:** Are there regional preferences for certain components?

  * *Plot:* Heatmap or clustered bar plot using `sns.heatmap()` or `sns.catplot()`

---

#### 5. 📅 **Time Series Analysis**

* **Q9:** Are there seasonal patterns in product sales?

  * *Plot:* Line plot with time on x-axis
* **Q10:** What days of the week have the highest average sales?

  * *Plot:* Strip plot or violin plot using `sns.violinplot()`

---

#### 6. 📉 **Salesperson Performance**

* **Q11:** Who are the top 3 salespeople by total revenue?

  * *Plot:* Horizontal bar plot using `sns.barplot()`
* **Q12:** What’s the variance in sales per salesperson per region?

  * *Plot:* Faceted box plot using `sns.catplot()` with `col='Region'`

---

### 🛠️ **Bonus Tasks (Advanced)**

* **Q13:** Use clustering (e.g., KMeans) to group similar products based on price and revenue, then visualize.
* **Q14:** Forecast future sales using moving averages.

---

### 📌 **Tips for Plotting with Seaborn:**

* Use `sns.set(style="whitegrid")` for clean visuals.
* Use `hue`, `col`, and `row` in `sns.catplot()` or `sns.relplot()` for faceted plots.
* Always label axes and use `plt.xticks(rotation=45)` for better readability on date axes.

---

Would you like a sample dataset or Python notebook to go with this project?
