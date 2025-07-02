USE Northwind;


-- Ejercicio 1

-- Primer paso, explorar las tablas y sus columnas
SELECT *
FROM CUSTOMERS; -- de aquí sacaremos las cols customer_id y company_name

SELECT *
FROM orders; -- de aquí trabajaremos con la col customer_id, y order_id, Y ship_country

-- Segundo paso: hacer la unión mostrando solo customer_id para comprobar que se está realizando de manera correcta

SELECT c.customer_id, o.customer_id
	FROM customers AS c
	INNER JOIN ORDERS AS o
    ON c.customer_id=o.customer_id;
    
    -- Tercer paso: incluir las columnas que se nos piden en el select

-- SELECT *
	-- FROM customers AS c
	-- INNER JOIN ORDERS AS o
    -- ON c.customer_id=o.customer_id;

SELECT c.customer_id, c.company_name, COUNT(o.order_id) AS numero_pedidos
	FROM customers AS c
	INNER JOIN orders AS o
    ON c.customer_id=o.customer_id
    WHERE ship_country="UK"
	GROUP BY c.customer_id; -- según las versiones, si agrupamos por customer_id, el nombre va a ser el mismo. Es un tema de versiones.
    
    -- Ejercicio 2
-- Cuántos objetos ha pedido cada empresa cliente de UK durante cada año. Debemos conocer el nombre de la empresa, el año, y la cantidad de objetos que han pedido. Para ello hará falta hacer 2 joins.

SELECT*
FROM order_details; -- De aquí sacaremos quantity

SELECT *
FROM orders; -- de aquí sacaremos la col order_date

SELECT *
FROM CUSTOMERS; -- de aquí sacaremos la col company_name

-- SELECT*
-- FROM orders AS o
-- INNER JOIN order_details






