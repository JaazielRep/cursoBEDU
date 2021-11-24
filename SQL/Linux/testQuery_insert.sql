USE testQuery

-- ### Almacen

INSERT INTO tAlmacen (tAlmId, tAlmDes)
VALUES (1, 'Almacen prueba');

-- ### Unidad de Medida

INSERT INTO tUnidadMed
VALUES (1, 'PZ', 'Pieza');

-- ### Productos

INSERT INTO tProductos
VALUES ('Producto prueba 1', 1, 1);

-- ### Clientes

INSERT INTO tClientes
VALUES (1, 'Cliente prueba 1', 'Grupo la comer', '01', 'XXX010101XXX')

-- ### Condicion de pago

INSERT INTO tCondPago
VALUES (1, '30 Dias');

INSERT INTO tVentas
VALUES(1, 1, 1, 'abc123', 1, 10, 10, null);

INSERT INTO tCuentasPorC
VALUES('NOTATEST1', 2, 10, '06/30/2021')


-- ### Employees TEST

INSERT INTO employeesTest
VALUES ('000001', 'Jaaziel', 'Moreno', null),
('000002', 'Jorge', 'Robledo', '000001'),
('000003', 'Daniel', 'Gonzalez', null);

