USE northwind
SELECT * FROM products;
SELECT MIN(UnitPrice) AS lowestPrice, MAX(UnitPrice) AS highestPrice FROM products
SELECT COUNT(UnitsInStock) FROM products
SELECT SUM(UnitsInStock), AVG(UnitPrice) FROM products
SELECT * FROM orders;
SELECT DISTINCT ShipCountry FROM orders
SELECT MIN(Freight), MAX(Freight)
FROM orders
WHERE ShipCountry = "UK";
SELECT AVG(UnitPrice) FROM products
SELECT ProductName, UnitPrice FROM products
WHERE UnitPrice > 28.86636364
ORDER BY UnitPrice DESC

SELECT COUNT(Discontinued)
WHERE Discontinued = 1
