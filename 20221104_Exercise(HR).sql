--2022/11/04
DESC JOBS;
SELECT JOB_TITLE FROM JOBS ORDER BY JOB_TITLE;
SELECT COUNTRY_NAME FROM COUNTRIES ORDER BY COUNTRY_NAME DESC;
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 10000 AND 12000;
SELECT * FROM EMPLOYEES WHERE JOB_ID IN ('IT_PROG', 'ST_MAN');
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;
SELECT * FROM EMPLOYEES WHERE JOB_ID LIKE 'AD%';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%ni%';

SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID <= 3000
UNION ALL
SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID >= 2000;

SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID <=3000
MINUS
SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID >= 2000;

SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID <=3000
INTERSECT
SELECT LOCATION_ID, STREET_ADDRESS, CITY FROM LOCATIONS
WHERE LOCATION_ID >= 2000;