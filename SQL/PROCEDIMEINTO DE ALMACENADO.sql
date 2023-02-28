use Northwind

select top 1 with ties od.ProductID, e.FirstName, p.ProductName,t.TerritoryDescription ,sum(od.Quantity) as cantidad, sum ((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Monto

from  Products p inner join [Order Details] od on p.ProductID = od.ProductID
inner join Orders o on o.OrderID = od.OrderID
inner join Employees e on e.EmployeeID = o.EmployeeID
inner join EmployeeTerritories et on et.EmployeeID = e.EmployeeID
inner join Territories t on t.TerritoryID = et.TerritoryID

where t.TerritoryDescription = 'Westboro'
group by od.Quantity, e.FirstName, od.ProductID, p.ProductName, t.TerritoryDescription
order by od.Quantity desc


--encontrar el id del territorio de west boro
select *
from Territories
where TerritoryDescription = 'Westboro'

-- buscar el id del empleado relacionado a westboro mediante el id anterior
select * 
from EmployeeTerritories
where TerritoryID = 01581
-- encontar al empleado con el id anterior
select *
from Employees
where EmployeeID = 2
