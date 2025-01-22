# JavaScript DOM (Document Object Model) Tutorial

## Introduction
The Document Object Model (DOM) is a programming interface for HTML documents. It represents the structure of a document as a tree of objects, allowing JavaScript to dynamically access and update content, structure, and styles.

## 1. Selecting Elements

### By ID
```javascript
// Returns a single element with the specified ID
const element = document.getElementById('myId');
```

### By Class Name
```javascript
// Returns a live HTMLCollection of elements with the specified class
const elements = document.getElementsByClassName('myClass');
```

### By Tag Name
```javascript
// Returns a live HTMLCollection of elements with the specified tag name
const paragraphs = document.getElementsByTagName('p');
```

### Using Query Selectors
```javascript
// Returns the first element that matches the CSS selector
const firstMatch = document.querySelector('.myClass');

// Returns all elements that match the CSS selector (NodeList)
const allMatches = document.querySelectorAll('.myClass');
```

## 2. Manipulating Elements

### Changing Content
```javascript
// Change text content
element.textContent = 'New text';

// Change HTML content
element.innerHTML = '<span>New HTML</span>';
```

### Modifying Attributes
```javascript
// Get attribute
const value = element.getAttribute('href');

// Set attribute
element.setAttribute('href', 'https://example.com');

// Remove attribute
element.removeAttribute('href');

// Check if attribute exists
const hasAttribute = element.hasAttribute('href');
```

### Manipulating Classes
```javascript
// Add class
element.classList.add('newClass');

// Remove class
element.classList.remove('oldClass');

// Toggle class
element.classList.toggle('active');

// Check if class exists
const hasClass = element.classList.contains('active');
```

### Modifying Styles
```javascript
// Set individual style
element.style.backgroundColor = 'blue';
element.style.fontSize = '16px';

// Get computed style
const computedStyle = window.getComputedStyle(element);
```

## 3. Creating and Removing Elements

### Creating Elements
```javascript
// Create new element
const newDiv = document.createElement('div');

// Add content
newDiv.textContent = 'New Element';

// Add to document
document.body.appendChild(newDiv);
```

### Removing Elements
```javascript
// Remove element
element.remove();

// Remove child element
parent.removeChild(child);
```

## 4. Event Handling

### Adding Event Listeners
```javascript
// Basic event listener
element.addEventListener('click', function(event) {
    console.log('Element clicked!');
});

// With arrow function
element.addEventListener('mouseover', (event) => {
    console.log('Mouse over element!');
});

// Remove event listener
element.removeEventListener('click', handlerFunction);
```

### Common Events
```javascript
// Click event
button.addEventListener('click', handleClick);

// Form submission
form.addEventListener('submit', handleSubmit);

// Input changes
input.addEventListener('input', handleInput);

// Key events
document.addEventListener('keydown', handleKeyPress);

// Mouse events
element.addEventListener('mouseenter', handleMouseEnter);
element.addEventListener('mouseleave', handleMouseLeave);
```

## 5. DOM Traversal

### Navigating Between Nodes
```javascript
// Parent node
const parent = element.parentNode;

// Child nodes
const children = element.children;
const firstChild = element.firstElementChild;
const lastChild = element.lastElementChild;

// Siblings
const nextSibling = element.nextElementSibling;
const previousSibling = element.previousElementSibling;
```

## 6. Practical Example
```javascript
// Creating a dynamic list
function createDynamicList() {
    // Create container
    const container = document.createElement('div');
    container.className = 'list-container';

    // Create list
    const ul = document.createElement('ul');

    // Create list items
    for (let i = 1; i <= 3; i++) {
        const li = document.createElement('li');
        li.textContent = `Item ${i}`;
        
        // Add click event
        li.addEventListener('click', () => {
            li.classList.toggle('selected');
        });

        ul.appendChild(li);
    }

    // Add list to container
    container.appendChild(ul);
    document.body.appendChild(container);
}

// Call the function
createDynamicList();
```

## Best Practices
1. Always use appropriate selectors for performance
2. Cache DOM elements that you'll use multiple times
3. Use event delegation for dynamic elements
4. Be careful with innerHTML due to security concerns
5. Remove event listeners when they're no longer needed
6. Use document fragments for batch DOM updates

## Common Pitfalls to Avoid
1. Excessive DOM manipulation
2. Not cleaning up event listeners
3. Using innerHTML when textContent would suffice
4. Not checking if elements exist before manipulating them
5. Inefficient selector usage
