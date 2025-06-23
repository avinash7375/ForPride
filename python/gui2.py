import tkinter as tk

def on_enter_button(e):
    button.config(bg="#007acc", fg="white", font=("Helvetica", 12, "bold"))
    button.config(cursor="hand2")

def on_leave_button(e):
    button.config(bg="#f0f0f0", fg="black", font=("Helvetica", 12))
    button.config(cursor="arrow")

def on_enter_label(e):
    label.config(fg="#007acc", font=("Helvetica", 12, "underline"))
    label.config(cursor="hand2")

def on_leave_label(e):
    label.config(fg="black", font=("Helvetica", 12))
    label.config(cursor="arrow")

root = tk.Tk()
root.title("Hoverable Button and Label")
root.geometry("300x200")
root.config(bg="white")

# Hoverable Button
button = tk.Button(root, text="Hover Me", bg="#f0f0f0", fg="black", font=("Helvetica", 12), relief="raised", bd=2)
button.pack(pady=40)

button.bind("<Enter>", on_enter_button)
button.bind("<Leave>", on_leave_button)

# Hoverable Label
label = tk.Label(root, text="Hover over this label", fg="black", bg="white", font=("Helvetica", 12))
label.pack()

label.bind("<Enter>", on_enter_label)
label.bind("<Leave>", on_leave_label)

root.mainloop()
