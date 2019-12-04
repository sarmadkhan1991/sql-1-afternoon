-- Table Person
-- Step 1
CREATE TABLE person 
(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

-- Step 2
INSERT INTO person 
    (name, age, height, city, favorite_color)
VALUES 
    ('james', 32, 183, 'phoenix', 'blue'),
    ('john', 40, 175, 'dallas', 'red'),
    ('sam', 28, 180, 'chicago', 'green'),
    ('alex', 30, 166, 'tucson', 'yellow'),
    ('jim', 25, 176, 'louisville', 'black');

-- Step 3
SELECT * FROM person
ORDER BY height DESC;

-- Step 4
SELECT * FROM person
ORDER BY height;

-- Step 5
SELECT * FROM person
ORDER BY age DESC;

-- Step 6
SELECT * FROM person
WHERE age > 20;

-- Step 7
SELECT * FROM person
WHERE age = 18;

-- Step 8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- Step 9
SELECT * FROM person
WHERE age <> 27;

-- Step 10 
SELECT * FROM person
WHERE favorite_color <> 'red';

-- Step 11
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

-- Step 12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'blue';

-- Step 13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- Step 14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

-- Table orders 

-- Step 1
CREATE TABLE orders 
(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(200),
    product_price NUMERIC NOT NULL,
    quantity INTEGER NOT NULL
)

-- Step 2

INSERT INTO orders 
    (person_id, product_name, product_price, quantity)
VALUES
    (0, 'corn', 10, 5),
    (2, 'juice', 5.50, 2),
    (3, 'chips', 2.20, 4),
    (4, 'soda', 4.50, 3),
    (3, 'bread', 6.50, 1);

-- Step 3
SELECT * FROM orders;

-- Step 4
SELECT SUM(quantity) FROM orders;

-- Step 5
SELECT SUM(product_price * quantity) FROM orders;

-- Step 6
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 3;

-- Table Artist

-- Step 1
INSERT INTO artist 
    (name)
VALUES
    ('Modest Mouse'),
    ('Jungle'),
    ('Foster The People');

-- Step 2
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- Step 3
SELECT * FROM artist
ORDER BY name LIMIT 5;

-- Step 4
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Step 5
SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Table employee

-- Step 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- Step 2
SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

-- Step 3
SELECT * FROM employee
ORDER BY birth_date LIMIT 1;

-- Step 4 
SELECT * FROM employee
WHERE reports_to = 2;

-- Step 5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- Table Invoice

-- Step 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- Step 2
SELECT * FROM invoice
ORDER BY total DESC LIMIT 1;

-- Step 3
SELECT * FROM invoice
ORDER BY total LIMIT 1;

-- Step 4
SELECT * FROM invoice
WHERE total > 5;

-- Step 5
SELECT * FROM invoice
WHERE total < 5;

-- Step 6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Step 7
SELECT AVG(total) FROM invoice;

-- Step 8
SELECT SUM(total) FROM invoice;