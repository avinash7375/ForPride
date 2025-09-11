# Chapter 5: Correlation Analysis

## 5.1 Introduction to Correlation

Correlation analysis is one of the most fundamental and widely used statistical tools in research and data analysis.
It measures the degree to which two variables are linearly related.
The concept was first introduced by Sir Francis Galton in the late 19th century and was later developed by Karl Pearson.

### 5.1.1 Basic Concept
Correlation describes how two variables move in relation to each other.
When we observe two characteristics or phenomena that appear to have some relationship,
correlation analysis helps us quantify the strength and direction of this relationship.
For instance, the relationship between height and weight, temperature and ice cream sales, or study hours and test scores.

## 5.2 Types of Correlation

### 5.2.1 Based on Direction
1. *Positive Correlation*
   - Variables move in the same direction
   - As one variable increases, the other tends to increase
   - Example: Height and weight in humans
   - Correlation coefficient is positive

2. *Negative Correlation*
   - Variables move in opposite directions
   - As one variable increases, the other tends to decrease
   - Example: Price and demand of goods
   - Correlation coefficient is negative

3. *Zero Correlation*
   - No linear relationship between variables
   - Changes in one variable don't affect the other
   - Example: Shoe size and intelligence
   - Correlation coefficient is close to zero

### 5.2.2 Based on Relationship Type
1. *Linear Correlation*
   - Relationship can be represented by a straight line
   - Most common type studied
   - Measured by Pearson's correlation coefficient

2. *Non-linear/Curvilinear Correlation*
   - Relationship follows a curve
   - Cannot be adequately measured by standard correlation coefficient
   - Requires special techniques for analysis

## 5.3 Scatter Diagram

### 5.3.1 Definition and Purpose
A scatter diagram (or scatter plot) is a graphical representation of paired data points plotted on a coordinate system.
It serves as a visual tool to:
- Identify the type of relationship
- Detect outliers
- Determine whether linear correlation is appropriate
- Provide a quick estimate of correlation strength

### 5.3.2 Interpretation
Different patterns in scatter plots indicate:
1. *Strong Positive Correlation*
   - Points form tight upward pattern
   - Little scatter around trend

2. *Strong Negative Correlation*
   - Points form tight downward pattern
   - Little scatter around trend

3. *Weak Correlation*
   - Points widely scattered
   - Pattern barely discernible

4. *No Correlation*
   - Random scatter of points
   - No apparent pattern

## 5.4 Product Moment Correlation Coefficient

### 5.4.1 Definition
Pearson's Product Moment Correlation Coefficient (r) is the most widely used measure of correlation.
It quantifies the strength and direction of linear relationship between two variables.

### 5.4.2 Formula
The formula for calculating r is:

*r = Σ(x-x̄)(y-ȳ) / √[Σ(x-x̄)²][Σ(y-ȳ)²]*

Where:
- x̄, ȳ are means of variables X and Y
- x, y are individual values
- Σ denotes summation

Alternative computational formula:
*r = [nΣxy - (Σx)(Σy)] / √[nΣx² - (Σx)²][nΣy² - (Σy)²]*

### 5.4.3 Properties
1. *Range*
   - Always between -1 and +1
   - -1 indicates perfect negative correlation
   - +1 indicates perfect positive correlation
   - 0 indicates no linear correlation

2. *Scale Independence*
   - Not affected by changes in scale or origin
   - Remains same regardless of units of measurement

3. *Symmetry*
   - rxy = ryx
   - Order of variables doesn't matter

4. *Dimensionless*
   - Pure number
   - No units

## 5.5 Interpretation and Analysis

### 5.5.1 Guidelines for Interpretation
Generally accepted guidelines:
- |r| < 0.3: Weak correlation
- 0.3 ≤ |r| < 0.7: Moderate correlation
- |r| ≥ 0.7: Strong correlation

### 5.5.2 Coefficient of Determination
- r² represents proportion of variance in one variable explained by other
- Expressed as percentage
- Example: r = 0.8 means r² = 0.64 or 64% of variance explained

## 5.6 Limitations and Considerations

### 5.6.1 Limitations
1. Measures only linear relationship
2. Sensitive to outliers
3. Cannot establish causation
4. May mask curvilinear relationships
5. Requires interval/ratio data

### 5.6.2 Important Considerations
1. Always plot data before calculating r
2. Check for outliers
3. Consider sample size
4. Look for meaningful relationships
5. Use with other statistical measures

## 5.7 Practical Applications
### 5.7.1 Steps in Correlation Analysis
1. Collect paired data
2. Create scatter plot
3. Check for linearity
4. Calculate correlation coefficient
5. Test significance
6. Interpret results

## Summary
Correlation analysis is a powerful statistical tool for understanding relationships between variables.
While it has limitations, proper understanding and application make it invaluable in research and analysis.
Remember that correlation does not imply causation, and results should always be interpreted within the context of the study.

