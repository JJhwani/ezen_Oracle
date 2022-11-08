--2022/11/03 Chap04, Chap05
SELECT * FROM EMP WHERE empno = 7782;
select * from emp WHERE deptno = 30;
select * from emp;
select * from dept;
select * from emp; --where ENAME ='SMITH';
--DML --> select, insert, update, delete
select sal from emp;
select ename, sal from emp;
select job from emp;
select DISTINCT job from emp;
select ENAME, sal, sal*12+comm as 연봉 from emp;
select sal from emp;
select ENAME, sal from emp order by sal asc; --오름차순 정렬
select ENAME, sal from emp order by sal desc; --내림차순 정렬
select * from emp where sal*12 = 36000;
select * from emp where deptno != 20;
select * from emp where deptno <> 20;
select * from emp where deptno = 20 or job='SALESMAN';
select * from emp where empno = 7499 and deptno = 30;
select * from emp where deptno = 30 and job='SALESMAN';
select * from emp
where sal >= 1500 order by sal desc;
select * from emp
where sal >=2500 and job='ANALYST';
select * from emp
where job='MANAGER' OR JOB='SALESMAN' OR JOB='CLERK';

SELECT * FROM EMP
WHERE SAL>=1500 AND SAL<=3000;

SELECT * FROM EMP
WHERE DEPTNO IN(10, 20);

SELECT * FROM EMP
WHERE JOB IN('MANAGER', 'SALESMAN', 'CLERK');

SELECT * FROM EMP
WHERE JOB NOT IN('MANAGER', 'SALESMAN', 'CLERK');

SELECT * FROM EMP
WHERE SAL BETWEEN 1500 AND 3000;

SELECT * FROM EMP
WHERE SAL NOT BETWEEN 1500 AND 3000;

SELECT * FROM EMP
WHERE ENAME = '%AM%';

SELECT * FROM EMP
WHERE ENAME LIKE '%AM%';

SELECT * FROM EMP
WHERE ENAME LIKE '___L%';

SELECT * FROM EMP
WHERE ENAME NOT LIKE 'M%';

SELECT * FROM EMP
WHERE COMM IS NOT NULL;

SELECT * FROM EMP
WHERE SAL > NULL OR COMM IS NULL;

SELECT ENAME, DEPTNO FROM EMP
INTERSECT
SELECT ENAME, DEPTNO FROM EMP
WHERE DEPTNO=20;