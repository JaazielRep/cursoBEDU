use northwind;

select * from [order details];

select orderid, productid, unitprice
from [order details];

select orderid, productid, unitprice * quantity
from [order details];

create table misproductos(
	id int,
	producto varchar(100),
	
);

Create table ventas(
	id int,
	producto int,
	cantidad int
);

delete from ventas

Insert into misproductos 
values (1, 'Producto1'),(2, 'Producto2'),
		(3, 'Producto3'),(4, 'Producto4');
		
-- Ventas
--1
Insert into ventas 
values(1, 1, 4),(1, 2, 5),
		(1, 3, 1), (1, 4, 8);

Insert into ventas 
values(2, 1, 4),(2, 2, 5),
		(2, 3, 1), (2, 4, 8);

Insert into ventas 
values(3, 1, 4),(3, 2, 5),
		(3, 3, 1), (3, 4, 8);
		
		
--Querys
select id from misproductos;


--PIVOTE
--
select * from(
	select id, producto, cantidad from ventas
)as v pivot(
	sum(Cantidad)
	for producto in ([1], [2], [3], [4])
) as pivote


--
select * from(
	select	a.id as Venta, 
			b.producto, 
			a.cantidad 
	from ventas a
	inner join misproductos b
	on a.producto = b.id
)as v pivot(
	sum(Cantidad)
	for producto in (Producto1, producto2, producto3, producto4)	
) as pivote

--

Declare @dynamicQuery as Nvarchar(max);
declare @Nombrecolumna as Nvarchar(Max);

select @NombreColumna = IsNull(@NombreColumna + '-', '') + 
						quotename (a.producto) --Lo ponga entre Corchetes
from misproductos a;

Select @NombreColumna