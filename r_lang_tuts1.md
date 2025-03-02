# R ggplot2 and Hadoop in Google Colab

## ggplot2 in Google Colab

### Setting Up R in Colab

Google Colab supports R through the `%R` magic command. Here's how to get started:

```python
# Load R magics
%load_ext rpy2.ipython
```

### Installing and Loading ggplot2

```python
%%R
# Install ggplot2 if not already installed
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Load the package
library(ggplot2)

# Check the version
packageVersion("ggplot2")
```

### Basic ggplot2 Examples

```python
%%R
# Load a sample dataset
data(mpg)

# Create a simple scatterplot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  labs(title = "Engine Displacement vs Highway MPG",
       x = "Engine Displacement (L)",
       y = "Highway MPG")
```

### Enhancing Plots with Color and Facets

```python
%%R
# Color points by vehicle class
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(title = "Fuel Efficiency by Engine Size and Vehicle Class")

# Create facets by drive type
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  facet_wrap(~drv, labeller = label_both) +
  labs(title = "Fuel Efficiency by Drive Type")
```

### Adding Trend Lines

```python
%%R
# Add a smoothed line with confidence interval
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(alpha = 0.5) +
  geom_smooth() +
  labs(title = "Trend of Fuel Efficiency vs Engine Size")

# Create a linear model without confidence interval
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Linear Relationship Between Engine Size and Fuel Efficiency")
```

### Creating Bar Charts

```python
%%R
# Simple bar chart of vehicle counts by class
ggplot(data = mpg, mapping = aes(x = class)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Count of Vehicles by Class",
       x = "Vehicle Class",
       y = "Count")

# Bar chart with mean highway MPG by class
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  stat_summary(fun = mean, geom = "bar", fill = "steelblue") +
  labs(title = "Average Highway MPG by Vehicle Class",
       x = "Vehicle Class",
       y = "Mean Highway MPG")
```

### Saving Plots in Colab

```python
%%R
# Create a plot
p <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(title = "Fuel Efficiency vs. Engine Size")

# Save to a file
ggsave("my_plot.png", plot = p, width = 8, height = 6, dpi = 300)
```

To download the saved plot in Colab:

```python
from google.colab import files
files.download('my_plot.png')
```

## Hadoop Concepts in Colab

While Google Colab doesn't have Hadoop pre-installed, you can learn Hadoop concepts and even simulate some MapReduce operations using Python.

### Simulating MapReduce with Python

Here's how to implement a simple word count (the classic Hadoop example) using Python:

```python
# Word Count MapReduce simulation

# Sample text
text = """
Google Colab is a free cloud service hosted by Google to encourage machine learning 
and artificial intelligence research. It's widely used by students, data scientists, 
AI researchers, and developers around the world.
"""

# Split text into lines
lines = text.split('\n')

# MAP phase
def mapper(line):
    # For each line, emit (word, 1) for each word
    results = []
    for word in line.lower().split():
        # Remove punctuation
        word = word.strip('.,!?;:')
        if word:  # Skip empty strings
            results.append((word, 1))
    return results

# Apply map to all lines
mapped_results = []
for line in lines:
    mapped_results.extend(mapper(line))

print("After Map phase:")
print(mapped_results[:10])  # Show first 10 results

# SHUFFLE and SORT phase
# Group by keys (words)
shuffled_results = {}
for word, count in mapped_results:
    if word not in shuffled_results:
        shuffled_results[word] = []
    shuffled_results[word].append(count)

print("\nAfter Shuffle and Sort phase:")
print(list(shuffled_results.items())[:5])  # Show first 5 words

# REDUCE phase
def reducer(word, counts):
    # Sum all counts for the word
    return (word, sum(counts))

# Apply reduce to all words
reduced_results = []
for word, counts in shuffled_results.items():
    reduced_results.append(reducer(word, counts))

# Sort by word
reduced_results.sort()

print("\nAfter Reduce phase (word counts):")
print(reduced_results[:10])  # Show first 10 results
```

### Using PySpark in Colab

For a more authentic Hadoop experience, you can use Apache Spark (a faster alternative to Hadoop MapReduce) in Colab:

```python
# Install PySpark
!pip install pyspark

# Import PySpark
from pyspark.sql import SparkSession

# Create a SparkSession
spark = SparkSession.builder \
    .appName("WordCount") \
    .master("local[*]") \
    .getOrCreate()

# Create some sample text data
text = """
Google Colab is a free cloud service hosted by Google to encourage machine learning 
and artificial intelligence research. It's widely used by students, data scientists, 
AI researchers, and developers around the world.
"""

# Create an RDD (Resilient Distributed Dataset)
lines = spark.sparkContext.parallelize(text.split("\n"))

# Perform word count using Spark
word_counts = lines.flatMap(lambda line: line.split()) \
                  .map(lambda word: (word.lower().strip('.,!?;:'), 1)) \
                  .reduceByKey(lambda a, b: a + b) \
                  .collect()

# Display results
for word, count in sorted(word_counts):
    if word:  # Skip empty strings
        print(f"{word}: {count}")

# Stop the SparkSession
spark.stop()
```

### Working with CSV Data in PySpark

```python
# Create a sample CSV file
!echo "id,name,age,salary" > employees.csv
!echo "1,John,30,50000" >> employees.csv
!echo "2,Alice,25,60000" >> employees.csv
!echo "3,Bob,35,75000" >> employees.csv
!echo "4,Carol,28,55000" >> employees.csv

# Read and process using PySpark
from pyspark.sql import SparkSession
from pyspark.sql.functions import avg, max, min

# Create SparkSession
spark = SparkSession.builder \
    .appName("CSV Processing") \
    .master("local[*]") \
    .getOrCreate()

# Read CSV file
df = spark.read.option("header", "true") \
    .option("inferSchema", "true") \
    .csv("employees.csv")

# Show the data
print("Data:")
df.show()

# Show the schema
print("Schema:")
df.printSchema()

# Perform SQL-like operations (similar to Hive)
print("Statistics:")
df.select(
    avg("salary").alias("avg_salary"),
    max("salary").alias("max_salary"),
    min("salary").alias("min_salary")
).show()

# Filter data (like in Hadoop ecosystem)
print("Filtered data (salary > 55000):")
df.filter(df.salary > 55000).show()

# Group by operation
print("Group by age:")
df.groupBy("age").count().show()

# Stop SparkSession
spark.stop()
```

### Simulating HDFS Operations

While you can't use HDFS directly in Colab, you can learn the commands and simulate some file operations:

```python
# Create a directory to simulate HDFS
!mkdir -p hdfs_sim/user/data

# Create some sample files
!echo "This is file 1" > hdfs_sim/user/data/file1.txt
!echo "This is file 2 with more content" > hdfs_sim/user/data/file2.txt

# List files (similar to hdfs dfs -ls)
!ls -l hdfs_sim/user/data

# Cat a file (similar to hdfs dfs -cat)
!cat hdfs_sim/user/data/file1.txt

# Count words in files (similar to a simple MapReduce job)
!cat hdfs_sim/user/data/*.txt | tr ' ' '\n' | sort | uniq -c
```
