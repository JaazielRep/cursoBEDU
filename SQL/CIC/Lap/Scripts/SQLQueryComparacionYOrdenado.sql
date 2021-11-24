/*Condicionado y ordenado de datos*/
use practica1402;
--IN
select ename, mgr from emp where mgr in (7698, 7566);
select ename, mgr from emp where mgr = 7698 or mgr = 7566;

--Consultas
use practica1402;


select ordid, itemid, prodid, actualprice, qty, itemtot from item 
order by ordid, itemtot;

select ordid, itemid, prodid, actualprice, qty, itemtot from item
order by prodid, ordid, itemtot;

select ordid, orderdate, shipdate, DATEDIFF(DD, orderdate, shipdate) DIAS 
from ord where datediff(DD, orderdate, shipdate) >= 15;

select * from ord order by total;

select name, creditlimit, comments from customer 
where zip in(96711, 9103) or area in(415, 612);

select * from customer where creditlimit between 5000 and 8000;

select ordid, total, datediff(yy, shipdate, getdate()) from ord;

select prodid, stdprice - minprice Diferencia from price order by prodid;

select grade, hisal - losal Diferencia from salgrade;

select ename, sal, (sal * 0.20) + sal from emp 
where datediff(yy, hiredate, getdate()) > 29 ;