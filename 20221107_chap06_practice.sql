--2022/11/07
--P.174~175 연습문제
--1번 문제
SELECT EMPNO, RPAD(SUBSTR(EMPNO,1,2),4,'*') AS MASKING_EMPNO,
ENAME, RPAD(SUBSTR(ENAME,1,1),LENGTH(ENAME),'*')AS MASKING_ENAME
FROM EMP WHERE LENGTH(ENAME)>=5 AND LENGTH(ENAME)<6;

--1번 문제 내풀이
--SELECT EMPNO, REPLACE(EMPNO,SUBSTR(EMPNO,3,4),'*') AS MASKING_EMPNO,
--ENAME, REPLACE(ENAME,SUBSTR(ENAME,2,5),'*')AS MASKING_ENAME
--FROM EMP WHERE (LENGTH(ENAME)=5);

--2번 문제
SELECT EMPNO, ENAME, SAL, TRUNC(SAL/21.5,2) AS DAY_PAY,
ROUND((SAL/21.5)/8,1) AS TIME_PAY FROM EMP;

--3번 문제
SELECT EMPNO, ENAME, TO_CHAR(HIREDATE, 'YYYY/MM/DD') AS HIREDATE,
TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE,3),'월요일'),'YYYY/MM/DD') AS R_JOB, 
NVL(TO_CHAR(COMM),'N/A') AS COMM
FROM EMP;

--4번 문제
SELECT EMPNO, ENAME, MGR,
CASE
    WHEN MGR IS NULL THEN '0000'
    WHEN SUBSTR(MGR,1,2)=75 THEN '5555'
    WHEN SUBSTR(MGR,1,2)=76 THEN '6666'
    WHEN SUBSTR(MGR,1,2)=77 THEN '7777'
    WHEN SUBSTR(MGR,1,2)=78 THEN '8888'
    ELSE TO_CHAR(MGR)
END AS CHG_MGR
FROM EMP;