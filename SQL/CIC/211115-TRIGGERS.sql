/*EMP a BITACORA*/

CREATE OR REPLACE TRIGGER /*NOMBRE*/
AFTER/*BEFORE*/ INSERT /*DML*/ ON /*TABLA*/
FOR EACH ROW
BEGIN
END

CREATE OR REPLACE TRIGGER ControlSueldo
BEFORE INSERT OR UPDATE ON EMP
FOR EACH ROW
BEGIN
	IF :new.sal>5000 THEN
		RAISE_APPLICATION_ERROR(-20100, 'No puede ganar tanto');
	END IF;
END;



/**/
BEGIN

  INSERT INTO BITACORA
      ( NOMBRE, ESCOLARIDAD, FECHA, NOM_EMP )
  VALUES 
      (:NEW."ENAME", 'ING. EN SISTEMAS COMPUTACIONALES' ,SYSDATE, 'UPDATE ADMIN: '|| :OLD."ENAME" || '->' || :NEW."ENAME" );

END TR_BITACORA_EMP;

/**/

DECLARE

BEGIN
INSERT INTO BITACORA (NOMBRE, ESCOLARIDAD, FECHA, NOM_EMP)
VALUES ('ROBERTO', 'INGENIERIA', SYSDATE, :NEW.JOB);

INSERT INTO BITACORA (NOMBRE, ESCOLARIDAD, FECHA, NOM_EMP)
VALUES ('ROBERTO', 'INGENIERIA', SYSDATE, :OLD.JOB);

END TR_ACTUALIZA;

/*                -                         */
create table personas(
	idp int not null,
	nombre VARCHAR(50)
);

CREATE table direccion(
	idd int not null,
	duenho VARCHAR(50),
	calle VARCHAR(20)
);

delete from personas

CREATE SEQUENCE idpinc
	START WITH 1
	INCREMENT by 1
CACHE 1000;

drop sequence idpinc

select idpinc.nextval from dual;

insert into personas (idp, nombre)
values (idpinc.nextval, 'Persona1');

select * from personas;

CREATE OR REPLACE TRIGGER autoincp
	before insert on personas
	for each ROW
BEGIN
	SELECT idpinc.nextval
	into :new.idp
	from dual;
END;

drop trigger autoincp

insert into personas (nombre)
values('Persona2')

select * from personas

Create table respaldo (
	nombre_ant VARCHAR(20),
	nombre_act VARCHAR(20)
);

CREATE OR REPLACE TRIGGER respper
	AFTER UPDATE ON personas
	FOR EACH ROW
	var varchar(50)
	var1 VARCHAR(50);
BEGIN
	select :old.nombre INTO var, :new.nombre into var1
	from personas;
	
	insert INTO respaldo(nombre_ant, nombre_act)
	values (var, var1);
END;

drop trigger respper


