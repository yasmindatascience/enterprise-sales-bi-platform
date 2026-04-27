INSERT INTO customers (name, region)
VALUES ('João','SP'),('Maria','RJ'),('Carlos','MG');

INSERT INTO products (name, category, price)
VALUES ('Notebook','Tech',3000),('Mouse','Tech',100),('Cadeira','Office',800);

INSERT INTO sales (customer_id, product_id, quantity, sale_date)
VALUES
(1,1,1,'2024-01-10'),
(2,2,2,'2024-01-11'),
(3,3,1,'2024-01-12'),
(1,2,3,'2024-01-13');
