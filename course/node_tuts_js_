**Node.js tutorial** covering **asynchronous programming, routes, requests, error handling, and events**.

---

## **1. Setting Up Node.js**
Ensure you have Node.js installed. You can check by running:
```sh
node -v
npm -v
```

Create a new Node.js project:
```sh
mkdir nodejs-tutorial
cd nodejs-tutorial
npm init -y
```

Install **Express.js** for handling routes:
```sh
npm install express
```

---

## **2. Asynchronous Programming in Node.js**
Node.js uses an **event-driven, non-blocking I/O model** for handling asynchronous operations.

### **Example: Reading a File Asynchronously**
Create a file `async-demo.js`:
```js
const fs = require('fs');

console.log("Start reading file...");

fs.readFile('example.txt', 'utf8', (err, data) => {
    if (err) {
        console.error("Error reading file:", err);
        return;
    }
    console.log("File content:", data);
});

console.log("This runs while the file is being read!");
```
Create an `example.txt` file and add some content.

Run the script:
```sh
node async-demo.js
```

You'll notice that **"This runs while the file is being read!"** is printed **before** the file content due to asynchronous execution.

---

## **3. Routes & Requests in Express.js**
Create a file `server.js`:

```js
const express = require('express');
const app = express();

app.use(express.json()); // Middleware to parse JSON requests

// Home route
app.get('/', (req, res) => {
    res.send('Welcome to Node.js Tutorial!');
});

// Route with parameters
app.get('/user/:name', (req, res) => {
    res.send(`Hello, ${req.params.name}!`);
});

// Handling POST request
app.post('/data', (req, res) => {
    res.json({ message: "Data received", data: req.body });
});

// Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
```

Run the server:
```sh
node server.js
```

Open your browser and visit:
- [http://localhost:3000/](http://localhost:3000/)
- [http://localhost:3000/user/Alex](http://localhost:3000/user/Alex)

For testing the POST request, use Postman or `curl`:
```sh
curl -X POST http://localhost:3000/data -H "Content-Type: application/json" -d '{"name": "John"}'
```

---

## **4. Error Handling in Express.js**
Modify `server.js` to handle errors properly:

```js
// Middleware for handling errors
app.use((err, req, res, next) => {
    console.error("Error:", err.message);
    res.status(500).json({ error: err.message });
});
```

Force an error:
```js
app.get('/error', (req, res) => {
    throw new Error("Something went wrong!");
});
```

Try visiting:
[http://localhost:3000/error](http://localhost:3000/error)

---

## **5. Event Handling in Node.js**
Node.js has a built-in `events` module to create and handle custom events.

Create a file `events-demo.js`:
```js
const EventEmitter = require('events');

class MyEmitter extends EventEmitter {}

const myEmitter = new MyEmitter();

// Define an event
myEmitter.on('greet', (name) => {
    console.log(`Hello, ${name}!`);
});

// Emit the event
myEmitter.emit('greet', 'Alice');
```

Run the script:
```sh
node events-demo.js
```

You'll see:
```
Hello, Alice!
```

---

## **6. Running and Testing Everything**
Now, you have:
- **Asynchronous file reading** (`async-demo.js`)
- **Routes and requests** (`server.js`)
- **Error handling** in Express
- **Events** (`events-demo.js`)

Start the **server**:
```sh
node server.js
```

Test the APIs and events, and modify them as needed!
