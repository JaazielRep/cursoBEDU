/*
M.C. Nahún Enrique Montoya Uribe
nahunenrique@gmail.com
teradata
5524301723

select * from products

select ord.orderid 'Numero de Orden', pro.productname Nombre, ord.quantity Cantidad, ord.unitprice Precio, ord.quantity * ord.unitprice Total 
from [Order Details] ord
inner join products pro
on pro.productid = ord.productid

select ord.orderid 'Numero de Orden', pro.productname Nombre, ord.quantity Cantidad, ord.unitprice Precio, ord.quantity * ord.unitprice Total 
from [Order Details] ord, products pro
where pro.productid = ord.productid
*/

use northwind
go

select od.productid, SUM(od.quantity*od.unitprice) as 'Import'
from [order details] od
group by od.productid
order by od.productid

select top 1 * from employees

select * from orders
select employeeid from orders
order by orderid


--Ventas por Empleado
