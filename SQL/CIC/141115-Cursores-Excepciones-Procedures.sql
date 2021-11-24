select * from emp;

/* FOR LOOP */
Begin 
	for variableX in (select * from emp)
	LOOP
		dbms_output.put_line(variableX.job || ' Texto');
	END LOOP;
END;

DECLARE
	CURSOR cursorX IS
		select * from emp;
BEGIN
	for variableX in cursorX
	LOOP
		dbms_output.put_line(variableX.job || ' Puesto de ' || variableX.ename);
	END LOOP;
END;

--
create table emp_aux as(
	select * from emp
);

--
select * from emp_aux

--
DECLARE

	CURSOR cursorupdate IS
		select empno, '70' as deptno 
		from emp_aux
		for update;

		numemp emp_aux.empno%TYPE;
		depto emp_aux.deptno%type;
	
BEGIN
	open cursorupdate;
	fetch cursorupdate into numemp , depto;
	sys.DBMS_OUTPUT.put_line(depto);
	while cursorupdate%found

	LOOP
		update emp_aux
		set deptno = depto
		where current of cursorupdate;

		FETCH cursorupdate into numemp, depto;
	END LOOP;
	CLOSE cursorupdate;
commit;

end;
		

/*----------------------------- EXCEPCIONES -----------------------------*/

--
DECLARE
	valor_negativo EXCEPTION;
	valor NUMBER;

BEGIN
	valor := -1;
		IF valor < 0 THEN
			RAISE valor_negativo;
		END IF;
EXCEPTION
	WHEN valor_negativo THEN
		dbms_output.put_line('El valor tiene que ser mayor a 0');
END;

--
DECLARE
	err_num NUMBER;
	err_msg varchar(200);
result number;

BEGIN
select 1/0 into result
from dual;

EXCEPTION
when others THEN
err_num := sqlcode;
err_msg := sqlerrm;

dbms_output.put_line('error: ' || TO_CHAR(err_num));
dbms_output.put_line(err_msg);

end;

--
declare msg VARCHAR(200);
BEGIN
msg := sqlerrm(-1405);
dbms_output.put_line(msg);
end;

-- arrojar error
DECLARE
var number;
BEGIN
select 1/0 into var from dual;
EXCEPTION
when others THEN
raise_application_error(-20001, 'No se puede dividir por cero');
end;

--
DECLARE
	fecha date;
	
	function funcionfecha return DATE
	IS	
	fecha DATE;
	
BEGIN
	select sysdate into fecha
	from dual
	where 1 = 2;
return fecha;

EXCEPTION
when zero_divide THEN
dbms_output.put_line('exception Zero_Divide capturada en funcionfecha');
END;

BEGIN
fecha := funcionfecha();
dbms_output.put_line('la fecha es' || TO_CHAR(fecha, 'DD/MM/YYYY'));
EXCEPTION
when NO_DATa_FOUND THEN
dbms_output.put_line('No_data_found en funcion');
end;

/*procedimiento que reciba min_salary y max_salary de jobs*/

CREATE OR REPLACE PROCEDURE Salariosap(in salariomn number, in salariomx number) IS

