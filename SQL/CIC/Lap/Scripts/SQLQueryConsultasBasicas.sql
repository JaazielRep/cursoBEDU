use ejercicio1402;


--Renombrado de columnas
select ename Alias from emp;
select ename as Alias from emp;
select ename 'Alias2' from emp;


--Alias
select alias.ename from emp alias;
select e.ename, 'Columna vacia' Nueva_Columna from emp e;
select qwerty.ename Nombre, qwerty.sal Salario, qwerty.sal * 2 Salario_x_2 from emp qwerty;
select emp.ename, 'Tarifa Anual', emp.sal * 12 from emp where emp.job = 'manager';

--Operaciones (Si una columna es NULL y se multiplica por cualquier valor arrojara NULL)
select a.ename, a.sal, a.comm, a.sal * a.comm from emp a;
select a.ename Nombre, a.sal Salario, a.comm Comision, a.sal * a.comm Sal_x_Com from emp a;

--Nulo
select ename, comm from emp where comm is null;
select ename, comm from emp where comm is not null;
select ename, ISNULL(comm, 0), 'No tiene' from emp where comm is null;
select ename, ISNUll(CONVERT(varchar(8), comm), 'No tiene') from emp;

--Concatenar
select ename+' Is '+job from emp;
select ename + ' Is ' + job Renombrado from emp;

