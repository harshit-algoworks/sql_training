-- CREATE TABLE customers (
--     customer_id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(150) UNIQUE,
--     city VARCHAR(50),
--     signup_date DATE DEFAULT CURRENT_DATE
-- );

-- CREATE TABLE products (
--     product_id SERIAL PRIMARY KEY,
--     product_name VARCHAR(100) NOT NULL,
--     category VARCHAR(50),
--     price NUMERIC(10, 2) CHECK (price >= 0),
--     stock INT DEFAULT 0
-- );


-- CREATE TABLE orders (
--     order_id SERIAL PRIMARY KEY,
--     customer_id INT REFERENCES customers(customer_id),
--     order_date DATE DEFAULT CURRENT_DATE,
--     status VARCHAR(30) DEFAULT 'Pending'
-- );


-- CREATE TABLE order_items (
--     order_item_id SERIAL PRIMARY KEY,
--     order_id INT REFERENCES orders(order_id),
--     product_id INT REFERENCES products(product_id),
--     quantity INT CHECK (quantity > 0),
--     unit_price NUMERIC(10, 2)
-- );

-- CREATE TABLE payments (
--     payment_id SERIAL PRIMARY KEY,
--     order_id INT REFERENCES orders(order_id),
--     amount NUMERIC(10, 2),
--     payment_date DATE DEFAULT CURRENT_DATE,
--     payment_status VARCHAR(30)
-- );
-- select * from customers;
-- select * from orders;

-- insert into customers (name,email, city)
-- values('vishal', 'vish@vvvv.com', 'mathura');


-- select product_name, price from products
-- where price between 500 and 2000;

-- select name, city from customers
-- where city = 'noida' or city = 'delhi' or city = 'gurgaon';

-- select order_id, status, order_date from orders
-- order by order_date desc
-- limit 10;

-- update orders
-- set status = 'Completed'
-- where order_id = 20
-- returning *;

-- delete from products 
-- where stock = 0
-- returning *;

-- insert into customers(name, email, city)
-- values('harshit', 'harshit.arora1@algoworks.com', 'noida')
-- on conflict (email)
-- do update 
-- set city = 'dehradun';

-- select * from customers c cross join orders; -- joins all the columns with each other 
select * from order_items oi join orders o  
on oi.order_id = o.order_id
join products p
on p.product_id = oi.product_id;