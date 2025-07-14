import tkinter as tk
from tkinter import messagebox

# ===== In-memory Data Store =====
book_list = []

# ===== Functions =====
def add_book():
    title = title_text.get()
    author = author_text.get()
    year = year_text.get()
    isbn = isbn_text.get()
    
    if title and author:
        book_list.append((title, author, year, isbn))
        listbox.insert(tk.END, (title, author, year, isbn))
        clear_entries()
    else:
        messagebox.showwarning("Input Error", "Title and Author are required.")

def view_books():
    listbox.delete(0, tk.END)
    for book in book_list:
        listbox.insert(tk.END, book)

def search_book():
    listbox.delete(0, tk.END)
    query = (title_text.get(), author_text.get(), year_text.get(), isbn_text.get())
    for book in book_list:
        if query[0] in book[0] and query[1] in book[1]:
            listbox.insert(tk.END, book)

def delete_book():
    selected = listbox.curselection()
    if selected:
        book_list.pop(selected[0])
        view_books()

def update_book():
    selected = listbox.curselection()
    if selected:
        index = selected[0]
        book_list[index] = (title_text.get(), author_text.get(), year_text.get(), isbn_text.get())
        view_books()

def get_selected(event):
    selected = listbox.curselection()
    if selected:
        book = listbox.get(selected[0])
        clear_entries()
        e1.insert(tk.END, book[0])
        e2.insert(tk.END, book[1])
        e3.insert(tk.END, book[2])
        e4.insert(tk.END, book[3])

def clear_entries():
    e1.delete(0, tk.END)
    e2.delete(0, tk.END)
    e3.delete(0, tk.END)
    e4.delete(0, tk.END)

# ===== GUI Layout =====
window = tk.Tk()
window.title("Library Management System")

# Labels
tk.Label(window, text="Title").grid(row=0, column=0)
tk.Label(window, text="Author").grid(row=0, column=2)
tk.Label(window, text="Year").grid(row=1, column=0)
tk.Label(window, text="ISBN").grid(row=1, column=2)

# Entry Fields
title_text = tk.StringVar()
e1 = tk.Entry(window, textvariable=title_text)
e1.grid(row=0, column=1)

author_text = tk.StringVar()
e2 = tk.Entry(window, textvariable=author_text)
e2.grid(row=0, column=3)

year_text = tk.StringVar()
e3 = tk.Entry(window, textvariable=year_text)
e3.grid(row=1, column=1)

isbn_text = tk.StringVar()
e4 = tk.Entry(window, textvariable=isbn_text)
e4.grid(row=1, column=3)

# Listbox and Scrollbar
listbox = tk.Listbox(window, height=10, width=50)
listbox.grid(row=2, column=0, rowspan=6, columnspan=2)

sb = tk.Scrollbar(window)
sb.grid(row=2, column=2, rowspan=6)
listbox.configure(yscrollcommand=sb.set)
sb.configure(command=listbox.yview)
listbox.bind("<<ListboxSelect>>", get_selected)

# Buttons
tk.Button(window, text="Add", width=12, command=add_book).grid(row=2, column=3)
tk.Button(window, text="View All", width=12, command=view_books).grid(row=3, column=3)
tk.Button(window, text="Search", width=12, command=search_book).grid(row=4, column=3)
tk.Button(window, text="Update", width=12, command=update_book).grid(row=5, column=3)
tk.Button(window, text="Delete", width=12, command=delete_book).grid(row=6, column=3)
tk.Button(window, text="Exit", width=12, command=window.destroy).grid(row=7, column=3)

window.mainloop()

