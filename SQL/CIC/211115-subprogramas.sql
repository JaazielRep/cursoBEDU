Create or Replace 
PROCEDURE /*nombre*/(/*parametros*/)
IS
BEGIN

/*Exception*/

END/*Nombre*/


/*Actualizar job*/
CREATE or REPLACE 
PROCEDURE CHLSTNM(newjob IN VARCHAR, jb in VARCHAR /*DEFAULT 'SALESMAN'*/)
IS
BEGIN 
  UPDATE emp set emp.job = newjob where emp.job = jb;

END CHLSTNM;

BEGIN 
  CHLSTNM('prueba', 'ALESMAN');
  COMMIT;
END;

BEGIN
  CHLSTNM(newjob => 'Vendedor1.1', jb => 'Trabaja');
  COMMIT;
END;


select * from emp;

/*-------------------------------------------------------------------*/
CREATE OR REPLACE 
procedure actualiza_job_mgc (job_old varchar2, job_new varchar2)
 is
    v_puesto EMP%rowtype;
 begin
  select
      *  into v_puesto
   from EMP
   WHERE EMP.JOB=job_old;
 
  UPDATE EMP
  SET EMP.JOB=job_new
  WHERE EMP.JOB=job_old;
 exception
     WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('no se actualizo ningun empleado');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001,'no se actualizo ningun empleado');

 end actualiza_job_mgc;
/*------------------------------------------------------------------------*/

/*------------------------------FUNCION-----------------------------------*/

CREATE OR REPLACE 
function empleados_salario_mau(min_sal number default 1000, max_sal number default 10000) 
return number is  
  aux NUMBER := 0;
 
 begin  
  select count(*) into aux from emp where emp.SAL BETWEEN min_sal and max_sal;  
  return aux;
  
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Datos no encontrados.');
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error.');
  END;
