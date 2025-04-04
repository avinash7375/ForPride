To make the **Sales Management System** more complex and realistic, we can add more advanced features and additional tables for:

1. **Product Categories**: To categorize different types of products (e.g., pens, pencils, etc.).
2. **Discounts and Promotions**: To handle discounts or promotional offers applied to sales.
3. **Suppliers**: To track who supplies the pens.
4. **Sales Representatives**: To assign a sales representative for each sale.
5. **Shipping Details**: To manage shipping information for each order.
6. **Tax Calculation**: To apply tax on sales based on the location or other criteria.
7. **Inventory Transactions**: To track stock movements (inbound and outbound).

### Step 1: Enhanced Database Design

We will create several new tables:

1. **product_categories**: Stores categories like pens, pencils, etc.
2. **suppliers**: Stores information about suppliers who provide the pens.
3. **sales_representatives**: Stores details about the sales team.
4. **shipping_details**: Stores information on the shipping address and tracking.
5. **tax_rates**: Stores tax rates that can be applied based on regions.
6. **inventory_transactions**: Tracks the inbound and outbound movements of products.
7. **discounts**: Tracks promotional discounts that can be applied.

### Step 2: Create the Database and Tables

```sql
-- Create the database for the sales management system
CREATE DATABASE SalesManagement;

-- Use the database
USE SalesManagement;

-- Create product categories table
CREATE TABLE product_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Create the products table (with category reference)
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    category_id INT,
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES product_categories(id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

-- Create suppliers table
CREATE TABLE suppliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    contact_email VARCHAR(100),
    contact_phone VARCHAR(15)
);

-- Create sales representatives table
CREATE TABLE sales_representatives (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create the sales table (with sales representative reference)
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    sales_rep_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_representatives(id)
);

-- Create sales details table (with quantity, price, discount applied)
CREATE TABLE sales_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    discount_id INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (sale_id) REFERENCES sales(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (discount_id) REFERENCES discounts(id)
);

-- Create discounts table (promotional discounts)
CREATE TABLE discounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    discount_name VARCHAR(100),
    discount_percentage DECIMAL(5, 2),
    start_date DATE,
    end_date DATE
);

-- Create shipping details table
CREATE TABLE shipping_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,
    shipping_address VARCHAR(200),
    shipping_method VARCHAR(50),
    tracking_number VARCHAR(100),
    ship_date DATE,
    delivery_date DATE,
    FOREIGN KEY (sale_id) REFERENCES sales(id)
);

-- Create tax rates table
CREATE TABLE tax_rates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(100),
    tax_percentage DECIMAL(5, 2)
);

-- Create inventory table (managing stock quantity)
CREATE TABLE inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Create inventory transactions table (tracks stock movement)
CREATE TABLE inventory_transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    transaction_type ENUM('IN', 'OUT'),
    quantity INT,
    transaction_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(id)
);
```

### Step 3: Insert Sample Data

Now, let's insert some sample data into the new and enhanced tables.

```sql
-- Insert sample categories
INSERT INTO product_categories (category_name, description)
VALUES
('Writing Instruments', 'Products used for writing, like pens, pencils, etc.');

-- Insert sample suppliers
INSERT INTO suppliers (supplier_name, contact_name, contact_email, contact_phone)
VALUES
('Pen Supply Co.', 'Alice Johnson', 'alice@pensupply.com', '123-456-7890');

-- Insert sample products (pens)
INSERT INTO products (product_name, price, description, category_id, supplier_id)
VALUES
('Ballpoint Pen', 1.50, 'High-quality ballpoint pen for daily use', 1, 1);

-- Insert initial inventory for pens
INSERT INTO inventory (product_id, stock_quantity)
VALUES
(1, 100);  -- 100 pens in stock

-- Insert sample sales representatives
INSERT INTO sales_representatives (first_name, last_name, email, phone)
VALUES
('Robert', 'Green', 'robert@salesteam.com', '321-654-9870');

-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('John', 'Doe', 'johndoe@example.com', '123-456-7890'),
('Jane', 'Smith', 'janesmith@example.com', '234-567-8901');

-- Insert sample discounts
INSERT INTO discounts (discount_name, discount_percentage, start_date, end_date)
VALUES
('Spring Sale', 10.00, '2025-04-01', '2025-04-30');

-- Insert a sales transaction (John buys 10 pens)
INSERT INTO sales (customer_id, sale_date, total_amount, sales_rep_id)
VALUES
(1, '2025-04-04', 15.00, 1);

-- Insert sales details with discount applied (John buys 10 pens with 10% discount)
INSERT INTO sales_details (sale_id, product_id, quantity, price, discount_id, total_amount)
VALUES
(1, 1, 10, 1.50, 1, 13.50);  -- Price after 10% discount: 10 * 1.50 * 0.9 = 13.50

-- Insert shipping details for the sale
INSERT INTO shipping_details (sale_id, shipping_address, shipping_method, tracking_number, ship_date, delivery_date)
VALUES
(1, '123 Main St, New York, NY, 10001', 'Standard Shipping', 'TRACK12345', '2025-04-05', '2025-04-07');

-- Insert tax rates for region
INSERT INTO tax_rates (region, tax_percentage)
VALUES
('New York', 8.75);

-- Update inventory after sale
UPDATE inventory
SET stock_quantity = stock_quantity - 10
WHERE product_id = 1;

-- Insert inventory transaction for the sale (Outbound stock)
INSERT INTO inventory_transactions (product_id, transaction_type, quantity, transaction_date)
VALUES
(1, 'OUT', 10, '2025-04-04');
```

### Step 4: Querying the Data

Here are some complex queries involving the enhanced tables:

#### 1. **View All Sales with Discount Applied**

This query shows all sales with the applied discount and the total amount after the discount:

```sql
SELECT c.first_name, c.last_name, s.sale_date, sd.quantity, p.product_name, sd.price, d.discount_percentage, sd.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.id
JOIN sales_details sd ON s.id = sd.sale_id
JOIN products p ON sd.product_id = p.id
JOIN discounts d ON sd.discount_id = d.id;
```

#### 2. **View All Sales with Tax Applied**

This query shows all sales and calculates the tax based on the region of the customer:

```sql
SELECT c.first_name, c.last_name, s.sale_date, s.total_amount, t.tax_percentage, 
       (s.total_amount * t.tax_percentage / 100) AS tax_amount, 
       (s.total_amount + (s.total_amount * t.tax_percentage / 100)) AS total_with_tax
FROM sales s
JOIN customers c ON s.customer_id = c.id
JOIN tax_rates t ON c.city = 'New York';  -- assuming the city is stored in the customer table
```

#### 3. **View Sales with Shipping Details**

This query shows all sales along with their shipping details:

```sql
SELECT c.first_name, c.last_name, s.sale_date, sh.shipping_address, sh.shipping_method, sh.tracking_number, sh.ship_date, sh.delivery_date
FROM sales s
JOIN customers c ON s.customer_id = c.id
JOIN shipping_details sh ON s.id = sh.sale_id;
```

#### 4. **View All Products and Their Stock**

This query shows all products, their stock quantity, and the total sales made for each product:

```sql
SELECT p.product_name, i.stock_quantity, SUM(sd.quantity) AS total_sold
FROM products p
JOIN inventory i ON p.id = i.product_id
JOIN sales_details sd ON p.id = sd.product_id
GROUP BY p.id;
```

### Conclusion

With these additional features, we now have a more **complex Sales Management System** that includes:

1. **Product Categories**: Organizing products like pens, pencils, etc.
2. **Discounts and Promotions**: Managing sales promotions with discount codes.
3. **Suppliers and Sales Reps**: Tracking suppliers and the sales representatives who handle sales.
4. **Shipping**: Managing shipping information and tracking.
5. **Tax Calculation**: Automatically applying taxes to sales.
6. **Inventory and Transactions**: Managing stock levels and transactions.

This structure can handle a wide range of sales-related activities, from managing products and customers to processing sales and handling payments.

Let me know if you would like further enhancements or explanations!
