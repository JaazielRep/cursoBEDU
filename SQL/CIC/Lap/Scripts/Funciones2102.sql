use ejercicio1402;

select * from EMP;
select LOWER(ename) from EMP;
select UPPER(ename) from EMP;
select ename, LEN(ename) from EMP;
select ename, LEFT(ename, 2), right(ename, 2) from emp;
select ename, SUBSTRING(ename, 2, 6) from EMP;
select REPLICATE(ename+'   ', 10) from EMP;

select * from PRICE;

select stdprice from PRICE;
select stdprice, ROUND(stdprice, 0) from PRICE;
select stdprice, ROUND(stdprice, 1) from PRICE;
select stdprice, ROUND(stdprice, 1, 1) from PRICE;

select actualprice, ROUND(actualprice, 1) from item;
select actualprice, ROUND(actualprice, 0, 1) from item;
select actualprice, ROUND(actualprice, 1, 1) from item;

select SAL from EMP;
select sal, POWER(SAL, 2) from EMP;
select comm-sal, ABS(comm - sal) from EMP;

select getdate();
select hiredate from EMP;
select hiredate, DATEPART(MM, hiredate) from EMP;
select hiredate, DATEPART(DD, hiredate) from EMP;
select hiredate, DATEPART(YY, hiredate) from EMP;

select hiredate, DATEDIFF(YY, hiredate, GETDATE()) from emp;

select hiredate, DATEADD(DD, 10, hiredate) from EMP;

select DATEPART(DD, hiredate), DATEPART(MM, hiredate), 
DATEPART(DD, hiredate+'-'+DATEPART(MM, hiredate) from EMP;

select hiredate, CAST(hiredate as varchar) from EMP;
select hiredate, CONVERT(varchar(4), DATEPART(mm,hiredate)) from emp;