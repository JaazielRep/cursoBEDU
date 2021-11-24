create database Csqav;

use Csqav;

create table P_Producto(
	id int primary key,
	Nombre_Producto varchar(100)
);

create table P_Ventas(
	id int primary key identity(0, 1),
	FechaVenta date,
	Producto int,
	cantidad int
);

alter table P_ventas
add constraint fk_ven_pro
foreign key (producto)
references P_Producto(id)
on delete set null;

-- Alter
Drop table p_ventas

-- Deletes

delete from p_ventas

-- Inserts
insert into P_producto 
values	(1, 'Producto 1'), (2, 'Producto 2'),
		(3, 'Producto 3'), (4, 'Producto 4');
		

--
insert into P_ventas (FechaVenta, Producto, Cantidad)
values	(getdate(), 1, 4),(getdate(), 2, 5),(getdate(), 3, 5),
		(getdate(), 4, 5)
--		
insert into P_ventas (FechaVenta, Producto, Cantidad)
values	(dateadd(day, 2, getdate()), 1, 4),(dateadd(day, 2, getdate()), 2, 5),
		(dateadd(day, 2, getdate()), 3, 7), (dateadd(day, 2, getdate()), 4, 8);
		
--
insert into P_ventas (FechaVenta, Producto, Cantidad)
values	(dateadd(day, 3, getdate()), 1, 4),(dateadd(day, 3, getdate()), 2, 5),
		(dateadd(day, 3, getdate()), 3, 7), (dateadd(day, 3, getdate()), 4, 8);


-- Select

select * from p_ventas;

-- Pivote

select * from(
	select	a.FechaVenta as FechaVenta, 
			b.Nombre_producto, 
			a.cantidad 
	from P_ventas a
	inner join P_Producto b
	on a.producto = b.id
) As p	pivot(
			sum(cantidad)
			for nombre_producto in([Producto 1], [Producto 2], [Producto 3], [Producto 4])
		) as a
		
