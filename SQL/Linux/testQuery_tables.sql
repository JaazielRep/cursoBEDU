create table tAlmacen(
    tAlmId INT NOT NULL,
    tAlmDes VARCHAR(50) NOT NULL,

    PRIMARY KEY (tAlmId)
);

CREATE TABLE tUnidadMed(
    tUnMeId INT NOT NULL,
    tUnMeCod VARCHAR(2) NOT NULL,
    tUnMeDes VARCHAR(25) NOT NULL,

    PRIMARY KEY(tUnMeId)
)

drop TABLE tUnidadMed

create table tProductos(
    tProdId int IDENTITY(1, 1) not null,
    tProdDesc varchar(50) not null,
    tProdUm int not null,
    tProdAlm INT NOT NULL,

    PRIMARY KEY (tProdId)
)

create TABLE tClientes(
    tCliId INT NOT NULL,
    tCliNom VARCHAR(25) NOT NULL,
    tCliRaz VARCHAR(25) NOT NULL,
    tCliTie VARCHAR(2) NOT NULL,
    tCliRfc varchar(13) NOT NULL,

    PRIMARY KEY (tCliId)
)

CREATE TABLE tCondPago(
    tCondId INT NOT NULL,
    tCondDes VARCHAR(25) NOT NULL,

    PRIMARY KEY (tCondId)
)

CREATE TABLE tVentas(
    tVentaId INT NOT NULL IDENTITY(1, 1),
    tVentClie INT NOT NULL,
    tVentProd INT NOT NULL,
    tVentCond INT NOT NULL,
    tVentNumS VARCHAR (25),
    tVentCant DECIMAL(10, 5),
    tVentPreU DECIMAL(10, 5),
    tVentPreT DECIMAL(10, 5),
    tNotaCxC VARCHAR(20)

    PRIMARY KEY (tVentaId)
)
DROP TABLE tVentas

CREATE TABLE tCuentasPorC(
    tCxCid INT NOT NULL IDENTITY(1, 1),
    tCxCNota VARCHAR(11) NOT NULL,
    tCxCVent INT NOT NULL,
    tCxCPago DECIMAL(10, 5),
    tCxCFech DATE

    PRIMARY KEY (tCxCid)
);

drop table tCuentasPorC;

create table employeesTest(
    idEmployeeT INT NOT NULL IDENTITY(1, 1),
    matEmployeeT VARCHAR(6) NOT NULL,
    namEmployeeT varchar(25) NOT NULL,
    lasEmployeeT varchar(25) NOT NULL,
    resEmployeeT varchar(6)

    PRIMARY KEY(idEmployeeT)
);

drop table employeesTest;