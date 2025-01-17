# Node.js Tutorials

## 1. Asynchronous Programming

JavaScript is single-threaded but supports asynchronous programming to handle multiple tasks efficiently. Asynchronous programming allows executing code without waiting for previous tasks to finish, improving performance and responsiveness.

### Key Concepts:
- **Blocking Code:** Stops execution until a task completes.
- **Non-blocking Code:** Continues execution without waiting.

Example of Non-blocking Code:
```javascript
console.log('Start');
setTimeout(() => {
  console.log('Async Task Completed');
}, 2000);
console.log('End');
```
Output:
```
Start
End
Async Task Completed
```

---

## 2. Event Loops

The Event Loop is a mechanism in Node.js that handles asynchronous operations. It ensures non-blocking behavior by managing tasks in different phases (timers, I/O, etc.).

### Example:
```javascript
console.log('Before Timeout');
setTimeout(() => {
  console.log('Inside Timeout');
}, 1000);
console.log('After Timeout');
```
Phases:
1. **Timer Phase**: Executes `setTimeout` and `setInterval` callbacks.
2. **I/O Callbacks**: Handles deferred I/O events.
3. **Check Phase**: Executes `setImmediate` callbacks.

---

## 3. Callbacks, Promises, and Async/Await

### Callbacks:
Functions passed as arguments and executed after an operation.
```javascript
function fetchData(callback) {
  setTimeout(() => {
    callback('Data fetched!');
  }, 1000);
}
fetchData(console.log);
```

### Promises:
Represents a value that will be available in the future.
```javascript
const promise = new Promise((resolve, reject) => {
  setTimeout(() => resolve('Promise resolved!'), 1000);
});
promise.then(console.log);
```

### Async/Await:
Simplifies handling of promises.
```javascript
async function fetchData() {
  const result = await new Promise(resolve => {
    setTimeout(() => resolve('Data fetched!'), 1000);
  });
  console.log(result);
}
fetchData();
```

---

## 4. Modules

Node.js uses modules to organize and reuse code.

### Example:
- **Create a Module (math.js):**
```javascript
exports.add = (a, b) => a + b;
exports.subtract = (a, b) => a - b;
```

- **Use the Module:**
```javascript
const math = require('./math');
console.log(math.add(5, 3));
console.log(math.subtract(5, 3));
```

---

## 5. Events

Node.js has an `EventEmitter` class to handle events.

### Example:
```javascript
const EventEmitter = require('events');
const emitter = new EventEmitter();

emitter.on('event', () => {
  console.log('Event triggered!');
});

emitter.emit('event');
```

---

## 6. Web Server (Express.js)

Express.js is a minimal framework for building web servers.

### Example:
```javascript
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});
```

---

## 7. Streams

Streams handle continuous data flows (e.g., file reading).

### Example:
```javascript
const fs = require('fs');
const readStream = fs.createReadStream('file.txt');

readStream.on('data', chunk => {
  console.log('Received:', chunk);
});

readStream.on('end', () => {
  console.log('Read Complete');
});
```

