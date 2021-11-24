USE testQuery;

ALTER TABLE tVentas
ADD FOREIGN KEY (tVentClie) REFERENCES tClientes(tCliId);

ALTER TABLE tVentas
ADD FOREIGN KEY (tVentProd) REFERENCES tProductos(tProdId);

ALTER TABLE tVentas
ADD FOREIGN KEY (tVentCond) REFERENCES tCondPago(tCondId);

ALTER TABLE tProductos
ADD FOREIGN KEY (tProdAlm) REFERENCES tAlmacen(tAlmId);

ALTER TABLE tProductos
ADD FOREIGN KEY (tProdUm) REFERENCES tUnidadMed(tUnMeId);


ALTER TABLE tCuentasPorC
ADD FOREIGN KEY (tCxCVent) REFERENCES tVentas(tVentaId);