-- EJERCICIO 1
-- Ciudades que empiezan con "A" o "B". Por un extraño motivo, nuestro jefe quiere que le devolvamos una tabla con aquellas compañías que están afincadas en ciudades que empiezan por "A" o "B". Necesita que le devolvamos la ciudad, el nombre de la compañía y el nombre de contacto.
-- la ciudad, el nombre de la compañía y el nombre de contacto.

USE northwind;

SELECT *
FROM customers;

SELECT city, company_name, contact_name
FROM customers
WHERE city LIKE "A%" OR city LIKE "B%";

-- EJERCICIO 2: Número de pedidos que han hecho en las ciudades que empiezan con L. En este caso, nuestro objetivo es devolver los mismos campos que en la query anterior el número de total de pedidos que han hecho todas las ciudades que empiezan por "L".
SELECT city, company_name, contact_name
FROM customers
WHERE city LIKE "L%";

SELECT* FROM orders;

SELECT customer_id, COUNT(order_id)
FROM orders
GROUP BY(customer_id);

SELECT customers.city, customers.company_name, customers.contact_name, COUNT(orders.order_id) AS cumero_pedidos
FROM customers
INNER JOIN orders
ON customers.customer_id=orders.customer_id
WHERE city LIKE "L%"
GROUP BY(customers.customer_id);

-- EJERCICIO 3
-- Todos los clientes cuyo "country" no incluya "Sales". Nuestro objetivo es extraer los clientes que no tengan el titulo de "Sales" en "ContactTitle" . Extraer el nombre de contacto, su titulo de contacto y el nombre de la compañía.

SELECT* FROM customers;

SELECT contact_name, contact_title, company_name
FROM customers
WHERE contact_title NOT LIKE ("Sales%");

-- EJERCICIO 4
-- Todos los clientes que no tengan una "A" en segunda posición en su nombre. Devolved unicamente el nombre de contacto. En contact_name

SELECT contact_name
FROM customers
WHERE contact_name NOT LIKE ("_a%");

-- EJERCICIO 5
-- Extraer toda la información sobre las compañías que tengamos en la bases de datos. Nuestros jefes nos han pedido que creemos una query que nos devuelva todos los clientes y proveedores que tenemos en la bases de datos. Mostrad la ciudad a la que pertenecen, el nombre de la empresa y el nombre del contacto, además de la relación (Proveedor o Cliente). Pero importante! No debe haber duplicados en nuestra respuesta. La columna Relationship no existe y debe ser creada como columna temporal. Para ello añade el valor que le quieras dar al campo y utilizada como alias Relationship.

SELECT customers.city, customers.company_name, customers.contact_name, "cliente" AS relationship
FROM customers
UNION
SELECT suppliers.city, suppliers.company_name, suppliers.contact_name, "proveedor" AS relationship
FROM suppliers;

-- ordenamos en orden alfabético:
SELECT customers.city, customers.company_name, customers.contact_name, "cliente" AS relationship
FROM customers
UNION
SELECT suppliers.city, suppliers.company_name, suppliers.contact_name, "proveedor" AS relationship
FROM suppliers
ORDER BY(city);

-- EJERCICIO 6
-- Extraer todas las categorías de la tabla categories que contengan en la descripción "sweet" o "Sweet".

SELECT* FROM categories;

SELECT category_name, `description` 
FROM categories
WHERE `description` LIKE ("%sweet%", "%Sweet%"); -- no funciona, quizás habría que usar REGEX






