# Python GUI Programming with Tkinter

## A Comprehensive Tutorial for Computer Science Students

### Course Overview

This tutorial covers the fundamentals of Graphical User Interface (GUI) programming in Python using Tkinter, the standard GUI library that comes bundled with Python. The course is structured to progress from basic concepts to more advanced applications.

### Prerequisites

- Basic Python programming knowledge
- Understanding of object-oriented programming concepts
- Python 3.x installed on your computer

### Module 1: Introduction to Tkinter

### 1.1 What is Tkinter?

Tkinter is Python's standard GUI (Graphical User Interface) package. It provides a fast and easy way to create GUI applications. Tkinter is actually a Python wrapper for the Tk GUI toolkit.

### 1.2 Your First GUI Application

```python
import tkinter as tk

# Create the main window
window = tk.Tk()
window.title("My First GUI App")
window.geometry("300x200")

# Create and pack a label
label = tk.Label(window, text="Hello, GUI World!")
label.pack(pady=20)

# Create and pack a button
button = tk.Button(window, text="Click Me!", command=window.quit)
button.pack()

# Start the event loop
window.mainloop()

```

### Key Concepts to Explain:

- The main window (Tk instance)
- Widgets (Label, Button)
- Geometry management (pack)
- Event loop

### Module 2: Basic Widgets

### 2.1 Common Widgets

```python
import tkinter as tk
from tkinter import ttk  # Themed widgets

class WidgetDemo:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Widget Demonstration")

        # Label
        self.label = tk.Label(self.window, text="Enter your name:")
        self.label.pack()

        # Entry
        self.entry = tk.Entry(self.window)
        self.entry.pack()

        # Button
        self.button = tk.Button(self.window, text="Submit",
                              command=self.handle_submit)
        self.button.pack()

        # Checkbutton
        self.check_var = tk.BooleanVar()
        self.check = tk.Checkbutton(self.window, text="Subscribe?",
                                   variable=self.check_var)
        self.check.pack()

        # Radio buttons
        self.radio_var = tk.StringVar(value="option1")
        self.radio1 = tk.Radiobutton(self.window, text="Option 1",
                                    variable=self.radio_var, value="option1")
        self.radio2 = tk.Radiobutton(self.window, text="Option 2",
                                    variable=self.radio_var, value="option2")
        self.radio1.pack()
        self.radio2.pack()

    def handle_submit(self):
        name = self.entry.get()
        subscribed = self.check_var.get()
        option = self.radio_var.get()
        print(f"Name: {name}")
        print(f"Subscribed: {subscribed}")
        print(f"Option selected: {option}")

    def run(self):
        self.window.mainloop()

# Create and run the application
app = WidgetDemo()
app.run()

```

### Module 3: Layout Management

### 3.1 Geometry Managers

Tkinter provides three geometry managers:

1. Pack
2. Grid
3. Place

Here's an example using the grid manager:

```python
import tkinter as tk

class LoginForm:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Login Form")

        # Username
        tk.Label(self.window, text="Username:").grid(row=0, column=0, padx=5, pady=5)
        self.username = tk.Entry(self.window)
        self.username.grid(row=0, column=1, padx=5, pady=5)

        # Password
        tk.Label(self.window, text="Password:").grid(row=1, column=0, padx=5, pady=5)
        self.password = tk.Entry(self.window, show="*")
        self.password.grid(row=1, column=1, padx=5, pady=5)

        # Login button
        tk.Button(self.window, text="Login",
                 command=self.handle_login).grid(row=2, column=0,
                 columnspan=2, pady=10)

    def handle_login(self):
        print(f"Login attempted with username: {self.username.get()}")

    def run(self):
        self.window.mainloop()

# Create and run the application
login_form = LoginForm()
login_form.run()

```

### Module 4: Events and Bindings

### 4.1 Event Handling

```python
import tkinter as tk

class EventDemo:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Event Handling Demo")

        # Create a canvas for mouse events
        self.canvas = tk.Canvas(self.window, width=300, height=200,
                              bg="white")
        self.canvas.pack(pady=10)

        # Bind mouse events
        self.canvas.bind("<Button-1>", self.handle_click)
        self.canvas.bind("<B1-Motion>", self.handle_drag)

        # Bind keyboard events
        self.window.bind("<Key>", self.handle_keypress)

        # Status label
        self.status = tk.Label(self.window, text="Status: Ready")
        self.status.pack(pady=5)

    def handle_click(self, event):
        self.status.config(text=f"Clicked at: ({event.x}, {event.y})")
        self.canvas.create_oval(event.x-2, event.y-2, event.x+2, event.y+2,
                              fill="black")

    def handle_drag(self, event):
        self.status.config(text=f"Dragging at: ({event.x}, {event.y})")
        self.canvas.create_oval(event.x-2, event.y-2, event.x+2, event.y+2,
                              fill="blue")

    def handle_keypress(self, event):
        self.status.config(text=f"Key pressed: {event.char}")

    def run(self):
        self.window.mainloop()

# Create and run the application
event_demo = EventDemo()
event_demo.run()

```

### Module 5: Advanced Topics

### 5.1 Menus and Dialogs

```python
import tkinter as tk
from tkinter import messagebox, filedialog

class AdvancedDemo:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Advanced GUI Features")

        # Create menu bar
        self.menu_bar = tk.Menu(self.window)
        self.window.config(menu=self.menu_bar)

        # File menu
        self.file_menu = tk.Menu(self.menu_bar, tearoff=0)
        self.menu_bar.add_cascade(label="File", menu=self.file_menu)
        self.file_menu.add_command(label="Open", command=self.open_file)
        self.file_menu.add_command(label="Save", command=self.save_file)
        self.file_menu.add_separator()
        self.file_menu.add_command(label="Exit", command=self.window.quit)

        # Help menu
        self.help_menu = tk.Menu(self.menu_bar, tearoff=0)
        self.menu_bar.add_cascade(label="Help", menu=self.help_menu)
        self.help_menu.add_command(label="About", command=self.show_about)

        # Text area
        self.text_area = tk.Text(self.window, height=10, width=40)
        self.text_area.pack(padx=10, pady=10)

    def open_file(self):
        file_path = filedialog.askopenfilename()
        if file_path:
            try:
                with open(file_path, 'r') as file:
                    content = file.read()
                    self.text_area.delete(1.0, tk.END)
                    self.text_area.insert(tk.END, content)
            except Exception as e:
                messagebox.showerror("Error", f"Could not open file: {str(e)}")

    def save_file(self):
        file_path = filedialog.asksaveasfilename()
        if file_path:
            try:
                content = self.text_area.get(1.0, tk.END)
                with open(file_path, 'w') as file:
                    file.write(content)
            except Exception as e:
                messagebox.showerror("Error", f"Could not save file: {str(e)}")

    def show_about(self):
        messagebox.showinfo("About", "Advanced GUI Demo\\nVersion 1.0")

    def run(self):
        self.window.mainloop()

# Create and run the application
advanced_demo = AdvancedDemo()
advanced_demo.run()

```

### Practice Exercises

1. Create a simple calculator application using Tkinter
2. Build a to-do list manager with the ability to add, delete, and mark tasks as complete
3. Develop a form validation application that checks user input
4. Create a drawing application using the Canvas widget
5. Build a simple text editor with file operations

### Assessment Ideas

1. Individual Projects:
    - Have students create a custom GUI application
    - Implement a specific set of features using different widgets
2. Group Projects:
    - Develop a more complex application in teams
    - Present and explain their code to the class
3. Quizzes:
    - Widget properties and methods
    - Event handling concepts
    - Layout management techniques

### Additional Resources

- Official Python Tkinter documentation
- Online Tkinter tutorials and forums
- GUI design principles and best practices
- Python GUI alternatives (PyQt, wxPython)
