USE Northwind

--1.
select * 
from Products

--2.
select ProductID, ProductName, UnitPrice, UnitsInStock 
from Products

--3.
select all * from Products

--4.
select distinct * 
from Products

--5.
 select ProductID as identificador , productname as [Nombre producto], 
 unitprice as [precio unidad]
 from Products

 --6
 select *  
 from Products as P 
 ----------------------------------------------------------------------------------
 --USO DE WHERE
 ----------------------------------------------------------------------------------
 --1.
 SELECT * 
 FROM Products
 WHERE UnitPrice > 25


 --2.
 SELECT ProductName 
 FROM Products 
 WHERE UnitPrice = 21

 --3.
 SELECT *
 FROM Products
 WHERE UnitPrice BETWEEN 25 AND 35

 --4.
 SELECT *
 FROM Customers
 WHERE ContactName LIKE'A%'

 --5.
 SELECT COUNTRY AS Paises 
 FROM Customers
 WHERE Country LIKE 'U_'

 --6.
 select * 
 from dbo.Customers 
 where Region is null

 --7.
 select * 
 from Customers 
 where Fax is not null

 --8.
 select * 
 from Products
where UnitPrice in(10, 20, 30, 40)

 --9.
 select * from Products where UnitPrice > ANY
(select UnitPrice from [Order Details] where Quantity = 130)

--10.
select * 
from Products 
where UnitPrice > ALL
(select UnitPrice
from [Order Details] 
where Quantity = 130)

--11.
select LastName, FirstName, City 
from Employees E 
where exists
(select * 
from Customers C 
where E.City = C.City)

--------------------------------------------------------------------------------------
--ORDER BY
--------------------------------------------------------------------------------------
--1.
select * from 
dbo.Products
order by UnitPrice asc
select * 
from Products
order by UnitPrice

--2. 
select * 
from Products
order by UnitsInStock desc

--3.
select ProductID, ProductName, UnitPrice, UnitsInStock 
from dbo.Products 
order by
UnitPrice, UnitsInStock desc

-------------------------------------------------------------------------
--SUBCONSULTAS EN SELECT O CONSULTAS ANIDADAS--
-------------------------------------------------------------------------

--1. 
select * from dbo.Employees
where TitleOfCourtesy = (select TitleOfCourtesy
from dbo.Employees
where EmployeeID = 9) 

-- 2.
select * 
from dbo.Products
where CategoryID in (select CategoryID
from dbo.Categories
where CategoryName in ('Beverages','Condiments'))

-------------------------------------------------------------------------
--FUNCIONES DE AGREGACIÓN EN SELECT--
-------------------------------------------------------------------------

--2. 
select count(Region) as [NºFilas no NULL]
from dbo.Customers 

--3. 
select count(Region) as FilasNoNULL_Region, count(Fax) as FilasNoNULL_Fax 
from dbo.Customers

--4. .
select max(UnitPrice) as [Precio máximo], min(UnitsInStock) as [Stock mín imo] 
from 
dbo.Products
--5. 
select sum(Freight) as [Peso Total] 
from dbo.Orders

--6. 
select avg(Freight) as [Peso Medio] 
from dbo.Orders
-------------------------------------------------------------------------
-- INSTRUCCIÓN GROUP BY (Agrupamiento de filas en funciones de agregación)--
-------------------------------------------------------------------------

--1. M
select UnitPrice, count(*) as [Filas con este precio] 
from Products
group by UnitPrice

--2. 
select Region, City, count(*) as [Nº Clientes] 
from Customers 
where Country = 'USA'
group by Region, City
order by [Nº Clientes] desc

-------------------------------------------------------------------------
--INSTRUCCIÓN HAVING (Condiciones en los resultados de GROUP BY)--
-------------------------------------------------------------------------

-- 1. 
select UnitPrice, count(*) as [Filas con este precio] 
from Products
where UnitPrice > 10
group by UnitPrice
having count(*) > 2

-------------------------------------------------------------------------------------------
--EJECUCION DE CONSULTAS Y SU DESCRIPCION 
-------------------------------------------------------------------------------------------

--1.Mostrar en orden alfabetico los paises de los 
--provehedores repitiendo unicamente una vez cada pais
SELECT DISTINCT COUNTRY
FROM Suppliers
ORDER BY COUNTRY

--2.Mostrar el nombre de las compañias cuyo fax sea null
select CompanyName, Fax
from Suppliers
where fax is null

--3. Mostrar el nombre y pais de los provehedores que se localizen 
-- Japon e Italia
select CompanyName, Country
from Suppliers
where Country in ('Japan','Italy')

--4. Mostrar el nombre y el precio unitario de los productos que valgan entre
-- 10 y 20
select productname, UnitPrice
from Products
where UnitPrice between 10 and 20

--5. Mostrar el ID, nombre, precio unitario e ID del provehedor donde
-- el nombre contenga la letra T o el ID sea 46 y que ademas el precio 
-- unitario sea mayor que 16
select ProductID, ProductName, SupplierID, UnitPrice
from Products
where (ProductName like 'T%' or ProductID = 46)
and (UnitPrice > 16)

--6. Mostar el id de la orden, el id del producto y la cantidad de los 
-- primeros 5 registros y ordenarlos por la cantidad  de 
-- froma desendente
select top 5  OrderID,ProductID, Quantity
from [Order Details]
order by Quantity desc

--7.Mostar el id de la orden, el id del producto y la cantidad de los 
-- primeros 5 registros y los que sena iguales tambien, ademas 
--ordenarlos por la cantidad  de froma desendente
select top 5 with ties  OrderID,ProductID, Quantity
from [Order Details]
order by Quantity desc

--8. Mostar la cuenta del numero de registros que 
-- contiene la tabla empleados
select count (*)
from Employees

--9. Mostrar el id y la cantidad total agrupando 
-- por id teniendo que la suma sea mayor o igual que 30
select ProductID, sum(Quantity) as [Cantidad total]
from [Order Details]
group by ProductID
having sum(Quantity) >= 30

--10. Mostrar el id y la cantidad total agrupando 
-- por id teniendo que la suma sea mayor a 1200
select ProductID, sum(Quantity) as [Cantidad total]
from [Order Details]
group by ProductID
having sum(Quantity) >1200
