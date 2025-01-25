Here are the pure PostgreSQL commands for a library management system:

```sql
-- Create Database
CREATE DATABASE library_management;

-- Connect to Database
\c library_management

-- Books Table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    quantity INTEGER NOT NULL
);

-- Members Table
CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- Borrowings Table
CREATE TABLE borrowings (
    id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES books(id),
    member_id INTEGER REFERENCES members(id),
    borrow_date DATE NOT NULL,
    return_date DATE NOT NULL
);

-- Insert Sample Books
INSERT INTO books (title, author, isbn, quantity) VALUES
('Python Programming', 'John Smith', '1234567890', 5),
('Database Management', 'Jane Doe', '0987654321', 3);

-- Insert Sample Members
INSERT INTO members (name, email, phone) VALUES
('Alice', 'alice@example.com', '1234567890'),
('Bob', 'bob@example.com', '0987654321');

-- Borrow Book Procedure
CREATE OR REPLACE FUNCTION borrow_book(
    p_book_id INTEGER, 
    p_member_id INTEGER, 
    p_borrow_days INTEGER DEFAULT 14
) RETURNS BOOLEAN AS $$
DECLARE
    current_quantity INTEGER;
BEGIN
    -- Check book availability
    SELECT quantity INTO current_quantity 
    FROM books 
    WHERE id = p_book_id;
    
    IF current_quantity > 0 THEN
        -- Reduce book quantity
        UPDATE books 
        SET quantity = quantity - 1 
        WHERE id = p_book_id;
        
        -- Record borrowing
        INSERT INTO borrowings (book_id, member_id, borrow_date, return_date)
        VALUES (p_book_id, p_member_id, CURRENT_DATE, CURRENT_DATE + p_borrow_days);
        
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Return Book Procedure
CREATE OR REPLACE FUNCTION return_book(
    p_book_id INTEGER, 
    p_member_id INTEGER
) RETURNS BOOLEAN AS $$
BEGIN
    -- Delete borrowing record
    DELETE FROM borrowings 
    WHERE book_id = p_book_id AND member_id = p_member_id;
    
    -- Increase book quantity
    UPDATE books 
    SET quantity = quantity + 1 
    WHERE id = p_book_id;
    
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

-- Search Books Function
CREATE OR REPLACE FUNCTION search_books(
    p_title VARCHAR DEFAULT NULL,
    p_author VARCHAR DEFAULT NULL
) RETURNS TABLE (
    book_id INTEGER,
    book_title VARCHAR,
    book_author VARCHAR,
    book_isbn VARCHAR,
    book_quantity INTEGER
) AS $$
BEGIN
    RETURN QUERY 
    SELECT id, title, author, isbn, quantity 
    FROM books
    WHERE 
        (p_title IS NULL OR title ILIKE '%' || p_title || '%')
        AND 
        (p_author IS NULL OR author ILIKE '%' || p_author || '%');
END;
$$ LANGUAGE plpgsql;
```