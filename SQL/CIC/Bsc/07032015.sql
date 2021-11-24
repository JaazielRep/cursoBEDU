use ejercicio1402;

select ename from EMP where SAL > (select SAL from EMP where EMPNO = 7566);

select a.ename, a.sal, a.deptno, b.salavg 
from EMP a, (select deptno, AVG(sal) salavg from EMP group by deptno) b
where a.DEPTNO = b.DEPTNO and a.SAL > b.salavg;

select ename, job, SAL
from EMP
where SAL = (select MIN(sal) from emp);

select empno, ename, job 
from EMP
where SAL > all(Select AVG(sal) from EMP group by deptno);

select empno, ename, job 
from EMP where sal > any (Select SAL from EMP where JOB = 'clerk')
and JOB <> 'clerk'

