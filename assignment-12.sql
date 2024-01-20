create database pizza_shop125;

insert into pizzas (pizza_id, pizza_name, price)
values (1, 'Pepperoni & cheese', 7.99);

insert into pizzas (pizza_id, pizza_name, price)
values (2, 'vegetarian', 9.99);

insert into pizzas (pizza_id, pizza_name, price)
values (3, 'Meat Lovers', 14.99);

insert into pizzas (pizza_id, pizza_name, price)
values (4, 'Hawaiian', 12.99);

select * from pizzas;


INSERT INTO Customers (customer_name, phone_number) VALUES ('Trevor Page', '226-555-4982');
INSERT INTO Orders (customer_id, order_date) VALUES (1, '2014-09-10 09:47:00');
INSERT INTO order_details (order_number, pizza_id, quantity) VALUES (1, 1, 1), (1, 3, 1);


INSERT INTO Customers (customer_name, phone_number) VALUES ('John Doe', '555-555-9498');
INSERT INTO Orders (customer_id, order_date) VALUES (2, '2014-09-10 13:20:00');
INSERT INTO order_details (order_number, pizza_id, quantity) VALUES (2, 2, 1), (2, 3, 2);


INSERT INTO Customers (customer_name, phone_number) VALUES ('Trevor Page', '226-555-4982');
INSERT INTO Orders (customer_id, order_date) VALUES (3, '2014-09-10 09:47:00');
INSERT INTO order_details (order_number, pizza_id, quantity) VALUES (3, 3, 1), (3, 4, 1);

SELECT
    c.customer_name,
    SUM(od.quantity * p.price) AS total_spending
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
JOIN
    order_details od ON o.order_number = od.order_number
JOIN
    Pizzas p ON od.pizza_id = p.pizza_id
GROUP BY
    c.customer_name;
    
    
    
    SELECT
    c.customer_name,
    DATE(o.order_date) AS order_date,
    SUM(od.quantity * p.price) AS total_spending
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
JOIN
    order_details od ON o.order_number = od.order_number
JOIN
    Pizzas p ON od.pizza_id = p.pizza_id
GROUP BY
    c.customer_name,
    DATE(o.order_date);


