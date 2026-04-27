-- Receita total
SELECT SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- Produtos mais vendidos
SELECT p.name, SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Clientes que mais gastam
SELECT c.name, SUM(p.price * s.quantity) AS spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.name
ORDER BY spent DESC;

-- Receita por região
SELECT c.region, SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.region;
