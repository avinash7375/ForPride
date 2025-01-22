Here are MongoDB commands for basic CRUD (Create, Read, Update, Delete) operations:

---

### **1. Create: Insert Documents**
#### **Insert a Single Document**
```javascript
db.collectionName.insertOne({ key1: "value1", key2: "value2" });
```

#### **Insert Multiple Documents**
```javascript
db.collectionName.insertMany([
  { key1: "value1", key2: "value2" },
  { key1: "value3", key2: "value4" }
]);
```

---

### **2. Read: Query Documents**
#### **Find All Documents**
```javascript
db.collectionName.find();
```

#### **Find Documents with a Filter**
```javascript
db.collectionName.find({ key1: "value1" });
```

#### **Find a Single Document**
```javascript
db.collectionName.findOne({ key1: "value1" });
```

#### **Projection (Select Specific Fields)**
```javascript
db.collectionName.find({ key1: "value1" }, { key2: 1, key3: 1, _id: 0 });
```

#### **Sorting Results**
```javascript
db.collectionName.find().sort({ key1: 1 }); // 1 for ascending, -1 for descending
```

#### **Limiting Results**
```javascript
db.collectionName.find().limit(5);
```

---

### **3. Update: Modify Documents**
#### **Update a Single Document**
```javascript
db.collectionName.updateOne(
  { key1: "value1" }, // Filter
  { $set: { key2: "newValue" } } // Update
);
```

#### **Update Multiple Documents**
```javascript
db.collectionName.updateMany(
  { key1: "value1" }, // Filter
  { $set: { key2: "newValue" } } // Update
);
```

#### **Replace a Document**
```javascript
db.collectionName.replaceOne(
  { key1: "value1" }, // Filter
  { key1: "newValue", key2: "anotherValue" } // New document
);
```

---

### **4. Delete: Remove Documents**
#### **Delete a Single Document**
```javascript
db.collectionName.deleteOne({ key1: "value1" });
```

#### **Delete Multiple Documents**
```javascript
db.collectionName.deleteMany({ key1: "value1" });
```

#### **Delete All Documents**
```javascript
db.collectionName.deleteMany({});
```

---

### **Other Useful Commands**
#### **Count Documents**
```javascript
db.collectionName.countDocuments({ key1: "value1" });
```

#### **Drop a Collection**
```javascript
db.collectionName.drop();
```

#### **Create an Index**
```javascript
db.collectionName.createIndex({ key1: 1 }); // 1 for ascending, -1 for descending
```

--- 

Would you like an example with specific data or additional MongoDB commands?
