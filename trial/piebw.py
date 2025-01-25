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
