-- List every record from the customers table.
SELECT *
FROM public.customers

-- Show the unique states where customers are located, sorted alphabetically.
SELECT DISTINCT(state)
FROM public.customers
ORDER BY 1;

-- Return the first 10 customers as they appear in the table.
SELECT 
    customer_id,
    first_name,
    last_name
FROM public.customers
LIMIT 10;

-- Find customers whose age is greater than 35.
SELECT 
    customer_id,
    first_name,
    last_name,
    age
FROM customers
WHERE age > 35;   

-- List customers whose first name starts with the letter ‘A’.
SELECT 
    customer_id,
    first_name,
    last_name
FROM customers
WHERE first_name LIKE 'A%';

-- Show customers whose email address uses the ‘gmail.com’ domain.
SELECT 
    customer_id,
    first_name,
    last_name,
    email
FROM customers
WHERE email LIKE '%gmail.com%';

-- Retrieve customers who registered in the year 2024.
SELECT 
    customer_id,
    first_name,
    last_name,
    EXTRACT (YEAR FROM CAST(signup_date AS DATE)) AS reg_year
FROM customers
WHERE EXTRACT (YEAR FROM CAST(signup_date AS DATE)) = '2024';
-- Return customers whose age is between 20 and 30 (inclusive).
SELECT 
    customer_id,
    first_name,
    last_name,
    age
FROM customers
WHERE age BETWEEN 20 AND 30; 

-- List customers who live in any of these cities: Mumbai, New Delhi, Bengaluru, or Jaipur.
SELECT 
    customer_id,
    first_name,
    last_name,
    city
FROM customers
WHERE city IN ('Mumbai', 'New Delhi', 'Bengaluru', 'Jaipur');

-- List customers who do not live in these cities: Mumbai, New Delhi, Bengaluru, or Jaipur.
SELECT 
    customer_id,
    first_name,
    last_name,
    city
FROM customers
WHERE city NOT IN ('Mumbai', 'New Delhi', 'Bengaluru', 'Jaipur');

-- Show the 5 oldest customers, from oldest to youngest.
SELECT 
    customer_id,
    first_name,
    last_name,
    age
FROM public.customers
ORDER BY 4 DESC
LIMIT 5;

-- Show the 5 youngest customers, from youngest to oldest.
SELECT 
    customer_id,
    first_name,
    last_name,
    age
FROM public.customers
ORDER BY 4 
LIMIT 5;

-- Find customers whose phone number starts with ‘9’.
SELECT 
    customer_id,
    first_name,
    last_name,
    phone
FROM customers
WHERE phone LIKE '9%';

-- Return all orders placed in the year 2025.
SELECT *
FROM orders
WHERE EXTRACT (YEAR FROM order_date ) = '2025';

-- List products priced between 10,000 and 50,000, ordered from highest to lowest price.
SELECT 
    product_name,
    price
FROM products
WHERE price > 10000
ORDER BY price DESC;


