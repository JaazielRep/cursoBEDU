use ejercicio1402
select * from emp

--1
select ename, EMPNO, sal, (SAL * 0.15 + sal) from EMP;

--2
select ename, empno, sal, 
	(SAL * 0.15 + sal) 'Nuevo Salario', 
	(SAL * 0.15) 'Incremento' 
from EMP;

--3
select ename, 
UPPER(SUBSTRING(ename, 1, 1)) + LOWER(SUBSTRING(ename, 2, len(ename)-1)) 
from EMP;

--4
select ename, job from EMP 
where JOB = (select JOB from EMP where EMPNO = 7369)
	and SAL > (select SAL from EMP where EMPNO = 7876)