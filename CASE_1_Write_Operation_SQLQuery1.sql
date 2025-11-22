CREATE DATABASE PythonSQL;
USE PythonSQL; 

CREATE TABLE Sales(
    sale_id INT,
    sale_date DATE,
    customer VARCHAR(100),
    product VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
)

SELECT * FROM Sales

INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (1, '2022-04-22', 'Ana', 'Phone', 2000, 1);