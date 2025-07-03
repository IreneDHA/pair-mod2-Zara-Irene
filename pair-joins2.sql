USE northwind;
-- Empleadas que sean de la misma ciudad
-- ubicación, nombre y apellido
-- ¿sabes decir quién es el director?
SELECT trabajadores.lastname AS apellidotrabajador, trabajadores.firstname AS nombretrabajador, trabajadores.city AS ciudadtrabajador, trabajadores.reportsto, jefes.lastname AS jefeapellido, jefes.firstname as nombrejefe, jefes.city AS ciudadjefe, jefes.employeeid -- (esta columna y trabajadores.reportsto es de control)
FROM employees AS trabajadores -- lastname, firstname, city, reportsto (nombrejefe y apellido jefe)
LEFT JOIN employees AS jefes
ON jefes.employeeid = trabajadores.reportsto;
-- employees.firstname y employees.reportsto
-- on tenemos que hacerlo con el employeeidid = reportsto

-- todas las categorías de productos, incluso si no tienen productos asociados.
-- el nombre de la categoria y el nombre de los productos
-- right join con categories
SELECT * FROM products;
SELECT * FROM categories;

SELECT categoryname, productname 
FROM products 
RIGHT JOIN categories
ON products.categoryid = categories.categoryid;

SELECT categoryid
FROM products
WHERE productid is NULL;

-- lista de todos los pedidos & datos de las empresas clientes
-- tablas: orders y customers FK customerid
SELECT * FROM orders; -- orderid
SELECT * FROM customers; -- companyname
SELECT orders.orderid, customers.companyname, orders.customerid, customers.customerid
FROM orders 
LEFT JOIN customers
ON orders.customerid = customers.customerid
WHERE customers.companyname is not NULL;
-- WHERE customers.companyname = NULL;
