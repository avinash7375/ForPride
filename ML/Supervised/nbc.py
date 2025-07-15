from sklearn.feature_extraction.text import CountVectorizer
from sklearn.naive_bayes import MultinomialNB
from sklearn.pipeline import make_pipeline
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report

# Sample data
texts = ["I love this product", "This is terrible", "I hate this", "Amazing quality", "Worst ever", "Best purchase"]
labels = [1, 0, 0, 1, 0, 1]  # 1 = positive, 0 = negative

# Train/test split
X_train, X_test, y_train, y_test = train_test_split(texts, labels, test_size=0.2, random_state=42)

# Build pipeline: Vectorizer + Naive Bayes
model = make_pipeline(CountVectorizer(), MultinomialNB())

# Train
model.fit(X_train, y_train)

# Predict
predicted = model.predict(X_test)

# Evaluation
print(classification_report(y_test, predicted))
