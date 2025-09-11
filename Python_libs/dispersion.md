# Concept of Dispersion

Dispersion refers to the spread or variability of data points around a central value. It tells us how scattered or concentrated our data is.

# Requirements of Good Measures of Dispersion

1. Simple to understand and calculate
2. Based on all observations
3. Suitable for further mathematical treatment
4. Not unduly affected by extreme values 
5. Sampling stability

# Measures of Dispersion

Let's examine both absolute and relative measures:

## 1. Range

The simplest measure of dispersion.

**Formula:** Range = Highest value - Lowest value

**Example:**
Consider the marks of 5 students: 45, 52, 48, 60, 55
Range = 60 - 45 = 15

## 2. Quartile Deviation (QD)

Also known as semi-interquartile range.

**Formula:** QD = (Q₃ - Q₁)/2
where Q₁ is the first quartile and Q₃ is the third quartile

**Example:**
For the data: 23, 25, 28, 30, 32, 34, 35, 38
Q₁ = 25.5
Q₃ = 34.5
QD = (34.5 - 25.5)/2 = 4.5

## 3. Mean Absolute Deviation (MAD)

**Formula:** MAD = Σ|X - X̄|/n
where X̄ is the mean, and n is the number of observations

**Example:**
For data: 4, 6, 8, 10, 12
Mean (X̄) = 8
MAD = (|4-8| + |6-8| + |8-8| + |10-8| + |12-8|)/5
    = (4 + 2 + 0 + 2 + 4)/5 = 2.4

## 4. Standard Deviation (σ)

Most widely used measure of dispersion.

**For ungrouped data:**
σ = √[Σ(X - X̄)²/n]

**Example for ungrouped data:**
Values: 2, 4, 6, 8, 10
Mean (X̄) = 6
σ = √[((-4)² + (-2)² + 0² + 2² + 4²)/5]
  = √(16 + 4 + 0 + 4 + 16)/5
  = √40/5 = 2.83

**For grouped data:**
σ = √[Σf(X - X̄)²/Σf]
where f is the frequency

## 5. Combined Standard Deviation

Used when combining two or more groups.

**Formula:**
σc = √[(n₁σ₁² + n₂σ₂² + ... + nₖσₖ²)/(n₁ + n₂ + ... + nₖ)]
where n₁, n₂, etc. are sample sizes and σ₁, σ₂, etc. are standard deviations of individual groups.
---
# Example 1: Range
**Scenario: Daily Temperature Readings**
A meteorologist recorded the following daily temperatures (in °C) for a week:
22, 25, 19, 28, 24, 30, 21

**Solution:**
Range = Highest value - Lowest value
     = 30 - 19
     = 11°C

This tells us the temperature fluctuated within an 11-degree range that week.

# Example 2: Quartile Deviation
**Scenario: Monthly Savings (in $) of 9 employees**
800, 950, 1200, 1350, 1500, 1650, 1800, 2000, 2200

**Step-by-step solution:**
1. Arrange in ascending order (already arranged)
2. Find Q₁ (1/4 × n = 2.25, so value between 2nd and 3rd position)
   Q₁ = 1075
3. Find Q₃ (3/4 × n = 6.75, so value between 6th and 7th position)
   Q₃ = 1725
4. Calculate QD = (Q₃ - Q₁)/2
   = (1725 - 1075)/2
   = 325

The quartile deviation of $325 indicates the typical deviation from the median savings.

# Example 3: Mean Absolute Deviation
**Scenario: Daily Sales (in hundreds) at a Coffee Shop**
42, 38, 45, 40, 35, 41, 39

**Solution:**
1. Calculate mean (X̄):
   X̄ = (42 + 38 + 45 + 40 + 35 + 41 + 39)/7 = 40

2. Calculate deviations from mean:
   |42 - 40| = 2
   |38 - 40| = 2
   |45 - 40| = 5
   |40 - 40| = 0
   |35 - 40| = 5
   |41 - 40| = 1
   |39 - 40| = 1

3. MAD = (2 + 2 + 5 + 0 + 5 + 1 + 1)/7 = 2.29

The average daily sales deviate from the mean by 229 cups.

# Example 4: Standard Deviation
**Scenario: Monthly Expenses (in thousands) of Families**
Grouped data of 50 families:

```
Expenses (₹)   Frequency (f)
10-20          8
20-30          12
30-40          15
40-50          10
50-60          5
```

**Solution:**
1. Find midpoints (X):
   15, 25, 35, 45, 55

2. Calculate mean (X̄):
   = Σ(fX)/Σf
   = (120 + 300 + 525 + 450 + 275)/50
   = 33.4

3. Calculate σ = √[Σf(X - X̄)²/Σf]

```
X      f    X-X̄     (X-X̄)²    f(X-X̄)²
15     8    -18.4   338.56    2708.48
25     12   -8.4    70.56     846.72
35     15   1.6     2.56      38.40
45     10   11.6    134.56    1345.60
55     5    21.6    466.56    2332.80
```

σ = √(7272/50) = 12.06

This indicates that typical family expenses deviate from the mean by ₹12,060.

# Example 5: Combined Standard Deviation
**Scenario: Test Scores from Two Classes**

Class A (n₁ = 30):
Mean (X̄₁) = 72
Standard deviation (σ₁) = 8

Class B (n₂ = 25):
Mean (X̄₂) = 68
Standard deviation (σ₂) = 6

**Solution:**
Combined SD = √[(n₁σ₁² + n₂σ₂²)/(n₁ + n₂)]
            = √[(30×64 + 25×36)/(30 + 25)]
            = √[(1920 + 900)/55]
            = √(2820/55)
            = √51.27
            = 7.16


-----

# Example 6: Range
**Scenario: House Prices in a Neighborhood (in millions)**
Houses sold last month: ₹2.4, ₹3.1, ₹2.8, ₹4.5, ₹3.7, ₹2.9, ₹5.2, ₹3.4

**Solution:**
Range = Highest value - Lowest value
     = 5.2 - 2.4
     = ₹2.8 million

This indicates the spread of house prices in the neighborhood.

# Example 7: Quartile Deviation
**Scenario: Weekly Time Spent on Social Media (hours) by 11 teenagers**
14, 18, 20, 22, 25, 28, 30, 32, 35, 38, 40

**Solution:**
1. Data already in ascending order
2. Q₁ (position = (n+1)/4 = 3rd value) = 20
3. Q₃ (position = 3(n+1)/4 = 9th value) = 35
4. QD = (Q₃ - Q₁)/2
      = (35 - 20)/2
      = 7.5 hours

This shows that typical deviation from median social media usage is 7.5 hours.

# Example 8: Mean Absolute Deviation
**Scenario: Daily Customer Foot Traffic at a Restaurant**
125, 138, 142, 130, 135, 148, 132

**Solution:**
1. Mean (X̄) = (125 + 138 + 142 + 130 + 135 + 148 + 132)/7 = 135.7

2. |125 - 135.7| = 10.7
   |138 - 135.7| = 2.3
   |142 - 135.7| = 6.3
   |130 - 135.7| = 5.7
   |135 - 135.7| = 0.7
   |148 - 135.7| = 12.3
   |132 - 135.7| = 3.7

3. MAD = (10.7 + 2.3 + 6.3 + 5.7 + 0.7 + 12.3 + 3.7)/7 = 6 customers

# Example 9: Standard Deviation (Ungrouped)
**Scenario: Monthly Rainfall (mm) in a City**
85, 92, 78, 95, 88, 83, 90

**Solution:**
1. Mean (X̄) = 87.3 mm

2. Deviations squared:
```
(85 - 87.3)² = 5.29
(92 - 87.3)² = 22.09
(78 - 87.3)² = 86.49
(95 - 87.3)² = 59.29
(88 - 87.3)² = 0.49
(83 - 87.3)² = 18.49
(90 - 87.3)² = 7.29
```

3. σ = √[Σ(X - X̄)²/n]
   = √(199.43/7)
   = 5.34 mm

# Example 10: Standard Deviation (Grouped)
**Scenario: Monthly Phone Bills (in hundreds) of 60 Households**
```
Bill Amount   Frequency (f)
2-4           5
4-6           12
6-8           20
8-10          15
10-12         8
```

**Solution:**
1. Find midpoints (X): 3, 5, 7, 9, 11

2. Mean calculation:
```
X    f    fX
3    5    15
5    12   60
7    20   140
8    15   135
11   8    88
```
X̄ = 438/60 = 7.3

3. Standard deviation:
```
X    f    X-X̄    (X-X̄)²   f(X-X̄)²
3    5    -4.3   18.49    92.45
5    12   -2.3   5.29     63.48
7    20   -0.3   0.09     1.80
9    15   1.7    2.89     43.35
11   8    3.7    13.69    109.52
```

σ = √(310.6/60) = 2.28 hundred rupees

# Example 11: Combined Standard Deviation
**Scenario: Weight Lifting Performance (kg) in Two Gym Branches**

Branch A (n₁ = 40):
Mean (X̄₁) = 85 kg
SD (σ₁) = 12 kg

Branch B (n₂ = 35):
Mean (X̄₂) = 78 kg
SD (σ₂) = 10 kg

**Solution:**
Combined SD = √[(40×144 + 35×100)/(40 + 35)]
            = √[(5760 + 3500)/75]
            = √123.47
            = 11.11 kg
