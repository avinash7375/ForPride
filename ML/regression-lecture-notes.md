# Regression Analysis: From Simple to Logistic Regression
## Course Materials for Statistical Learning

### Introduction
Regression analysis is a fundamental statistical method for modeling relationships between variables.
We'll explore four key types of regression, moving from simple to more complex models.

### 1. Simple Linear Regression
#### Theory
- Models the relationship between one independent variable (X) and one dependent variable (Y)
- Equation: Y = β₀ + β₁X + ε
- Assumptions:
  - Linearity
  - Independence of observations
  - Homoscedasticity
  - Normality of residuals

#### Implementation in Python
```python
import numpy as np
import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score, mean_squared_error
import matplotlib.pyplot as plt

# Generate sample data
np.random.seed(42)
X = np.linspace(0, 10, 100).reshape(-1, 1)
y = 2 * X + 1 + np.random.normal(0, 1, (100, 1))

# Create and fit model
model = LinearRegression()
model.fit(X, y)

# Make predictions
y_pred = model.predict(X)

# Print results
print(f"Intercept (β₀): {model.intercept_[0]:.2f}")
print(f"Slope (β₁): {model.coef_[0][0]:.2f}")
print(f"R² Score: {r2_score(y, y_pred):.2f}")

# Visualization
plt.scatter(X, y, color='blue', alpha=0.5)
plt.plot(X, y_pred, color='red', linewidth=2)
plt.xlabel('X')
plt.ylabel('y')
plt.title('Simple Linear Regression')
```

### 2. Multiple Linear Regression
#### Theory
- Extends simple linear regression to multiple independent variables
- Equation: Y = β₀ + β₁X₁ + β₂X₂ + ... + βₙXₙ + ε
- Additional considerations:
  - Multicollinearity
  - Feature selection
  - Interaction effects

#### Implementation
```python
from sklearn.datasets import make_regression

# Generate sample data with multiple features
X, y = make_regression(n_samples=100, n_features=3, noise=20, random_state=42)

# Create and fit model
multi_model = LinearRegression()
multi_model.fit(X, y)

# Print coefficients for each feature
for i, coef in enumerate(multi_model.coef_):
    print(f"β{i+1}: {coef:.2f}")
print(f"Intercept (β₀): {multi_model.intercept_:.2f}")

# Evaluate model
y_pred = multi_model.predict(X)
print(f"R² Score: {r2_score(y, y_pred):.2f}")
```

### 3. Stepwise Regression
#### Theory
- Feature selection method to choose optimal subset of predictors
- Types:
  - Forward selection
  - Backward elimination
  - Bidirectional elimination
- Selection criteria: AIC, BIC, p-values

#### Implementation
```python
from sklearn.feature_selection import f_regression
from sklearn.preprocessing import StandardScaler

def forward_selection(X, y, significance_level=0.05):
    n_features = X.shape[1]
    selected_features = []
    remaining_features = list(range(n_features))
    
    while remaining_features:
        best_pvalue = float('inf')
        best_feature = None
        
        for feature in remaining_features:
            features_to_test = selected_features + [feature]
            X_test = X[:, features_to_test]
            
            f_stats, p_values = f_regression(X_test, y)
            pvalue = p_values[-1]
            
            if pvalue < best_pvalue:
                best_pvalue = pvalue
                best_feature = feature
        
        if best_pvalue < significance_level:
            selected_features.append(best_feature)
            remaining_features.remove(best_feature)
        else:
            break
            
    return selected_features

# Example usage
X, y = make_regression(n_samples=100, n_features=10, noise=20, random_state=42)
X = StandardScaler().fit_transform(X)

selected_features = forward_selection(X, y)
print("Selected features:", selected_features)

# Fit model with selected features
final_model = LinearRegression()
final_model.fit(X[:, selected_features], y)
```

### 4. Logistic Regression
#### Theory
- Used for binary classification problems
- Models probability of binary outcome
- Equation: P(Y=1) = 1 / (1 + e^-(β₀ + β₁X₁ + ... + βₙXₙ))
- Key concepts:
  - Odds ratio
  - Log odds
  - Decision boundary
  - ROC curve

#### Implementation
```python
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import classification_report, roc_curve, auc
from sklearn.datasets import make_classification

# Generate binary classification data
X, y = make_classification(n_samples=100, n_features=2, n_redundant=0, 
                         n_informative=2, random_state=42)

# Create and fit logistic regression model
log_model = LogisticRegression()
log_model.fit(X, y)

# Make predictions
y_pred = log_model.predict(X)
y_pred_prob = log_model.predict_proba(X)[:, 1]

# Print model evaluation
print("Classification Report:")
print(classification_report(y, y_pred))

# Plot ROC curve
fpr, tpr, _ = roc_curve(y, y_pred_prob)
roc_auc = auc(fpr, tpr)

plt.figure()
plt.plot(fpr, tpr, color='darkorange', lw=2, 
         label=f'ROC curve (AUC = {roc_auc:.2f})')
plt.plot([0, 1], [0, 1], color='navy', lw=2, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.05])
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('Receiver Operating Characteristic (ROC) Curve')
plt.legend(loc="lower right")
```


### Assessment Questions
1. What are the key assumptions of linear regression and how can we verify them?
2. How does multicollinearity affect multiple regression models?
3. Compare and contrast the different approaches to stepwise regression
4. When would you choose logistic regression over linear regression?
