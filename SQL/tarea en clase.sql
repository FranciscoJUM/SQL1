alter proc Found @Year int
as

select   @Year as Year,MONTH(OrderDate)  as Mes  ,recaudacion = sum(od.Quantity*od.UnitPrice*(1-od.Discount)), e.EmployeeID, e.FirstName
from  Employees e inner join Orders o on e.EmployeeID = o.EmployeeID
inner join [Order Details] od on od.OrderID = o.OrderID
where  @Year = year(o.OrderDate)
group by Month(o.OrderDate),e.EmployeeID,e.FirstName
order by recaudacion desc


exec Found 1996



select datename(Month,o.OrderDate)as Mes, year(o.OrderDate) as Years, sum(od.Quantity*od.UnitPrice*(1-od.Discount)) as recaudacion
from  Employees e inner join Orders o on e.EmployeeID = o.EmployeeID
inner join [Order Details] od on od.OrderID = o.OrderID
group by   datename(Month,o.OrderDate),year(o.OrderDate)
order by Years 

