--P.125~126 ��������
--1�� ����
SELECT * FROM EMP WHERE ENAME LIKE '%S';

--2�� ����
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE DEPTNO=30 AND JOB='SALESMAN';

--3�� ����
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE DEPTNO IN(20, 30) AND SAL>2000;

--4�� ����
SELECT * FROM EMP WHERE SAL<2000 OR SAL > 3000;

--5�� ����
SELECT ENAME, EMPNO, SAL, DEPTNO FROM EMP WHERE ENAME LIKE '%E%'
AND DEPTNO=30 AND (SAL NOT BETWEEN 1000 AND 2000);

--6�� ����
SELECT * FROM EMP WHERE COMM IS NULL AND MGR IS NOT NULL
INTERSECT
SELECT * FROM EMP WHERE JOB IN ('MANAGER', 'CLERK') AND ENAME NOT LIKE '_L%';