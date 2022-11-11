--2022/11/11 Chap12 Practice
--P.324~325
--1번 문제
CREATE TABLE EMP_HW(
    EMPNO       NUMBER(4),
    ENAME       VARCHAR2(10),
    JOB         VARCHAR2(9),
    MGR         NUMBER(4),
    HIREDATE    DATE,
    SAL         NUMBER(7,2),
    COMM        NUMBER(7,2),
    DEPTNO      NUMBER(2)
);

DESC EMP_HW;

--2번 문제
ALTER TABLE EMP_HW
ADD BIGO VARCHAR2(20);

DESC EMP_HW;

--3번 문제
ALTER TABLE EMP_HW
MODIFY BIGO VARCHAR2(30);

DESC EMP_HW;

--4번 문제
ALTER TABLE EMP_HW
RENAME COLUMN BIGO TO REMARK;

DESC EMP_HW;

--5번 문제
SELECT * FROM EMP;

INSERT INTO EMP_HW
SELECT EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO,NULL
FROM EMP;

SELECT * FROM EMP_HW;

--6번 문제
DROP TABLE EMP_HW;