use Northwind

--1)
create procedure BuscarEmpleado  @DateBegin date, @DateEnd date, @Region varchar(20)
as 
select o.EmployeeID, e.FirstName as Nombre, o.OrderDate, o.ShipCity
from Orders O inner join Employees E on O.EmployeeID = E.EmployeeID
where o.OrderDate between @DateBegin and @DateEnd and o.ShipCity = @Region
group by o.EmployeeID,o.OrderDate,E.FirstName,o.ShipCity



exec BuscarEmpleado '1996-07-04 00:00:00.000','1997-07-29 00:00:00.000','Reims'
drop procedure BuscarEmpleado

--2)
create proc AddProduct  @Productname varchar(40), @SupID int, @CatID int, @QxU varchar(20),
@UnitP money, @UnitStock smallint, @UnitsOrder smallint, @ReorderLvl smallint, @Dis bit
as
Insert into Products(ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice, UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued)
values(@Productname,@SupID,@CatID,@QxU,@UnitP,@UnitStock,@UnitsOrder,@ReorderLvl,@Dis)


exec AddProduct 'simp', 1,1,'goooood',20,10,10,10,1

select* from Products

--3)
create proc Clasificar  @Date1 datetime, @Date2 datetime
as
select e.FirstName,sum((od.UnitPrice *od.Quantity *(1-od.Discount))) as monto,
Estado = 
case 
when sum(od.UnitPrice *od.Quantity *(1-od.Discount))< 9000 then 'Negligente' 
when sum(od.UnitPrice *od.Quantity *(1-od.Discount)) < 20000 and 9000<sum(od.UnitPrice *od.Quantity *(1-od.Discount))  then 'Entrenado' 
when sum(od.UnitPrice *od.Quantity *(1-od.Discount)) >20000 then 'Eficiente'
else 'Nada'
end

from Employees e inner join Orders o on e.EmployeeID = o.EmployeeID
inner join [Order Details] od on od.OrderID = o.OrderID
inner join Products p on p.ProductID = od.ProductID

where o.OrderDate between @Date1 and @Date2
group by e.FirstName
order by e.FirstName

 exec Clasificar '1996-07-04 00:00:00.000','1997-07-29 00:00:00.000'

 --4)
create PROC product @NOMBRE VARCHAR(50), @territories varchar(20)
AS

  SELECT top 1 with ties e.FirstName,p.ProductName, sum(od.Quantity )as Cantidad,
  sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as monto, t.TerritoryDescription
  FROM Products P INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
  INNER JOIN Orders O ON O.OrderID = OD.OrderID
  INNER JOIN Employees E ON E.EmployeeID = O.EmployeeID
  inner join EmployeeTerritories et on et.EmployeeID = e.EmployeeID
  inner join Territories t on t.TerritoryID = et.TerritoryID

  where e.FirstName = @NOMBRE and t.TerritoryDescription = @territories
  group by od.Quantity,e.FirstName,p.ProductName,t.TerritoryDescription
  order by Cantidad asc


EXEC product 'Margaret','Greensboro'

--5) 
alter proc CantProductos @Date1 datetime, @Date2 datetime
as
select sum(od.Quantity) as Cantidad,
Redion =
case
when Region is NULL then 'Sin region'
else Region 
end

from Suppliers s inner join Products p on p.SupplierID = s.SupplierID
inner join [Order Details] od on od.ProductID = p.ProductID
inner join Orders o on o.OrderID = od.OrderID
where o.OrderDate between @Date1 and @Date2
group by s.Region
order by s.Region

exec CantProductos '1996-07-04 00:00:00.000','1997-07-29 00:00:00.000'
select * from Suppliers