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
        print(f"Login attempted with username: {self.username.get()} and Password: {self.password.get()}")

    def run(self):
        self.window.mainloop()

# Create and run the application
login_form = LoginForm()
login_form.run()
