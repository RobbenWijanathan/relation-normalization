-- 1. Insert into Customers
INSERT INTO customers (customer_id, customer_name, customer_age, customer_gender) VALUES
(74, 'Arjun', 40, 'Male'),
(54, 'Priya', 33, 'Female'),
(71, 'Liam', 42, 'Male'),
(56, 'Emma', 53, 'Female'),
(79, 'Ayaan', 32, 'Male');

-- 2. Insert into Products
INSERT INTO products (product_id, product_name, price_rs) VALUES
(148, 'Apples', 150.00),
(149, 'Bananas', 40.00),
(248, 'Oranges', 80.00),
(242, 'Grapes', 200.00),
(299, 'Strawberries', 300.00);

-- 3. Insert into Orders
-- (References customer_id from customers table)
INSERT INTO orders (order_id, date, customer_id) VALUES
(1236, '2024-01-01', 74),
(1428, '2024-01-01', 54),
(1585, '2024-01-01', 71),
(1240, '2024-01-02', 56),
(1311, '2024-01-03', 79);

-- 4. Insert into Order Items
-- (References order_id from orders table and product_id from products table)
INSERT INTO order_items (order_id, product_id, quantity, total_price_rs) VALUES
(1236, 148, 13, 1950.00),
(1428, 149, 1, 40.00),
(1585, 248, 3, 240.00),
(1240, 242, 15, 3000.00),
(1311, 299, 18, 5400.00);