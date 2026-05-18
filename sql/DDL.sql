-- 1. Customers (Independent)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_age INT,
    customer_gender VARCHAR(20)
);

-- 2. Products (Independent)
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    price_rs DECIMAL(10, 2) NOT NULL
);

-- 3. Orders (Depends on Customers)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
        ON DELETE SET NULL
);

-- 4. Order Items (Depends on Orders and Products)
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    total_price_rs DECIMAL(12, 2),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) 
        ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) 
        ON DELETE CASCADE
);