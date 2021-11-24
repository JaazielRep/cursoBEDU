Select * from tVentas;

SELECT a.tCliNom, b.tVentaId, c.tProdDesc
FROM tClientes a
INNER JOIN tVentas b
ON a.tCliId = b.tVentClie
INNER JOIN tProductos c
ON b.tVentProd = c.tProdId


-- web vitals react - angular


select * from employeesTest;

SELECT a.matEmployeeT, a.namEmployeeT, b.namEmployeeT
FROM employeesTest a
LEFT JOIN employeesTest b
ON a.resEmployeeT = b.idEmployeeT